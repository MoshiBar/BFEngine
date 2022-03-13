using System;
using static System.Windows.COM_IUnknown;
using static System.Windows;

namespace BfEngine.Audio
{
	class DSound
	{
		const String DSoundDll = "dsound.dll";

		[AttributeUsage(.Struct)]
		struct IIDAttribute : Attribute, this(Guid guid);

		[AttributeUsage(.Struct)]
		struct CLSIDAttribute : Attribute, this(Guid guid);

		public typealias LPUNKNOWN = void*;

		/*==========================================================================;
		 *
		 *  Copyright (c) Microsoft Corporation.  All rights reserved.
		 *
		 *  File:       dsound.h
		 *  Content:    DirectSound include file
		 *
		 **************************************************************************/



#define DIRECTSOUND_VERSION0800


#if DIRECTSOUND_VERSION0800
	#define DIRECTSOUND_VERSION0700
#endif


//#define DIRECTSOUND_VERSION 0x0900  /* Version 9.0 */
		public enum WaveFormat : uint16
		{
			PCM = 0x0001,
			IEEE_FLOAT = 0x0003,
			ALAW = 0x0006,
			MULAW = 0x0007,
			EXTENSIBLE = 0xfffe,
		}

			/* Type definitions shared with Direct3D */
		[CRepr]
		public struct WaveFormatEx
		{
			public WaveFormat /*WORD*/ wFormatTag;
			public uint16 nChannels;
			public uint32 nSamplesPerSec;
			public uint32 nAvgBytesPerSec;
			public uint16 nBlockAlign;
			public uint16 wBitsPerSample;
			public uint16 cbSize;

			public this(WaveFormat wFormatTag, uint16 nChannels, uint32 nSamplesPerSec, uint32 nAvgBytesPerSec, uint16 nBlockAlign, uint16 wBitsPerSample, uint16 cbSize)
			{
				this.wFormatTag = wFormatTag;
				this.nChannels = nChannels;
				this.nSamplesPerSec = nSamplesPerSec;
				this.nAvgBytesPerSec = nAvgBytesPerSec;
				this.nBlockAlign = nBlockAlign;
				this.wBitsPerSample = wBitsPerSample;
				this.cbSize = cbSize;
			}
		}

		public struct D3DVector
		{
			public float x;
			public float y;
			public float z;
		}

		const int _FACDS = 0x878; /* DirectSound's facility code */

		static int MAKE_HResult(uint severity, uint facility, uint errorNo)
		{
			// Make HR
			uint result = severity << 31;
			result |= facility << 16;
			result |= errorNo;

			return ((int)result);
		}

		static int MAKE_DSHResult(uint code) => MAKE_HResult(1, _FACDS, code);

		// DirectSound Component GUID {47D4D946-62E8-11CF-93BC-444553540000}
		/*DEFINE_GUID(CLSID_DirectSound, 0x47d4d946, 0x62e8, 0x11cf, 0x93, 0xbc, 0x44, 0x45, 0x53, 0x54, 0x0, 0x0);

		// DirectSound 8.0 Component GUID {3901CC3F-84B5-4FA4-BA35-AA8172B8A09B}
		DEFINE_GUID(CLSID_DirectSound8, 0x3901cc3f, 0x84b5, 0x4fa4, 0xba, 0x35, 0xaa, 0x81, 0x72, 0xb8, 0xa0, 0x9b);

		// DirectSound Capture Component GUID {B0210780-89CD-11D0-AF08-00A0C925CD16}
		DEFINE_GUID(CLSID_DirectSoundCapture, 0xb0210780, 0x89cd, 0x11d0, 0xaf, 0x8, 0x0, 0xa0, 0xc9, 0x25, 0xcd, 0x16);

		// DirectSound 8.0 Capture Component GUID {E4BCAC13-7F99-4908-9A8E-74E3BF24B6E1}
		DEFINE_GUID(CLSID_DirectSoundCapture8, 0xe4bcac13, 0x7f99, 0x4908, 0x9a, 0x8e, 0x74, 0xe3, 0xbf, 0x24, 0xb6, 0xe1);

		// DirectSound Full Duplex Component GUID {FEA4300C-7959-4147-B26A-2377B9E7A91D}
		DEFINE_GUID(CLSID_DirectSoundFullDuplex, 0xfea4300c, 0x7959, 0x4147, 0xb2, 0x6a, 0x23, 0x77, 0xb9, 0xe7, 0xa9, 0x1d);


		// DirectSound default playback device GUID {DEF00000-9C6D-47ED-AAF1-4DDA8F2B5C03}
		DEFINE_GUID(DSDEVID_DefaultPlayback, 0xdef00000, 0x9c6d, 0x47ed, 0xaa, 0xf1, 0x4d, 0xda, 0x8f, 0x2b, 0x5c, 0x03);

		// DirectSound default capture device GUID {DEF00001-9C6D-47ED-AAF1-4DDA8F2B5C03}
		DEFINE_GUID(DSDEVID_DefaultCapture, 0xdef00001, 0x9c6d, 0x47ed, 0xaa, 0xf1, 0x4d, 0xda, 0x8f, 0x2b, 0x5c, 0x03);

		// DirectSound default device for voice playback {DEF00002-9C6D-47ED-AAF1-4DDA8F2B5C03}
		DEFINE_GUID(DSDEVID_DefaultVoicePlayback, 0xdef00002, 0x9c6d, 0x47ed, 0xaa, 0xf1, 0x4d, 0xda, 0x8f, 0x2b, 0x5c, 0x03);

		// DirectSound default device for voice capture {DEF00003-9C6D-47ED-AAF1-4DDA8F2B5C03}
		DEFINE_GUID(DSDEVID_DefaultVoiceCapture, 0xdef00003, 0x9c6d, 0x47ed, 0xaa, 0xf1, 0x4d, 0xda, 0x8f, 0x2b, 0x5c, 0x03);*/

		//
		// DirectSound 8.0 interfaces.
		//

#if DIRECTSOUND_VERSION0800

		// IDirectSound8, IDirectSoundBuffer8 and IDirectSoundCaptureBuffer8 are the
		// only DirectSound 7.0 interfaces with changed functionality in version 8.0.
		// The other level 8 interfaces as equivalent to their level 7 counterparts:

		typealias IDirectSoundCapture8 = IDirectSoundCapture;
		typealias IDirectSound3DListener8 = IDirectSound3DListener;
		typealias IDirectSound3DBuffer8 = IDirectSound3DBuffer;
		typealias IDirectSoundNotify8 = IDirectSoundNotify;
		typealias IDirectSoundFXGargle8 = IDirectSoundFXGargle;
		typealias IDirectSoundFXChorus8 = IDirectSoundFXChorus;
		typealias IDirectSoundFXFlanger8 = IDirectSoundFXFlanger;
		typealias IDirectSoundFXEcho8 = IDirectSoundFXEcho;
		typealias IDirectSoundFXDistortion8 = IDirectSoundFXDistortion;
		typealias IDirectSoundFXCompressor8 = IDirectSoundFXCompressor;
		typealias IDirectSoundFXParamEq8 = IDirectSoundFXParamEq;
		typealias IDirectSoundFXWavesReverb8 = IDirectSoundFXWavesReverb;
		typealias IDirectSoundFXI3DL2Reverb8 = IDirectSoundFXI3DL2Reverb;
		typealias IDirectSoundCaptureFXAec8 = IDirectSoundCaptureFXAec;
		typealias IDirectSoundCaptureFXNoiseSuppress8 = IDirectSoundCaptureFXNoiseSuppress;
		typealias IDirectSoundFullDuplex8 = IDirectSoundFullDuplex;

#endif // DIRECTSOUND_VERSION0800 

		//
		// Structures
		//

		[CRepr]
		public struct Capabilities
		{
			public uint32 dwSize;
			public CapabilityFlags dwFlags;
			public uint32 dwMinSecondarySampleRate;
			public uint32 dwMaxSecondarySampleRate;
			public uint32 dwPrimaryBuffers;
			public uint32 dwMaxHwMixingAllBuffers;
			public uint32 dwMaxHwMixingStaticBuffers;
			public uint32 dwMaxHwMixingStreamingBuffers;
			public uint32 dwFreeHwMixingAllBuffers;
			public uint32 dwFreeHwMixingStaticBuffers;
			public uint32 dwFreeHwMixingStreamingBuffers;
			public uint32 dwMaxHw3DAllBuffers;
			public uint32 dwMaxHw3DStaticBuffers;
			public uint32 dwMaxHw3DStreamingBuffers;
			public uint32 dwFreeHw3DAllBuffers;
			public uint32 dwFreeHw3DStaticBuffers;
			public uint32 dwFreeHw3DStreamingBuffers;
			public uint32 dwTotalHwMemBytes;
			public uint32 dwFreeHwMemBytes;
			public uint32 dwMaxContigFreeHwMemBytes;
			public uint32 dwUnlockTransferRateHwBuffers;
			public uint32 dwPlayCpuOverheadSwBuffers;
			public uint32 dwReserved1;
			public uint32 dwReserved2;
		}

		[CRepr]
		public struct BufferCapabilities
		{
			public uint32 dwSize;
			public BufferCapabilitiesEnum dwFlags;
			public uint32 dwBufferBytes;
			public uint32 dwUnlockTransferRate;
			public uint32 dwPlayCpuOverhead;
		}

#if DIRECTSOUND_VERSION0800

			[CRepr]
			public struct EffectDescription
			{
				public uint32       dwSize;
				public EffectFlags       dwFlags;
				public Guid        guidDSFXClass;
				public uint32*   dwReserved1;
				public uint32*   dwReserved2;
			}

			public enum EffectFlags : uint32{
				LocHardware = 0x00000001,
				LocSoftware = 0x00000002
			}
			

			public enum EffectResult : uint32
			{
				DSFXR_PRESENT,          // 0
				DSFXR_LOCHARDWARE,      // 1
				DSFXR_LOCSOFTWARE,      // 2
				DSFXR_UNALLOCATED,      // 3
				DSFXR_FAILED,           // 4
				DSFXR_UNKNOWN,          // 5
				DSFXR_SENDLOOP          // 6
			}

			[CRepr]
			struct CaptureEffectDescription
			{
				uint32       dwSize;
				uint32       dwFlags;
				Guid        guidDSCFXClass;
				Guid        guidDSCFXInstance;
				uint32       dwReserved1;
				uint32       dwReserved2;
			}

		public enum CaptureEffectFlags{
			LocHardware = 0x00000001,
			LocSoftware = 0x00000002
		}

		public enum CaptureEffectResult{
			LocHardware = 0x00000010,
			LocSoftware = 0x00000020
		}

#endif // DIRECTSOUND_VERSION0800

		[CRepr]
		public struct BufferDescription
		{
			public uint32 dwSize;
			public BufferCapabilitiesEnum dwFlags;
			public uint32 dwBufferBytes;
			public uint32 dwReserved;
			public WaveFormatEx* lpwfxFormat;
#if DIRECTSOUND_VERSION0700
			public Guid            guid3DAlgorithm;
#endif
			public this(BufferCapabilitiesEnum dwFlags, uint32 dwBufferBytes, WaveFormatEx* lpwfxFormat
#if DIRECTSOUND_VERSION0700
				,Guid guid3DAlgorithm = default
#endif
				)
			{
				this.dwSize = sizeof(BufferDescription);
				this.dwFlags = dwFlags;
				this.dwBufferBytes = dwBufferBytes;
				this.dwReserved = 0;
				this.lpwfxFormat = lpwfxFormat;
#if DIRECTSOUND_VERSION0700
				this.guid3DAlgorithm = guid3DAlgorithm;
#endif
			}
		}

		// Older version of this structure:
		[CRepr]
		struct BufferDescription1
		{
			public uint32 dwSize;
			public BufferCapabilitiesEnum dwFlags;
			public uint32 dwBufferBytes;
			public uint32 dwReserved;
			public WaveFormatEx* lpwfxFormat;
		}

		[CRepr]
		public struct _3DBuffer
		{
			public uint32 dwSize;
			public D3DVector vPosition;
			public D3DVector vVelocity;
			public uint32 dwInsideConeAngle;
			public uint32 dwOutsideConeAngle;
			public D3DVector vConeOrientation;
			public int32 lConeOutsideVolume;
			public float flMinDistance;
			public float flMaxDistance;
			public uint32 dwMode;
		}

		[CRepr]
		public struct _3DListener
		{
			public uint32 dwSize;
			public D3DVector vPosition;
			public D3DVector vVelocity;
			public D3DVector vOrientFront;
			public D3DVector vOrientTop;
			public float flDistanceFactor;
			public float flRolloffFactor;
			public float flDopplerFactor;
		}

		[CRepr]
		public struct CaptureCapabilities
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 dwFormats;
			public uint32 dwChannels;
		}

		[CRepr]
		public struct CaptureBufferDescription1
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 dwBufferBytes;
			public uint32 dwReserved;
			public WaveFormatEx* lpwfxFormat;
		}

		[CRepr]
		public struct CaptureBufferDescription
		{
			public uint32 dwSize;
			public CaptureBufferCapabilityFlags dwFlags;
			public uint32 dwBufferBytes;
			public uint32 dwReserved;
			public WaveFormatEx* lpwfxFormat;
#if DIRECTSOUND_VERSION0800
			public uint32           dwFXCount;
			public EffectDescription* lpDSCFXDesc;
#endif
		}

		[CRepr]
		public struct CaptureBufferCapabilities
		{
			public uint32 dwSize;
			public CaptureBufferCapabilityFlags dwFlags;
			public uint32 dwBufferBytes;
			public uint32 dwReserved;
		}

		[CRepr]
		public struct BufferPositionNotify
		{
			public uint32 dwOffset;
			public EventHandle hEventNotify;
		}

		//
		// DirectSound API
		//

		//typedef BOOL(CALLBACK* LPDSENUMCALLBACKA) (LPGUID, LPCSTR, LPCSTR, LPVOID);
		//typedef BOOL(CALLBACK* LPDSENUMCALLBACKW) (LPGUID, LPCWSTR, LPCWSTR, LPVOID);

		typealias EnumCallbackA = function IntBool(Guid*, char8*, char8*, void*);
		typealias EnumCallbackW = function IntBool(Guid*, char16*, char16*, void*);

		public static HResult DirectSoundCreate(Guid* pcGuidDevice, out IDirectSound dsound)
		{
			dsound = ?;
			return DirectSoundCreate(pcGuidDevice, (.)&dsound, null);
		}
		public static HResult DirectSoundCreate(Guid* pcGuidDevice, ref IDirectSound dsound) => DirectSoundCreate(pcGuidDevice, (.)&dsound, null);

		[Import(DSoundDll), CLink]
		public static extern HResult DirectSoundCreate(Guid* pcGuidDevice, IDirectSound* ppDS, LPUNKNOWN pUnkOuter);

		[CLink, Inline]
		public static HResult DirectSoundEnumerate(EnumCallbackA pDSEnumCallback, void* pContext) => DirectSoundEnumerateA(pDSEnumCallback, pContext);

		[Import(DSoundDll), CLink]
		public static extern HResult DirectSoundEnumerateA(EnumCallbackA pDSEnumCallback, void* pContext);
		[Import(DSoundDll), CLink]
		public static extern HResult DirectSoundEnumerateW(EnumCallbackW pDSEnumCallback, void* pContext);

		[Import(DSoundDll), CLink]
		public static extern HResult DirectSoundCaptureCreate(Guid* pcGuidDevice, IDirectSoundCapture* ppDSC, LPUNKNOWN pUnkOuter);

		[CLink, Inline]
		public static HResult DirectSoundCaptureEnumerate(EnumCallbackA pDSEnumCallback, void* pContext) => DirectSoundCaptureEnumerateA(pDSEnumCallback, pContext);

		[Import(DSoundDll), CLink]
		public static extern HResult DirectSoundCaptureEnumerateA(EnumCallbackA pDSEnumCallback, void* pContext);
		[Import(DSoundDll), CLink]
		public static extern HResult DirectSoundCaptureEnumerateW(EnumCallbackW pDSEnumCallback, void* pContext);

#if DIRECTSOUND_VERSION0800
		[Import(DSoundDll), CLink]
		public static extern HResult DirectSoundCreate8(Guid* pcGuidDevice, IDirectSound8* ppDS8, LPUNKNOWN pUnkOuter);
		[Import(DSoundDll), CLink]
		public static extern HResult DirectSoundCaptureCreate8(Guid* pcGuidDevice, IDirectSoundCapture8* ppDSC8, LPUNKNOWN pUnkOuter);
		[Import(DSoundDll), CLink]
		public static extern HResult DirectSoundFullDuplexCreate(Guid* pcGuidCaptureDevice, Guid* pcGuidRenderDevice,
				CaptureBufferDescription* pcDSCBufferDesc, BufferDescription* pcDSBufferDesc, HWnd hWnd,
				uint32 dwLevel, IDirectSoundFullDuplex* ppDSFD, IDirectSoundCaptureBuffer8* ppDSCBuffer8,
				IDirectSoundBuffer8*ppDSBuffer8, LPUNKNOWN pUnkOuter);

		//typealias DirectSoundFullDuplexCreate8 = DirectSoundFullDuplexCreate;

		[Import(DSoundDll), CLink]
		public static extern HResult GetDeviceID(Guid* pGuidSrc, Guid* pGuidDest);
#endif // DIRECTSOUND_VERSION0800

		typealias EnumCallback = EnumCallbackA;

		//
		// IUnknown
		//

		[CRepr]
		struct IUnknownVtbl
		{
			/*** IUnknown methods ***/
			public function HResult(Self** _ref, Guid* riid, void** ppvObject) QueryInterface;
			public function uint32 (Self** _ref) AddRef;
			public function uint32 (Self** _ref) Release;
		}

		[CRepr]
		struct IUnknown{
			public IUnknownVtbl** p;

			public HResult QueryInterface<T>(T* b)
			{
				const var iid = typeof(T).GetCustomAttribute<IIDAttribute>().Get().guid;
				return (*p).QueryInterface(p, &iid, (.)b);
			}
			public uint32 AddRef() => (*p).AddRef(p);
			public uint32 Release() => (*p).Release(p);
		}

		[CRepr]
		struct IReferenceClockVtbl : IUnknownVtbl
		{
			// IReferenceClock methods
			public function HResult(Self** _ref, DateTime* pTime) GetTime;
			public function HResult(Self** _ref, DateTime rtBaseTime, DateTime rtStreamTime, Handle hEvent, uint32* pdwAdviseCookie) AdviseTime;
			public function HResult(Self** _ref, DateTime rtStartTime, DateTime rtPeriodTime, Handle hSemaphore, uint32* pdwAdviseCookie) AdvisePeriodic;
			public function HResult(Self** _ref, uint32 dwAdviseCookie) Unadvise;
		}

		[CRepr, IID(.(0x56a86897, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70))]
		public struct IReferenceClock : IUnknown
		{
			new IReferenceClockVtbl** p => (.)base.p;

			public HResult GetTime(DateTime* pTime)																					=> (*p).GetTime(p, pTime);
			public HResult AdviseTime(DateTime rtBaseTime, DateTime rtStreamTime, Handle hEvent, uint32* pdwAdviseCookie)			=> (*p).AdviseTime(p, rtBaseTime, rtStreamTime, hEvent, pdwAdviseCookie);
			public HResult AdvisePeriodic(DateTime rtStartTime, DateTime rtPeriodTime, Handle hSemaphore, uint32* pdwAdviseCookie)	=> (*p).AdvisePeriodic(p, rtStartTime, rtPeriodTime, hSemaphore, pdwAdviseCookie);
			public HResult Unadvise(uint32 dwAdviseCookie)																			=> (*p).Unadvise(p, dwAdviseCookie);
		}

		[CRepr]
		struct IDirectSoundVtbl : IUnknownVtbl
		{
			// IDirectSound methods
			public function HResult(Self** _ref, BufferDescription* pcDSBufferDesc, IDirectSoundBuffer* ppDSBuffer, LPUNKNOWN pUnkOuter) CreateSoundBuffer;
			public function HResult(Self** _ref, Capabilities* pDSCaps) GetCaps;
			public function HResult(Self** _ref, IDirectSoundBuffer pDSBufferOriginal, IDirectSoundBuffer* ppDSBufferDuplicate) DuplicateSoundBuffer;
			public function HResult(Self** _ref, HWnd hwnd, CooperativeLevel dwLevel) SetCooperativeLevel;
			public function HResult(Self** _ref) Compact;
			public function HResult(Self** _ref, uint32* pdwSpeakerConfig) GetSpeakerConfig;
			public function HResult(Self** _ref, uint32 dwSpeakerConfig) SetSpeakerConfig;
			public function HResult(Self** _ref, Guid* pcGuidDevice) Initialize;
		};

		[CRepr, IID(.(0x279AFA83, 0x4981, 0x11CE, 0xA5, 0x21, 0x00, 0x20, 0xAF, 0x0B, 0xE5, 0x60))]
		public struct IDirectSound : IUnknown
		{
			new IDirectSoundVtbl** p => (.)base.p;

			public HResult CreateSoundBuffer(BufferDescription* pcDSBufferDesc, ref IDirectSoundBuffer ppDSBuffer) => (*p).CreateSoundBuffer(p, pcDSBufferDesc, (.)&ppDSBuffer, null);
			public HResult CreateSoundBuffer(BufferDescription* pcDSBufferDesc, out IDirectSoundBuffer ppDSBuffer)
			{
				ppDSBuffer = ?;
				return (*p).CreateSoundBuffer(p, pcDSBufferDesc, (.)&ppDSBuffer, null);
			}
			public HResult GetCaps(Capabilities* pDSCaps)																		=> (*p).GetCaps(p, pDSCaps);
			public HResult DuplicateSoundBuffer(IDirectSoundBuffer pDSBufferOriginal, IDirectSoundBuffer* ppDSBufferDuplicate)	=> (*p).DuplicateSoundBuffer(p, pDSBufferOriginal, ppDSBufferDuplicate);
			public HResult SetCooperativeLevel(HWnd hwnd, CooperativeLevel dwLevel)												=> (*p).SetCooperativeLevel(p, hwnd, dwLevel);
			public HResult Compact()																							=> (*p).Compact(p);
			public HResult GetSpeakerConfig(uint32* pdwSpeakerConfig)															=> (*p).GetSpeakerConfig(p, pdwSpeakerConfig);
			public HResult SetSpeakerConfig(uint32 dwSpeakerConfig)																=> (*p).SetSpeakerConfig(p, dwSpeakerConfig);

			public HResult GetSpeakerConfig(SpeakerConfig* SpeakerConfig, SpeakerGeometry* SpeakerGeometry)
			{
				uint32 ConfigCombined = ?;
				var result = (*p).GetSpeakerConfig(p, &ConfigCombined);
				if (result == 0)
				{
					*SpeakerConfig = DSSPEAKER_CONFIG(ConfigCombined);
					*SpeakerGeometry = DSSPEAKER_GEOMETRY(ConfigCombined);
				}
				return result;
			}
			public HResult SetSpeakerConfig(SpeakerConfig SpeakerConfig, SpeakerGeometry SpeakerGeometry) => (*p).SetSpeakerConfig(p, DSSPEAKER_COMBINED(SpeakerConfig, SpeakerGeometry));

			public HResult Initialize(Guid* pcGuidDevice) => (*p).Initialize(p, pcGuidDevice);
		}

#if DIRECTSOUND_VERSION0800

		//
		// IDirectSound8
		//

		[CRepr]
		struct IDirectSound8Vtbl : IDirectSoundVtbl
		{
			// IDirectSound8 methods
			public function HResult (Self** p, uint32* pdwCertified) VerifyCertification;
		}

		[CRepr, IID(.(0xC50A7E93, 0xF395, 0x4834, 0x9E, 0xF6, 0x7F, 0xA9, 0x9D, 0xE5, 0x09, 0x66))]
		struct IDirectSound8 : IDirectSound
		{
			new IDirectSound8Vtbl** p => (.)base.p;

			public HResult VerifyCertification(uint32* pdwCertified)	=> (**p).VerifyCertification(p, pdwCertified);
		}

#endif // DIRECTSOUND_VERSION0800

		//
		// IDirectSoundBuffer
		//

		[CRepr]
		struct IDirectSoundBufferVtbl : IUnknownVtbl
		{
			// IDirectSoundBuffer methods
			public function HResult(Self** _ref, BufferCapabilities* pDSBufferCaps) GetCaps;
			public function HResult(Self** _ref, uint32* pdwCurrentPlayCursor, uint32* pdwCurrentWriteCursor) GetCurrentPosition;
			public function HResult(Self** _ref, WaveFormatEx* pwfxFormat, uint32 dwSizeAllocated, uint32* pdwSizeWritten) GetFormat;
			public function HResult(Self** _ref, int32* plVolume) GetVolume;
			public function HResult(Self** _ref, int32* plPan) GetPan;
			public function HResult(Self** _ref, uint32* pdwFrequency) GetFrequency;
			public function HResult(Self** _ref, BufferStatus* pdwStatus) GetStatus;
			public function HResult(Self** _ref, IDirectSound pDirectSound, BufferDescription* pcDSBufferDesc) Initialize;
			public function HResult(Self** _ref, uint32 dwOffset, uint32 dwBytes, void** ppvAudioPtr1, uint32* pdwAudioBytes1, void** ppvAudioPtr2, uint32* pdwAudioBytes2, BufferLockFlags dwFlags) Lock;
			public function HResult(Self** _ref, uint32 dwReserved1, uint32 dwPriority, PlayFlags dwFlags) Play;
			public function HResult(Self** _ref, uint32 dwNewPosition) SetCurrentPosition;
			public function HResult(Self** _ref, WaveFormatEx* pcfxFormat) SetFormat;
			public function HResult(Self** _ref, int32 lVolume) SetVolume;
			public function HResult(Self** _ref, int32 lPan) SetPan;
			public function HResult(Self** _ref, uint32 dwFrequency) SetFrequency;
			public function HResult(Self** _ref) Stop;
			public function HResult(Self** _ref, void* pvAudioPtr1, uint32 dwAudioBytes1, void* pvAudioPtr2, uint32 dwAudioBytes2) Unlock;
			public function HResult(Self** _ref) Restore;
		}

		[CRepr, IID(.(0x279AFA85, 0x4981, 0x11CE, 0xA5, 0x21, 0x00, 0x20, 0xAF, 0x0B, 0xE5, 0x60))]
		public struct IDirectSoundBuffer : IUnknown
		{
			new IDirectSoundBufferVtbl** p => (.)base.p;

			public HResult GetCaps(BufferCapabilities* pDSBufferCaps)											=> (*p).GetCaps(p, pDSBufferCaps);
			public HResult GetCurrentPosition(uint32* pdwCurrentPlayCursor, uint32* pdwCurrentWriteCursor)	=> (*p).GetCurrentPosition(p, pdwCurrentPlayCursor, pdwCurrentWriteCursor);
			public HResult GetFormat(WaveFormatEx* pwfxFormat, uint32 dwSizeAllocated, uint32* pdwSizeWritten)	=> (*p).GetFormat(p, pwfxFormat, dwSizeAllocated, pdwSizeWritten);
			public HResult GetVolume(int32* plVolume)															=> (*p).GetVolume(p, plVolume);
			public HResult GetPan(int32* plPan)																	=> (*p).GetPan(p, plPan);
			public HResult GetFrequency(uint32* pdwFrequency)													=> (*p).GetFrequency(p, pdwFrequency);
			public HResult GetStatus(BufferStatus* pdwStatus)													=> (*p).GetStatus(p, pdwStatus);
			public HResult Initialize(IDirectSound pDirectSound, BufferDescription* pcDSBufferDesc) => (*p).Initialize(p, pDirectSound, pcDSBufferDesc);
			public HResult Lock(uint32 dwOffset, uint32 dwBytes, void** ppvAudioPtr1, uint32* pdwAudioBytes1, void** ppvAudioPtr2, uint32* pdwAudioBytes2, BufferLockFlags dwFlags)
				=> (*p).Lock(p, dwOffset, dwBytes, ppvAudioPtr1, pdwAudioBytes1, ppvAudioPtr2, pdwAudioBytes2, dwFlags);
			public HResult Play(uint32 dwReserved1, uint32 dwPriority, PlayFlags dwFlags)								=> (*p).Play(p, dwReserved1, dwPriority, dwFlags);
			public HResult SetCurrentPosition(uint32 dwNewPosition)														=> (*p).SetCurrentPosition(p, dwNewPosition);
			public HResult SetFormat(WaveFormatEx* pcfxFormat)															=> (*p).SetFormat(p, pcfxFormat);
			public HResult SetVolume(int32 lVolume)																		=> (*p).SetVolume(p, lVolume);
			public HResult SetPan(int32 lPan)																			=> (*p).SetPan(p, lPan);
			public HResult SetFrequency(uint32 dwFrequency)																=> (*p).SetFrequency(p, dwFrequency);
			public HResult Stop()																						=> (*p).Stop(p);
			public HResult Unlock(void* pvAudioPtr1, uint32 dwAudioBytes1, void* pvAudioPtr2, uint32 dwAudioBytes2)	=> (*p).Unlock(p, pvAudioPtr1, dwAudioBytes1, pvAudioPtr2, dwAudioBytes2);
			public HResult Restore()																					=> (*p).Restore(p);
		}

#if DIRECTSOUND_VERSION0800

		//
		// IDirectSoundBuffer8
		//

		[CRepr]
		struct IDirectSoundBuffer8Vtbl : IDirectSoundBufferVtbl
		{
			// IDirectSoundBuffer8 methods
			public function HResult (Self** p, uint32 dwEffectsCount, EffectDescription* pDSFXDesc, uint32* pdwResultCodes) SetFX;
			public function HResult (Self** p, uint32 dwFlags, uint32 dwEffectsCount, uint32* pdwResultCodes) AcquireResources;
			public function HResult (Self** p, Guid* rguidObject, uint32 dwIndex, Guid* rguidInterface, void* *ppObject) GetObjectInPath;
		}

		[CRepr, IID(.(0x6825a449, 0x7524, 0x4d82, 0x92, 0x0f, 0x50, 0xe3, 0x6a, 0xb3, 0xab, 0x1e))]
		struct IDirectSoundBuffer8 : IDirectSoundBuffer
		{
			new IDirectSoundBuffer8Vtbl** p => (.)base.p

			// IDirectSoundBuffer8 methods
			public HResult SetFX(uint32 dwEffectsCount, EffectDescription* pDSFXDesc, uint32* pdwResultCodes)			=> (*p).SetFX(p, dwEffectsCount, pDSFXDesc, pdwResultCodes);
			public HResult AcquireResources(uint32 dwFlags, uint32 dwEffectsCount, uint32* pdwResultCodes)				=> (*p).AcquireResources(p, dwFlags, dwEffectsCount, pdwResultCodes);
			public HResult GetObjectInPath(Guid* rguidObject, uint32 dwIndex, Guid* rguidInterface, void** ppObject)	=> (*p).GetObjectInPath(p, rguidObject, dwIndex, rguidInterface, ppObject);
		}

		// Special GUID meaning "select all objects" for use in GetObjectInPath()
		const Guid GUID_All_Objects = .(0xaa114de5, 0xc262, 0x4169, 0xa1, 0xc8, 0x23, 0xd6, 0x98, 0xcc, 0x73, 0xb5);

#endif // DIRECTSOUND_VERSION0800

		//
		// IDirectSound3DListener
		//

		[CRepr]
		struct IDirectSound3DListenerVtbl : IUnknownVtbl
		{
			// IDirectSound3DListener methods
			public function HResult(Self** _ref, _3DListener* pListener) GetAllParameters;
			public function HResult(Self** _ref, float* pflDistanceFactor) GetDistanceFactor;
			public function HResult(Self** _ref, float* pflDopplerFactor) GetDopplerFactor;
			public function HResult(Self** _ref, D3DVector* pvOrientFront, D3DVector* pvOrientTop) GetOrientation;
			public function HResult(Self** _ref, D3DVector* pvPosition) GetPosition;
			public function HResult(Self** _ref, float* pflRolloffFactor) GetRolloffFactor;
			public function HResult(Self** _ref, D3DVector* pvVelocity) GetVelocity;
			public function HResult(Self** _ref, _3DListener* pcListener, ApplyMode Apply) SetAllParameters;
			public function HResult(Self** _ref, float flDistanceFactor, ApplyMode Apply) SetDistanceFactor;
			public function HResult(Self** _ref, float flDopplerFactor, ApplyMode Apply) SetDopplerFactor;
			public function HResult(Self** _ref, float xFront, float yFront, float zFront,
				float xTop, float yTop, float zTop, ApplyMode Apply) SetOrientation;
			public function HResult(Self** _ref, float x, float y, float z, ApplyMode Apply) SetPosition;
			public function HResult(Self** _ref, float flRolloffFactor, ApplyMode Apply) SetRolloffFactor;
			public function HResult(Self** _ref, float x, float y, float z, ApplyMode Apply) SetVelocity;
			public function HResult(Self** _ref) CommitDeferredSettings;
		};

		[CRepr, IID(.(0x279AFA84, 0x4981, 0x11CE, 0xA5, 0x21, 0x00, 0x20, 0xAF, 0x0B, 0xE5, 0x60))]
		public struct IDirectSound3DListener : IUnknown
		{
			new IDirectSound3DListenerVtbl** p => (.)base.p;

			public HResult GetAllParameters(_3DListener* pListener)							=> (*p).GetAllParameters(p, pListener);
			public HResult GetDistanceFactor(float* pflDistanceFactor)						=> (*p).GetDistanceFactor(p, pflDistanceFactor);
			public HResult GetDopplerFactor(float* pflDopplerFactor)						=> (*p).GetDopplerFactor(p, pflDopplerFactor);
			public HResult GetOrientation(D3DVector* pvOrientFront, D3DVector* pvOrientTop)	=> (*p).GetOrientation(p, pvOrientFront, pvOrientTop);
			public HResult GetPosition(D3DVector* pvPosition)								=> (*p).GetPosition(p, pvPosition);
			public HResult GetRolloffFactor(float* pflRolloffFactor)						=> (*p).GetRolloffFactor(p, pflRolloffFactor);
			public HResult GetVelocity(D3DVector* pvVelocity)								=> (*p).GetVelocity(p, pvVelocity);
			public HResult SetAllParameters(_3DListener* pcListener, ApplyMode Apply)		=> (*p).SetAllParameters(p, pcListener, Apply);
			public HResult SetDistanceFactor(float flDistanceFactor, ApplyMode Apply)		=> (*p).SetDistanceFactor(p, flDistanceFactor, Apply);
			public HResult SetDopplerFactor(float flDopplerFactor, ApplyMode Apply)			=> (*p).SetDopplerFactor(p, flDopplerFactor, Apply);
			public HResult SetOrientation(float xFront, float yFront, float zFront, float xTop, float yTop, float zTop, ApplyMode Apply)
																							=> (*p).SetOrientation(p, xFront, yFront, zFront, xTop, yTop, zTop, Apply);
			public HResult SetPosition(float x, float y, float z, ApplyMode Apply)			=> (*p).SetPosition(p, x, y, z, Apply);
			public HResult SetRolloffFactor(float flRolloffFactor, ApplyMode Apply)			=> (*p).SetRolloffFactor(p, flRolloffFactor, Apply);
			public HResult SetVelocity(float x, float y, float z, ApplyMode Apply)			=> (*p).SetVelocity(p, x, y, z, Apply);
			public HResult CommitDeferredSettings()											=> (*p).CommitDeferredSettings(p);
		}

		[CRepr]
		struct IDirectSound3DBufferVtbl : IUnknownVtbl
		{
			// IDirectSound3DBuffer methods
			public function HResult(Self** _ref, _3DBuffer* pDs3dBuffer) GetAllParameters;
			public function HResult(Self** _ref, uint32* pdwInsideConeAngle, uint32* pdwOutsideConeAngle) GetConeAngles;
			public function HResult(Self** _ref, D3DVector* pvOrientation) GetConeOrientation;
			public function HResult(Self** _ref, int32* plConeOutsideVolume) GetConeOutsideVolume;
			public function HResult(Self** _ref, float* pflMaxDistance) GetMaxDistance;
			public function HResult(Self** _ref, float* pflMinDistance) GetMinDistance;
			public function HResult(Self** _ref, _3DMode pdwMode) GetMode;
			public function HResult(Self** _ref, D3DVector* pvPosition) GetPosition;
			public function HResult(Self** _ref, D3DVector* pvVelocity) GetVelocity;
			public function HResult(Self** _ref, _3DBuffer* pcDs3dBuffer, ApplyMode Apply) SetAllParameters;
			public function HResult(Self** _ref, uint32 dwInsideConeAngle, uint32 dwOutsideConeAngle, ApplyMode Apply) SetConeAngles;
			public function HResult(Self** _ref, float x, float y, float z, ApplyMode Apply) SetConeOrientation;
			public function HResult(Self** _ref, int32 lConeOutsideVolume, ApplyMode Apply) SetConeOutsideVolume;
			public function HResult(Self** _ref, float flMaxDistance, ApplyMode Apply) SetMaxDistance;
			public function HResult(Self** _ref, float flMinDistance, ApplyMode Apply) SetMinDistance;
			public function HResult(Self** _ref, uint32 dwMode, ApplyMode Apply) SetMode;
			public function HResult(Self** _ref, float x, float y, float z, ApplyMode Apply) SetPosition;
			public function HResult(Self** _ref, float x, float y, float z, ApplyMode Apply) SetVelocity;
		}

		[CRepr, IID(.(0x279AFA86, 0x4981, 0x11CE, 0xA5, 0x21, 0x00, 0x20, 0xAF, 0x0B, 0xE5, 0x60))]
		public struct IDirectSound3DBuffer : IUnknown
		{
			new IDirectSound3DBufferVtbl** p = (.)base.p;

			public HResult GetAllParameters(_3DBuffer* pDs3dBuffer)									=> (*p).GetAllParameters(p, pDs3dBuffer);
			public HResult GetConeAngles(uint32* pdwInsideConeAngle, uint32* pdwOutsideConeAngle)	=> (*p).GetConeAngles(p, pdwInsideConeAngle, pdwOutsideConeAngle);
			public HResult GetConeOrientation(D3DVector* pvOrientation)								=> (*p).GetConeOrientation(p, pvOrientation);
			public HResult GetConeOutsideVolume(int32* plConeOutsideVolume)							=> (*p).GetConeOutsideVolume(p, plConeOutsideVolume);
			public HResult GetMinDistance(float* pflMaxDistance)									=> (*p).GetMinDistance(p, pflMaxDistance);
			public HResult GetMaxDistance(float* pflMinDistance)									=> (*p).GetMaxDistance(p, pflMinDistance);
			public HResult GetMode(_3DMode pdwMode)													=> (*p).GetMode(p, pdwMode);
			public HResult GetPosition(D3DVector* pvPosition)										=> (*p).GetPosition(p, pvPosition);
			public HResult GetVelocity(D3DVector* pvVelocity)										=> (*p).GetVelocity(p, pvVelocity);
			public HResult SetAllParameters(_3DBuffer* pcDs3dBuffer, ApplyMode Apply)				=> (*p).SetAllParameters(p, pcDs3dBuffer, Apply);
			public HResult SetConeAngles(uint32 dwInsideConeAngle, uint32 dwOutsideConeAngle, ApplyMode Apply) 
																									=> (*p).SetConeAngles(p, dwInsideConeAngle, dwOutsideConeAngle, Apply);
			public HResult SetConeOrientation(float x, float y, float z, ApplyMode Apply)			=> (*p).SetConeOrientation(p, x, y, z, Apply);
			public HResult SetConeOutsideVolume(int32 lConeOutsideVolume, ApplyMode Apply)			=> (*p).SetConeOutsideVolume(p, lConeOutsideVolume, Apply);
			public HResult SetMaxDistance(float flMaxDistance, ApplyMode Apply)						=> (*p).SetMaxDistance(p, flMaxDistance, Apply);
			public HResult SetMinDistance(float flMinDistance, ApplyMode Apply)						=> (*p).SetMinDistance(p, flMinDistance, Apply);
			public HResult SetMode(uint32 mode, ApplyMode Apply)									=> (*p).SetMode(p, mode, Apply);
			public HResult SetPosition(float x, float y, float z, ApplyMode Apply)					=> (*p).SetPosition(p, x, y, z, Apply);
			public HResult SetVelocity(float x, float y, float z, ApplyMode Apply)					=> (*p).SetVelocity(p, x, y, z, Apply);
		}

		//
		// IDirectSoundCapture
		//

		[CRepr]
		struct IDirectSoundCaptureVtbl : IUnknownVtbl
		{
			// IDirectSoundCapture methods
			public function HResult(Self** _ref, CaptureBufferDescription* pcDSCBufferDesc, IDirectSoundCaptureBuffer ppDSCBuffer, LPUNKNOWN pUnkOuter) CreateCaptureBuffer;
			public function HResult(Self** _ref, CaptureCapabilities* pDSCCaps) GetCaps;
			public function HResult(Self** _ref, Guid* pcGuidDevice) Initialize;
		}

		[CRepr, IID(.(0xb0210781, 0x89cd, 0x11d0, 0xaf, 0x8, 0x0, 0xa0, 0xc9, 0x25, 0xcd, 0x16))]
		public struct IDirectSoundCapture : IUnknown
		{
			new IDirectSoundCaptureVtbl** p => (.)base.p;

			public HResult CreateCaptureBuffer(CaptureBufferDescription* pcDSCBufferDesc, IDirectSoundCaptureBuffer ppDSCBuffer, LPUNKNOWN pUnkOuter)	
																	=> (*p).CreateCaptureBuffer(p, pcDSCBufferDesc, ppDSCBuffer, pUnkOuter);
			public HResult GetCaps(CaptureCapabilities* pDSCCaps)	=> (*p).GetCaps(p, pDSCCaps);
			public HResult Initialize(Guid* pcGuidDevice)			=> (*p).Initialize(p, pcGuidDevice);
		}

		//
		// IDirectSoundCaptureBuffer
		//

		[CRepr]
		struct IDirectSoundCaptureBufferVtbl : IUnknownVtbl
		{
			// IDirectSoundCaptureBuffer methods
			public function void(Self** _ref, CaptureBufferCapabilities* pDSCBCaps) GetCaps;
			public function void(Self** _ref, uint32* pdwCapturePosition, uint32* pdwReadPosition) GetCurrentPosition;
			public function void(Self** _ref, WaveFormatEx* pwfxFormat, uint32 dwSizeAllocated, uint32* pdwSizeWritten) GetFormat;
			public function void(Self** _ref, uint32* pdwStatus) GetStatus;
			public function void(Self** _ref, IDirectSoundCapture pDirectSoundCapture, CaptureBufferDescription* pcDSCBufferDesc) Initialize;
			public function void(Self** _ref, uint32 dwOffset, uint32 dwBytes, void** ppvAudioPtr1, uint32* pdwAudioBytes1, void** ppvAudioPtr2, uint32* pdwAudioBytes2, uint32 dwFlags) Lock;
			public function void(Self** _ref, uint32 dwFlags) Start;
			public function void(Self** _ref) Stop;
			public function void(Self** _ref, void* pvAudioPtr1, uint32 dwAudioBytes1, void* pvAudioPtr2, uint32 dwAudioBytes2) Unlock;
		};

		[CRepr, IID(.(0xb0210782, 0x89cd, 0x11d0, 0xaf, 0x8, 0x0, 0xa0, 0xc9, 0x25, 0xcd, 0x16))]
		public struct IDirectSoundCaptureBuffer : IUnknown
		{
			new IDirectSoundCaptureBufferVtbl** p => (.)base.p;;

			public void GetCaps(CaptureBufferCapabilities* pDSCBCaps)	=> (*p).GetCaps(p, pDSCBCaps);
			public void GetCurrentPosition(uint32* pdwCapturePosition, uint32* pdwReadPosition)
														=> (*p).GetCurrentPosition(p, pdwCapturePosition, pdwReadPosition);
			public void GetFormat(WaveFormatEx* pwfxFormat, uint32 dwSizeAllocated, uint32* pdwSizeWritten)
														=> (*p).GetFormat(p, pwfxFormat, dwSizeAllocated, pdwSizeWritten);
			public void GetStatus(uint32* pdwStatus)	=> (*p).GetStatus(p, pdwStatus);
			public void Initialize(IDirectSoundCapture pDirectSoundCapture, CaptureBufferDescription* pcDSCBufferDesc)
														=> (*p).Initialize(p, pDirectSoundCapture, pcDSCBufferDesc);
			public void Lock(uint32 dwOffset, uint32 dwBytes, void** ppvAudioPtr1, uint32* pdwAudioBytes1, void** ppvAudioPtr2, uint32* pdwAudioBytes2, uint32 dwFlags)	
														=> (*p).Lock(p, dwOffset, dwBytes, ppvAudioPtr1, pdwAudioBytes1, ppvAudioPtr2, pdwAudioBytes2, dwFlags);
			public void Start(uint32 dwFlags)			=> (*p).Start(p, dwFlags);
			public void Stop()							=> (*p).Stop(p);
			public void Unlock(void* pvAudioPtr1, uint32 dwAudioBytes1, void* pvAudioPtr2, uint32 dwAudioBytes2)
														=> (*p).Unlock(p, pvAudioPtr1, dwAudioBytes1, pvAudioPtr2, dwAudioBytes2);
		}

#if DIRECTSOUND_VERSION0800

		//
		// IDirectSoundCaptureBuffer8
		//

		[CRepr]
		struct IDirectSoundCaptureBuffer8Vtbl : IDirectSoundCaptureBufferVtbl
		{
			// IDirectSoundCaptureBuffer8 methods
			public function HResult (Self** p, Guid* rguidObject, uint32 dwIndex, Guid* rguidInterface, void** ppObject) GetObjectInPath;
			public function HResult (Self** p, uint32 dwFXCount, uint32* pdwFXStatus) GetFXStatus;//TODO: Interface pointer is missing from original declaration. test to see if its needed
		};

		[CRepr, IID(.(0x990df4, 0xdbb, 0x4872, 0x83, 0x3e, 0x6d, 0x30, 0x3e, 0x80, 0xae, 0xb6))]
		struct IDirectSoundCaptureBuffer8 : IDirectSoundCaptureBuffer
		{
			new IDirectSoundCaptureBuffer8Vtbl** p => (.)base.p;

			public HResult GetObjectInPath(Guid* rguidObject, uint32 dwIndex, Guid* rguidInterface, void** ppObject)	=> (*p).GetObjectInPath(p, rguidObject, dwIndex, rguidInterface, ppObject);
			public HResult GetFXStatus(uint32 dwFXCount, uint32* pdwFXStatus)											=> (*p).GetFXStatus(p, dwFXCount, pdwFXStatus);
		}

#endif // DIRECTSOUND_VERSION0800

		//
		// IDirectSoundNotify
		//

		[CRepr]
		struct IDirectSoundNotifyVtbl : IUnknownVtbl
		{
			// IDirectSoundNotify methods
			public function void(Self** _ref, uint32 dwPositionNotifies, BufferPositionNotify* pcPositionNotifies) SetNotificationPositions;
		};

		[CRepr, IID(.(0xb0210783, 0x89cd, 0x11d0, 0xaf, 0x8, 0x0, 0xa0, 0xc9, 0x25, 0xcd, 0x16))]
		public struct IDirectSoundNotify : IUnknown
		{
			new IDirectSoundNotifyVtbl** p => (.)base.p;;

			public void SetNotificationPositions(uint32 dwPositionNotifies, BufferPositionNotify* pcPositionNotifies) => (*p).SetNotificationPositions(p, dwPositionNotifies, pcPositionNotifies);
		}

		const int KSPROPERTY_SUPPORT_GET = 0x00000001;
		const int KSPROPERTY_SUPPORT_SET = 0x00000002;

		[CRepr]
		struct IKsPropertySetVtbl : IUnknownVtbl
		{
			// IKsPropertySet methods
			public function HResult(Self** _ref, Guid* rguidPropSet, uint32 ulId, void* pInstanceData, uint32 ulInstanceLength, void* pPropertyData, uint32 ulDataLength, uint32* pulBytesReturned) Get;
			public function HResult(Self** _ref, Guid* rguidPropSet, uint32 ulId, void* pInstanceData, uint32 ulInstanceLength, void* pPropertyData, uint32 ulDataLength) Set;
			public function HResult(Self** _ref, Guid* rguidPropSet, uint32 ulId, uint32* pulTypeSupport) QuerySupport;
		};

		[CRepr, IID(.(0x31efac30, 0x515c, 0x11d0, 0xa9, 0xaa, 0x00, 0xaa, 0x00, 0x61, 0xbe, 0x93))]
		public struct IKsPropertySet : IUnknown
		{
			new IKsPropertySetVtbl** p => (.)base.p;;

			public HResult Get(Guid* rguidPropSet, uint32 ulId, void* pInstanceData, uint32 ulInstanceLength, void* pPropertyData, uint32 ulDataLength, uint32* pulBytesReturned)
																									=> (*p).Get(p, rguidPropSet, ulId, pInstanceData, ulInstanceLength, pPropertyData, ulDataLength, pulBytesReturned);
			public HResult Set(Guid* rguidPropSet, uint32 ulId, void* pInstanceData, uint32 ulInstanceLength, void* pPropertyData, uint32 ulDataLength)
																									=> (*p).Set(p, rguidPropSet, ulId, pInstanceData, ulInstanceLength, pPropertyData, ulDataLength);
			public HResult QuerySupport(Guid* rguidPropSet, uint32 ulId, uint32* pulTypeSupport)	=> (*p).QuerySupport(p, rguidPropSet, ulId, pulTypeSupport);
		}

#if DIRECTSOUND_VERSION0800

		//
		// IDirectSoundFXGargle
		//

		struct FXGargle
		{
			public uint32		dwRateHz;               // Rate of modulation in hz
			public WaveShape	dwWaveShape;            // DSFXGARGLE_WAVE_xxx

			public const uint32 RateHzMin	= 1;
			public const uint32 RateHzMax	= 1000;
		}

		public enum WaveShape : uint32
		{
			Triangle	= 0,
			Square		= 1
		}

		[CRepr]
		struct IDirectSoundFXGargleVtbl : IUnknownVtbl
		{
			// IDirectSoundFXGargle methods
			public function HResult (Self** p, FXGargle* pcDsFxGargle) SetAllParameters;
			public function HResult (Self** p, FXGargle* pDsFxGargle) GetAllParameters;
		};

		[CRepr, IID(.(0xd616f352, 0xd622, 0x11ce, 0xaa, 0xc5, 0x00, 0x20, 0xaf, 0x0b, 0x99, 0xa3))]
		public struct IDirectSoundFXGargle : IUnknown
		{
			new IDirectSoundFXGargleVtbl** p => (.)base.p;

			public HResult SetAllParameters(FXGargle* pcDsFxGargle)	=> (*p).SetAllParameters(p, pcDsFxGargle);
			public HResult GetAllParameters(FXGargle* pDsFxGargle)	=> (*p).GetAllParameters(p, pDsFxGargle);
		}
		//
		// IDirectSoundFXChorus
		//

		struct FXChorus
		{
			float       fWetDryMix;
			float       fDepth;
			float       fFeedback;
			float       fFrequency;
			WaveShape        lWaveform;          // LFO shape; DSFXCHORUS_WAVE_xxx
			float       fDelay;
			int32        lPhase;
		}

		const float DSFXCHORUS_WETDRYMIXMin       = 0.0f;
		const float DSFXCHORUS_WETDRYMIXMax       = 100.0f;
		const float DSFXCHORUS_DEPTHMin           = 0.0f;
		const float DSFXCHORUS_DEPTHMax           = 100.0f;
		const float DSFXCHORUS_FEEDBACKMin        = -99.0f;
		const float DSFXCHORUS_FEEDBACKMax        = 99.0f;
		const float DSFXCHORUS_FREQUENCYMin       = 0.0f;
		const float DSFXCHORUS_FREQUENCYMax       = 10.0f;
		const float DSFXCHORUS_DELAYMin           = 0.0f;
		const float DSFXCHORUS_DELAYMax           = 20.0f;

			[AllowDuplicates]
			public enum Phase : uint32{
				NEG_180       = 0,
				NEG_90        = 1,
				ZERO          = 2,
				_90            = 3,
				_180           = 4,
				Min = NEG_180,
				Max = _180
			}
		[CRepr]
		struct IDirectSoundFXChorusVtbl : IUnknownVtbl
		{
			// IDirectSoundFXChorus methods
			public function HResult (Self** p, FXChorus* pcDsFxChorus) SetAllParameters;
			public function HResult (Self** p, FXChorus* pDsFxChorus) GetAllParameters;
		}

		[CRepr, IID(.(0x880842e3, 0x145f, 0x43e6, 0xa9, 0x34, 0xa7, 0x18, 0x06, 0xe5, 0x05, 0x47))]
		public struct IDirectSoundFXChorus : IUnknown
		{
			new IDirectSoundFXChorusVtbl** p => (.)base.p;

			public HResult SetAllParameters(FXChorus* pcDsFxChorus)	=> (*p).SetAllParameters(p, pcDsFxChorus);
			public HResult GetAllParameters(FXChorus* pDsFxChorus)	=> (*p).GetAllParameters(p, pDsFxChorus);
		}

		

		//
		// IDirectSoundFXFlanger
		//

		[CRepr]
		struct FXFlanger
		{
			float       fWetDryMix;
			float       fDepth;
			float       fFeedback;
			float       fFrequency;
			int32        lWaveform;
			float       fDelay;
			Phase        lPhase;

			public const int32 WAVE_TRIANGLE      = 0;
			public const int32 WAVE_SIN           = 1;
			public const float WETDRYMIXMin      = 0.0f;
			public const float WETDRYMIXMax      = 100.0f;
			public const float FREQUENCYMin      = 0.0f;
			public const float FREQUENCYMax      = 10.0f;
			public const float DEPTHMin          = 0.0f;
			public const float DEPTHMax          = 100.0f;
			public const float FEEDBACKMin       = -99.0f;
			public const float FEEDBACKMax       = 99.0f;
			public const float DELAYMin          = 0.0f;
			public const float DELAYMax          = 4.0f;
		}

		[CRepr]
		struct IDirectSoundFXFlangerVtbl : IUnknownVtbl
		{
			// IDirectSoundFXFlanger methods
			public function HResult (Self** p, FXFlanger* pcDsFxFlanger) SetAllParameters;
			public function HResult (Self** p, FXFlanger* pDsFxFlanger) GetAllParameters;
		};

		[CRepr, IID(.(0x903e9878, 0x2c92, 0x4072, 0x9b, 0x2c, 0xea, 0x68, 0xf5, 0x39, 0x67, 0x83))]
		public struct IDirectSoundFXFlanger : IUnknown
		{
			new IDirectSoundFXFlangerVtbl** p => (.)base.p;

			public HResult SetAllParameters(FXFlanger* pcDsFxFlanger)	=> (*p).SetAllParameters(p, pcDsFxFlanger);
			public HResult GetAllParameters(FXFlanger* pDsFxFlanger)	=> (*p).GetAllParameters(p, pDsFxFlanger);
		}

		//
		// IDirectSoundFXEcho
		//

		public struct FXEcho
		{
			public float   fWetDryMix;
			public float   fFeedback;
			public float   fLeftDelay;
			public float   fRightDelay;
			public int32    lPanDelay;

			public const float WetDryMixMin     = 0.0f;
			public const float WetDryMixMax     = 100.0f;
			public const float FeedbackMin      = 0.0f;
			public const float FeedbackMax      = 100.0f;
			public const float LeftDelayMin     = 1.0f;
			public const float LeftDelayMax     = 2000.0f;
			public const float RightDelayMin    = 1.0f;
			public const float RightDelayMax    = 2000.0f;
			public const int32 PanDelayMin      = 0;
			public const int32 PanDelayMax      = 1;
		}

		[CRepr]
		struct IDirectSoundFXEchoVtbl : IUnknownVtbl{
			// IDirectSoundFXEcho methods
			public function HResult (Self** p, FXEcho* pcDsFxEcho) SetAllParameters;
			public function HResult (Self** p, FXEcho* pDsFxEcho) GetAllParameters;
		}

		[CRepr, IID(.(0x8bd28edf, 0x50db, 0x4e92, 0xa2, 0xbd, 0x44, 0x54, 0x88, 0xd1, 0xed, 0x42))]
		public struct IDirectSoundFXEcho : IUnknown{
			new IDirectSoundFXEchoVtbl** p => (.)base.p;

			public HResult SetAllParameters(FXEcho* pcDsFxEcho)	=> (*p).SetAllParameters(p, pcDsFxEcho);
			public HResult GetAllParameters(FXEcho* pDsFxEcho)	=> (*p).GetAllParameters(p, pDsFxEcho);
		}

		//
		// IDirectSoundFXDistortion
		//

		struct FXDistortion
		{
			public float   fGain;
			public float   fEdge;
			public float   fPostEQCenterFrequency;
			public float   fPostEQBandwidth;
			public float   fPreLowpassCutoff;

			public const float GainMin                    = -60.0f;
			public const float GainMax                    = 0.0f;

			public const float EdgeMin                    = 0.0f;
			public const float EdgeMax                    = 100.0f;

			public const float PostEQCenterFrequencyMin   = 100.0f;
			public const float PostEQCenterFrequencyMax   = 8000.0f;

			public const float PostEQBandwidthMin         = 100.0f;
			public const float PostEQBandwidthMax         = 8000.0f;

			public const float PreLowpassCutoffMin        = 100.0f;
			public const float PreLowpassCutoffMax        = 8000.0f;
		}

		[CRepr]
		struct IDirectSoundFXDistortionVtbl : IUnknownVtbl
		{
			// IDirectSoundFXDistortion methods
			public function HResult (Self** p, FXDistortion* pcDsFxDistortion) SetAllParameters;
			public function HResult (Self** p, FXDistortion* pDsFxDistortion) GetAllParameters;
		}

		[CRepr, IID(.(0x8ecf4326, 0x455f, 0x4d8b, 0xbd, 0xa9, 0x8d, 0x5d, 0x3e, 0x9e, 0x3e, 0x0b))]
		public struct IDirectSoundFXDistortion : IUnknown
		{
			new IDirectSoundFXDistortionVtbl** p => (.)base.p;

			public HResult SetAllParameters(FXDistortion* pcDsFxDistortion)	=> (*p).SetAllParameters(p, pcDsFxDistortion);
			public HResult GetAllParameters(FXDistortion* pDsFxDistortion)	=> (*p).GetAllParameters(p, pDsFxDistortion);
		}

		//
		// IDirectSoundFXCompressor
		//

		struct FXCompressor
		{
			float fGain;
			float fAttack;
			float fRelease;
			float fThreshold;
			float fRatio;
			float fPredelay;

			public const float GainMin            = -60.0f;
			public const float GainMax            = 60.0f;
			public const float AttackMin          = 0.01f;
			public const float AttackMax          = 500.0f;
			public const float ReleaseMin         = 50.0f;
			public const float ReleaseMax         = 3000.0f;
			public const float ThresholdMin       = -60.0f;
			public const float ThresholdMax       = 0.0f;
			public const float RatioMin           = 1.0f;
			public const float RatioMax           = 100.0f;
			public const float PredelayMin        = 0.0f;
			public const float PredelayMax        = 4.0f;
		}
		[CRepr]
		struct IDirectSoundFXCompressorVtbl : IUnknownVtbl
		{
			// IDirectSoundFXCompressor methods
			public function HResult (Self** p, FXCompressor* pcDsFxCompressor) SetAllParameters;
			public function HResult (Self** p, FXCompressor* pDsFxCompressor) GetAllParameters;
		};

		[CRepr, IID(.(0x4bbd1154, 0x62f6, 0x4e2c, 0xa1, 0x5c, 0xd3, 0xb6, 0xc4, 0x17, 0xf7, 0xa0))]
		public struct IDirectSoundFXCompressor : IUnknown
		{
			new IDirectSoundFXCompressorVtbl** p => (.)base.p;

			public HResult SetAllParameters(FXCompressor* pcDsFxCompressor)	=> (*p).SetAllParameters(p, pcDsFxCompressor);
			public HResult GetAllParameters(FXCompressor* pDsFxCompressor)	=> (*p).GetAllParameters(p, pDsFxCompressor);
		}
		
		//
		// IDirectSoundFXParamEq
		//

		[CRepr]
		struct FXParamEq
		{
			public float fCenter;
			public float fBandwidth;
			public float fGain;

			public const float CenterMin     = 80.0f;
			public const float CenterMax     = 16000.0f;

			public const float BandwidthMin  = 1.0f;
			public const float BandwidthMax  = 36.0f;

			public const float GainMin       = -15.0f;
			public const float GainMax       = 15.0f;
		}

		[CRepr]
		struct IDirectSoundFXParamEqVtbl : IUnknownVtbl
		{
			// IDirectSoundFXParamEq methods
			public function HResult (Self** p, FXParamEq* pcDsFxParamEq) SetAllParameters;
			public function HResult (Self** p, FXParamEq* pDsFxParamEq) GetAllParameters;
		}

		[CRepr, IID(.(0xc03ca9fe, 0xfe90, 0x4204, 0x80, 0x78, 0x82, 0x33, 0x4c, 0xd1, 0x77, 0xda))]
		public struct IDirectSoundFXParamEq : IUnknown
		{
			new IDirectSoundFXParamEqVtbl** p => (.)base.p;

			public HResult SetAllParameters(FXParamEq* pcDsFxParamEq)	=> (*p).SetAllParameters(p, pcDsFxParamEq);
			public HResult GetAllParameters(FXParamEq* pDsFxParamEq)	=> (*p).GetAllParameters(p, pDsFxParamEq);
		}

		//
		// IDirectSoundFXI3DL2Reverb
		//

		struct FXI3DL2Reverb
		{
			int32    lRoom;                  // [-10000, 0]      default: -1000 mB
			int32    lRoomHF;                // [-10000, 0]      default: 0 mB
			float   flRoomRolloffFactor;    // [0.0, 10.0]      default: 0.0
			float   flDecayTime;            // [0.1, 20.0]      default: 1.49s
			float   flDecayHFRatio;         // [0.1, 2.0]       default: 0.83
			int32    lReflections;           // [-10000, 1000]   default: -2602 mB
			float   flReflectionsDelay;     // [0.0, 0.3]       default: 0.007 s
			int32    lReverb;                // [-10000, 2000]   default: 200 mB
			float   flReverbDelay;          // [0.0, 0.1]       default: 0.011 s
			float   flDiffusion;            // [0.0, 100.0]     default: 100.0 %
			float   flDensity;              // [0.0, 100.0]     default: 100.0 %
			float   flHFReference;          // [20.0, 20000.0]  default: 5000.0 Hz

			public const int32 ROOMMin                  = (-10000);
			public const int32 ROOMMax                  = 0;
			public const int32 ROOM_DEFAULT              = (-1000);
			public const int32 ROOMHFMin                = (-10000);
			public const int32 ROOMHFMax                = 0;
			public const int32 ROOMHF_DEFAULT            = (-100);
			public const float ROOMROLLOFFFACTORMin     = 0.0f;
			public const float ROOMROLLOFFFACTORMax     = 10.0f;
			public const float ROOMROLLOFFFACTOR_DEFAULT = 0.0f;
			public const float DECAYTIMEMin             = 0.1f;
			public const float DECAYTIMEMax             = 20.0f;
			public const float DECAYTIME_DEFAULT         = 1.49f;
			public const float DECAYHFRATIOMin          = 0.1f;
			public const float DECAYHFRATIOMax          = 2.0f;
			public const float DECAYHFRATIO_DEFAULT      = 0.83f;
			public const int32 REFLECTIONSMin           = (-10000);
			public const int32 REFLECTIONSMax           = 1000;
			public const int32 REFLECTIONS_DEFAULT       = (-2602);
			public const float REFLECTIONSDELAYMin      = 0.0f;
			public const float REFLECTIONSDELAYMax      = 0.3f;
			public const float REFLECTIONSDELAY_DEFAULT  = 0.007f;
			public const int32 REVERBMin                = (-10000);
			public const int32 REVERBMax                = 2000;
			public const int32 REVERB_DEFAULT            = (200);
			public const float REVERBDELAYMin           = 0.0f;
			public const float REVERBDELAYMax           = 0.1f;
			public const float REVERBDELAY_DEFAULT       = 0.011f;
			public const float DIFFUSIONMin             = 0.0f;
			public const float DIFFUSIONMax             = 100.0f;
			public const float DIFFUSION_DEFAULT         = 100.0f;
			public const float DENSITYMin               = 0.0f;
			public const float DENSITYMax               = 100.0f;
			public const float DENSITY_DEFAULT           = 100.0f;
			public const float HFREFERENCEMin           = 20.0f;
			public const float HFREFERENCEMax           = 20000.0f;
			public const float HFREFERENCE_DEFAULT       = 5000.0f;
			public const int32 QUALITYMin               = 0;
			public const int32 QUALITYMax               = 3;
			public const int32 QUALITY_DEFAULT           = 2;
		}

		[CRepr]
		struct IDirectSoundFXI3DL2ReverbVtbl : IUnknownVtbl
		{
			// IDirectSoundFXI3DL2Reverb methods
			public function HResult (Self** p, FXI3DL2Reverb* pcDsFxI3DL2Reverb) SetAllParameters;
			public function HResult (Self** p, FXI3DL2Reverb* pDsFxI3DL2Reverb) GetAllParameters;
			public function HResult (Self** p, uint32 dwPreset) SetPreset;
			public function HResult (Self** p, uint32* pdwPreset) GetPreset;
			public function HResult (Self** p, int32 lQuality) SetQuality;
			public function HResult (Self** p, int32* plQuality) GetQuality;
		}

		[CRepr, IID(.(0x4b166a6a, 0x0d66, 0x43f3, 0x80, 0xe3, 0xee, 0x62, 0x80, 0xde, 0xe1, 0xa4))]
		public struct IDirectSoundFXI3DL2Reverb : IUnknown
		{
			new IDirectSoundFXI3DL2ReverbVtbl** p => (.)base.p;

			public HResult SetAllParameters(FXI3DL2Reverb* pcDsFxI3DL2Reverb)	=> (*p).SetAllParameters(p, pcDsFxI3DL2Reverb);
			public HResult GetAllParameters(FXI3DL2Reverb* pDsFxI3DL2Reverb)	=> (*p).GetAllParameters(p, pDsFxI3DL2Reverb);
			public HResult SetPreset(uint32 dwPreset)							=> (*p).SetPreset(p, dwPreset);
			public HResult GetPreset(uint32* pdwPreset)							=> (*p).GetPreset(p, pdwPreset);
			public HResult SetQuality(int32 lQuality)							=> (*p).SetQuality(p, lQuality);
			public HResult GetQuality(int32* plQuality)							=> (*p).GetQuality(p, plQuality);
		}
		//
		// IDirectSoundFXWavesReverb
		//

		struct FXWavesReverb
		{
			public float fInGain;                // [-96.0,0.0]            default: 0.0 dB
			public float fReverbMix;             // [-96.0,0.0]            default: 0.0 db
			public float fReverbTime;            // [0.001,3000.0]         default: 1000.0 ms
			public float fHighFreqRTRatio;       // [0.001,0.999]          default: 0.001

			public const float InGainMin                = -96.0f;
			public const float InGainMax                = 0.0f;
			public const float InGainDefault            = 0.0f;
			public const float ReverbMixMin             = -96.0f;
			public const float ReverbMixMax             = 0.0f;
			public const float ReverbMixDefault         = 0.0f;
			public const float ReverbTimeMin            = 0.001f;
			public const float ReverbTimeMax            = 3000.0f;
			public const float ReverbTimeDefault        = 1000.0f;
			public const float HighFreqRTRatioMin       = 0.001f;
			public const float HighFreqRTRatioMax       = 0.999f;
			public const float HighFreqRTRatioDefault   = 0.001f;
		} 

		[CRepr]
		struct IDirectSoundFXWavesReverbVtbl : IUnknownVtbl
		{
			// IDirectSoundFXWavesReverb methods
			public function HResult (Self** p, FXWavesReverb* pcDsFxWavesReverb) SetAllParameters;
			public function HResult (Self** p, FXWavesReverb* pDsFxWavesReverb) GetAllParameters;
		}

		[CRepr, IID(.(0x46858c3a,0x0dc6,0x45e3,0xb7,0x60,0xd4,0xee,0xf1,0x6c,0xb3,0x25))]
		public struct IDirectSoundFXWavesReverb : IUnknown
		{
			new IDirectSoundFXWavesReverbVtbl** p => (.)base.p;
			
			public HResult SetAllParameters(FXWavesReverb* pcDsFxWavesReverb)	=> (*p).SetAllParameters(p, pcDsFxWavesReverb);
			public HResult GetAllParameters(FXWavesReverb* pDsFxWavesReverb)	=> (*p).GetAllParameters(p, pDsFxWavesReverb);
		}

		//
		// IDirectSoundCaptureFXAec
		//

		[CRepr]
		struct CFXAec
		{
			public IntBool	fEnable;
			public IntBool	fNoiseFill;
			public Mode   	dwMode;

			// These match the AEC_MODE_* constants in the DDK's ksmedia.h file
			enum Mode : uint32{
				ModePassThrough	= 0x0,
				ModeHalfDuplex	= 0x1,
				ModeFullDuplex	= 0x2
			}

			// These match the AEC_STATUS_* constants in ksmedia.h
			enum Status : uint32{
				HistoryUninitialized			= 0x0,
				HistoryContinuouslyConverged	= 0x1,
				HistoryPreviouslyDiverged		= 0x2,
				CurrentlyConverged				= 0x8
			}
		}

		[CRepr]
		struct IDirectSoundCaptureFXAecVtbl : IUnknownVtbl
		{
			// IDirectSoundCaptureFXAec methods
			public function HResult (Self** p, CFXAec* pDscFxAec) SetAllParameters;
			public function HResult (Self** p, CFXAec* pDscFxAec) GetAllParameters;
			public function HResult (Self** p, uint32* pdwStatus) GetStatus;
			public function HResult (Self** p) Reset;
		}


		[CRepr, IID(.(0xad74143d, 0x903d, 0x4ab7, 0x80, 0x66, 0x28, 0xd3, 0x63, 0x03, 0x6d, 0x65))]
		public struct IDirectSoundCaptureFXAec : IUnknown
		{
			new IDirectSoundCaptureFXAecVtbl** p => (.)base.p

			public HResult SetAllParameters(CFXAec* pDscFxAec)	=> (*p).SetAllParameters(p, pDscFxAec);
			public HResult GetAllParameters(CFXAec* pDscFxAec)	=> (*p).GetAllParameters(p, pDscFxAec);

			public HResult GetStatus(uint32* pdwStatus)	=> (*p).GetStatus(p, pdwStatus);
			public HResult Reset()						=> (*p).Reset(p);
		}
		//
		// IDirectSoundCaptureFXNoiseSuppress
		//

		[CRepr]
		struct CFXNoiseSuppress
		{
			public IntBool    fEnable;
		}

		[CRepr]
		struct IDirectSoundCaptureFXNoiseSuppressVtbl : IUnknownVtbl
		{
			// IDirectSoundCaptureFXNoiseSuppress methods
			public function HResult (Self** p, CFXNoiseSuppress* pcDscFxNoiseSuppress) SetAllParameters;
			public function HResult (Self** p, CFXNoiseSuppress* pDscFxNoiseSuppress) GetAllParameters;
			public function HResult (Self** p) Reset;
		}

		[CRepr, IID(.(0xed311e41, 0xfbae, 0x4175, 0x96, 0x25, 0xcd, 0x8, 0x54, 0xf6, 0x93, 0xca))]
		public struct IDirectSoundCaptureFXNoiseSuppress : IUnknown
		{
			new IDirectSoundCaptureFXNoiseSuppressVtbl** p => (.)base.p;

			public HResult SetAllParameters(CFXNoiseSuppress* pcDscFxNoiseSuppress)	=> (*p).SetAllParameters(p, pcDscFxNoiseSuppress);
			public HResult GetAllParameters(CFXNoiseSuppress* pDscFxNoiseSuppress)	=> (*p).GetAllParameters(p, pDscFxNoiseSuppress);

			public HResult Reset()	=> (*p).Reset(p);
		}

		//
		// IDirectSoundFullDuplex
		//

		[CRepr]
		struct IDirectSoundFullDuplexVtbl : IUnknownVtbl
		{
			// IDirectSoundFullDuplex methods
			public function HResult (IDirectSoundFullDuplexVtbl** p, Guid* pCaptureGuid, Guid* pRenderGuid, CaptureBufferDescription* lpDscBufferDesc, BufferDescription* lpDsBufferDesc, HWnd hWnd, uint32 dwLevel, IDirectSoundCaptureBuffer8* lplpDirectSoundCaptureBuffer8, IDirectSoundBuffer8* lplpDirectSoundBuffer8) Initialize;
		}

		[CRepr, IID(.(0xedcb4c7a, 0xdaab, 0x4216, 0xa4, 0x2e, 0x6c, 0x50, 0x59, 0x6d, 0xdc, 0x1d))]
		public struct IDirectSoundFullDuplex : IUnknown
		{
			new IDirectSoundFullDuplexVtbl** p => (.)base.p;

			public HResult Initialize(Guid* pCaptureGuid, Guid* pRenderGuid, CaptureBufferDescription* lpDscBufferDesc, BufferDescription* lpDsBufferDesc, HWnd hWnd, uint32 dwLevel, IDirectSoundCaptureBuffer8* lplpDirectSoundCaptureBuffer8, IDirectSoundBuffer8* lplpDirectSoundBuffer8)
									=> (**p).Initialize(p, pCaptureGuid, pRenderGuid, lpDscBufferDesc, lpDsBufferDesc, hWnd, dwLevel, lplpDirectSoundCaptureBuffer8, lplpDirectSoundBuffer8);
		}

#endif // DIRECTSOUND_VERSION0800

		//
		// Return Codes
		//

		// The function completed successfully
		const int S_OK = 0;
		const int S_FALSE = 1;
		const int SEVERITY_ERROR = 1;
		const int FACILITY_WIN32 = 7;
		const int ERROR_OLD_WIN_VERSION = 1150;
		const int ERROR_RMODE_APP = 1153;
		const int ERROR_BAD_DRIVER_LEVEL = 119;
		const int ERROR_FILE_NOT_FOUND = 2;
		const int REGDB_E_CLASSNOTREG = 2147746132;
		const int E_INVALIDARG = 0x80070057;
		const int E_NOINTERFACE = 0x80004002;
		const int E_FAIL = 0x80004005;
		const int E_OUTOFMEMORY = 0x8007000E;
		const int E_NOTIMPL = 0x80004001;
		const int E_ACCESSDENIED = 0x80070005;
		const int CLASS_E_NOAGGREGATION = 0x80040110;
		const int ERROR_NOT_READY = 21;
		const int ERROR_ALREADY_INITIALIZED = 1247;
		const int ERROR_READ_FAULT = 30;
		const int ERROR_BUSY = 170;
		const int ERROR_INVALID_ACCESS = 12;


		const int DS_OK = S_OK;

		// The call succeeded, but we had to substitute the 3D algorithm
		const int DS_NO_VIRTUALIZATION = MAKE_HResult(0, _FACDS, 10);

		// The call failed because resources (such as a priority level)
		// were already being used by another caller
		const int DSERR_ALLOCATED = MAKE_DSHResult(10);

		// The control (vol, pan, etc.) requested by the caller is not available
		const int DSERR_CONTROLUNAVAIL = MAKE_DSHResult(30);

		// An invalid parameter was passed to the returning function
		const int DSERR_INVALIDPARAM = E_INVALIDARG;

		// This call is not valid for the current state of this object
		const int DSERR_INVALIDCALL = MAKE_DSHResult(50);

		// An undetermined error occurred inside the DirectSound subsystem
		const int DSERR_GENERIC = E_FAIL;

		// The caller does not have the priority level required for the function to
		// succeed
		const int DSERR_PRIOLEVELNEEDED = MAKE_DSHResult(70);

		// Not enough free memory is available to complete the operation
		const int DSERR_OUTOFMEMORY = E_OUTOFMEMORY;

		// The specified WAVE format is not supported
		const int DSERR_BADFORMAT = MAKE_DSHResult(100);

		// The function called is not supported at this time
		const int DSERR_UNSUPPORTED = E_NOTIMPL;

		// No sound driver is available for use
		const int DSERR_NODRIVER = MAKE_DSHResult(120);
		// This object is already initialized
		const int DSERR_ALREADYINITIALIZED = MAKE_DSHResult(130);

		// This object does not support aggregation
		const int DSERR_NOAGGREGATION = CLASS_E_NOAGGREGATION;

		// The buffer memory has been lost, and must be restored
		const int DSERR_BUFFERLOST = MAKE_DSHResult(150);

		// Another app has a higher priority level, preventing this call from
		// succeeding
		const int DSERR_OTHERAPPHASPRIO = MAKE_DSHResult(160);

		// This object has not been initialized
		const int DSERR_UNINITIALIZED = MAKE_DSHResult(170);

		// The requested COM interface is not available
		const int DSERR_NOINTERFACE = E_NOINTERFACE;

		// Access is denied
		const int DSERR_ACCESSDENIED = E_ACCESSDENIED;

		// Tried to create a DSBCAPS_CTRLFX buffer shorter than DSBSIZE_FX_MIN milliseconds
		const int DSERR_BUFFERTOOSMALL = MAKE_DSHResult(180);

		// Attempt to use DirectSound 8 functionality on an older DirectSound object
		const int DSERR_DS8_REQUIRED = MAKE_DSHResult(190);

		// A circular loop of send effects was detected
		const int DSERR_SENDLOOP = MAKE_DSHResult(200);

		// The GUID specified in an audiopath file does not match a valid MIXIN buffer
		const int DSERR_BADSENDBUFFERGUID = MAKE_DSHResult(210);

		// The object requested was not found (numerically equal to DMUS_E_NOT_FOUND)
		const int DSERR_OBJECTNOTFOUND = MAKE_DSHResult(4449);

		// The effects requested could not be found on the system, or they were found
		// but in the wrong order, or in the wrong hardware/software locations.
		const int DSERR_FXUNAVAILABLE = MAKE_DSHResult(220);

		//
		// Flags
		//
		public enum CapabilityFlags : uint32
		{
			PrimaryMono = 0x00000001,
			PrimaryStereo = 0x00000002,
			Primary8Bit = 0x00000004,
			Primary16Bit = 0x00000008,
			ContinuousRate = 0x00000010,
			EmulDriver = 0x00000020,
			Certified = 0x00000040,
			SecondaryMono = 0x00000100,
			SecondaryStereo = 0x00000200,
			Secondary8Bit = 0x00000400,
			Secondary16Bit = 0x00000800
		}

		public enum CooperativeLevel : uint32
		{
			Normal = 1,
			Priority = 2,
			Exclusive = 3,
			WritePrimary = 4
		}

		[AllowDuplicates]
		public enum SpeakerConfig : uint32
		{
			DirectOut = 0x00000000,
			Headphone = 0x00000001,
			Mono = 0x00000002,
			Quad = 0x00000003,
			Stereo = 0x00000004,
			Surround = 0x00000005,
			_5Point1 = 0x00000006, // obsolete 5.1 setting
			_7Point1 = 0x00000007, // obsolete 7.1 setting
			_7Point1_SURROUND = 0x00000008, // correct 7.1 Home Theater setting
			_7Point1_WIDE = _7Point1,
//#if (DIRECTSOUND_VERSION >= 0x1000)
			_5Point1_SURROUND = 0x00000009, // correct 5.1 setting
			_5Point1_BACK = _5Point1
//#endif
		}

		[AllowDuplicates]
		public enum SpeakerGeometry : uint32
		{
			MIN = 0x00000005, //   5 degrees
			NARROW = 0x0000000A, //  10 degrees
			WIDE = 0x00000014, //  20 degrees
			MAX = 0x000000B4, // 180 degrees
		}
		static uint32 DSSPEAKER_COMBINED(SpeakerConfig config, SpeakerGeometry geometry) => ((uint32)(((uint8)(config)) | ((uint32)((uint8)(geometry))) << 16));
		static SpeakerConfig DSSPEAKER_CONFIG(uint32 a) => (.)((uint8)(a));
		static SpeakerGeometry DSSPEAKER_GEOMETRY(uint32 a) => (.)((uint8)(((uint32)(a) >> 16) & 0x00FF));

		public enum BufferCapabilitiesEnum : uint32
		{
			PrimaryBuffer = 0x00000001,
			Static = 0x00000002,
			LocHardware = 0x00000004,
			LocSoftware = 0x00000008,
			Ctrl3D = 0x00000010,
			CtrlFrequency = 0x00000020,
			CtrlPan = 0x00000040,
			CtrlVolume = 0x00000080,
			CtrlPositionNotify = 0x00000100,
			CtrlFX = 0x00000200,
			StickyFocus = 0x00004000,
			GlobalFocus = 0x00008000,
			GetCurrentPosition2 = 0x00010000,
			Mute3DAtMaxDistance = 0x00020000,
			LocDefer = 0x00040000,
		//#if (DIRECTSOUND_VERSION >= 0x1000)
					// Force GetCurrentPosition() to return a buffer's true play position;
					// unmodified by aids to enhance backward compatibility.
			TruePlayPosition = 0x00080000,
		//#endif
		}

		public enum PlayFlags : uint32
		{
			Looping = 0x00000001,
			Hardware = 0x00000002,
			Software = 0x00000004,
			TerminateByTime = 0x00000008,
#unwarn
			TerminateByDistance = 0x000000010,
#unwarn
			TerminateByPriority = 0x000000020,
		}

		public enum BufferStatus : uint32
		{
			Playing = 0x00000001,
			BufferLost = 0x00000002,
			Lost = 0x00000004,
			Hardware = 0x00000008,
			Software = 0x00000010,
			Terminated = 0x00000020,
		}

		public enum BufferLockFlags : uint32
		{
			FromWriteCursor = 0x00000001,
			EntireBuffer = 0x00000002
		}

		public const int DSBFREQUENCY_ORIGINAL = 0;
		public const int DSBFREQUENCYMin = 100;
//#if DIRECTSOUND_VERSION >= 0x0900
		public const int BufferFrequencyMax = 200000;
//#else
		//public const int BufferFrequencyMax = 100000;
//#endif

		public const int32 PanLeft = -10000;
		public const int32 PanCenter = 0;
		public const int32 PanRight = 10000;

		public const int32 MinVolume = -10000;
		public const int32 MaxVolume = 0;

		public const uint32 BufferSizeMin = 4;
		public const uint32 BufferSizeMax = 0x0FFFFFFF;
		public const uint32 BufferSizeFXMin = 150; // NOTE: Milliseconds, not bytes

		public const uint32 DSBNOTIFICATIONSMax = 100000UL;

		public enum _3DMode : uint32
		{
			Normal = 0x00000000,
			HeadRelative = 0x00000001,
			Disable = 0x00000002
		}

		public enum ApplyMode : uint32
		{
			Immediate = 0x00000000,
			Deferred = 0x00000001
		}

		public const float MinDistanceFactor = float.MinValue;
		public const float MaxDistanceFactor = float.MaxValue;
		public const float DefaultDistanceFactor = 1.0f;

		public const float MinRolloffFactor = 0.0f;
		public const float MaxRolloffFactor = 10.0f;
		public const float DefaultRolloffFactor = 1.0f;

		public const float MinDopplerFactor = 0.0f;
		public const float MaxDopplerFactor = 10.0f;
		public const float DefaultDopplerFactor = 1.0f;

		public const float DefaultMinDistance = 1.0f;
		public const float DefaultMaxDistance = 1000000000.0f;

		public const int MinConeAngle = 0;
		public const int MaxConeAngle = 360;
		public const int DefaultConeAngle = 360;

		public const int DefaultConeOutsideVolume = MaxVolume;

		// IDirectSoundCapture attributes

		public const int DSCCAPS_EMULDRIVER = (.)CapabilityFlags.EmulDriver;
		public const int DSCCAPS_CERTIFIED = (.)CapabilityFlags.Certified;
		public const int DSCCAPS_MULTIPLECAPTURE = 0x00000001;

		// IDirectSoundCaptureBuffer attributes
		public enum CaptureBufferCapabilityFlags : uint32
		{
			WaveMapped = 0x80000000,
			CTRLFX = 0x00000200, //CTRLFX, requires IDirectSoundCapture8
		}

		public const int DSCBLOCK_ENTIREBUFFER = 0x00000001;

		public const int DSCBSTATUS_CAPTURING = 0x00000001;
		public const int DSCBSTATUS_LOOPING = 0x00000002;

		public const int DSCBSTART_LOOPING = 0x00000001;

		public const int DSBPN_OFFSETSTOP = 0xFFFFFFFF;

		public const int DS_CERTIFIED = 0x00000000;
		public const int DS_UNCERTIFIED = 0x00000001;

		//
		// Flags for the I3DL2 effects
		//

		//
		// I3DL2 Material Presets
		//

		public enum FX_I3DL2MaterialPreset
		{
			SingleWindow,
			DoubleWindow,
			ThinDoor,
			ThickDoor,
			WoodWall,
			BrickWall,
			StoneWall,
			Curtain
		};

/*
const float I3DL2_MaterialPresetSingleWindow	= -2800,0.71f;
const float I3DL2_MaterialPresetDoubleWindow	= -5000,0.40f;
const float I3DL2_MaterialPresetThinDoor		= -1800,0.66f;
const float I3DL2_MaterialPresetThickDoor		= -4400,0.64f;
const float I3DL2_MaterialPresetWoodWall		= -4000,0.50f;
const float I3DL2_MaterialPresetBrickWall		= -5000,0.60f;
const float I3DL2_MaterialPresetStoneWall		= -6000,0.68f;
const float I3DL2_MaterialPresetCurtain			= -1200,0.15f;*/

		enum FX_I3DL2_ENVIRONMENT_Preset
		{
			Default,
			Generic,
			PaddedCell,
			Room,
			Bathroom,
			LivingRoom,
			StoneRoom,
			Auditorium,
			ConcertHall,
			Cave,
			Arena,
			Hangar,
			CarpetedHallway,
			Hallway,
			StoneCorridor,
			Alley,
			Forest,
			City,
			Mountains,
			Quarry,
			Plain,
			ParkingLot,
			SewerPipe,
			Underwater,
			SmallRoom,
			MediumRoom,
			LargeRoom,
			MediumHall,
			LargeHall,
			Plate,
		};

		//
		// I3DL2 Reverberation Presets Values
		//

/*const float I3DL2_ENVIRONMENT_PRESET_DEFAULT         = -1000, -100, 0.0f, 1.49f, 0.83f, -2602, 0.007f,   200, 0.011f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_GENERIC         = -1000, -100, 0.0f, 1.49f, 0.83f, -2602, 0.007f,   200, 0.011f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_PADDEDCELL      = -1000,-6000, 0.0f, 0.17f, 0.10f, -1204, 0.001f,   207, 0.002f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_ROOM            = -1000, -454, 0.0f, 0.40f, 0.83f, -1646, 0.002f,    53, 0.003f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_BATHROOM        = -1000,-1200, 0.0f, 1.49f, 0.54f,  -370, 0.007f,  1030, 0.011f, 100.0f,  60.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_LIVINGROOM      = -1000,-6000, 0.0f, 0.50f, 0.10f, -1376, 0.003f, -1104, 0.004f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_STONEROOM       = -1000, -300, 0.0f, 2.31f, 0.64f,  -711, 0.012f,    83, 0.017f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_AUDITORIUM      = -1000, -476, 0.0f, 4.32f, 0.59f,  -789, 0.020f,  -289, 0.030f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_CONCERTHALL     = -1000, -500, 0.0f, 3.92f, 0.70f, -1230, 0.020f,    -2, 0.029f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_CAVE            = -1000,    0, 0.0f, 2.91f, 1.30f,  -602, 0.015f,  -302, 0.022f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_ARENA           = -1000, -698, 0.0f, 7.24f, 0.33f, -1166, 0.020f,    16, 0.030f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_HANGAR          = -1000,-1000, 0.0f,10.05f, 0.23f,  -602, 0.020f,   198, 0.030f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_CARPETEDHALLWAY = -1000,-4000, 0.0f, 0.30f, 0.10f, -1831, 0.002f, -1630, 0.030f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_HALLWAY         = -1000, -300, 0.0f, 1.49f, 0.59f, -1219, 0.007f,   441, 0.011f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_STONECORRIDOR   = -1000, -237, 0.0f, 2.70f, 0.79f, -1214, 0.013f,   395, 0.020f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_ALLEY           = -1000, -270, 0.0f, 1.49f, 0.86f, -1204, 0.007f,    -4, 0.011f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_FOREST          = -1000,-3300, 0.0f, 1.49f, 0.54f, -2560, 0.162f,  -613, 0.088f,  79.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_CITY            = -1000, -800, 0.0f, 1.49f, 0.67f, -2273, 0.007f, -2217, 0.011f,  50.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_MOUNTAINS       = -1000,-2500, 0.0f, 1.49f, 0.21f, -2780, 0.300f, -2014, 0.100f,  27.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_QUARRY          = -1000,-1000, 0.0f, 1.49f, 0.83f,-10000, 0.061f,   500, 0.025f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_PLAIN           = -1000,-2000, 0.0f, 1.49f, 0.50f, -2466, 0.179f, -2514, 0.100f,  21.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_PARKINGLOT      = -1000,    0, 0.0f, 1.65f, 1.50f, -1363, 0.008f, -1153, 0.012f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_SEWERPIPE       = -1000,-1000, 0.0f, 2.81f, 0.14f,   429, 0.014f,   648, 0.021f,  80.0f,  60.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_UNDERWATER      = -1000,-4000, 0.0f, 1.49f, 0.10f,  -449, 0.007f,  1700, 0.011f, 100.0f, 100.0f, 5000.0f;*/

		//
		// Examples simulating 'musical' reverb presets
		//
		// Name       Decay time   Description
		// Small Room    1.1s      A small size room with a length of 5m or so.
		// Medium Room   1.3s      A medium size room with a length of 10m or so.
		// Large Room    1.5s      A large size room suitable for live performances.
		// Medium Hall   1.8s      A medium size concert hall.
		// Large Hall    1.8s      A large size concert hall suitable for a full orchestra.
		// Plate         1.3s      A plate reverb simulation.
		//

/*const float I3DL2_ENVIRONMENT_PRESET_SMALLROOM      = -1000, -600, 0.0f, 1.10f, 0.83f,  -400, 0.005f,   500, 0.010f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_MEDIUMROOM     = -1000, -600, 0.0f, 1.30f, 0.83f, -1000, 0.010f,  -200, 0.020f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_LARGEROOM      = -1000, -600, 0.0f, 1.50f, 0.83f, -1600, 0.020f, -1000, 0.040f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_MEDIUMHALL     = -1000, -600, 0.0f, 1.80f, 0.70f, -1300, 0.015f,  -800, 0.030f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_LARGEHALL      = -1000, -600, 0.0f, 1.80f, 0.70f, -2000, 0.030f, -1400, 0.060f, 100.0f, 100.0f, 5000.0f;
const float I3DL2_ENVIRONMENT_PRESET_PLATE          = -1000, -200, 0.0f, 1.30f, 0.90f,     0, 0.002f,     0, 0.010f, 100.0f,  75.0f, 5000.0f;*/

		//
		// DirectSound3D Algorithms
		//

		// Default DirectSound3D algorithm {00000000-0000-0000-0000-000000000000}
//#define DS3DALG_DEFAULT GUID_NULL

		// No virtualization (Pan3D) {C241333F-1C1B-11d2-94F5-00C04FC28ACA}
		//DEFINE_GUID(DS3DALG_NO_VIRTUALIZATION, 0xc241333f, 0x1c1b, 0x11d2, 0x94, 0xf5, 0x0, 0xc0, 0x4f, 0xc2, 0x8a, 0xca);

		// High-quality HRTF algorithm {C2413340-1C1B-11d2-94F5-00C04FC28ACA}
		//DEFINE_GUID(DS3DALG_HRTF_FULL, 0xc2413340, 0x1c1b, 0x11d2, 0x94, 0xf5, 0x0, 0xc0, 0x4f, 0xc2, 0x8a, 0xca);

		// Lower-quality HRTF algorithm {C2413342-1C1B-11d2-94F5-00C04FC28ACA}
		//DEFINE_GUID(DS3DALG_HRTF_LIGHT, 0xc2413342, 0x1c1b, 0x11d2, 0x94, 0xf5, 0x0, 0xc0, 0x4f, 0xc2, 0x8a, 0xca);


#if DIRECTSOUND_VERSION0800

		//
		// DirectSound Internal Effect Algorithms
		//


		// Gargle {DAFD8210-5711-4B91-9FE3-F75B7AE279BF}
		/*DEFINE_GUID(GUID_DSFX_STANDARD_GARGLE, 0xdafd8210, 0x5711, 0x4b91, 0x9f, 0xe3, 0xf7, 0x5b, 0x7a, 0xe2, 0x79, 0xbf);

		// Chorus {EFE6629C-81F7-4281-BD91-C9D604A95AF6}
		DEFINE_GUID(GUID_DSFX_STANDARD_CHORUS, 0xefe6629c, 0x81f7, 0x4281, 0xbd, 0x91, 0xc9, 0xd6, 0x04, 0xa9, 0x5a, 0xf6);

		// Flanger {EFCA3D92-DFD8-4672-A603-7420894BAD98}
		DEFINE_GUID(GUID_DSFX_STANDARD_FLANGER, 0xefca3d92, 0xdfd8, 0x4672, 0xa6, 0x03, 0x74, 0x20, 0x89, 0x4b, 0xad, 0x98);

		// Echo/Delay {EF3E932C-D40B-4F51-8CCF-3F98F1B29D5D}
		DEFINE_GUID(GUID_DSFX_STANDARD_ECHO, 0xef3e932c, 0xd40b, 0x4f51, 0x8c, 0xcf, 0x3f, 0x98, 0xf1, 0xb2, 0x9d, 0x5d);

		// Distortion {EF114C90-CD1D-484E-96E5-09CFAF912A21}
		DEFINE_GUID(GUID_DSFX_STANDARD_DISTORTION, 0xef114c90, 0xcd1d, 0x484e, 0x96, 0xe5, 0x09, 0xcf, 0xaf, 0x91, 0x2a, 0x21);

		// Compressor/Limiter {EF011F79-4000-406D-87AF-BFFB3FC39D57}
		DEFINE_GUID(GUID_DSFX_STANDARD_COMPRESSOR, 0xef011f79, 0x4000, 0x406d, 0x87, 0xaf, 0xbf, 0xfb, 0x3f, 0xc3, 0x9d, 0x57);

		// Parametric Equalization {120CED89-3BF4-4173-A132-3CB406CF3231}
		DEFINE_GUID(GUID_DSFX_STANDARD_PARAMEQ, 0x120ced89, 0x3bf4, 0x4173, 0xa1, 0x32, 0x3c, 0xb4, 0x06, 0xcf, 0x32, 0x31);

		// I3DL2 Environmental Reverberation: Reverb (Listener) Effect {EF985E71-D5C7-42D4-BA4D-2D073E2E96F4}
		DEFINE_GUID(GUID_DSFX_STANDARD_I3DL2REVERB, 0xef985e71, 0xd5c7, 0x42d4, 0xba, 0x4d, 0x2d, 0x07, 0x3e, 0x2e, 0x96, 0xf4);

		// Waves Reverberation {87FC0268-9A55-4360-95AA-004A1D9DE26C}
		DEFINE_GUID(GUID_DSFX_WAVES_REVERB, 0x87fc0268, 0x9a55, 0x4360, 0x95, 0xaa, 0x00, 0x4a, 0x1d, 0x9d, 0xe2, 0x6c);

		//
		// DirectSound Capture Effect Algorithms
		//


		// Acoustic Echo Canceller {BF963D80-C559-11D0-8A2B-00A0C9255AC1}
		// Matches KSNODETYPE_ACOUSTIC_ECHO_CANCEL in ksmedia.h
		DEFINE_GUID(GUID_DSCFX_CLASS_AEC, 0xBF963D80L, 0xC559, 0x11D0, 0x8A, 0x2B, 0x00, 0xA0, 0xC9, 0x25, 0x5A, 0xC1);

		// Microsoft AEC {CDEBB919-379A-488a-8765-F53CFD36DE40}
		DEFINE_GUID(GUID_DSCFX_MS_AEC, 0xcdebb919, 0x379a, 0x488a, 0x87, 0x65, 0xf5, 0x3c, 0xfd, 0x36, 0xde, 0x40);

		// System AEC {1C22C56D-9879-4f5b-A389-27996DDC2810}
		DEFINE_GUID(GUID_DSCFX_SYSTEM_AEC, 0x1c22c56d, 0x9879, 0x4f5b, 0xa3, 0x89, 0x27, 0x99, 0x6d, 0xdc, 0x28, 0x10);

		// Noise Suppression {E07F903F-62FD-4e60-8CDD-DEA7236665B5}
		// Matches KSNODETYPE_NOISE_SUPPRESS in post Windows ME DDK's ksmedia.h
		DEFINE_GUID(GUID_DSCFX_CLASS_NS, 0xe07f903f, 0x62fd, 0x4e60, 0x8c, 0xdd, 0xde, 0xa7, 0x23, 0x66, 0x65, 0xb5);

		// Microsoft Noise Suppresion {11C5C73B-66E9-4ba1-A0BA-E814C6EED92D}
		DEFINE_GUID(GUID_DSCFX_MS_NS, 0x11c5c73b, 0x66e9, 0x4ba1, 0xa0, 0xba, 0xe8, 0x14, 0xc6, 0xee, 0xd9, 0x2d);

		// System Noise Suppresion {5AB0882E-7274-4516-877D-4EEE99BA4FD0}
		DEFINE_GUID(GUID_DSCFX_SYSTEM_NS, 0x5ab0882e, 0x7274, 0x4516, 0x87, 0x7d, 0x4e, 0xee, 0x99, 0xba, 0x4f, 0xd0);*/

#endif // DIRECTSOUND_VERSION0800

	}
}
