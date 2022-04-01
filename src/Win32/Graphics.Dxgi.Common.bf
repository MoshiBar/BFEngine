using System;

// namespace Graphics.Dxgi.Common
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 _FACDXGI = 2170;
		public const uint32 DXGI_CPU_ACCESS_NONE = 0;
		public const uint32 DXGI_CPU_ACCESS_DYNAMIC = 1;
		public const uint32 DXGI_CPU_ACCESS_READ_WRITE = 2;
		public const uint32 DXGI_CPU_ACCESS_SCRATCH = 3;
		public const uint32 DXGI_CPU_ACCESS_FIELD = 15;
		public const uint32 DXGI_FORMAT_DEFINED = 1;
		public const uint32 DXGI_STANDARD_MULTISAMPLE_QUALITY_PATTERN = 4294967295;
		public const uint32 DXGI_CENTER_MULTISAMPLE_QUALITY_PATTERN = 4294967294;
		
		// --- Enums ---
		
		public enum DXGI_COLOR_SPACE_TYPE : int32
		{
			RGB_FULL_G22_NONE_P709 = 0,
			RGB_FULL_G10_NONE_P709 = 1,
			RGB_STUDIO_G22_NONE_P709 = 2,
			RGB_STUDIO_G22_NONE_P2020 = 3,
			RESERVED = 4,
			YCBCR_FULL_G22_NONE_P709_X601 = 5,
			YCBCR_STUDIO_G22_LEFT_P601 = 6,
			YCBCR_FULL_G22_LEFT_P601 = 7,
			YCBCR_STUDIO_G22_LEFT_P709 = 8,
			YCBCR_FULL_G22_LEFT_P709 = 9,
			YCBCR_STUDIO_G22_LEFT_P2020 = 10,
			YCBCR_FULL_G22_LEFT_P2020 = 11,
			RGB_FULL_G2084_NONE_P2020 = 12,
			YCBCR_STUDIO_G2084_LEFT_P2020 = 13,
			RGB_STUDIO_G2084_NONE_P2020 = 14,
			YCBCR_STUDIO_G22_TOPLEFT_P2020 = 15,
			YCBCR_STUDIO_G2084_TOPLEFT_P2020 = 16,
			RGB_FULL_G22_NONE_P2020 = 17,
			YCBCR_STUDIO_GHLG_TOPLEFT_P2020 = 18,
			YCBCR_FULL_GHLG_TOPLEFT_P2020 = 19,
			RGB_STUDIO_G24_NONE_P709 = 20,
			RGB_STUDIO_G24_NONE_P2020 = 21,
			YCBCR_STUDIO_G24_LEFT_P709 = 22,
			YCBCR_STUDIO_G24_LEFT_P2020 = 23,
			YCBCR_STUDIO_G24_TOPLEFT_P2020 = 24,
			CUSTOM = -1,
		}
		public enum DXGIFormat : uint32
		{
			Unknown = 0,
			R32G32B32A32Typeless = 1,
			R32G32B32A32Float = 2,
			R32G32B32A32Uint = 3,
			R32G32B32A32Sint = 4,
			R32G32B32Typeless = 5,
			R32G32B32Float = 6,
			R32G32B32Uint = 7,
			R32G32B32Sint = 8,
			R16G16B16A16Typeless = 9,
			R16G16B16A16Float = 10,
			R16G16B16A16Unorm = 11,
			R16G16B16A16Uint = 12,
			R16G16B16A16Snorm = 13,
			R16G16B16A16Sint = 14,
			R32G32Typeless = 15,
			R32G32Float = 16,
			R32G32Uint = 17,
			R32G32Sint = 18,
			R32G8X24Typeless = 19,
			D32FloatS8X24Uint = 20,
			R32FloatX8X24Typeless = 21,
			X32TypelessG8X24Uint = 22,
			R10G10B10A2Typeless = 23,
			R10G10B10A2Unorm = 24,
			R10G10B10A2Uint = 25,
			R11G11B10Float = 26,
			R8G8B8A8Typeless = 27,
			R8G8B8A8Unorm = 28,
			R8G8B8A8UnormSrgb = 29,
			R8G8B8A8Uint = 30,
			R8G8B8A8Snorm = 31,
			R8G8B8A8Sint = 32,
			R16G16Typeless = 33,
			R16G16Float = 34,
			R16G16Unorm = 35,
			R16G16Uint = 36,
			R16G16Snorm = 37,
			R16G16Sint = 38,
			R32Typeless = 39,
			D32Float = 40,
			R32Float = 41,
			R32Uint = 42,
			R32Sint = 43,
			R24G8Typeless = 44,
			D24UnormS8Uint = 45,
			R24UnormX8Typeless = 46,
			X24TypelessG8Uint = 47,
			R8G8Typeless = 48,
			R8G8Unorm = 49,
			R8G8Uint = 50,
			R8G8Snorm = 51,
			R8G8Sint = 52,
			R16Typeless = 53,
			R16Float = 54,
			D16Unorm = 55,
			R16Unorm = 56,
			R16Uint = 57,
			R16Snorm = 58,
			R16Sint = 59,
			R8Typeless = 60,
			R8Unorm = 61,
			R8Uint = 62,
			R8Snorm = 63,
			R8Sint = 64,
			A8Unorm = 65,
			R1Unorm = 66,
			R9G9B9E5Sharedexp = 67,
			R8G8B8G8Unorm = 68,
			G8R8G8B8Unorm = 69,
			BC1Typeless = 70,
			BC1Unorm = 71,
			BC1UnormSrgb = 72,
			BC2Typeless = 73,
			BC2Unorm = 74,
			BC2UnormSrgb = 75,
			BC3Typeless = 76,
			BC3Unorm = 77,
			BC3UnormSrgb = 78,
			BC4Typeless = 79,
			BC4Unorm = 80,
			BC4Snorm = 81,
			BC5Typeless = 82,
			BC5Unorm = 83,
			BC5Snorm = 84,
			B5G6R5Unorm = 85,
			B5G5R5A1Unorm = 86,
			B8G8R8A8Unorm = 87,
			B8G8R8X8Unorm = 88,
			R10G10B10XrBiasA2Unorm = 89,
			B8G8R8A8Typeless = 90,
			B8G8R8A8UnormSrgb = 91,
			B8G8R8X8Typeless = 92,
			B8G8R8X8UnormSrgb = 93,
			BC6HTypeless = 94,
			BC6HUF16 = 95,
			BC6HSF16 = 96,
			BC7Typeless = 97,
			BC7Unorm = 98,
			BC7UnormSrgb = 99,
			AYUV = 100,
			Y410 = 101,
			Y416 = 102,
			NV12 = 103,
			P010 = 104,
			P016 = 105,
			_420Opaque = 106,
			YUY2 = 107,
			Y210 = 108,
			Y216 = 109,
			NV11 = 110,
			AI44 = 111,
			IA44 = 112,
			P8 = 113,
			A8P8 = 114,
			B4G4R4A4Unorm = 115,
			P208 = 130,
			V208 = 131,
			V408 = 132,
			SamplerFeedbackMinMipOpaque = 189,
			SamplerFeedbackMipRegionUsedOpaque = 190,
		}
		public enum DXGI_MODE_SCANLINE_ORDER : int32
		{
			Unspecified = 0,
			Progressive = 1,
			UpperFieldFirst = 2,
			LowerFieldFirst = 3,
		}
		public enum DXGI_MODE_SCALING : int32
		{
			Unspecified = 0,
			Centered = 1,
			Stretched = 2,
		}
		public enum DXGI_MODE_ROTATION : int32
		{
			Unspecified = 0,
			Identity = 1,
			Rotate90 = 2,
			Rotate180 = 3,
			Rotate270 = 4,
		}
		public enum DXGI_ALPHA_MODE : uint32
		{
			Unspecified = 0,
			Premultiplied = 1,
			Straight = 2,
			Ignore = 3,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct DXGI_RATIONAL
		{
			public uint32 Numerator;
			public uint32 Denominator;
		}
		[CRepr]
		public struct DXGI_SAMPLE_DESC
		{
			public uint32 Count;
			public uint32 Quality;
		}
		[CRepr]
		public struct DXGI_RGB
		{
			public float Red;
			public float Green;
			public float Blue;
		}
		[CRepr]
		public struct DXGI_GAMMA_CONTROL
		{
			public DXGI_RGB Scale;
			public DXGI_RGB Offset;
			public DXGI_RGB[1025] GammaCurve;
		}
		[CRepr]
		public struct DXGI_GAMMA_CONTROL_CAPABILITIES
		{
			public BOOL ScaleAndOffsetSupported;
			public float MaxConvertedValue;
			public float MinConvertedValue;
			public uint32 NumGammaControlPoints;
			public float[1025] ControlPointPositions;
		}
		[CRepr]
		public struct DXGI_MODE_DESC
		{
			public uint32 Width;
			public uint32 Height;
			public DXGI_RATIONAL RefreshRate;
			public DXGIFormat Format;
			public DXGI_MODE_SCANLINE_ORDER ScanlineOrdering;
			public DXGI_MODE_SCALING Scaling;
		}
		[CRepr]
		public struct DXGI_JPEG_DC_HUFFMAN_TABLE
		{
			public uint8[12] CodeCounts;
			public uint8[12] CodeValues;
		}
		[CRepr]
		public struct DXGI_JPEG_AC_HUFFMAN_TABLE
		{
			public uint8[16] CodeCounts;
			public uint8[162] CodeValues;
		}
		[CRepr]
		public struct DXGI_JPEG_QUANTIZATION_TABLE
		{
			public uint8[64] Elements;
		}
		
	}
}
