using System;
using static System.Windows;
using static Win32.System.Com;
using static System.Windows.COM_IUnknown;

// namespace Media.Audio.XAudio2
namespace Win32.Media
{
	extension Audio{
	public static class Xaudio2
	{
		// --- Constants ---
		
		public const uint32 FXEQ_MIN_FRAMERATE = 22000;
		public const uint32 FXEQ_MAX_FRAMERATE = 48000;
		public const float FXEQ_MIN_FREQUENCY_CENTER = 20f;
		public const float FXEQ_MAX_FREQUENCY_CENTER = 20000f;
		public const float FXEQ_DEFAULT_FREQUENCY_CENTER_0 = 100f;
		public const float FXEQ_DEFAULT_FREQUENCY_CENTER_1 = 800f;
		public const float FXEQ_DEFAULT_FREQUENCY_CENTER_2 = 2000f;
		public const float FXEQ_DEFAULT_FREQUENCY_CENTER_3 = 10000f;
		public const float FXEQ_MIN_GAIN = 0.126f;
		public const float FXEQ_MAX_GAIN = 7.94f;
		public const float FXEQ_DEFAULT_GAIN = 1f;
		public const float FXEQ_MIN_BANDWIDTH = 0.1f;
		public const float FXEQ_MAX_BANDWIDTH = 2f;
		public const float FXEQ_DEFAULT_BANDWIDTH = 1f;
		public const uint32 FXMASTERINGLIMITER_MIN_RELEASE = 1;
		public const uint32 FXMASTERINGLIMITER_MAX_RELEASE = 20;
		public const uint32 FXMASTERINGLIMITER_DEFAULT_RELEASE = 6;
		public const uint32 FXMASTERINGLIMITER_MIN_LOUDNESS = 1;
		public const uint32 FXMASTERINGLIMITER_MAX_LOUDNESS = 1800;
		public const uint32 FXMASTERINGLIMITER_DEFAULT_LOUDNESS = 1000;
		public const float FXREVERB_MIN_DIFFUSION = 0f;
		public const float FXREVERB_MAX_DIFFUSION = 1f;
		public const float FXREVERB_DEFAULT_DIFFUSION = 0.9f;
		public const float FXREVERB_MIN_ROOMSIZE = 0.0001f;
		public const float FXREVERB_MAX_ROOMSIZE = 1f;
		public const float FXREVERB_DEFAULT_ROOMSIZE = 0.6f;
		public const uint32 FXLOUDNESS_DEFAULT_MOMENTARY_MS = 400;
		public const uint32 FXLOUDNESS_DEFAULT_SHORTTERM_MS = 3000;
		public const float FXECHO_MIN_WETDRYMIX = 0f;
		public const float FXECHO_MAX_WETDRYMIX = 1f;
		public const float FXECHO_DEFAULT_WETDRYMIX = 0.5f;
		public const float FXECHO_MIN_FEEDBACK = 0f;
		public const float FXECHO_MAX_FEEDBACK = 1f;
		public const float FXECHO_DEFAULT_FEEDBACK = 0.5f;
		public const float FXECHO_MIN_DELAY = 1f;
		public const float FXECHO_MAX_DELAY = 2000f;
		public const float FXECHO_DEFAULT_DELAY = 500f;
		public const uint32 XAUDIO2_MAX_BUFFER_BYTES = 2147483648;
		public const uint32 XAUDIO2_MAX_QUEUED_BUFFERS = 64;
		public const uint32 XAUDIO2_MAX_BUFFERS_SYSTEM = 2;
		public const uint32 XAUDIO2_MAX_AUDIO_CHANNELS = 64;
		public const uint32 XAUDIO2_MIN_SAMPLE_RATE = 1000;
		public const uint32 XAUDIO2_MAX_SAMPLE_RATE = 200000;
		public const float XAUDIO2_MAX_VOLUME_LEVEL = 16777216f;
		public const float XAUDIO2_MAX_FREQ_RATIO = 1024f;
		public const float XAUDIO2_DEFAULT_FREQ_RATIO = 2f;
		public const float XAUDIO2_MAX_FILTER_ONEOVERQ = 1.5f;
		public const float XAUDIO2_MAX_FILTER_FREQUENCY = 1f;
		public const uint32 XAUDIO2_MAX_LOOP_COUNT = 254;
		public const uint32 XAUDIO2_MAX_INSTANCES = 8;
		public const uint32 XAUDIO2_MAX_RATIO_TIMES_RATE_XMA_MONO = 600000;
		public const uint32 XAUDIO2_MAX_RATIO_TIMES_RATE_XMA_MULTICHANNEL = 300000;
		public const uint32 CommitNow = 0;
		public const uint32 XAUDIO2_COMMIT_ALL = 0;
		public const uint32 XAUDIO2_NO_LOOP_REGION = 0;
		public const uint32 XAUDIO2_LOOP_INFINITE = 255;
		public const uint32 DefaultChannels = 0;
		public const uint32 DefaultSampleRate = 0;
		public const uint32 XAUDIO2_DEBUG_ENGINE = 1;

		public enum VoiceFlags : uint32{
			Default				= 0,
			NoPitchControl		= 2,
			NoSourceConversion	= 4,
			UseFilter			= 8,
		}

		public enum StopFlags : uint32
		{
			Default = 0,
			PlayTails = 32
		}

		public enum BufferFlags : uint32{
			Default = 0,
			EndOfStream = 64
		}

		public const uint32 XAUDIO2_SEND_USEFILTER = 128;
		public enum GetVoiceFlags : uint32{
			Default = 0,
			NoSamplesPlayed = 256//return only buffer state, no sampler state
		}
		public const uint32 XAUDIO2_STOP_ENGINE_WHEN_IDLE = 8192;
		public const uint32 XAUDIO2_1024_QUANTUM = 32768;
		public const uint32 XAUDIO2_NO_VIRTUAL_AUDIO_CLIENT = 65536;
		public const float XAUDIO2_DEFAULT_FILTER_FREQUENCY = 1f;
		public const float XAUDIO2_DEFAULT_FILTER_ONEOVERQ = 1f;
		public const uint32 XAUDIO2_QUANTUM_NUMERATOR = 1;
		public const uint32 XAUDIO2_QUANTUM_DENOMINATOR = 100;
		public const uint32 FACILITY_XAUDIO2 = 2198;
		public const HResult XAUDIO2_E_INVALID_CALL = (.)-2003435519;
		public const HResult XAUDIO2_E_XMA_DECODER_ERROR = (.)-2003435518;
		public const HResult XAUDIO2_E_XAPO_CREATION_FAILED = (.)-2003435517;
		public const HResult XAUDIO2_E_DEVICE_INVALIDATED = (.)-2003435516;

		[AllowDuplicates]
		public enum XAudio2Processor : uint32{
			Processor1	= 0x00000001,
			Processor2	= 0x00000002,
			Processor3	= 0x00000004,
			Processor4	= 0x00000008,
			Processor5	= 0x00000010,
			Processor6	= 0x00000020,
			Processor7	= 0x00000040,
			Processor8	= 0x00000080,
			Processor9	= 0x00000100,
			Processor10 = 0x00000200,
			Processor11 = 0x00000400,
			Processor12 = 0x00000800,
			Processor13 = 0x00001000,
			Processor14 = 0x00002000,
			Processor15 = 0x00004000,
			Processor16 = 0x00008000,
			Processor17 = 0x00010000,
			Processor18 = 0x00020000,
			Processor19 = 0x00040000,
			Processor20 = 0x00080000,
			Processor21 = 0x00100000,
			Processor22 = 0x00200000,
			Processor23 = 0x00400000,
			Processor24 = 0x00800000,
			Processor25 = 0x01000000,
			Processor26 = 0x02000000,
			Processor27 = 0x04000000,
			Processor28 = 0x08000000,
			Processor29 = 0x10000000,
			Processor30 = 0x20000000,
			Processor31 = 0x40000000,
			Processor32 = 0x80000000,
			AnyProcessor = 0xFFFFFFFF,
			UseDefaultProcessor = 0,
			DefaultProcessor = 1,
		}
		public const uint32 XAUDIO2_LOG_ERRORS = 1;
		public const uint32 XAUDIO2_LOG_WARNINGS = 2;
		public const uint32 XAUDIO2_LOG_INFO = 4;
		public const uint32 XAUDIO2_LOG_DETAIL = 8;
		public const uint32 XAUDIO2_LOG_API_CALLS = 16;
		public const uint32 XAUDIO2_LOG_FUNC_CALLS = 32;
		public const uint32 XAUDIO2_LOG_TIMING = 64;
		public const uint32 XAUDIO2_LOG_LOCKS = 128;
		public const uint32 XAUDIO2_LOG_MEMORY = 256;
		public const uint32 XAUDIO2_LOG_STREAMING = 4096;
		public const uint32 XAUDIO2FX_REVERB_MIN_FRAMERATE = 20000;
		public const uint32 XAUDIO2FX_REVERB_MAX_FRAMERATE = 48000;
		public const float XAUDIO2FX_REVERB_MIN_WET_DRY_MIX = 0f;
		public const uint32 XAUDIO2FX_REVERB_MIN_REFLECTIONS_DELAY = 0;
		public const uint32 XAUDIO2FX_REVERB_MIN_REVERB_DELAY = 0;
		public const uint32 XAUDIO2FX_REVERB_MIN_REAR_DELAY = 0;
		public const uint32 XAUDIO2FX_REVERB_MIN_7POINT1_SIDE_DELAY = 0;
		public const uint32 XAUDIO2FX_REVERB_MIN_7POINT1_REAR_DELAY = 0;
		public const uint32 XAUDIO2FX_REVERB_MIN_POSITION = 0;
		public const uint32 XAUDIO2FX_REVERB_MIN_DIFFUSION = 0;
		public const uint32 XAUDIO2FX_REVERB_MIN_LOW_EQ_GAIN = 0;
		public const uint32 XAUDIO2FX_REVERB_MIN_LOW_EQ_CUTOFF = 0;
		public const uint32 XAUDIO2FX_REVERB_MIN_HIGH_EQ_GAIN = 0;
		public const uint32 XAUDIO2FX_REVERB_MIN_HIGH_EQ_CUTOFF = 0;
		public const float XAUDIO2FX_REVERB_MIN_ROOM_FILTER_FREQ = 20f;
		public const float XAUDIO2FX_REVERB_MIN_ROOM_FILTER_MAIN = -100f;
		public const float XAUDIO2FX_REVERB_MIN_ROOM_FILTER_HF = -100f;
		public const float XAUDIO2FX_REVERB_MIN_REFLECTIONS_GAIN = -100f;
		public const float XAUDIO2FX_REVERB_MIN_REVERB_GAIN = -100f;
		public const float XAUDIO2FX_REVERB_MIN_DECAY_TIME = 0.1f;
		public const float XAUDIO2FX_REVERB_MIN_DENSITY = 0f;
		public const float XAUDIO2FX_REVERB_MIN_ROOM_SIZE = 0f;
		public const float XAUDIO2FX_REVERB_MAX_WET_DRY_MIX = 100f;
		public const uint32 XAUDIO2FX_REVERB_MAX_REFLECTIONS_DELAY = 300;
		public const uint32 XAUDIO2FX_REVERB_MAX_REVERB_DELAY = 85;
		public const uint32 XAUDIO2FX_REVERB_MAX_REAR_DELAY = 5;
		public const uint32 XAUDIO2FX_REVERB_MAX_7POINT1_SIDE_DELAY = 5;
		public const uint32 XAUDIO2FX_REVERB_MAX_7POINT1_REAR_DELAY = 20;
		public const uint32 XAUDIO2FX_REVERB_MAX_POSITION = 30;
		public const uint32 XAUDIO2FX_REVERB_MAX_DIFFUSION = 15;
		public const uint32 XAUDIO2FX_REVERB_MAX_LOW_EQ_GAIN = 12;
		public const uint32 XAUDIO2FX_REVERB_MAX_LOW_EQ_CUTOFF = 9;
		public const uint32 XAUDIO2FX_REVERB_MAX_HIGH_EQ_GAIN = 8;
		public const uint32 XAUDIO2FX_REVERB_MAX_HIGH_EQ_CUTOFF = 14;
		public const float XAUDIO2FX_REVERB_MAX_ROOM_FILTER_FREQ = 20000f;
		public const float XAUDIO2FX_REVERB_MAX_ROOM_FILTER_MAIN = 0f;
		public const float XAUDIO2FX_REVERB_MAX_ROOM_FILTER_HF = 0f;
		public const float XAUDIO2FX_REVERB_MAX_REFLECTIONS_GAIN = 20f;
		public const float XAUDIO2FX_REVERB_MAX_REVERB_GAIN = 20f;
		public const float XAUDIO2FX_REVERB_MAX_DENSITY = 100f;
		public const float XAUDIO2FX_REVERB_MAX_ROOM_SIZE = 100f;
		public const float XAUDIO2FX_REVERB_DEFAULT_WET_DRY_MIX = 100f;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_REFLECTIONS_DELAY = 5;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_REVERB_DELAY = 5;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_REAR_DELAY = 5;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_7POINT1_SIDE_DELAY = 5;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_7POINT1_REAR_DELAY = 20;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_POSITION = 6;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_POSITION_MATRIX = 27;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_EARLY_DIFFUSION = 8;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_LATE_DIFFUSION = 8;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_LOW_EQ_GAIN = 8;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_LOW_EQ_CUTOFF = 4;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_HIGH_EQ_GAIN = 8;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_HIGH_EQ_CUTOFF = 4;
		public const float XAUDIO2FX_REVERB_DEFAULT_ROOM_FILTER_FREQ = 5000f;
		public const float XAUDIO2FX_REVERB_DEFAULT_ROOM_FILTER_MAIN = 0f;
		public const float XAUDIO2FX_REVERB_DEFAULT_ROOM_FILTER_HF = 0f;
		public const float XAUDIO2FX_REVERB_DEFAULT_REFLECTIONS_GAIN = 0f;
		public const float XAUDIO2FX_REVERB_DEFAULT_REVERB_GAIN = 0f;
		public const float XAUDIO2FX_REVERB_DEFAULT_DECAY_TIME = 1f;
		public const float XAUDIO2FX_REVERB_DEFAULT_DENSITY = 100f;
		public const float XAUDIO2FX_REVERB_DEFAULT_ROOM_SIZE = 100f;
		public const uint32 XAUDIO2FX_REVERB_DEFAULT_DISABLE_LATE_FIELD = 0;
		public const float HRTF_MAX_GAIN_LIMIT = 12f;
		public const float HRTF_MIN_GAIN_LIMIT = -96f;
		public const float HRTF_MIN_UNITY_GAIN_DISTANCE = 0.05f;
		public const float HRTF_DEFAULT_UNITY_GAIN_DISTANCE = 1f;
		public const uint32 FACILITY_XAPO = 2199;
		public const HResult XAPO_E_FORMAT_UNSUPPORTED = (.)-2003369983;
		public const uint32 XAPO_MIN_CHANNELS = 1;
		public const uint32 XAPO_MAX_CHANNELS = 64;
		public const uint32 XAPO_MIN_FRAMERATE = 1000;
		public const uint32 XAPO_MAX_FRAMERATE = 200000;
		public const uint32 XAPO_REGISTRATION_STRING_LENGTH = 256;
		public const uint32 XAPO_FLAG_CHANNELS_MUST_MATCH = 1;
		public const uint32 XAPO_FLAG_FRAMERATE_MUST_MATCH = 2;
		public const uint32 XAPO_FLAG_BITSPERSAMPLE_MUST_MATCH = 4;
		public const uint32 XAPO_FLAG_BUFFERCOUNT_MUST_MATCH = 8;
		public const uint32 XAPO_FLAG_INPLACE_REQUIRED = 32;
		public const uint32 XAPO_FLAG_INPLACE_SUPPORTED = 16;
		public const uint32 SPEAKER_MONO = 4;
		public const uint32 X3DAUDIO_HANDLE_BYTESIZE = 20;
		public const float X3DAUDIO_PI = 3.1415927f;
		public const float X3DAUDIO_2PI = 6.2831855f;
		public const float X3DAUDIO_SPEED_OF_SOUND = 343.5f;
		public const uint32 X3DAUDIO_CALCULATE_MATRIX = 1;
		public const uint32 X3DAUDIO_CALCULATE_DELAY = 2;
		public const uint32 X3DAUDIO_CALCULATE_LPF_DIRECT = 4;
		public const uint32 X3DAUDIO_CALCULATE_LPF_REVERB = 8;
		public const uint32 X3DAUDIO_CALCULATE_REVERB = 16;
		public const uint32 X3DAUDIO_CALCULATE_DOPPLER = 32;
		public const uint32 X3DAUDIO_CALCULATE_EMITTER_ANGLE = 64;
		public const uint32 X3DAUDIO_CALCULATE_ZEROCENTER = 65536;
		public const uint32 X3DAUDIO_CALCULATE_REDIRECT_TO_LFE = 131072;
		
		// --- Enums ---
		
		public enum XAPO_BUFFER_FLAGS : int32
		{
			SILENT = 0,
			VALID = 1,
		}
		public enum XAUDIO2_FILTER_TYPE : int32
		{
			LowPassFilter = 0,
			BandPassFilter = 1,
			HighPassFilter = 2,
			NotchFilter = 3,
			LowPassOnePoleFilter = 4,
			HighPassOnePoleFilter = 5,
		}
		public enum HrtfDirectivityType : int32
		{
			OmniDirectional = 0,
			Cardioid = 1,
			Cone = 2,
		}
		public enum HrtfEnvironment : int32
		{
			Small = 0,
			Medium = 1,
			Large = 2,
			Outdoors = 3,
		}
		public enum HrtfDistanceDecayType : int32
		{
			NaturalDecay = 0,
			CustomDecay = 1,
		}
		
		// --- Structs ---
		
		[CRepr, Packed(1)]
		public struct XAPO_REGISTRATION_PROPERTIES
		{
			public Guid clsid;
			public char16[256] FriendlyName;
			public char16[256] CopyrightInfo;
			public uint32 MajorVersion;
			public uint32 MinorVersion;
			public uint32 Flags;
			public uint32 MinInputBufferCount;
			public uint32 MaxInputBufferCount;
			public uint32 MinOutputBufferCount;
			public uint32 MaxOutputBufferCount;
		}
		[CRepr, Packed(1)]
		public struct XAPO_LOCKFORPROCESS_PARAMETERS
		{
			public WaveFormatEx* pFormat;
			public uint32 MaxFrameCount;
		}
		[CRepr, Packed(1)]
		public struct XAPO_PROCESS_BUFFER_PARAMETERS
		{
			public void* pBuffer;
			public XAPO_BUFFER_FLAGS BufferFlags;
			public uint32 ValidFrameCount;
		}
		[CRepr, Packed(1)]
		public struct FXEQ_PARAMETERS
		{
			public float FrequencyCenter0;
			public float Gain0;
			public float Bandwidth0;
			public float FrequencyCenter1;
			public float Gain1;
			public float Bandwidth1;
			public float FrequencyCenter2;
			public float Gain2;
			public float Bandwidth2;
			public float FrequencyCenter3;
			public float Gain3;
			public float Bandwidth3;
		}
		[CRepr, Packed(1)]
		public struct FXMASTERINGLIMITER_PARAMETERS
		{
			public uint32 Release;
			public uint32 Loudness;
		}
		[CRepr, Packed(1)]
		public struct FXREVERB_PARAMETERS
		{
			public float Diffusion;
			public float RoomSize;
		}
		[CRepr, Packed(1)]
		public struct FXECHO_INITDATA
		{
			public float MaxDelay;
		}
		[CRepr, Packed(1)]
		public struct FXECHO_PARAMETERS
		{
			public float WetDryMix;
			public float Feedback;
			public float Delay;
		}
		[CRepr, Packed(1)]
		public struct VoiceDetails
		{
			public uint32 CreationFlags;
			public uint32 ActiveFlags;
			public uint32 InputChannels;
			public uint32 InputSampleRate;
		}
		[CRepr, Packed(1)]
		public struct XAUDIO2_SEND_DESCRIPTOR
		{
			public uint32 Flags;
			public IXAudio2Voice* pOutputVoice;
		}
		[CRepr, Packed(1)]
		public struct VoiceSends
		{
			public uint32 SendCount;
			public XAUDIO2_SEND_DESCRIPTOR* pSends;
		}
		[CRepr, Packed(1)]
		public struct XAUDIO2_EFFECT_DESCRIPTOR
		{
			public IUnknown* pEffect;
			public IntBool InitialState;
			public uint32 OutputChannels;
		}
		[CRepr, Packed(1)]
		public struct EffectChain
		{
			public uint32 EffectCount;
			public XAUDIO2_EFFECT_DESCRIPTOR* pEffectDescriptors;
		}
		[CRepr, Packed(1)]
		public struct FilterParameters
		{
			public XAUDIO2_FILTER_TYPE Type;
			public float Frequency;
			public float OneOverQ;
		}
		[CRepr, Packed(1)]
		public struct XAudio2Buffer : IDisposable
		{
			public BufferFlags Flags = .Default;
			public uint32 AudioBytes;
			public uint8* pAudioData;
			public uint32 PlayBegin;
			public uint32 PlayLength;
			public uint32 LoopBegin;
			public uint32 LoopLength;
			public uint32 LoopCount;
			public void* pContext;

			public void Dispose()
			{
				delete pAudioData;
			}
		}
		[CRepr, Packed(1)]
		public struct XAUDIO2_BUFFER_WMA
		{
			public uint32* pDecodedPacketCumulativeBytes;
			public uint32 PacketCount;
		}
		[CRepr, Packed(1)]
		public struct VoiceState
		{
			public void* pCurrentBufferContext;
			public uint32 BuffersQueued;
			public uint64 SamplesPlayed;
		}
		[CRepr, Packed(1)]
		public struct XAUDIO2_PERFORMANCE_DATA
		{
			public uint64 AudioCyclesSinceLastQuery;
			public uint64 TotalCyclesSinceLastQuery;
			public uint32 MinimumCyclesPerQuantum;
			public uint32 MaximumCyclesPerQuantum;
			public uint32 MemoryUsageInBytes;
			public uint32 CurrentLatencyInSamples;
			public uint32 GlitchesSinceEngineStarted;
			public uint32 ActiveSourceVoiceCount;
			public uint32 TotalSourceVoiceCount;
			public uint32 ActiveSubmixVoiceCount;
			public uint32 ActiveResamplerCount;
			public uint32 ActiveMatrixMixCount;
			public uint32 ActiveXmaSourceVoices;
			public uint32 ActiveXmaStreams;
		}
		[CRepr, Packed(1)]
		public struct Xaudio2DebugConfiguration
		{
			public uint32 TraceMask;
			public uint32 BreakMask;
			public IntBool LogThreadID;
			public IntBool LogFileline;
			public IntBool LogFunctionName;
			public IntBool LogTiming;
		}
		[CRepr, Packed(1)]
		public struct XAUDIO2FX_VOLUMEMETER_LEVELS
		{
			public float* pPeakLevels;
			public float* pRMSLevels;
			public uint32 ChannelCount;
		}
		[CRepr, Packed(1)]
		public struct XAUDIO2FX_REVERB_PARAMETERS
		{
			public float WetDryMix;
			public uint32 ReflectionsDelay;
			public uint8 ReverbDelay;
			public uint8 RearDelay;
			public uint8 SideDelay;
			public uint8 PositionLeft;
			public uint8 PositionRight;
			public uint8 PositionMatrixLeft;
			public uint8 PositionMatrixRight;
			public uint8 EarlyDiffusion;
			public uint8 LateDiffusion;
			public uint8 LowEQGain;
			public uint8 LowEQCutoff;
			public uint8 HighEQGain;
			public uint8 HighEQCutoff;
			public float RoomFilterFreq;
			public float RoomFilterMain;
			public float RoomFilterHF;
			public float ReflectionsGain;
			public float ReverbGain;
			public float DecayTime;
			public float Density;
			public float RoomSize;
			public IntBool DisableLateField;
		}
		[CRepr, Packed(1)]
		public struct XAUDIO2FX_REVERB_I3DL2_PARAMETERS
		{
			public float WetDryMix;
			public int32 Room;
			public int32 RoomHF;
			public float RoomRolloffFactor;
			public float DecayTime;
			public float DecayHFRatio;
			public int32 Reflections;
			public float ReflectionsDelay;
			public int32 Reverb;
			public float ReverbDelay;
			public float Diffusion;
			public float Density;
			public float HFReference;
		}
		[CRepr]
		public struct HrtfPosition
		{
			public float x;
			public float y;
			public float z;
		}
		[CRepr]
		public struct HrtfOrientation
		{
			public float[9] element;
		}
		[CRepr]
		public struct HrtfDirectivity
		{
			public HrtfDirectivityType type;
			public float scaling;
		}
		[CRepr]
		public struct HrtfDirectivityCardioid
		{
			public HrtfDirectivity directivity;
			public float order;
		}
		[CRepr]
		public struct HrtfDirectivityCone
		{
			public HrtfDirectivity directivity;
			public float innerAngle;
			public float outerAngle;
		}
		[CRepr]
		public struct HrtfDistanceDecay
		{
			public HrtfDistanceDecayType type;
			public float maxGain;
			public float minGain;
			public float unityGainDistance;
			public float cutoffDistance;
		}
		[CRepr]
		public struct HrtfApoInit
		{
			public HrtfDistanceDecay* distanceDecay;
			public HrtfDirectivity* directivity;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_FXEQ = .(0xf5e01117, 0xd6c4, 0x485a, 0xa3, 0xf5, 0x69, 0x51, 0x96, 0xf3, 0xdb, 0xfa);
		public const Guid CLSID_FXMasteringLimiter = .(0xc4137916, 0x2be1, 0x46fd, 0x85, 0x99, 0x44, 0x15, 0x36, 0xf4, 0x98, 0x56);
		public const Guid CLSID_FXReverb = .(0x7d9aca56, 0xcb68, 0x4807, 0xb6, 0x32, 0xb1, 0x37, 0x35, 0x2e, 0x85, 0x96);
		public const Guid CLSID_FXEcho = .(0x5039d740, 0xf736, 0x449a, 0x84, 0xd3, 0xa5, 0x62, 0x02, 0x55, 0x7b, 0x87);
		public const Guid CLSID_AudioVolumeMeter = .(0x4fc3b166, 0x972a, 0x40cf, 0xbc, 0x37, 0x7d, 0xb0, 0x3d, 0xb2, 0xfb, 0xa3);
		public const Guid CLSID_AudioReverb = .(0xc2633b16, 0x471b, 0x4498, 0xb8, 0xc5, 0x4f, 0x09, 0x59, 0xe2, 0xec, 0x09);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IXAPO : IUnknown
		{
			public const new Guid IID = .(0xa410b984, 0x9839, 0x4819, 0xa0, 0xbe, 0x28, 0x56, 0xae, 0x6b, 0x3a, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetRegistrationProperties(out XAPO_REGISTRATION_PROPERTIES* ppRegistrationProperties) mut => VT.GetRegistrationProperties(ref this, out ppRegistrationProperties);
			public HResult IsInputFormatSupported(in WaveFormatEx pOutputFormat, in WaveFormatEx pRequestedInputFormat, WaveFormatEx** ppSupportedInputFormat) mut => VT.IsInputFormatSupported(ref this, pOutputFormat, pRequestedInputFormat, ppSupportedInputFormat);
			public HResult IsOutputFormatSupported(in WaveFormatEx pInputFormat, in WaveFormatEx pRequestedOutputFormat, WaveFormatEx** ppSupportedOutputFormat) mut => VT.IsOutputFormatSupported(ref this, pInputFormat, pRequestedOutputFormat, ppSupportedOutputFormat);
			public HResult Initialize(void* pData, uint32 DataByteSize) mut => VT.Initialize(ref this, pData, DataByteSize);
			public void Reset() mut => VT.Reset(ref this);
			public HResult LockForProcess(uint32 InputLockedParameterCount, XAPO_LOCKFORPROCESS_PARAMETERS* pInputLockedParameters, uint32 OutputLockedParameterCount, XAPO_LOCKFORPROCESS_PARAMETERS* pOutputLockedParameters) mut => VT.LockForProcess(ref this, InputLockedParameterCount, pInputLockedParameters, OutputLockedParameterCount, pOutputLockedParameters);
			public void UnlockForProcess() mut => VT.UnlockForProcess(ref this);
			public void Process(uint32 InputProcessParameterCount, XAPO_PROCESS_BUFFER_PARAMETERS* pInputProcessParameters, uint32 OutputProcessParameterCount, XAPO_PROCESS_BUFFER_PARAMETERS* pOutputProcessParameters, IntBool IsEnabled) mut => VT.Process(ref this, InputProcessParameterCount, pInputProcessParameters, OutputProcessParameterCount, pOutputProcessParameters, IsEnabled);
			public uint32 CalcInputFrames(uint32 OutputFrameCount) mut => VT.CalcInputFrames(ref this, OutputFrameCount);
			public uint32 CalcOutputFrames(uint32 InputFrameCount) mut => VT.CalcOutputFrames(ref this, InputFrameCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAPO self, out XAPO_REGISTRATION_PROPERTIES* ppRegistrationProperties) GetRegistrationProperties;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAPO self, in WaveFormatEx pOutputFormat, in WaveFormatEx pRequestedInputFormat, WaveFormatEx** ppSupportedInputFormat) IsInputFormatSupported;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAPO self, in WaveFormatEx pInputFormat, in WaveFormatEx pRequestedOutputFormat, WaveFormatEx** ppSupportedOutputFormat) IsOutputFormatSupported;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAPO self, void* pData, uint32 DataByteSize) Initialize;
				public new function [CallingConvention(.Stdcall)] void(ref IXAPO self) Reset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAPO self, uint32 InputLockedParameterCount, XAPO_LOCKFORPROCESS_PARAMETERS* pInputLockedParameters, uint32 OutputLockedParameterCount, XAPO_LOCKFORPROCESS_PARAMETERS* pOutputLockedParameters) LockForProcess;
				public new function [CallingConvention(.Stdcall)] void(ref IXAPO self) UnlockForProcess;
				public new function [CallingConvention(.Stdcall)] void(ref IXAPO self, uint32 InputProcessParameterCount, XAPO_PROCESS_BUFFER_PARAMETERS* pInputProcessParameters, uint32 OutputProcessParameterCount, XAPO_PROCESS_BUFFER_PARAMETERS* pOutputProcessParameters, IntBool IsEnabled) Process;
				public new function [CallingConvention(.Stdcall)] uint32(ref IXAPO self, uint32 OutputFrameCount) CalcInputFrames;
				public new function [CallingConvention(.Stdcall)] uint32(ref IXAPO self, uint32 InputFrameCount) CalcOutputFrames;
			}
		}
		[CRepr]
		public struct IXAPOParameters : IUnknown
		{
			public const new Guid IID = .(0x26d95c66, 0x80f2, 0x499a, 0xad, 0x54, 0x5a, 0xe7, 0xf0, 0x1c, 0x6d, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetParameters(void* pParameters, uint32 ParameterByteSize) mut => VT.SetParameters(ref this, pParameters, ParameterByteSize);
			public void GetParameters(void* pParameters, uint32 ParameterByteSize) mut => VT.GetParameters(ref this, pParameters, ParameterByteSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IXAPOParameters self, void* pParameters, uint32 ParameterByteSize) SetParameters;
				public new function [CallingConvention(.Stdcall)] void(ref IXAPOParameters self, void* pParameters, uint32 ParameterByteSize) GetParameters;
			}
		}
		[CRepr]
		public struct IXAudio2 : IUnknown
		{
			public const new Guid IID = .(0x2b02e3cf, 0x2e0b, 0x4ec3, 0xbe, 0x45, 0x1b, 0x2a, 0x3f, 0xe7, 0x21, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RegisterForCallbacks(ref IXAudio2EngineCallback pCallback) mut => VT.RegisterForCallbacks(ref this, ref pCallback);
			public void UnregisterForCallbacks(ref IXAudio2EngineCallback pCallback) mut => VT.UnregisterForCallbacks(ref this, ref pCallback);
			public HResult CreateSourceVoice(out IXAudio2SourceVoice* ppSourceVoice, in WaveFormatEx pSourceFormat, VoiceFlags Flags = .Default, float MaxFrequencyRatio = 1, IXAudio2VoiceCallback* pCallback = null, VoiceSends* pSendList = null, EffectChain* pEffectChain = null) mut => VT.CreateSourceVoice(ref this, out ppSourceVoice, pSourceFormat, Flags, MaxFrequencyRatio, pCallback, pSendList, pEffectChain);
			public HResult CreateSubmixVoice(out IXAudio2SubmixVoice* ppSubmixVoice, uint32 InputChannels, uint32 InputSampleRate, uint32 Flags, uint32 ProcessingStage, VoiceSends* pSendList, EffectChain* pEffectChain) mut => VT.CreateSubmixVoice(ref this, out ppSubmixVoice, InputChannels, InputSampleRate, Flags, ProcessingStage, pSendList, pEffectChain);
			public HResult CreateMasteringVoice(out IXAudio2MasteringVoice* ppMasteringVoice, uint32 InputChannels = DefaultChannels, uint32 InputSampleRate = DefaultSampleRate, uint32 Flags = 0, char16* szDeviceId = null, EffectChain* pEffectChain = null, AUDIO_STREAM_CATEGORY StreamCategory = default) mut => VT.CreateMasteringVoice(ref this, out ppMasteringVoice, InputChannels, InputSampleRate, Flags, szDeviceId, pEffectChain, StreamCategory);
			public HResult StartEngine() mut => VT.StartEngine(ref this);
			public void StopEngine() mut => VT.StopEngine(ref this);
			public HResult CommitChanges(uint32 OperationSet) mut => VT.CommitChanges(ref this, OperationSet);
			public void GetPerformanceData(out XAUDIO2_PERFORMANCE_DATA pPerfData) mut => VT.GetPerformanceData(ref this, out pPerfData);
			public void SetDebugConfiguration(Xaudio2DebugConfiguration* pDebugConfiguration, void* pReserved) mut => VT.SetDebugConfiguration(ref this, pDebugConfiguration, pReserved);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2 self, ref IXAudio2EngineCallback pCallback) RegisterForCallbacks;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2 self, ref IXAudio2EngineCallback pCallback) UnregisterForCallbacks;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2 self, out IXAudio2SourceVoice* ppSourceVoice, in WaveFormatEx pSourceFormat, VoiceFlags Flags, float MaxFrequencyRatio, IXAudio2VoiceCallback* pCallback, VoiceSends* pSendList, EffectChain* pEffectChain) CreateSourceVoice;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2 self, out IXAudio2SubmixVoice* ppSubmixVoice, uint32 InputChannels, uint32 InputSampleRate, uint32 Flags, uint32 ProcessingStage, VoiceSends* pSendList, EffectChain* pEffectChain) CreateSubmixVoice;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2 self, out IXAudio2MasteringVoice* ppMasteringVoice, uint32 InputChannels, uint32 InputSampleRate, uint32 Flags, char16* szDeviceId, EffectChain* pEffectChain, AUDIO_STREAM_CATEGORY StreamCategory) CreateMasteringVoice;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2 self) StartEngine;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2 self) StopEngine;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2 self, uint32 OperationSet) CommitChanges;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2 self, out XAUDIO2_PERFORMANCE_DATA pPerfData) GetPerformanceData;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2 self, Xaudio2DebugConfiguration* pDebugConfiguration, void* pReserved) SetDebugConfiguration;
			}
		}
		[CRepr]
		public struct IXAudio2Extension : IUnknown
		{
			public const new Guid IID = .(0x84ac29bb, 0xd619, 0x44d2, 0xb1, 0x97, 0xe4, 0xac, 0xf7, 0xdf, 0x3e, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetProcessingQuantum(out uint32 quantumNumerator, out uint32 quantumDenominator) mut => VT.GetProcessingQuantum(ref this, out quantumNumerator, out quantumDenominator);
			public void GetProcessor(out uint32 processor) mut => VT.GetProcessor(ref this, out processor);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2Extension self, out uint32 quantumNumerator, out uint32 quantumDenominator) GetProcessingQuantum;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2Extension self, out uint32 processor) GetProcessor;
			}
		}
		[CRepr]
		public struct IXAudio2Voice : IDisposable
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public void GetVoiceDetails(out VoiceDetails pVoiceDetails) mut => VT.GetVoiceDetails(ref this, out pVoiceDetails);
			public HResult SetOutputVoices(VoiceSends* pSendList) mut => VT.SetOutputVoices(ref this, pSendList);
			public HResult SetEffectChain(EffectChain* pEffectChain) mut => VT.SetEffectChain(ref this, pEffectChain);

			public HResult EnableEffect(uint32 EffectIndex, uint32 OperationSet) mut => VT.EnableEffect(ref this, EffectIndex, OperationSet);
			public HResult DisableEffect(uint32 EffectIndex, uint32 OperationSet) mut => VT.DisableEffect(ref this, EffectIndex, OperationSet);

			public void GetEffectState(uint32 EffectIndex, out IntBool pEnabled) mut => VT.GetEffectState(ref this, EffectIndex, out pEnabled);

			public HResult SetEffectParameters(uint32 EffectIndex, void* pParameters, uint32 ParametersByteSize, uint32 OperationSet) mut => VT.SetEffectParameters(ref this, EffectIndex, pParameters, ParametersByteSize, OperationSet);
			public HResult GetEffectParameters(uint32 EffectIndex, void* pParameters, uint32 ParametersByteSize) mut => VT.GetEffectParameters(ref this, EffectIndex, pParameters, ParametersByteSize);

			public HResult SetFilterParameters(in FilterParameters pParameters, uint32 OperationSet) mut => VT.SetFilterParameters(ref this, pParameters, OperationSet);
			public void GetFilterParameters(out FilterParameters pParameters) mut => VT.GetFilterParameters(ref this, out pParameters);

			public HResult SetOutputFilterParameters(IXAudio2Voice* pDestinationVoice, in FilterParameters pParameters, uint32 OperationSet) mut => VT.SetOutputFilterParameters(ref this, pDestinationVoice, pParameters, OperationSet);
			public void GetOutputFilterParameters(IXAudio2Voice* pDestinationVoice, out FilterParameters pParameters) mut => VT.GetOutputFilterParameters(ref this, pDestinationVoice, out pParameters);

			public HResult SetVolume(float Volume, uint32 OperationSet) mut => VT.SetVolume(ref this, Volume, OperationSet);
			public void GetVolume(out float pVolume) mut => VT.GetVolume(ref this, out pVolume);

			public HResult SetChannelVolumes(uint32 Channels, float* pVolumes, uint32 OperationSet) mut => VT.SetChannelVolumes(ref this, Channels, pVolumes, OperationSet);
			public void GetChannelVolumes(uint32 Channels, float* pVolumes) mut => VT.GetChannelVolumes(ref this, Channels, pVolumes);

			public HResult SetOutputMatrix(IXAudio2Voice* pDestinationVoice, uint32 SourceChannels, uint32 DestinationChannels, in float pLevelMatrix, uint32 OperationSet) mut => VT.SetOutputMatrix(ref this, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix, OperationSet);
			public void GetOutputMatrix(IXAudio2Voice* pDestinationVoice, uint32 SourceChannels, uint32 DestinationChannels, out float pLevelMatrix) mut => VT.GetOutputMatrix(ref this, pDestinationVoice, SourceChannels, DestinationChannels, out pLevelMatrix);

			public void DestroyVoice() mut => VT.DestroyVoice(ref this);

			public FilterParameters filterParameters{
				get mut => GetFilterParameters(..var _);
				set mut => SetFilterParameters(value, CommitNow);
			}

			public float Volume {
				get mut => GetVolume(..var _);
				set mut => SetVolume(value, CommitNow);
			}

			[CRepr]
			public struct VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2Voice self, out VoiceDetails pVoiceDetails) GetVoiceDetails;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2Voice self, VoiceSends* pSendList) SetOutputVoices;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2Voice self, EffectChain* pEffectChain) SetEffectChain;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2Voice self, uint32 EffectIndex, uint32 OperationSet) EnableEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2Voice self, uint32 EffectIndex, uint32 OperationSet) DisableEffect;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2Voice self, uint32 EffectIndex, out IntBool pEnabled) GetEffectState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2Voice self, uint32 EffectIndex, void* pParameters, uint32 ParametersByteSize, uint32 OperationSet) SetEffectParameters;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2Voice self, uint32 EffectIndex, void* pParameters, uint32 ParametersByteSize) GetEffectParameters;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2Voice self, in FilterParameters pParameters, uint32 OperationSet) SetFilterParameters;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2Voice self, out FilterParameters pParameters) GetFilterParameters;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2Voice self, IXAudio2Voice* pDestinationVoice, in FilterParameters pParameters, uint32 OperationSet) SetOutputFilterParameters;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2Voice self, IXAudio2Voice* pDestinationVoice, out FilterParameters pParameters) GetOutputFilterParameters;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2Voice self, float Volume, uint32 OperationSet) SetVolume;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2Voice self, out float pVolume) GetVolume;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2Voice self, uint32 Channels, float* pVolumes, uint32 OperationSet) SetChannelVolumes;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2Voice self, uint32 Channels, float* pVolumes) GetChannelVolumes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2Voice self, IXAudio2Voice* pDestinationVoice, uint32 SourceChannels, uint32 DestinationChannels, in float pLevelMatrix, uint32 OperationSet) SetOutputMatrix;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2Voice self, IXAudio2Voice* pDestinationVoice, uint32 SourceChannels, uint32 DestinationChannels, out float pLevelMatrix) GetOutputMatrix;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2Voice self) DestroyVoice;
			}
			public void Dispose() mut
			{
				DestroyVoice();
			}
		}
		[CRepr]
		public struct IXAudio2SourceVoice : IXAudio2Voice
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult Start(/*uint32 Flags,*/ uint32 OperationSet = CommitNow) mut => VT.Start(ref this, /*Flags*/0, OperationSet);
			public HResult Stop(StopFlags Flags = .Default, uint32 OperationSet = CommitNow) mut => VT.Stop(ref this, Flags, OperationSet);
			public HResult SubmitSourceBuffer(in XAudio2Buffer pBuffer, XAUDIO2_BUFFER_WMA* pBufferWMA = null) mut => VT.SubmitSourceBuffer(ref this, pBuffer, pBufferWMA);
			public HResult FlushSourceBuffers() mut => VT.FlushSourceBuffers(ref this);
			public HResult Discontinuity() mut => VT.Discontinuity(ref this);
			public HResult ExitLoop(uint32 OperationSet) mut => VT.ExitLoop(ref this, OperationSet);
			public void GetState(out VoiceState pVoiceState, GetVoiceFlags Flags) mut => VT.GetState(ref this, out pVoiceState, Flags);
			public HResult SetFrequencyRatio(float Ratio, uint32 OperationSet) mut => VT.SetFrequencyRatio(ref this, Ratio, OperationSet);
			public void GetFrequencyRatio(out float pRatio) mut => VT.GetFrequencyRatio(ref this, out pRatio);
			public HResult SetSourceSampleRate(uint32 NewSourceSampleRate) mut => VT.SetSourceSampleRate(ref this, NewSourceSampleRate);

			public float FrequencyRatio{
				get mut => GetFrequencyRatio(..var _);
				set mut => SetFrequencyRatio(value, CommitNow);
			}

			[CRepr]
			public struct VTable : IXAudio2Voice.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2SourceVoice self, uint32 Flags, uint32 OperationSet) Start;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2SourceVoice self, StopFlags Flags, uint32 OperationSet) Stop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2SourceVoice self, in XAudio2Buffer pBuffer, XAUDIO2_BUFFER_WMA* pBufferWMA) SubmitSourceBuffer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2SourceVoice self) FlushSourceBuffers;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2SourceVoice self) Discontinuity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2SourceVoice self, uint32 OperationSet) ExitLoop;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2SourceVoice self, out VoiceState pVoiceState, GetVoiceFlags Flags) GetState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2SourceVoice self, float Ratio, uint32 OperationSet) SetFrequencyRatio;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2SourceVoice self, out float pRatio) GetFrequencyRatio;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2SourceVoice self, uint32 NewSourceSampleRate) SetSourceSampleRate;
			}
		}
		[CRepr]
		public struct IXAudio2SubmixVoice : IXAudio2Voice
		{
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IXAudio2Voice.VTable {}
		}
		[CRepr]
		public struct IXAudio2MasteringVoice : IXAudio2Voice
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetChannelMask(out uint32 pChannelmask) mut => VT.GetChannelMask(ref this, out pChannelmask);

			[CRepr]
			public struct VTable : IXAudio2Voice.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAudio2MasteringVoice self, out uint32 pChannelmask) GetChannelMask;
			}
		}
		[CRepr]
		public struct IXAudio2EngineCallback
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public void OnProcessingPassStart() mut => VT.OnProcessingPassStart(ref this);
			public void OnProcessingPassEnd() mut => VT.OnProcessingPassEnd(ref this);
			public void OnCriticalError(HResult Error) mut => VT.OnCriticalError(ref this, Error);

			[CRepr]
			public struct VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2EngineCallback self) OnProcessingPassStart;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2EngineCallback self) OnProcessingPassEnd;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2EngineCallback self, HResult Error) OnCriticalError;
			}
		}
		[CRepr]
		public struct IXAudio2VoiceCallback
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public void OnVoiceProcessingPassStart(uint32 BytesRequired) mut => VT.OnVoiceProcessingPassStart(ref this, BytesRequired);
			public void OnVoiceProcessingPassEnd() mut => VT.OnVoiceProcessingPassEnd(ref this);
			public void OnStreamEnd() mut => VT.OnStreamEnd(ref this);
			public void OnBufferStart(void* pBufferContext) mut => VT.OnBufferStart(ref this, pBufferContext);
			public void OnBufferEnd(void* pBufferContext) mut => VT.OnBufferEnd(ref this, pBufferContext);
			public void OnLoopEnd(void* pBufferContext) mut => VT.OnLoopEnd(ref this, pBufferContext);
			public void OnVoiceError(void* pBufferContext, HResult Error) mut => VT.OnVoiceError(ref this, pBufferContext, Error);

			[CRepr]
			public struct VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2VoiceCallback self, uint32 BytesRequired) OnVoiceProcessingPassStart;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2VoiceCallback self) OnVoiceProcessingPassEnd;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2VoiceCallback self) OnStreamEnd;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2VoiceCallback self, void* pBufferContext) OnBufferStart;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2VoiceCallback self, void* pBufferContext) OnBufferEnd;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2VoiceCallback self, void* pBufferContext) OnLoopEnd;
				public new function [CallingConvention(.Stdcall)] void(ref IXAudio2VoiceCallback self, void* pBufferContext, HResult Error) OnVoiceError;
			}
		}
		[CRepr]
		public struct IXAPOHrtfParameters : IUnknown
		{
			public const new Guid IID = .(0x15b3cd66, 0xe9de, 0x4464, 0xb6, 0xe6, 0x2b, 0xc3, 0xcf, 0x63, 0xd4, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetSourcePosition(in HrtfPosition position) mut => VT.SetSourcePosition(ref this, position);
			public HResult SetSourceOrientation(in HrtfOrientation orientation) mut => VT.SetSourceOrientation(ref this, orientation);
			public HResult SetSourceGain(float gain) mut => VT.SetSourceGain(ref this, gain);
			public HResult SetEnvironment(HrtfEnvironment environment) mut => VT.SetEnvironment(ref this, environment);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAPOHrtfParameters self, in HrtfPosition position) SetSourcePosition;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAPOHrtfParameters self, in HrtfOrientation orientation) SetSourceOrientation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAPOHrtfParameters self, float gain) SetSourceGain;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAPOHrtfParameters self, HrtfEnvironment environment) SetEnvironment;
			}
		}
		
		// --- Functions ---
		
		[Import("xaudio2_8.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateFX(in Guid clsid, out IUnknown* pEffect, void* pInitDat, uint32 InitDataByteSize);
		[Import("xaudio2_8.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult XAudio2CreateWithVersionInfo(out IXAudio2* ppXAudio2, uint32 Flags, XAudio2Processor XAudio2Processor, uint32 ntddiVersion);

		[Import("xaudio2_8.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult XAudio2Create(out IXAudio2* ppXAudio2, uint32 Flags, XAudio2Processor XAudio2Processor);

		public static HResult XAudio2Create(out IXAudio2* ppXAudio2, XAudio2Processor XAudio2Processor) => XAudio2Create(out ppXAudio2, 0, XAudio2Processor);

		[Import("xaudio2_8.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateAudioVolumeMeter(out IUnknown* ppApo);
		[Import("xaudio2_8.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateAudioReverb(out IUnknown* ppApo);
		[Import("hrtfapo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateHrtfApo(in HrtfApoInit init, out IXAPO* xApo);
	}
	}
}
