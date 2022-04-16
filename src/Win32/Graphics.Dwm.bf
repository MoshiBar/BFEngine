using System;
using static Win32.Win32;
using static Win32.Graphics.Gdi;
using static System.Windows.COM_IUnknown;
using static System.Windows;

// namespace Graphics.Dwm
namespace Win32.Graphics
{
	public static class Dwm
	{
		// --- Constants ---
		
		public const uint32 DWM_BB_ENABLE = 1;
		public const uint32 DWM_BB_BLURREGION = 2;
		public const uint32 DWM_BB_TRANSITIONONMAXIMIZED = 4;
		public const uint32 DWMWA_COLOR_DEFAULT = 4294967295;
		public const uint32 DWMWA_COLOR_NONE = 4294967294;
		public const uint32 DWM_CLOAKED_APP = 1;
		public const uint32 DWM_CLOAKED_SHELL = 2;
		public const uint32 DWM_CLOAKED_INHERITED = 4;
		public const uint32 DWM_TNP_RECTDESTINATION = 1;
		public const uint32 DWM_TNP_RECTSOURCE = 2;
		public const uint32 DWM_TNP_OPACITY = 4;
		public const uint32 DWM_TNP_VISIBLE = 8;
		public const uint32 DWM_TNP_SOURCECLIENTAREAONLY = 16;
		public const int32 DWM_FRAME_DURATION_DEFAULT = -1;
		public const uint32 DWM_EC_DISABLECOMPOSITION = 0;
		public const uint32 DWM_EC_ENABLECOMPOSITION = 1;
		public const uint32 DWM_SIT_DISPLAYFRAME = 1;
		public const uint32 c_DwmMaxQueuedBuffers = 8;
		public const uint32 c_DwmMaxMonitors = 16;
		public const uint32 c_DwmMaxAdapters = 16;
		
		// --- Enums ---
		
		public enum DWMWINDOWATTRIBUTE : int32
		{
			NCRENDERING_ENABLED = 1,
			NCRENDERING_POLICY = 2,
			TRANSITIONS_FORCEDISABLED = 3,
			ALLOW_NCPAINT = 4,
			CAPTION_BUTTON_BOUNDS = 5,
			NONCLIENT_RTL_LAYOUT = 6,
			FORCE_ICONIC_REPRESENTATION = 7,
			FLIP3D_POLICY = 8,
			EXTENDED_FRAME_BOUNDS = 9,
			HAS_ICONIC_BITMAP = 10,
			DISALLOW_PEEK = 11,
			EXCLUDED_FROM_PEEK = 12,
			CLOAK = 13,
			CLOAKED = 14,
			FREEZE_REPRESENTATION = 15,
			PASSIVE_UPDATE_MODE = 16,
			USE_HOSTBACKDROPBRUSH = 17,
			USE_IMMERSIVE_DARK_MODE = 20,
			WINDOW_CORNER_PREFERENCE = 33,
			BORDER_COLOR = 34,
			CAPTION_COLOR = 35,
			TEXT_COLOR = 36,
			VISIBLE_FRAME_BORDER_THICKNESS = 37,
			LAST = 38,
		}
		public enum DWM_WINDOW_CORNER_PREFERENCE : int32
		{
			DEFAULT = 0,
			DONOTROUND = 1,
			ROUND = 2,
			ROUNDSMALL = 3,
		}
		public enum DWMNCRENDERINGPOLICY : int32
		{
			USEWINDOWSTYLE = 0,
			DISABLED = 1,
			ENABLED = 2,
			LAST = 3,
		}
		public enum DWMFLIP3DWINDOWPOLICY : int32
		{
			DEFAULT = 0,
			EXCLUDEBELOW = 1,
			EXCLUDEABOVE = 2,
			LAST = 3,
		}
		public enum DWM_SOURCE_FRAME_SAMPLING : int32
		{
			POINT = 0,
			COVERAGE = 1,
			LAST = 2,
		}
		public enum DWMTRANSITION_OWNEDWINDOW_TARGET : int32
		{
			NULL = -1,
			REPOSITION = 0,
		}
		public enum GESTURE_TYPE : int32
		{
			PEN_TAP = 0,
			PEN_DOUBLETAP = 1,
			PEN_RIGHTTAP = 2,
			PEN_PRESSANDHOLD = 3,
			PEN_PRESSANDHOLDABORT = 4,
			TOUCH_TAP = 5,
			TOUCH_DOUBLETAP = 6,
			TOUCH_RIGHTTAP = 7,
			TOUCH_PRESSANDHOLD = 8,
			TOUCH_PRESSANDHOLDABORT = 9,
			TOUCH_PRESSANDTAP = 10,
		}
		public enum DWM_SHOWCONTACT : uint32
		{
			DOWN = 1,
			UP = 2,
			DRAG = 4,
			HOLD = 8,
			PENBARREL = 16,
			NONE = 0,
			ALL = 4294967295,
		}
		public enum DWM_TAB_WINDOW_REQUIREMENTS : uint32
		{
			NONE = 0,
			IMPLEMENTED_BY_SYSTEM = 1,
			WINDOW_RELATIONSHIP = 2,
			WINDOW_STYLES = 4,
			WINDOW_REGION = 8,
			WINDOW_DWM_ATTRIBUTES = 16,
			WINDOW_MARGINS = 32,
			TABBING_ENABLED = 64,
			USER_POLICY = 128,
			GROUP_POLICY = 256,
			APP_COMPAT = 512,
		}
		
		// --- Structs ---
		
		[CRepr, Packed(1)]
		public struct DWM_BLURBEHIND
		{
			public uint32 dwFlags;
			public IntBool fEnable;
			public HRGN hRgnBlur;
			public IntBool fTransitionOnMaximized;
		}
		[CRepr, Packed(1)]
		public struct DWM_THUMBNAIL_PROPERTIES
		{
			public uint32 dwFlags;
			public RectI rcDestination;
			public RectI rcSource;
			public uint8 opacity;
			public IntBool fVisible;
			public IntBool fSourceClientAreaOnly;
		}
		[CRepr, Packed(1)]
		public struct UNSIGNED_RATIO
		{
			public uint32 uiNumerator;
			public uint32 uiDenominator;
		}
		[CRepr, Packed(1)]
		public struct DWM_TIMING_INFO
		{
			public uint32 cbSize;
			public UNSIGNED_RATIO rateRefresh;
			public uint64 qpcRefreshPeriod;
			public UNSIGNED_RATIO rateCompose;
			public uint64 qpcVBlank;
			public uint64 cRefresh;
			public uint32 cDXRefresh;
			public uint64 qpcCompose;
			public uint64 cFrame;
			public uint32 cDXPresent;
			public uint64 cRefreshFrame;
			public uint64 cFrameSubmitted;
			public uint32 cDXPresentSubmitted;
			public uint64 cFrameConfirmed;
			public uint32 cDXPresentConfirmed;
			public uint64 cRefreshConfirmed;
			public uint32 cDXRefreshConfirmed;
			public uint64 cFramesLate;
			public uint32 cFramesOutstanding;
			public uint64 cFrameDisplayed;
			public uint64 qpcFrameDisplayed;
			public uint64 cRefreshFrameDisplayed;
			public uint64 cFrameComplete;
			public uint64 qpcFrameComplete;
			public uint64 cFramePending;
			public uint64 qpcFramePending;
			public uint64 cFramesDisplayed;
			public uint64 cFramesComplete;
			public uint64 cFramesPending;
			public uint64 cFramesAvailable;
			public uint64 cFramesDropped;
			public uint64 cFramesMissed;
			public uint64 cRefreshNextDisplayed;
			public uint64 cRefreshNextPresented;
			public uint64 cRefreshesDisplayed;
			public uint64 cRefreshesPresented;
			public uint64 cRefreshStarted;
			public uint64 cPixelsReceived;
			public uint64 cPixelsDrawn;
			public uint64 cBuffersEmpty;
		}
		[CRepr, Packed(1)]
		public struct DWM_PRESENT_PARAMETERS
		{
			public uint32 cbSize;
			public IntBool fQueue;
			public uint64 cRefreshStart;
			public uint32 cBuffer;
			public IntBool fUseSourceRate;
			public UNSIGNED_RATIO rateSource;
			public uint32 cRefreshesPerFrame;
			public DWM_SOURCE_FRAME_SAMPLING eSampling;
		}
		[CRepr, Packed(1)]
		public struct MilMatrix3x2D
		{
			public double S_11;
			public double S_12;
			public double S_21;
			public double S_22;
			public double DX;
			public double DY;
		}
		
		// --- Functions ---
		
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DwmDefWindowProc(HWnd hWnd, uint32 msg, WPARAM wParam, LPARAM lParam, out LRESULT plResult);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmEnableBlurBehindWindow(HWnd hWnd, in DWM_BLURBEHIND pBlurBehind);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmEnableComposition(uint32 uCompositionAction);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmEnableMMCSS(IntBool fEnableMMCSS);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmExtendFrameIntoClientArea(HWnd hWnd, in MARGINS pMarInset);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmGetColorizationColor(out uint32 pcrColorization, out IntBool pfOpaqueBlend);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmGetCompositionTimingInfo(HWnd hwnd, out DWM_TIMING_INFO pTimingInfo);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmGetWindowAttribute(HWnd hwnd, DWMWINDOWATTRIBUTE dwAttribute, void* pvAttribute, uint32 cbAttribute);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmIsCompositionEnabled(out IntBool pfEnabled);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmModifyPreviousDxFrameDuration(HWnd hwnd, int32 cRefreshes, IntBool fRelative);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmQueryThumbnailSourceSize(int hThumbnail, out SIZE pSize);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmRegisterThumbnail(HWnd hwndDestination, HWnd hwndSource, out int phThumbnailId);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmSetDxFrameDuration(HWnd hwnd, int32 cRefreshes);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmSetPresentParameters(HWnd hwnd, out DWM_PRESENT_PARAMETERS pPresentParams);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmSetWindowAttribute(HWnd hwnd, DWMWINDOWATTRIBUTE dwAttribute, void* pvAttribute, uint32 cbAttribute);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmUnregisterThumbnail(int hThumbnailId);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmUpdateThumbnailProperties(int hThumbnailId, in DWM_THUMBNAIL_PROPERTIES ptnProperties);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmSetIconicThumbnail(HWnd hwnd, HBitmap hbmp, uint32 dwSITFlags);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmSetIconicLivePreviewBitmap(HWnd hwnd, HBitmap hbmp, POINT* pptClient, uint32 dwSITFlags);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmInvalidateIconicBitmaps(HWnd hwnd);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmAttachMilContent(HWnd hwnd);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmDetachMilContent(HWnd hwnd);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmFlush();
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmGetGraphicsStreamTransformHint(uint32 uIndex, out MilMatrix3x2D pTransform);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmGetGraphicsStreamClient(uint32 uIndex, out Guid pClientUuid);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmGetTransportAttributes(out IntBool pfIsRemoting, out IntBool pfIsConnected, out uint32 pDwGeneration);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmTransitionOwnedWindow(HWnd hwnd, DWMTRANSITION_OWNEDWINDOW_TARGET target);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmRenderGesture(GESTURE_TYPE gt, uint32 cContacts, uint32* pdwPointerID, POINT* pPoints);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmTetherContact(uint32 dwPointerID, IntBool fEnable, POINT ptTether);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmShowContact(uint32 dwPointerID, DWM_SHOWCONTACT eShowContact);
		[Import("dwmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DwmGetUnmetTabRequirements(HWnd appWindow, out DWM_TAB_WINDOW_REQUIREMENTS value);
	}
}
