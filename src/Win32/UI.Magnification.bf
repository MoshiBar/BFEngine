using System;

// namespace UI.Magnification
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 MS_SHOWMAGNIFIEDCURSOR = 1;
		public const int32 MS_CLIPAROUNDCURSOR = 2;
		public const int32 MS_INVERTCOLORS = 4;
		public const uint32 MW_FILTERMODE_EXCLUDE = 0;
		public const uint32 MW_FILTERMODE_INCLUDE = 1;
		
		// --- Function Pointers ---
		
		public function IntBool MagImageScalingCallback(HWnd hwnd, void* srcdata, MAGIMAGEHEADER srcheader, void* destdata, MAGIMAGEHEADER destheader, RectI unclipped, RectI clipped, HRGN dirty);
		
		// --- Structs ---
		
		[CRepr]
		public struct MAGTRANSFORM
		{
			public float[9] v;
		}
		[CRepr]
		public struct MAGIMAGEHEADER
		{
			public uint32 width;
			public uint32 height;
			public Guid format;
			public uint32 stride;
			public uint32 offset;
			public uint cbSize;
		}
		[CRepr]
		public struct MAGCOLOREFFECT
		{
			public float[25] transform;
		}
		
		// --- Functions ---
		
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagInitialize();
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagUninitialize();
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagSetWindowSource(HWnd hwnd, RectI rect);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagGetWindowSource(HWnd hwnd, out RectI pRect);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagSetWindowTransform(HWnd hwnd, out MAGTRANSFORM pTransform);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagGetWindowTransform(HWnd hwnd, out MAGTRANSFORM pTransform);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagSetWindowFilterList(HWnd hwnd, uint32 dwFilterMode, int32 count, out HWnd pHWND);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 MagGetWindowFilterList(HWnd hwnd, out uint32 pdwFilterMode, int32 count, out HWnd pHWND);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagSetImageScalingCallback(HWnd hwnd, MagImageScalingCallback callback);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MagImageScalingCallback MagGetImageScalingCallback(HWnd hwnd);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagSetColorEffect(HWnd hwnd, out MAGCOLOREFFECT pEffect);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagGetColorEffect(HWnd hwnd, out MAGCOLOREFFECT pEffect);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagSetFullscreenTransform(float magLevel, int32 xOffset, int32 yOffset);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagGetFullscreenTransform(out float pMagLevel, out int32 pxOffset, out int32 pyOffset);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagSetFullscreenColorEffect(ref MAGCOLOREFFECT pEffect);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagGetFullscreenColorEffect(out MAGCOLOREFFECT pEffect);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagSetInputTransform(IntBool fEnabled, in RectI pRectSource, in RectI pRectDest);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagGetInputTransform(out IntBool pfEnabled, out RectI pRectSource, out RectI pRectDest);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MagShowSystemCursor(IntBool fShowCursor);
	}
}
