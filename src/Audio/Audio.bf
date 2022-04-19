using System;
using System.Diagnostics;
using System.Collections;
using static BfEngine.Audio;
using static Win32.Media.DirectShow;
using static Win32.Media.Audio;
using static Win32.Media.Audio.Xaudio2;
using static Win32.Media.MediaFoundation;
using static Win32.Media.WindowsMediaFormat;

namespace BfEngine
{
	public static class Audio
	{
		private const uint32 samplespersecond = 48000;
		public static WaveFormatEx wfx = .(.PCM, 2, samplespersecond, samplespersecond * 4, 4, 16, 0);

		static IXAudio2* xaudio ~ _.Release();
		static IXAudio2MasteringVoice* masteringvoice ~ _.DestroyVoice();

		static List<IXAudio2SourceVoice*> playingvoices = new .() ~ delete _;
		static List<IXAudio2SourceVoice*> toDestroy = new .() ~ delete _;
#if DEBUG
		//Callbacks don't cause leaks unless the program is terminated while a sample is playing, but at that point it really doesn't matter. this just appeases the leak checker
		static List<VoiceCallback*> activeCallbacks = new .() ~ DeleteContainerAndDisposeItems!(_);
#endif
		public static int nPlayingVoices => playingvoices.Count;

		static void Init(){
			callbackVtable.OnStreamEnd = (_) => ((VoiceCallback*)&_).Dispose();
			//dummy callbacks
			callbackVtable.OnBufferEnd					= (a, b)	=> {};
			callbackVtable.OnBufferStart				= (a, b)	=> {};
			callbackVtable.OnLoopEnd					= (a, b)	=> {};
			callbackVtable.OnVoiceError					= (a, b, c)	=> {};
			callbackVtable.OnVoiceProcessingPassEnd		= (a)		=> {};
			callbackVtable.OnVoiceProcessingPassStart	= (a, b)	=> {};



			var hr = XAudio2Create(out xaudio, .DefaultProcessor);
			Debug.Assert(hr == .OK);

			hr = xaudio.CreateMasteringVoice(out masteringvoice);
			Debug.Assert(hr == .OK);



			hr = MFStartup();
			Debug.Assert(hr == .OK);
		}

		static void Update()
		{
			ClearAndDisposeItems!(toDestroy);
		}

		public static void PlaySample(XAudio2Buffer buffer, WaveFormatEx format/*, float volume*/){
			VoiceCallback* callBack = new .(&callbackVtable);

			var hr = xaudio.CreateSourceVoice(var voice, format, .Default, 1, callBack);
			Debug.Assert(hr == .OK);

			callBack.voice = voice;

#if DEBUG
			activeCallbacks.Add(callBack);
#endif

			//voice.Volume = volume;
			hr = voice.SubmitSourceBuffer(buffer);
			Debug.Assert(hr == .OK);
			hr = voice.Start();
			Debug.Assert(hr == .OK);

			var bufferlength = (float)buffer.AudioBytes / (float)wfx.nAvgBytesPerSec;

			playingvoices.Add(voice);
		}

		public static void ConfigureAudioStream(
		    IMFSourceReader* pReader,   // Pointer to the source reader.
		    out IMFMediaType* ppPCMAudio   // Receives the audio format.
		    )
		{
		    //IMFMediaType *pUncompressedAudioType = null;
		    //IMFMediaType *pPartialType = null;

		    // Select the first audio stream, and deselect all other streams.
		    var hr = pReader.SetStreamSelection((.)MF_SOURCE_READER_CONSTANTS.AllStreams, false);
			Debug.Assert(hr == .OK);

		    hr = pReader.SetStreamSelection((.)MF_SOURCE_READER_CONSTANTS.FirstAudioStream, true);
			Debug.Assert(hr == .OK);

		    // Create a partial media type that specifies uncompressed PCM audio.
		    hr = MFCreateMediaType(var pPartialType);
			Debug.Assert(hr == .OK);
		    
			hr = pPartialType.SetGUID(MF_MT_MAJOR_TYPE, MFMediaType_Audio);
		    Debug.Assert(hr == .OK);


		    hr = pPartialType.SetGUID(MF_MT_SUBTYPE, MFAudioFormat_PCM);
		    Debug.Assert(hr == .OK);

		    // Set this type on the source reader. The source reader will
		    // load the necessary decoder.

		    hr = pReader.SetCurrentMediaType((.)MF_SOURCE_READER_CONSTANTS.FirstAudioStream, pPartialType);
			Debug.Assert(hr == .OK);

		    // Get the complete uncompressed format.

		    hr = pReader.GetCurrentMediaType((.)MF_SOURCE_READER_CONSTANTS.FirstAudioStream, var pUncompressedAudioType);
			Debug.Assert(hr == .OK);

		    // Ensure the stream is selected.
			hr = pReader.SetStreamSelection((.)MF_SOURCE_READER_CONSTANTS.FirstAudioStream, true);
			Debug.Assert(hr == .OK);

		    // Return the PCM format to the caller.
		    ppPCMAudio = pUncompressedAudioType;
		    ppPCMAudio.AddRef();
			Debug.Assert(hr == .OK);

		    pUncompressedAudioType.Release();
		    pPartialType.Release();
		    //return hr;
		}

		public static XAudio2Buffer LoadSample(StringView sampleName, out WaveFormatEx format){
			var hr = MFCreateSourceReaderFromURL(/*"D:/audio/music/Geoxor__SVRGE_-_DEAD.mp3"*/sampleName.ToScopedNativeWChar!(), null, var reader);
			Debug.Assert(hr == .OK);

			ConfigureAudioStream(reader, var mediaType);

			//reader.GetCurrentMediaType(0xFFFFFFFD, var mediaType);
			mediaType.GetRepresentation(AM_MEDIA_TYPE_REPRESENTATION, var typeRepr);
			Debug.Assert(typeRepr.formattype == WMFORMAT_WaveFormatEx);

			format = *(WaveFormatEx*)typeRepr.pbFormat;



			hr = mediaType.GetUINT32(MF_MT_AUDIO_BLOCK_ALIGNMENT, var cbBlockSize);
			Debug.Assert(hr == .OK);
			hr = mediaType.GetUINT32(MF_MT_AUDIO_AVG_BYTES_PER_SECOND, var cbBytesPerSecond);
			Debug.Assert(hr == .OK);




			List<uint8> bufferBytes = scope System.Collections.List<uint8>();

			while(true){
				hr = reader.ReadSample(0xFFFFFFFD, .Default, var streamIndex, var streamFlags, var timeStamp, var sample);
				if(hr != .OK || sample == null)
					break;

				sample.ConvertToContiguousBuffer(var buffer);

				buffer.Lock(var ptr, var maxLength, var currentLength);

					bufferBytes.AddRange(Span<uint8>(ptr, currentLength));

				buffer.Unlock();

				sample.Release();
				buffer.Release();
			}



			XAudio2Buffer xbuf = .();
			xbuf.AudioBytes = (.)bufferBytes.Count;
			xbuf.pAudioData = bufferBytes.Ptr;
			xbuf.pContext = bufferBytes.Ptr;

			//cheeky trick to steal the List's buffer
			bufferBytes.[Friend]mAllocSizeAndFlags &= ~List<uint8>.[Friend]DynAllocFlag;

			return xbuf;
		}



		static VoiceCallback.VTable callbackVtable;
	}
}