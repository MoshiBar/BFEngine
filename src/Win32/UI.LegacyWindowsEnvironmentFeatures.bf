using System;

// namespace UI.LegacyWindowsEnvironmentFeatures
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 EVCF_HASSETTINGS = 1;
		public const uint32 EVCF_ENABLEBYDEFAULT = 2;
		public const uint32 EVCF_REMOVEFROMLIST = 4;
		public const uint32 EVCF_ENABLEBYDEFAULT_AUTO = 8;
		public const uint32 EVCF_DONTSHOWIFZERO = 16;
		public const uint32 EVCF_SETTINGSMODE = 32;
		public const uint32 EVCF_OUTOFDISKSPACE = 64;
		public const uint32 EVCF_USERCONSENTOBTAINED = 128;
		public const uint32 EVCF_SYSTEMAUTORUN = 256;
		public const uint32 EVCCBF_LASTNOTIFICATION = 1;
		public const uint32 STATEBITS_FLAT = 1;
		public const HResult REC_S_IDIDTHEUPDATES = 266240;
		public const HResult REC_S_NOTCOMPLETE = 266241;
		public const HResult REC_S_NOTCOMPLETEBUTPROPAGATE = 266242;
		public const HResult REC_E_ABORTED = -2147217408;
		public const HResult REC_E_NOCALLBACK = -2147217407;
		public const HResult REC_E_NORESIDUES = -2147217406;
		public const HResult REC_E_TOODIFFERENT = -2147217405;
		public const HResult REC_E_INEEDTODOTHEUPDATES = -2147217404;
		
		// --- Enums ---
		
		public enum _reconcilef : int32
		{
			RECONCILEF_MAYBOTHERUSER = 1,
			RECONCILEF_FEEDBACKWINDOWVALID = 2,
			RECONCILEF_NORESIDUESOK = 4,
			RECONCILEF_OMITSELFRESIDUE = 8,
			RECONCILEF_RESUMERECONCILIATION = 16,
			RECONCILEF_YOUMAYDOTHEUPDATES = 32,
			RECONCILEF_ONLYYOUWERECHANGED = 64,
			ALL_RECONCILE_FLAGS = 127,
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IEmptyVolumeCacheCallBack : IUnknown
		{
			public const new Guid IID = .(0x6e793361, 0x73c6, 0x11d0, 0x84, 0x69, 0x00, 0xaa, 0x00, 0x44, 0x29, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ScanProgress(uint64 dwlSpaceUsed, uint32 dwFlags, char16* pcwszStatus) mut => VT.ScanProgress(ref this, dwlSpaceUsed, dwFlags, pcwszStatus);
			public HResult PurgeProgress(uint64 dwlSpaceFreed, uint64 dwlSpaceToFree, uint32 dwFlags, char16* pcwszStatus) mut => VT.PurgeProgress(ref this, dwlSpaceFreed, dwlSpaceToFree, dwFlags, pcwszStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IEmptyVolumeCacheCallBack self, uint64 dwlSpaceUsed, uint32 dwFlags, char16* pcwszStatus) ScanProgress;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEmptyVolumeCacheCallBack self, uint64 dwlSpaceFreed, uint64 dwlSpaceToFree, uint32 dwFlags, char16* pcwszStatus) PurgeProgress;
			}
		}
		[CRepr]
		public struct IEmptyVolumeCache : IUnknown
		{
			public const new Guid IID = .(0x8fce5227, 0x04da, 0x11d1, 0xa0, 0x04, 0x00, 0x80, 0x5f, 0x8a, 0xbe, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Initialize(HKey hkRegKey, char16* pcwszVolume, out char16* ppwszDisplayName, out char16* ppwszDescription, out uint32 pdwFlags) mut => VT.Initialize(ref this, hkRegKey, pcwszVolume, out ppwszDisplayName, out ppwszDescription, out pdwFlags);
			public HResult GetSpaceUsed(out uint64 pdwlSpaceUsed, ref IEmptyVolumeCacheCallBack picb) mut => VT.GetSpaceUsed(ref this, out pdwlSpaceUsed, ref picb);
			public HResult Purge(uint64 dwlSpaceToFree, ref IEmptyVolumeCacheCallBack picb) mut => VT.Purge(ref this, dwlSpaceToFree, ref picb);
			public HResult ShowProperties(HWnd hwnd) mut => VT.ShowProperties(ref this, hwnd);
			public HResult Deactivate(out uint32 pdwFlags) mut => VT.Deactivate(ref this, out pdwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IEmptyVolumeCache self, HKey hkRegKey, char16* pcwszVolume, out char16* ppwszDisplayName, out char16* ppwszDescription, out uint32 pdwFlags) Initialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEmptyVolumeCache self, out uint64 pdwlSpaceUsed, ref IEmptyVolumeCacheCallBack picb) GetSpaceUsed;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEmptyVolumeCache self, uint64 dwlSpaceToFree, ref IEmptyVolumeCacheCallBack picb) Purge;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEmptyVolumeCache self, HWnd hwnd) ShowProperties;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEmptyVolumeCache self, out uint32 pdwFlags) Deactivate;
			}
		}
		[CRepr]
		public struct IEmptyVolumeCache2 : IEmptyVolumeCache
		{
			public const new Guid IID = .(0x02b7e3ba, 0x4db3, 0x11d2, 0xb2, 0xd9, 0x00, 0xc0, 0x4f, 0x8e, 0xec, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult InitializeEx(HKey hkRegKey, char16* pcwszVolume, char16* pcwszKeyName, out char16* ppwszDisplayName, out char16* ppwszDescription, out char16* ppwszBtnText, out uint32 pdwFlags) mut => VT.InitializeEx(ref this, hkRegKey, pcwszVolume, pcwszKeyName, out ppwszDisplayName, out ppwszDescription, out ppwszBtnText, out pdwFlags);

			[CRepr]
			public struct VTable : IEmptyVolumeCache.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IEmptyVolumeCache2 self, HKey hkRegKey, char16* pcwszVolume, char16* pcwszKeyName, out char16* ppwszDisplayName, out char16* ppwszDescription, out char16* ppwszBtnText, out uint32 pdwFlags) InitializeEx;
			}
		}
		[CRepr]
		public struct IReconcileInitiator : IUnknown
		{
			public const new Guid IID = .(0x99180161, 0xda16, 0x101a, 0x93, 0x5c, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetAbortCallback(IUnknown* punkForAbort) mut => VT.SetAbortCallback(ref this, punkForAbort);
			public HResult SetProgressFeedback(uint32 ulProgress, uint32 ulProgressMax) mut => VT.SetProgressFeedback(ref this, ulProgress, ulProgressMax);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IReconcileInitiator self, IUnknown* punkForAbort) SetAbortCallback;
				public new function [CallingConvention(.Stdcall)] HResult(ref IReconcileInitiator self, uint32 ulProgress, uint32 ulProgressMax) SetProgressFeedback;
			}
		}
		[CRepr]
		public struct IReconcilableObject : IUnknown
		{
			public const new Guid IID = .(0x99180162, 0xda16, 0x101a, 0x93, 0x5c, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Reconcile(out IReconcileInitiator pInitiator, uint32 dwFlags, HWnd hwndOwner, HWnd hwndProgressFeedback, uint32 ulcInput, IMoniker** rgpmkOtherInput, out int32 plOutIndex, out IStorage pstgNewResidues, void* pvReserved) mut => VT.Reconcile(ref this, out pInitiator, dwFlags, hwndOwner, hwndProgressFeedback, ulcInput, rgpmkOtherInput, out plOutIndex, out pstgNewResidues, pvReserved);
			public HResult GetProgressFeedbackMaxEstimate(out uint32 pulProgressMax) mut => VT.GetProgressFeedbackMaxEstimate(ref this, out pulProgressMax);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IReconcilableObject self, out IReconcileInitiator pInitiator, uint32 dwFlags, HWnd hwndOwner, HWnd hwndProgressFeedback, uint32 ulcInput, IMoniker** rgpmkOtherInput, out int32 plOutIndex, out IStorage pstgNewResidues, void* pvReserved) Reconcile;
				public new function [CallingConvention(.Stdcall)] HResult(ref IReconcilableObject self, out uint32 pulProgressMax) GetProgressFeedbackMaxEstimate;
			}
		}
		[CRepr]
		public struct IBriefcaseInitiator : IUnknown
		{
			public const new Guid IID = .(0x99180164, 0xda16, 0x101a, 0x93, 0x5c, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult IsMonikerInBriefcase(out IMoniker pmk) mut => VT.IsMonikerInBriefcase(ref this, out pmk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IBriefcaseInitiator self, out IMoniker pmk) IsMonikerInBriefcase;
			}
		}
		[CRepr]
		public struct IActiveDesktopP : IUnknown
		{
			public const new Guid IID = .(0x52502ee0, 0xec80, 0x11d0, 0x89, 0xab, 0x00, 0xc0, 0x4f, 0xc2, 0x97, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetSafeMode(uint32 dwFlags) mut => VT.SetSafeMode(ref this, dwFlags);
			public HResult EnsureUpdateHTML() mut => VT.EnsureUpdateHTML(ref this);
			public HResult SetScheme(char16* pwszSchemeName, uint32 dwFlags) mut => VT.SetScheme(ref this, pwszSchemeName, dwFlags);
			public HResult GetScheme(char16* pwszSchemeName, out uint32 pdwcchBuffer, uint32 dwFlags) mut => VT.GetScheme(ref this, pwszSchemeName, out pdwcchBuffer, dwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IActiveDesktopP self, uint32 dwFlags) SetSafeMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IActiveDesktopP self) EnsureUpdateHTML;
				public new function [CallingConvention(.Stdcall)] HResult(ref IActiveDesktopP self, char16* pwszSchemeName, uint32 dwFlags) SetScheme;
				public new function [CallingConvention(.Stdcall)] HResult(ref IActiveDesktopP self, char16* pwszSchemeName, out uint32 pdwcchBuffer, uint32 dwFlags) GetScheme;
			}
		}
		[CRepr]
		public struct IADesktopP2 : IUnknown
		{
			public const new Guid IID = .(0xb22754e2, 0x4574, 0x11d1, 0x98, 0x88, 0x00, 0x60, 0x97, 0xde, 0xac, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ReReadWallpaper() mut => VT.ReReadWallpaper(ref this);
			public HResult GetADObjectFlags(out uint32 pdwFlags, uint32 dwMask) mut => VT.GetADObjectFlags(ref this, out pdwFlags, dwMask);
			public HResult UpdateAllDesktopSubscriptions() mut => VT.UpdateAllDesktopSubscriptions(ref this);
			public HResult MakeDynamicChanges(ref IOleObject pOleObj) mut => VT.MakeDynamicChanges(ref this, ref pOleObj);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IADesktopP2 self) ReReadWallpaper;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADesktopP2 self, out uint32 pdwFlags, uint32 dwMask) GetADObjectFlags;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADesktopP2 self) UpdateAllDesktopSubscriptions;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADesktopP2 self, ref IOleObject pOleObj) MakeDynamicChanges;
			}
		}
		
	}
}
