using static Win32.Graphics.Gdi;
using static Win32.Win32;
using static System.Windows;

namespace BfEngine
{
	class WGL
	{
		public enum ARBEnum : int32
		{
			True = 1,
			False = 0,
			NumberPixelFormats = 0x2000,
			DrawToWindow = 0x2001,
			DrawToBitmap = 0x2002,
			Acceleration = 0x2003,
			NeedPalette = 0x2004,
			NeedSystemPalette = 0x2005,
			SwapLayerBuffers = 0x2006,
			SwapMethod = 0x2007,
			NumberOverlays = 0x2008,
			NumberUnderlays = 0x2009,
			Transparent = 0x200A,
			TransparentRedValue = 0x2037,
			TransparentGreenValue = 0x2038,
			TransparentBlueValue = 0x2039,
			TransparentAlphaValue = 0x203A,
			TransparentIndexValue = 0x203B,
			ShareDepth = 0x200C,
			ShareStencil = 0x200D,
			ShareAccum = 0x200E,
			SupportGdi = 0x200F,
			SupportOpengl = 0x2010,
			DoubleBuffer = 0x2011,
			Stereo = 0x2012,
			PixelType = 0x2013,
			ColorBits = 0x2014,
			RedBits = 0x2015,
			RedShift = 0x2016,
			GreenBits = 0x2017,
			GreenShift = 0x2018,
			BlueBits = 0x2019,
			BlueShift = 0x201A,
			AlphaBits = 0x201B,
			AlphaShift = 0x201C,
			AccumBits = 0x201D,
			AccumRedBits = 0x201E,
			AccumGreenBits = 0x201F,
			AccumBlueBits = 0x2020,
			AccumAlphaBits = 0x2021,
			DepthBits = 0x2022,
			StencilBits = 0x2023,
			AuxBuffers = 0x2024,
			NoAcceleration = 0x2025,
			GenericAcceleration = 0x2026,
			FullAcceleration = 0x2027,
			SwapExchange = 0x2028,
			SwapCopy = 0x2029,
			SwapUndefined = 0x202A,
			TypeRgba = 0x202B,
			TypeColorindex = 0x202C,

			SampleBuffers = 0x2041,
			Samples = 0x2042,
		}

		public static function IntBool(HDC hdc,
			ARBEnum* piAttribIList,
			float* pfAttribFList,
			uint32 nMaxFormats,
			int32* piFormats,
			uint32* nNumFormats) ChoosePixelFormatARB;


		public static void Init(function PROC(char8*/*StringView*/ procname) func)
		{
			ChoosePixelFormatARB = (.)(void*)func("wglChoosePixelFormatARB");
		}
	}
}
