using System;
using System.Diagnostics;
using System.Collections;
using static Win32.Media.Audio;
using static Win32.Media.Audio.Xaudio2;

namespace BfEngine.Audio
{
	class Audio
	{
		private const uint32 samplespersecond = 48000;
		public static WaveFormatEx wfx = .(.PCM, 2, samplespersecond, samplespersecond * 4, 4, 16, 0);

		static IXAudio2* xaudio ~ _.Release();
		static IXAudio2MasteringVoice* masteringvoice ~ _.DestroyVoice();

		static List<IXAudio2SourceVoice*> availablevoices = new .() ~ DeleteContainerAndDisposeItems!(_);
		static List<(IXAudio2SourceVoice*, uint64)> playingvoices = new .() ~ delete _;

		//static XAudio2Buffer buffer ~ _.Dispose();

		static void Init(){
			var hr = XAudio2Create(out xaudio, .DefaultProcessor);
			Debug.Assert(hr == .OK);

			hr = xaudio.CreateMasteringVoice(out masteringvoice);
			Debug.Assert(hr == .OK);

			/*hr = xaudio.CreateSourceVoice(out sourcevoices[0], wfx);
			Debug.Assert(hr == .OK);*/


			/*buffer = .();
			buffer.AudioBytes = samplespersecond * 2 * 2 * 2;//2 channels, 2 bytes per sample, 2 seconds
			buffer.pAudioData = Internal.AllocRawArrayUnmarked<uint8>(buffer.AudioBytes);

			Span<int16> bufferspan = .((.)buffer.pAudioData, buffer.AudioBytes / 2);
			for(int i = 0; i < bufferspan.Length / 2; i++){
				float time =  5 * i / samplespersecond;
				float amplitude = Math.Exp(-2 * time) * Math.Sqrt(time * 16) * 0.58f;
				float sin = Math.Sin(time * 1000f) * amplitude;
				int16 value = (int16)(sin * 4096);
				//int16 value = (.)(rand.Next(-8000, 8000) * amplitude);
				bufferspan[i * 2] = bufferspan[i * 2 + 1] = value;
			}

			hr = sourcevoices[0].SubmitSourceBuffer(buffer);
			Debug.Assert(hr == .OK);

			hr = sourcevoices[0].Start();
			Debug.Assert(hr == .OK);*/

			//Win32.Win32.CoCreateInstance<IFilterGraph>()
		}

		public static void PlaySample(XAudio2Buffer buffer){
			
		}

	}
}