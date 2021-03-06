using System;
using BfEngine;
using static Win32.Storage.Xps.Printing;
using static Win32.Graphics.Gdi;
using static Win32.Graphics.Dxgi;
using static Win32.Graphics.Imaging;
using static Win32.System.Com;
using static Win32.Graphics.Direct3D;
using static Win32.Win32;
using static System.Windows;
using static System.Windows.COM_IUnknown;

// namespace Graphics.Direct2D
namespace Win32.Graphics
{
	static class Direct2D
	{
		// --- Constants ---
		
		public const float D2D1_DEFAULT_FLATTENING_TOLERANCE = 0.25f;
		public const Guid CLSID_D2D12DAffineTransform = .(0x6aa97485, 0x6354, 0x4cfc, 0x90, 0x8c, 0xe4, 0xa7, 0x4f, 0x62, 0xc9, 0x6c);
		public const Guid CLSID_D2D13DPerspectiveTransform = .(0xc2844d0b, 0x3d86, 0x46e7, 0x85, 0xba, 0x52, 0x6c, 0x92, 0x40, 0xf3, 0xfb);
		public const Guid CLSID_D2D13DTransform = .(0xe8467b04, 0xec61, 0x4b8a, 0xb5, 0xde, 0xd4, 0xd7, 0x3d, 0xeb, 0xea, 0x5a);
		public const Guid CLSID_D2D1ArithmeticComposite = .(0xfc151437, 0x049a, 0x4784, 0xa2, 0x4a, 0xf1, 0xc4, 0xda, 0xf2, 0x09, 0x87);
		public const Guid CLSID_D2D1Atlas = .(0x913e2be4, 0xfdcf, 0x4fe2, 0xa5, 0xf0, 0x24, 0x54, 0xf1, 0x4f, 0xf4, 0x08);
		public const Guid CLSID_D2D1BitmapSource = .(0x5fb6c24d, 0xc6dd, 0x4231, 0x94, 0x04, 0x50, 0xf4, 0xd5, 0xc3, 0x25, 0x2d);
		public const Guid CLSID_D2D1Blend = .(0x81c5b77b, 0x13f8, 0x4cdd, 0xad, 0x20, 0xc8, 0x90, 0x54, 0x7a, 0xc6, 0x5d);
		public const Guid CLSID_D2D1Border = .(0x2a2d49c0, 0x4acf, 0x43c7, 0x8c, 0x6a, 0x7c, 0x4a, 0x27, 0x87, 0x4d, 0x27);
		public const Guid CLSID_D2D1Brightness = .(0x8cea8d1e, 0x77b0, 0x4986, 0xb3, 0xb9, 0x2f, 0x0c, 0x0e, 0xae, 0x78, 0x87);
		public const Guid CLSID_D2D1ColorManagement = .(0x1a28524c, 0xfdd6, 0x4aa4, 0xae, 0x8f, 0x83, 0x7e, 0xb8, 0x26, 0x7b, 0x37);
		public const Guid CLSID_D2D1ColorMatrix = .(0x921f03d6, 0x641c, 0x47df, 0x85, 0x2d, 0xb4, 0xbb, 0x61, 0x53, 0xae, 0x11);
		public const Guid CLSID_D2D1Composite = .(0x48fc9f51, 0xf6ac, 0x48f1, 0x8b, 0x58, 0x3b, 0x28, 0xac, 0x46, 0xf7, 0x6d);
		public const Guid CLSID_D2D1ConvolveMatrix = .(0x407f8c08, 0x5533, 0x4331, 0xa3, 0x41, 0x23, 0xcc, 0x38, 0x77, 0x84, 0x3e);
		public const Guid CLSID_D2D1Crop = .(0xe23f7110, 0x0e9a, 0x4324, 0xaf, 0x47, 0x6a, 0x2c, 0x0c, 0x46, 0xf3, 0x5b);
		public const Guid CLSID_D2D1DirectionalBlur = .(0x174319a6, 0x58e9, 0x49b2, 0xbb, 0x63, 0xca, 0xf2, 0xc8, 0x11, 0xa3, 0xdb);
		public const Guid CLSID_D2D1DiscreteTransfer = .(0x90866fcd, 0x488e, 0x454b, 0xaf, 0x06, 0xe5, 0x04, 0x1b, 0x66, 0xc3, 0x6c);
		public const Guid CLSID_D2D1DisplacementMap = .(0xedc48364, 0x0417, 0x4111, 0x94, 0x50, 0x43, 0x84, 0x5f, 0xa9, 0xf8, 0x90);
		public const Guid CLSID_D2D1DistantDiffuse = .(0x3e7efd62, 0xa32d, 0x46d4, 0xa8, 0x3c, 0x52, 0x78, 0x88, 0x9a, 0xc9, 0x54);
		public const Guid CLSID_D2D1DistantSpecular = .(0x428c1ee5, 0x77b8, 0x4450, 0x8a, 0xb5, 0x72, 0x21, 0x9c, 0x21, 0xab, 0xda);
		public const Guid CLSID_D2D1DpiCompensation = .(0x6c26c5c7, 0x34e0, 0x46fc, 0x9c, 0xfd, 0xe5, 0x82, 0x37, 0x06, 0xe2, 0x28);
		public const Guid CLSID_D2D1Flood = .(0x61c23c20, 0xae69, 0x4d8e, 0x94, 0xcf, 0x50, 0x07, 0x8d, 0xf6, 0x38, 0xf2);
		public const Guid CLSID_D2D1GammaTransfer = .(0x409444c4, 0xc419, 0x41a0, 0xb0, 0xc1, 0x8c, 0xd0, 0xc0, 0xa1, 0x8e, 0x42);
		public const Guid CLSID_D2D1GaussianBlur = .(0x1feb6d69, 0x2fe6, 0x4ac9, 0x8c, 0x58, 0x1d, 0x7f, 0x93, 0xe7, 0xa6, 0xa5);
		public const Guid CLSID_D2D1Scale = .(0x9daf9369, 0x3846, 0x4d0e, 0xa4, 0x4e, 0x0c, 0x60, 0x79, 0x34, 0xa5, 0xd7);
		public const Guid CLSID_D2D1Histogram = .(0x881db7d0, 0xf7ee, 0x4d4d, 0xa6, 0xd2, 0x46, 0x97, 0xac, 0xc6, 0x6e, 0xe8);
		public const Guid CLSID_D2D1HueRotation = .(0x0f4458ec, 0x4b32, 0x491b, 0x9e, 0x85, 0xbd, 0x73, 0xf4, 0x4d, 0x3e, 0xb6);
		public const Guid CLSID_D2D1LinearTransfer = .(0xad47c8fd, 0x63ef, 0x4acc, 0x9b, 0x51, 0x67, 0x97, 0x9c, 0x03, 0x6c, 0x06);
		public const Guid CLSID_D2D1LuminanceToAlpha = .(0x41251ab7, 0x0beb, 0x46f8, 0x9d, 0xa7, 0x59, 0xe9, 0x3f, 0xcc, 0xe5, 0xde);
		public const Guid CLSID_D2D1Morphology = .(0xeae6c40d, 0x626a, 0x4c2d, 0xbf, 0xcb, 0x39, 0x10, 0x01, 0xab, 0xe2, 0x02);
		public const Guid CLSID_D2D1OpacityMetadata = .(0x6c53006a, 0x4450, 0x4199, 0xaa, 0x5b, 0xad, 0x16, 0x56, 0xfe, 0xce, 0x5e);
		public const Guid CLSID_D2D1PointDiffuse = .(0xb9e303c3, 0xc08c, 0x4f91, 0x8b, 0x7b, 0x38, 0x65, 0x6b, 0xc4, 0x8c, 0x20);
		public const Guid CLSID_D2D1PointSpecular = .(0x09c3ca26, 0x3ae2, 0x4f09, 0x9e, 0xbc, 0xed, 0x38, 0x65, 0xd5, 0x3f, 0x22);
		public const Guid CLSID_D2D1Premultiply = .(0x06eab419, 0xdeed, 0x4018, 0x80, 0xd2, 0x3e, 0x1d, 0x47, 0x1a, 0xde, 0xb2);
		public const Guid CLSID_D2D1Saturation = .(0x5cb2d9cf, 0x327d, 0x459f, 0xa0, 0xce, 0x40, 0xc0, 0xb2, 0x08, 0x6b, 0xf7);
		public const Guid CLSID_D2D1Shadow = .(0xc67ea361, 0x1863, 0x4e69, 0x89, 0xdb, 0x69, 0x5d, 0x3e, 0x9a, 0x5b, 0x6b);
		public const Guid CLSID_D2D1SpotDiffuse = .(0x818a1105, 0x7932, 0x44f4, 0xaa, 0x86, 0x08, 0xae, 0x7b, 0x2f, 0x2c, 0x93);
		public const Guid CLSID_D2D1SpotSpecular = .(0xedae421e, 0x7654, 0x4a37, 0x9d, 0xb8, 0x71, 0xac, 0xc1, 0xbe, 0xb3, 0xc1);
		public const Guid CLSID_D2D1TableTransfer = .(0x5bf818c3, 0x5e43, 0x48cb, 0xb6, 0x31, 0x86, 0x83, 0x96, 0xd6, 0xa1, 0xd4);
		public const Guid CLSID_D2D1Tile = .(0xb0784138, 0x3b76, 0x4bc5, 0xb1, 0x3b, 0x0f, 0xa2, 0xad, 0x02, 0x65, 0x9f);
		public const Guid CLSID_D2D1Turbulence = .(0xcf2bb6ae, 0x889a, 0x4ad7, 0xba, 0x29, 0xa2, 0xfd, 0x73, 0x2c, 0x9f, 0xc9);
		public const Guid CLSID_D2D1UnPremultiply = .(0xfb9ac489, 0xad8d, 0x41ed, 0x99, 0x99, 0xbb, 0x63, 0x47, 0xd1, 0x10, 0xf7);
		public const Guid CLSID_D2D1YCbCr = .(0x99503cc1, 0x66c7, 0x45c9, 0xa8, 0x75, 0x8a, 0xd8, 0xa7, 0x91, 0x44, 0x01);
		public const Guid CLSID_D2D1Contrast = .(0xb648a78a, 0x0ed5, 0x4f80, 0xa9, 0x4a, 0x8e, 0x82, 0x5a, 0xca, 0x6b, 0x77);
		public const Guid CLSID_D2D1RgbToHue = .(0x23f3e5ec, 0x91e8, 0x4d3d, 0xad, 0x0a, 0xaf, 0xad, 0xc1, 0x00, 0x4a, 0xa1);
		public const Guid CLSID_D2D1HueToRgb = .(0x7b78a6bd, 0x0141, 0x4def, 0x8a, 0x52, 0x63, 0x56, 0xee, 0x0c, 0xbd, 0xd5);
		public const Guid CLSID_D2D1ChromaKey = .(0x74c01f5b, 0x2a0d, 0x408c, 0x88, 0xe2, 0xc7, 0xa3, 0xc7, 0x19, 0x77, 0x42);
		public const Guid CLSID_D2D1Emboss = .(0xb1c5eb2b, 0x0348, 0x43f0, 0x81, 0x07, 0x49, 0x57, 0xca, 0xcb, 0xa2, 0xae);
		public const Guid CLSID_D2D1Exposure = .(0xb56c8cfa, 0xf634, 0x41ee, 0xbe, 0xe0, 0xff, 0xa6, 0x17, 0x10, 0x60, 0x04);
		public const Guid CLSID_D2D1Grayscale = .(0x36dde0eb, 0x3725, 0x42e0, 0x83, 0x6d, 0x52, 0xfb, 0x20, 0xae, 0xe6, 0x44);
		public const Guid CLSID_D2D1Invert = .(0xe0c3784d, 0xcb39, 0x4e84, 0xb6, 0xfd, 0x6b, 0x72, 0xf0, 0x81, 0x02, 0x63);
		public const Guid CLSID_D2D1Posterize = .(0x2188945e, 0x33a3, 0x4366, 0xb7, 0xbc, 0x08, 0x6b, 0xd0, 0x2d, 0x08, 0x84);
		public const Guid CLSID_D2D1Sepia = .(0x3a1af410, 0x5f1d, 0x4dbe, 0x84, 0xdf, 0x91, 0x5d, 0xa7, 0x9b, 0x71, 0x53);
		public const Guid CLSID_D2D1Sharpen = .(0xc9b887cb, 0xc5ff, 0x4dc5, 0x97, 0x79, 0x27, 0x3d, 0xcf, 0x41, 0x7c, 0x7d);
		public const Guid CLSID_D2D1Straighten = .(0x4da47b12, 0x79a3, 0x4fb0, 0x82, 0x37, 0xbb, 0xc3, 0xb2, 0xa4, 0xde, 0x08);
		public const Guid CLSID_D2D1TemperatureTint = .(0x89176087, 0x8af9, 0x4a08, 0xae, 0xb1, 0x89, 0x5f, 0x38, 0xdb, 0x17, 0x66);
		public const Guid CLSID_D2D1Vignette = .(0xc00c40be, 0x5e67, 0x4ca3, 0x95, 0xb4, 0xf4, 0xb0, 0x2c, 0x11, 0x51, 0x35);
		public const Guid CLSID_D2D1EdgeDetection = .(0xeff583ca, 0xcb07, 0x4aa9, 0xac, 0x5d, 0x2c, 0xc4, 0x4c, 0x76, 0x46, 0x0f);
		public const Guid CLSID_D2D1HighlightsShadows = .(0xcadc8384, 0x323f, 0x4c7e, 0xa3, 0x61, 0x2e, 0x2b, 0x24, 0xdf, 0x6e, 0xe4);
		public const Guid CLSID_D2D1LookupTable3D = .(0x349e0eda, 0x0088, 0x4a79, 0x9c, 0xa3, 0xc7, 0xe3, 0x00, 0x20, 0x20, 0x20);
		public const Guid CLSID_D2D1Opacity = .(0x811d79a4, 0xde28, 0x4454, 0x80, 0x94, 0xc6, 0x46, 0x85, 0xf8, 0xbd, 0x4c);
		public const Guid CLSID_D2D1AlphaMask = .(0xc80ecff0, 0x3fd5, 0x4f05, 0x83, 0x28, 0xc5, 0xd1, 0x72, 0x4b, 0x4f, 0x0a);
		public const Guid CLSID_D2D1CrossFade = .(0x12f575e8, 0x4db1, 0x485f, 0x9a, 0x84, 0x03, 0xa0, 0x7d, 0xd3, 0x82, 0x9f);
		public const Guid CLSID_D2D1Tint = .(0x36312b17, 0xf7dd, 0x4014, 0x91, 0x5d, 0xff, 0xca, 0x76, 0x8c, 0xf2, 0x11);
		public const float D2D1_SCENE_REFERRED_SDR_WHITE_LEVEL = 80f;
		public const Guid CLSID_D2D1WhiteLevelAdjustment = .(0x44a1cadb, 0x6cdd, 0x4818, 0x8f, 0xf4, 0x26, 0xc1, 0xcf, 0xe9, 0x5b, 0xdb);
		public const Guid CLSID_D2D1HdrToneMap = .(0x7b0b748d, 0x4610, 0x4486, 0xa9, 0x0c, 0x99, 0x9d, 0x9a, 0x2e, 0x2b, 0x11);
		public const uint32 D2D1_APPEND_ALIGNED_ELEMENT = 4294967295;
		public const uint32 FACILITY_D2D = 2201;
		
		// --- Enums ---
		
		public enum D2D1_INTERPOLATION_MODE_DEFINITION : int32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
			HighQualityCubic = 5,
			Fant = 6,
			MipmapLinear = 7,
		}
		public enum D2D1_GAMMA : uint32
		{
			_2_2 = 0,
			_1_0 = 1,
		}
		public enum D2D1_OPACITY_MASK_CONTENT : uint32
		{
			Graphics = 0,
			TextNatural = 1,
			TextGdiCompatible = 2,
		}
		public enum D2D1_EXTEND_MODE : uint32
		{
			Clamp = 0,
			Wrap = 1,
			Mirror = 2,
		}
		public enum D2D1_ANTIALIAS_MODE : uint32
		{
			PerPrimitive = 0,
			Aliased = 1,
		}
		public enum D2D1_TEXT_ANTIALIAS_MODE : uint32
		{
			Default = 0,
			Cleartype = 1,
			Grayscale = 2,
			Aliased = 3,
		}
		public enum D2D1_BITMAP_INTERPOLATION_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
		}
		public enum D2D1_DRAW_TEXT_OPTIONS : uint32
		{
			NoSnap = 1,
			Clip = 2,
			EnableColorFont = 4,
			DisableColorBitmapSnapping = 8,
			None = 0,
		}
		public enum D2D1_ARC_SIZE : uint32
		{
			SMALL = 0,
			LARGE = 1,
		}
		public enum D2D1_CAP_STYLE : uint32
		{
			Flat = 0,
			Square = 1,
			Round = 2,
			Triangle = 3,
		}
		public enum D2D1_DASH_STYLE : uint32
		{
			Solid = 0,
			Dash = 1,
			Dot = 2,
			DashDot = 3,
			DashDotDot = 4,
			Custom = 5,
		}
		public enum D2D1_LINE_JOIN : uint32
		{
			Miter = 0,
			Bevel = 1,
			Round = 2,
			MiterOrBevel = 3,
		}
		public enum D2D1_COMBINE_MODE : uint32
		{
			Union = 0,
			Intersect = 1,
			Xor = 2,
			Exclude = 3,
		}
		public enum D2D1_GEOMETRY_RELATION : uint32
		{
			Unknown = 0,
			Disjoint = 1,
			IsContained = 2,
			Contains = 3,
			Overlap = 4,
		}
		public enum D2D1_GEOMETRY_SIMPLIFICATION_OPTION : uint32
		{
			CubicsAndLines = 0,
			Lines = 1,
		}
		public enum D2D1_SWEEP_DIRECTION : uint32
		{
			CounterClockwise = 0,
			Clockwise = 1,
		}
		public enum D2D1_LAYER_OPTIONS : uint32
		{
			None = 0,
			InitializeForCleartype = 1,
		}
		public enum D2D1_WINDOW_STATE : uint32
		{
			None = 0,
			Occluded = 1,
		}
		public enum RenderTargetType : uint32
		{
			Default = 0,
			Software = 1,
			Hardware = 2,
		}
		public enum FeatureLevel : uint32
		{
			Default = 0,
			_9 = 37120,
			_10 = 40960,
		}
		public enum RenderTargetUsage : uint32
		{
			None = 0,
			ForceBitmapRemoting = 1,
			GdiCompatible = 2,
		}
		public enum PresentOptions : uint32
		{
			None = 0,
			RetainContents = 1,
			Immediately = 2,
		}
		public enum D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS : uint32
		{
			None = 0,
			GdiCompatible = 1,
		}
		public enum D2D1_DC_INITIALIZE_MODE : uint32
		{
			Copy = 0,
			Clear = 1,
		}
		public enum D2D1_DEBUG_LEVEL : uint32
		{
			None = 0,
			Error = 1,
			Warning = 2,
			Information = 3,
		}
		public enum FactoryType : uint32
		{
			SingleThreaded = 0,
			MultiThreaded = 1
		}
		public enum D2D1_CHANNEL_SELECTOR : uint32
		{
			R = 0,
			G = 1,
			B = 2,
			A = 3,
		}
		public enum D2D1_BITMAPSOURCE_ORIENTATION : uint32
		{
			Default = 1,
			FlipHorizontal = 2,
			RotateClockwise180 = 3,
			RotateClockwise180FlipHorizontal = 4,
			RotateClockwise270FlipHorizontal = 5,
			RotateClockwise90 = 6,
			RotateClockwise90FlipHorizontal = 7,
			RotateClockwise270 = 8,
		}
		public enum D2D1_GAUSSIANBLUR_PROP : uint32
		{
			StandardDeviation = 0,
			Optimization = 1,
			BorderMode = 2,
		}
		public enum D2D1_GAUSSIANBLUR_OPTIMIZATION : uint32
		{
			Speed = 0,
			Balanced = 1,
			Quality = 2,
		}
		public enum D2D1_DIRECTIONALBLUR_PROP : uint32
		{
			StandardDeviation = 0,
			Angle = 1,
			Optimization = 2,
			BorderMode = 3,
		}
		public enum D2D1_DIRECTIONALBLUR_OPTIMIZATION : uint32
		{
			Speed = 0,
			Balanced = 1,
			Quality = 2,
		}
		public enum D2D1_SHADOW_PROP : uint32
		{
			BlurStandardDeviation = 0,
			Color = 1,
			Optimization = 2,
		}
		public enum D2D1_SHADOW_OPTIMIZATION : uint32
		{
			Speed = 0,
			Balanced = 1,
			Quality = 2,
		}
		public enum D2D1_BLEND_PROP : uint32
		{
			Mode = 0,
		}
		public enum D2D1_SATURATION_PROP : uint32
		{
			Saturation = 0,
		}
		public enum D2D1_HUEROTATION_PROP : uint32
		{
			Angle = 0,
		}
		public enum D2D1_COLORMATRIX_PROP : uint32
		{
			ColorMatrix = 0,
			AlphaMode = 1,
			ClampOutput = 2,
		}
		public enum D2D1_BITMAPSOURCE_PROP : uint32
		{
			WicBitmapSource = 0,
			Scale = 1,
			InterpolationMode = 2,
			EnableDpiCorrection = 3,
			AlphaMode = 4,
			Orientation = 5,
		}
		public enum D2D1_BITMAPSOURCE_INTERPOLATION_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			Fant = 6,
			MipmapLinear = 7,
		}
		public enum D2D1_BITMAPSOURCE_ALPHA_MODE : uint32
		{
			Premultiplied = 1,
			Straight = 2,
		}
		public enum D2D1_COMPOSITE_PROP : uint32
		{
			Mode = 0,
		}
		public enum D2D1_3DTRANSFORM_PROP : uint32
		{
			InterpolationMode = 0,
			BorderMode = 1,
			TransformMatrix = 2,
		}
		public enum D2D1_3DTRANSFORM_INTERPOLATION_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
		}
		public enum D2D1_3DPERSPECTIVETRANSFORM_PROP : uint32
		{
			InterpolationMode = 0,
			BorderMode = 1,
			Depth = 2,
			PerspectiveOrigin = 3,
			LocalOffset = 4,
			GlobalOffset = 5,
			RotationOrigin = 6,
			Rotation = 7,
		}
		public enum D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
		}
		public enum D2D1_2DAFFINETRANSFORM_PROP : uint32
		{
			InterpolationMode = 0,
			BorderMode = 1,
			TransformMatrix = 2,
			Sharpness = 3,
		}
		public enum D2D1_DPICOMPENSATION_PROP : uint32
		{
			InterpolationMode = 0,
			BorderMode = 1,
			InputDpi = 2,
		}
		public enum D2D1_DPICOMPENSATION_INTERPOLATION_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
			HighQualityCubic = 5,
		}
		public enum D2D1_SCALE_PROP : uint32
		{
			Scale = 0,
			CenterPoint = 1,
			InterpolationMode = 2,
			BorderMode = 3,
			Sharpness = 4,
		}
		public enum D2D1_SCALE_INTERPOLATION_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
			HighQualityCubic = 5,
		}
		public enum D2D1_TURBULENCE_PROP : uint32
		{
			Offset = 0,
			Size = 1,
			BaseFrequency = 2,
			NumOctaves = 3,
			Seed = 4,
			Noise = 5,
			Stitchable = 6,
		}
		public enum D2D1_DISPLACEMENTMAP_PROP : uint32
		{
			Scale = 0,
			XChannelSelect = 1,
			YChannelSelect = 2,
		}
		public enum D2D1_COLORMANAGEMENT_PROP : uint32
		{
			SourceColorContext = 0,
			SourceRenderingIntent = 1,
			DestinationColorContext = 2,
			DestinationRenderingIntent = 3,
			AlphaMode = 4,
			Quality = 5,
		}
		public enum D2D1_COLORMANAGEMENT_ALPHA_MODE : uint32
		{
			Premultiplied = 1,
			Straight = 2,
		}
		public enum D2D1_COLORMANAGEMENT_QUALITY : uint32
		{
			Proof = 0,
			Normal = 1,
			Best = 2,
		}
		public enum D2D1_COLORMANAGEMENT_RENDERING_INTENT : uint32
		{
			Perceptual = 0,
			RelativeColorimetric = 1,
			Saturation = 2,
			AbsoluteColorimetric = 3,
		}
		public enum D2D1_HISTOGRAM_PROP : uint32
		{
			NumBins = 0,
			ChannelSelect = 1,
			HistogramOutput = 2,
		}
		public enum D2D1_POINTSPECULAR_PROP : uint32
		{
			LightPosition = 0,
			SpecularExponent = 1,
			SpecularConstant = 2,
			SurfaceScale = 3,
			Color = 4,
			KernelUnitLength = 5,
			ScaleMode = 6,
		}
		public enum D2D1_POINTSPECULAR_SCALE_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
			HighQualityCubic = 5,
		}
		public enum D2D1_SPOTSPECULAR_PROP : uint32
		{
			LightPosition = 0,
			PointsAt = 1,
			Focus = 2,
			LimitingConeAngle = 3,
			SpecularExponent = 4,
			SpecularConstant = 5,
			SurfaceScale = 6,
			Color = 7,
			KernelUnitLength = 8,
			ScaleMode = 9,
		}
		public enum D2D1_SPOTSPECULAR_SCALE_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
			HighQualityCubic = 5,
		}
		public enum D2D1_DISTANTSPECULAR_PROP : uint32
		{
			Azimuth = 0,
			Elevation = 1,
			SpecularExponent = 2,
			SpecularConstant = 3,
			SurfaceScale = 4,
			Color = 5,
			KernelUnitLength = 6,
			ScaleMode = 7,
		}
		public enum D2D1_DISTANTSPECULAR_SCALE_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
			HighQualityCubic = 5,
		}
		public enum D2D1_POINTDIFFUSE_PROP : uint32
		{
			LightPosition = 0,
			DiffuseConstant = 1,
			SurfaceScale = 2,
			Color = 3,
			KernelUnitLength = 4,
			ScaleMode = 5,
		}
		public enum D2D1_POINTDIFFUSE_SCALE_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
			HighQualityCubic = 5,
		}
		public enum D2D1_SPOTDIFFUSE_PROP : uint32
		{
			LightPosition = 0,
			PointsAt = 1,
			Focus = 2,
			LimitingConeAngle = 3,
			DiffuseConstant = 4,
			SurfaceScale = 5,
			Color = 6,
			KernelUnitLength = 7,
			ScaleMode = 8,
		}
		public enum D2D1_SPOTDIFFUSE_SCALE_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
			HighQualityCubic = 5,
		}
		public enum D2D1_DISTANTDIFFUSE_PROP : uint32
		{
			Azimuth = 0,
			Elevation = 1,
			DiffuseConstant = 2,
			SurfaceScale = 3,
			Color = 4,
			KernelUnitLength = 5,
			ScaleMode = 6,
		}
		public enum D2D1_DISTANTDIFFUSE_SCALE_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
			HighQualityCubic = 5,
		}
		public enum D2D1_FLOOD_PROP : uint32
		{
			Color = 0,
		}
		public enum D2D1_LINEARTRANSFER_PROP : uint32
		{
			RedYIntercept = 0,
			RedSlope = 1,
			RedDisable = 2,
			GreenYIntercept = 3,
			GreenSlope = 4,
			GreenDisable = 5,
			BlueYIntercept = 6,
			BlueSlope = 7,
			BlueDisable = 8,
			AlphaYIntercept = 9,
			AlphaSlope = 10,
			AlphaDisable = 11,
			ClampOutput = 12,
		}
		public enum D2D1_GAMMATRANSFER_PROP : uint32
		{
			RedAmplitude = 0,
			RedExponent = 1,
			RedOffset = 2,
			RedDisable = 3,
			GreenAmplitude = 4,
			GreenExponent = 5,
			GreenOffset = 6,
			GreenDisable = 7,
			BlueAmplitude = 8,
			BlueExponent = 9,
			BlueOffset = 10,
			BlueDisable = 11,
			AlphaAmplitude = 12,
			AlphaExponent = 13,
			AlphaOffset = 14,
			AlphaDisable = 15,
			ClampOutput = 16,
		}
		public enum D2D1_TABLETRANSFER_PROP : uint32
		{
			RedTable = 0,
			RedDisable = 1,
			GreenTable = 2,
			GreenDisable = 3,
			BlueTable = 4,
			BlueDisable = 5,
			AlphaTable = 6,
			AlphaDisable = 7,
			ClampOutput = 8,
		}
		public enum D2D1_DISCRETETRANSFER_PROP : uint32
		{
			RedTable = 0,
			RedDisable = 1,
			GreenTable = 2,
			GreenDisable = 3,
			BlueTable = 4,
			BlueDisable = 5,
			AlphaTable = 6,
			AlphaDisable = 7,
			ClampOutput = 8,
		}
		public enum D2D1_CONVOLVEMATRIX_PROP : uint32
		{
			KernelUnitLength = 0,
			ScaleMode = 1,
			KernelSizeX = 2,
			KernelSizeY = 3,
			KernelMatrix = 4,
			Divisor = 5,
			Bias = 6,
			KernelOffset = 7,
			PreserveAlpha = 8,
			BorderMode = 9,
			ClampOutput = 10,
		}
		public enum D2D1_CONVOLVEMATRIX_SCALE_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
			HighQualityCubic = 5,
		}
		public enum D2D1_BRIGHTNESS_PROP : uint32
		{
			WhitePoint = 0,
			BlackPoint = 1,
		}
		public enum D2D1_ARITHMETICCOMPOSITE_PROP : uint32
		{
			Coefficients = 0,
			ClampOutput = 1,
		}
		public enum D2D1_CROP_PROP : uint32
		{
			Rect = 0,
			BorderMode = 1,
		}
		public enum D2D1_BORDER_PROP : uint32
		{
			EdgeModeX = 0,
			EdgeModeY = 1,
		}
		public enum D2D1_BORDER_EDGE_MODE : uint32
		{
			Clamp = 0,
			Wrap = 1,
			Mirror = 2,
		}
		public enum D2D1_MORPHOLOGY_PROP : uint32
		{
			Mode = 0,
			Width = 1,
			Height = 2,
		}
		public enum D2D1_MORPHOLOGY_MODE : uint32
		{
			Erode = 0,
			Dilate = 1,
		}
		public enum D2D1_TILE_PROP : uint32
		{
			Rect = 0,
		}
		public enum D2D1_ATLAS_PROP : uint32
		{
			InputRect = 0,
			InputPaddingRect = 1,
		}
		public enum D2D1_OPACITYMETADATA_PROP : uint32
		{
			InputOpaqueRect = 0,
		}
		public enum PropertyType : uint32
		{
			Unknown = 0,
			String = 1,
			Bool = 2,
			Uint32 = 3,
			Int32 = 4,
			Float = 5,
			Vector2 = 6,
			Vector3 = 7,
			Vector4 = 8,
			Blob = 9,
			Iunknown = 10,
			Enum = 11,
			Array = 12,
			CLSID = 13,
			Matrix_3X2 = 14,
			Matrix_4X3 = 15,
			Matrix_4X4 = 16,
			Matrix_5X4 = 17,
			ColorContext = 18,
		}
		public enum Property : uint32
		{
			CLSID = 2147483648,
			Displayname = 2147483649,
			Author = 2147483650,
			Category = 2147483651,
			Description = 2147483652,
			Inputs = 2147483653,
			Cached = 2147483654,
			Precision = 2147483655,
			MinInputs = 2147483656,
			MaxInputs = 2147483657,
		}
		public enum SubProperty : uint32
		{
			Displayname = 2147483648,
			Isreadonly = 2147483649,
			Min = 2147483650,
			Max = 2147483651,
			Default = 2147483652,
			Fields = 2147483653,
			Index = 2147483654,
		}
		public enum BitmapOptions : uint32
		{
			None = 0,
			Target = 1,
			CannotDraw = 2,
			CpuRead = 4,
			GdiCompatible = 8,
		}
		public enum BufferPrecision : uint32
		{
			Unknown = 0,
			_8BPC_UNORM = 1,
			_8BPC_UNORM_SRGB = 2,
			_16BPC_UNORM = 3,
			_16BPC_FLOAT = 4,
			_32BPC_FLOAT = 5,
		}
		public enum MapOptions : uint32
		{
			None = 0,
			Read = 1,
			Write = 2,
			Discard = 4,
		}
		public enum InterpolationMode : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
			HighQualityCubic = 5,
		}
		public enum UnitMode : uint32
		{
			Dips = 0,
			Pixels = 1,
		}
		public enum ColorSpace : uint32
		{
			Custom = 0,
			SRGB = 1,
			SCRGB = 2,
		}
		public enum DeviceContextOptions : uint32
		{
			None = 0,
			EnableMultithreadedOptimizations = 1,
		}
		public enum D2D1_STROKE_TRANSFORM_TYPE : uint32
		{
			Normal = 0,
			Fixed = 1,
			Hairline = 2,
		}
		public enum D2D1_PRIMITIVE_BLEND : uint32
		{
			SourceOver = 0,
			Copy = 1,
			Min = 2,
			Add = 3,
			Max = 4,
		}
		public enum D2D1_THREADING_MODE : uint32
		{
			SingleThreaded = 0,
			MultiThreaded = 1,
		}
		public enum D2D1_COLOR_INTERPOLATION_MODE : uint32
		{
			Straight = 0,
			Premultiplied = 1,
		}
		public enum D2D1_LAYER_OPTIONS1 : uint32
		{
			None = 0,
			InitializeFromBackground = 1,
			IgnoreAlpha = 2,
		}
		public enum D2D1_PRINT_FONT_SUBSET_MODE : uint32
		{
			Default = 0,
			Eachpage = 1,
			None = 2,
		}
		public enum ChangeType : uint32
		{
			None = 0,
			Properties = 1,
			Context = 2,
			Graph = 3,
		}
		public enum PixelOptions : uint32
		{
			None = 0,
			TrivialSampling = 1,
		}
		public enum VertexOptions : uint32
		{
			None = 0,
			DoNotClear = 1,
			UseDepthBuffer = 2,
			AssumeNoOverlap = 4,
		}
		public enum VertexUsage : uint32
		{
			Static = 0,
			Dynamic = 1,
		}
		public enum BlendOperation : uint32
		{
			Add = 1,
			Subtract = 2,
			RevSubtract = 3,
			Min = 4,
			Max = 5,
		}
		public enum Blend : uint32
		{
			Zero = 1,
			One = 2,
			SrcColor = 3,
			InvSrcColor = 4,
			SrcAlpha = 5,
			InvSrcAlpha = 6,
			DestAlpha = 7,
			InvDestAlpha = 8,
			DestColor = 9,
			InvDestColor = 10,
			SrcAlphaSat = 11,
			BlendFactor = 14,
			InvBlendFactor = 15,
		}
		public enum ChannelDepth : uint32
		{
			Default = 0,
			_1 = 1,
			_4 = 4,
		}
		public enum Filter : uint32
		{
			MinMagMipPoint = 0,
			MinMagPointMipLinear = 1,
			MinPointMagLinearMipPoint = 4,
			MinPointMagMipLinear = 5,
			MinLinearMagMipPoint = 16,
			MinLinearMagPointMipLinear = 17,
			MinMagLinearMipPoint = 20,
			MinMagMipLinear = 21,
			Anisotropic = 85,
		}
		public enum Feature : uint32
		{
			Doubles = 0,
			D3D10XHardwareOptions = 1,
		}
		public enum D2D1_YCBCR_PROP : uint32
		{
			ChromaSubsampling = 0,
			TransformMatrix = 1,
			InterpolationMode = 2,
		}
		public enum D2D1_YCBCR_CHROMA_SUBSAMPLING : uint32
		{
			Auto = 0,
			_420 = 1,
			_422 = 2,
			_444 = 3,
			_440 = 4,
		}
		public enum D2D1_YCBCR_INTERPOLATION_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
			HighQualityCubic = 5,
		}
		public enum D2D1_CONTRAST_PROP : uint32
		{
			Contrast = 0,
			ClampInput = 1,
		}
		public enum D2D1_RGBTOHUE_PROP : uint32
		{
			OutputColorSpace = 0,
		}
		public enum D2D1_RGBTOHUE_OUTPUT_COLOR_SPACE : uint32
		{
			HueSaturationValue = 0,
			HueSaturationLightness = 1,
		}
		public enum D2D1_HUETORGB_PROP : uint32
		{
			InputColorSpace = 0,
		}
		public enum D2D1_HUETORGB_INPUT_COLOR_SPACE : uint32
		{
			HueSaturationValue = 0,
			HueSaturationLightness = 1,
		}
		public enum D2D1_CHROMAKEY_PROP : uint32
		{
			Color = 0,
			Tolerance = 1,
			InvertAlpha = 2,
			Feather = 3,
		}
		public enum D2D1_EMBOSS_PROP : uint32
		{
			Height = 0,
			Direction = 1,
		}
		public enum D2D1_EXPOSURE_PROP : uint32
		{
			ExposureValue = 0,
		}
		public enum D2D1_POSTERIZE_PROP : uint32
		{
			RedValueCount = 0,
			GreenValueCount = 1,
			BlueValueCount = 2,
		}
		public enum D2D1_SEPIA_PROP : uint32
		{
			Intensity = 0,
			AlphaMode = 1,
		}
		public enum D2D1_SHARPEN_PROP : uint32
		{
			Sharpness = 0,
			Threshold = 1,
		}
		public enum D2D1_STRAIGHTEN_PROP : uint32
		{
			Angle = 0,
			MaintainSize = 1,
			ScaleMode = 2,
		}
		public enum D2D1_STRAIGHTEN_SCALE_MODE : uint32
		{
			NearestNeighbor = 0,
			Linear = 1,
			Cubic = 2,
			MultiSampleLinear = 3,
			Anisotropic = 4,
		}
		public enum D2D1_TEMPERATUREANDTINT_PROP : uint32
		{
			Temperature = 0,
			Tint = 1,
		}
		public enum D2D1_VIGNETTE_PROP : uint32
		{
			Color = 0,
			TransitionSize = 1,
			Strength = 2,
		}
		public enum D2D1_EDGEDETECTION_PROP : uint32
		{
			Strength = 0,
			BlurRadius = 1,
			Mode = 2,
			OverlayEdges = 3,
			AlphaMode = 4,
		}
		public enum D2D1_EDGEDETECTION_MODE : uint32
		{
			Sobel = 0,
			Prewitt = 1,
		}
		public enum D2D1_HIGHLIGHTSANDSHADOWS_PROP : uint32
		{
			Highlights = 0,
			Shadows = 1,
			Clarity = 2,
			InputGamma = 3,
			MaskBlurRadius = 4,
		}
		public enum D2D1_HIGHLIGHTSANDSHADOWS_INPUT_GAMMA : uint32
		{
			Linear = 0,
			SRGB = 1,
		}
		public enum D2D1_LOOKUPTABLE3D_PROP : uint32
		{
			LUT = 0,
			AlphaMode = 1,
		}
		public enum D2D1_OPACITY_PROP : uint32
		{
			Opacity = 0,
		}
		public enum D2D1_CROSSFADE_PROP : uint32
		{
			Weight = 0,
		}
		public enum D2D1_TINT_PROP : uint32
		{
			Color = 0,
			ClampOutput = 1,
		}
		public enum D2D1_WHITELEVELADJUSTMENT_PROP : uint32
		{
			InputWhiteLevel = 0,
			OutputWhiteLevel = 1,
		}
		public enum D2D1_HDRTONEMAP_PROP : uint32
		{
			InputMaxLuminance = 0,
			OutputMaxLuminance = 1,
			DisplayMode = 2,
		}
		public enum D2D1_HDRTONEMAP_DISPLAY_MODE : uint32
		{
			SDR = 0,
			HDR = 1,
		}
		public enum D2D1_RENDERING_PRIORITY : uint32
		{
			Normal = 0,
			Low = 1,
		}
		public enum D2D1_SVG_PAINT_TYPE : uint32
		{
			None = 0,
			Color = 1,
			CurrentColor = 2,
			Uri = 3,
			UriNone = 4,
			UriColor = 5,
			UriCurrentColor = 6,
		}
		public enum D2D1_SVG_LENGTH_UNITS : uint32
		{
			Number = 0,
			Percentage = 1,
		}
		public enum D2D1_SVG_DISPLAY : uint32
		{
			Inline = 0,
			None = 1,
		}
		public enum D2D1_SVG_VISIBILITY : uint32
		{
			Visible = 0,
			Hidden = 1,
		}
		public enum D2D1_SVG_OVERFLOW : uint32
		{
			Visible = 0,
			Hidden = 1,
		}
		public enum D2D1_SVG_LINE_CAP : uint32
		{
			Butt = 0,
			Square = 1,
			Round = 2,
		}
		public enum D2D1_SVG_LINE_JOIN : uint32
		{
			Bevel = 1,
			Miter = 3,
			Round = 2,
		}
		public enum D2D1_SVG_ASPECT_ALIGN : uint32
		{
			None = 0,
			XMinYMin = 1,
			XMidYMin = 2,
			XMaxYMin = 3,
			XMinYMid = 4,
			XMidYMid = 5,
			XMaxYMid = 6,
			XMinYMax = 7,
			XMidYMax = 8,
			XMaxYMax = 9,
		}
		public enum D2D1_SVG_ASPECT_SCALING : uint32
		{
			Meet = 0,
			Slice = 1,
		}
		public enum D2D1_SVG_PATH_COMMAND : uint32
		{
			ClosePath = 0,
			MoveAbsolute = 1,
			MoveRelative = 2,
			LineAbsolute = 3,
			LineRelative = 4,
			CubicAbsolute = 5,
			CubicRelative = 6,
			QuadradicAbsolute = 7,
			QuadradicRelative = 8,
			ArcAbsolute = 9,
			ArcRelative = 10,
			HorizontalAbsolute = 11,
			HorizontalRelative = 12,
			VerticalAbsolute = 13,
			VerticalRelative = 14,
			CubicSmoothAbsolute = 15,
			CubicSmoothRelative = 16,
			QuadradicSmoothAbsolute = 17,
			QuadradicSmoothRelative = 18,
		}
		public enum D2D1_SVG_UNIT_TYPE : uint32
		{
			UserSpaceOnUse = 0,
			ObjectBoundingBox = 1,
		}
		public enum D2D1_SVG_ATTRIBUTE_STRING_TYPE : uint32
		{
			SVG = 0,
			ID = 1,
		}
		public enum D2D1_SVG_ATTRIBUTE_POD_TYPE : uint32
		{
			Float = 0,
			Color = 1,
			FillMode = 2,
			Display = 3,
			Overflow = 4,
			LineCap = 5,
			LineJoin = 6,
			Visibility = 7,
			Matrix = 8,
			UnitType = 9,
			ExtendMode = 10,
			PreserveAspectRatio = 11,
			Viewbox = 12,
			Length = 13,
		}
		public enum D2D1_INK_NIB_SHAPE : uint32
		{
			Round = 0,
			Square = 1,
		}
		public enum D2D1_ORIENTATION : uint32
		{
			Default = 1,
			FlipHorizontal = 2,
			RotateClockwise180 = 3,
			RotateClockwise180FlipHorizontal = 4,
			RotateClockwise90FlipHorizontal = 5,
			RotateClockwise270 = 6,
			RotateClockwise270FlipHorizontal = 7,
			RotateClockwise90 = 8,
		}
		public enum D2D1_IMAGE_SOURCE_LOADING_OPTIONS : uint32
		{
			None = 0,
			ReleaseSource = 1,
			CacheOnDemand = 2,
		}
		public enum D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS : uint32
		{
			None = 0,
			LowQualityPrimaryConversion = 1,
		}
		public enum D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS : uint32
		{
			None = 0,
			DisableDpiScale = 1,
		}
		public enum D2D1_PATCH_EDGE_MODE : uint32
		{
			Aliased = 0,
			Antialiased = 1,
			AliasedInflated = 2,
		}
		public enum D2D1_SPRITE_OPTIONS : uint32
		{
			None = 0,
			ClampToSourceRectangle = 1,
		}
		public enum D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION : uint32
		{
			Default = 0,
			Disable = 1,
		}
		public enum D2D1_GAMMA1 : uint32
		{
			G22 = 0,
			G10 = 1,
			G2084 = 2,
		}
		public enum D2D1_COLOR_CONTEXT_TYPE : uint32
		{
			ICC = 0,
			Simple = 1,
			DXGI = 2,
		}
		
		// --- Function Pointers ---
		
		public function HResult PD2D1_EFFECT_FACTORY(out IUnknown* effectImpl);
		public function HResult PD2D1_PROPERTY_SET_FUNCTION(ref IUnknown effect, uint8* data, uint32 dataSize);
		public function HResult PD2D1_PROPERTY_GET_FUNCTION(in IUnknown effect, uint8* data, uint32 dataSize, uint32* actualSize);
		
		// --- Structs ---
		
		[CRepr]
		public struct D2D1_BITMAP_PROPERTIES
		{
			public PixelFormat pixelFormat;
			public float dpiX;
			public float dpiY;
		}
		[CRepr]
		public struct D2D1_GRADIENT_STOP
		{
			public float position;
			public ColorF color;
		}
		[CRepr]
		public struct BrushProperties
		{
			public float opacity;
			public D2D_MATRIX_3X2_F transform;
		}
		[CRepr]
		public struct D2D1_BITMAP_BRUSH_PROPERTIES
		{
			public D2D1_EXTEND_MODE extendModeX;
			public D2D1_EXTEND_MODE extendModeY;
			public D2D1_BITMAP_INTERPOLATION_MODE interpolationMode;
		}
		[CRepr]
		public struct D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES
		{
			public Vector2 startPoint;
			public Vector2 endPoint;
		}
		[CRepr]
		public struct D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES
		{
			public Vector2 center;
			public Vector2 gradientOriginOffset;
			public float radiusX;
			public float radiusY;
		}
		[CRepr]
		public struct D2D1_TRIANGLE
		{
			public Vector2 point1;
			public Vector2 point2;
			public Vector2 point3;
		}
		[CRepr]
		public struct D2D1_ARC_SEGMENT
		{
			public Vector2 point;
			public D2D_SIZE_F size;
			public float rotationAngle;
			public D2D1_SWEEP_DIRECTION sweepDirection;
			public D2D1_ARC_SIZE arcSize;
		}
		[CRepr]
		public struct D2D1_QUADRATIC_BEZIER_SEGMENT
		{
			public Vector2 point1;
			public Vector2 point2;
		}
		[CRepr]
		public struct D2D1_ELLIPSE
		{
			public Vector2 point;
			public float radiusX;
			public float radiusY;
		}
		[CRepr]
		public struct D2D1_ROUNDED_RECT
		{
			public RectF rect;
			public float radiusX;
			public float radiusY;
		}
		[CRepr]
		public struct D2D1_STROKE_STYLE_PROPERTIES
		{
			public D2D1_CAP_STYLE startCap;
			public D2D1_CAP_STYLE endCap;
			public D2D1_CAP_STYLE dashCap;
			public D2D1_LINE_JOIN lineJoin;
			public float miterLimit;
			public D2D1_DASH_STYLE dashStyle;
			public float dashOffset;
		}
		[CRepr]
		public struct D2D1_LAYER_PARAMETERS
		{
			public RectF contentBounds;
			public ID2D1Geometry* geometricMask;
			public D2D1_ANTIALIAS_MODE maskAntialiasMode;
			public D2D_MATRIX_3X2_F maskTransform;
			public float opacity;
			public ID2D1Brush* opacityBrush;
			public D2D1_LAYER_OPTIONS layerOptions;
		}
		[CRepr]
		public struct RenderTargetProperties : this(
			RenderTargetType type,
			PixelFormat pixelFormat,
			float dpiX,
			float dpiY,
			RenderTargetUsage usage,
			FeatureLevel minLevel
		){}
		[CRepr]
		public struct HwndRenderTargetProperties : this(
			HWnd hwnd,
			SizeU pixelSize,
			PresentOptions presentOptions
		){}

		[CRepr]
		public struct D2D1_DRAWING_STATE_DESCRIPTION
		{
			public D2D1_ANTIALIAS_MODE antialiasMode;
			public D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode;
			public uint64 tag1;
			public uint64 tag2;
			public D2D_MATRIX_3X2_F transform;
		}
		[CRepr]
		public struct D2D1_FACTORY_OPTIONS
		{
			public D2D1_DEBUG_LEVEL debugLevel;
		}
		[CRepr]
		public struct D2D1_BITMAP_PROPERTIES1
		{
			public PixelFormat pixelFormat;
			public float dpiX;
			public float dpiY;
			public BitmapOptions bitmapOptions;
			public ID2D1ColorContext* colorContext;
		}
		[CRepr]
		public struct D2D1_MAPPED_RECT
		{
			public uint32 pitch;
			public uint8* bits;
		}
		[CRepr]
		public struct D2D1_RENDERING_CONTROLS
		{
			public BufferPrecision bufferPrecision;
			public SizeU tileSize;
		}
		[CRepr]
		public struct D2D1_EFFECT_INPUT_DESCRIPTION
		{
			public ID2D1Effect* effect;
			public uint32 inputIndex;
			public RectF inputRectangle;
		}
		[CRepr]
		public struct D2D1_POINT_DESCRIPTION
		{
			public Vector2 point;
			public Vector2 unitTangentVector;
			public uint32 endSegment;
			public uint32 endFigure;
			public float lengthToEndSegment;
		}
		[CRepr]
		public struct D2D1_IMAGE_BRUSH_PROPERTIES
		{
			public RectF sourceRectangle;
			public D2D1_EXTEND_MODE extendModeX;
			public D2D1_EXTEND_MODE extendModeY;
			public InterpolationMode interpolationMode;
		}
		[CRepr]
		public struct D2D1_BITMAP_BRUSH_PROPERTIES1
		{
			public D2D1_EXTEND_MODE extendModeX;
			public D2D1_EXTEND_MODE extendModeY;
			public InterpolationMode interpolationMode;
		}
		[CRepr]
		public struct D2D1_STROKE_STYLE_PROPERTIES1
		{
			public D2D1_CAP_STYLE startCap;
			public D2D1_CAP_STYLE endCap;
			public D2D1_CAP_STYLE dashCap;
			public D2D1_LINE_JOIN lineJoin;
			public float miterLimit;
			public D2D1_DASH_STYLE dashStyle;
			public float dashOffset;
			public D2D1_STROKE_TRANSFORM_TYPE transformType;
		}
		[CRepr]
		public struct D2D1_LAYER_PARAMETERS1
		{
			public RectF contentBounds;
			public ID2D1Geometry* geometricMask;
			public D2D1_ANTIALIAS_MODE maskAntialiasMode;
			public D2D_MATRIX_3X2_F maskTransform;
			public float opacity;
			public ID2D1Brush* opacityBrush;
			public D2D1_LAYER_OPTIONS1 layerOptions;
		}
		[CRepr]
		public struct D2D1_DRAWING_STATE_DESCRIPTION1
		{
			public D2D1_ANTIALIAS_MODE antialiasMode;
			public D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode;
			public uint64 tag1;
			public uint64 tag2;
			public D2D_MATRIX_3X2_F transform;
			public D2D1_PRIMITIVE_BLEND primitiveBlend;
			public UnitMode unitMode;
		}
		[CRepr]
		public struct D2D1_PRINT_CONTROL_PROPERTIES
		{
			public D2D1_PRINT_FONT_SUBSET_MODE fontSubset;
			public float rasterDPI;
			public ColorSpace colorSpace;
		}
		[CRepr]
		public struct D2D1_CREATION_PROPERTIES
		{
			public D2D1_THREADING_MODE threadingMode;
			public D2D1_DEBUG_LEVEL debugLevel;
			public DeviceContextOptions options;
		}
		[CRepr]
		public struct Matrix4x3F
		{
			public D2D_MATRIX_4X3_F __AnonymousBase_d2d1_1helper_L45_C31;
		}
		[CRepr]
		public struct Matrix4x4F
		{
			public D2D_MATRIX_4X4_F __AnonymousBase_d2d1_1helper_L97_C31;
		}
		[CRepr]
		public struct Matrix5x4F
		{
			public D2D_MATRIX_5X4_F __AnonymousBase_d2d1_1helper_L472_C31;
		}
		[CRepr]
		public struct D2D1_PROPERTY_BINDING
		{
			public char16* propertyName;
			public PD2D1_PROPERTY_SET_FUNCTION setFunction;
			public PD2D1_PROPERTY_GET_FUNCTION getFunction;
		}
		[CRepr]
		public struct D2D1_RESOURCE_TEXTURE_PROPERTIES
		{
			public uint32* extents;
			public uint32 dimensions;
			public BufferPrecision bufferPrecision;
			public ChannelDepth channelDepth;
			public Filter filter;
			public D2D1_EXTEND_MODE* extendModes;
		}
		[CRepr]
		public struct D2D1_INPUT_ELEMENT_DESC
		{
			public char8* semanticName;
			public uint32 semanticIndex;
			public DXGIFormat format;
			public uint32 inputSlot;
			public uint32 alignedByteOffset;
		}
		[CRepr]
		public struct D2D1_VERTEX_BUFFER_PROPERTIES
		{
			public uint32 inputCount;
			public VertexUsage usage;
			public uint8* data;
			public uint32 byteWidth;
		}
		[CRepr]
		public struct D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES
		{
			public uint8* shaderBufferWithInputSignature;
			public uint32 shaderBufferSize;
			public D2D1_INPUT_ELEMENT_DESC* inputElements;
			public uint32 elementCount;
			public uint32 stride;
		}
		[CRepr]
		public struct D2D1_VERTEX_RANGE
		{
			public uint32 startVertex;
			public uint32 vertexCount;
		}
		[CRepr]
		public struct D2D1_BLEND_DESCRIPTION
		{
			public Blend sourceBlend;
			public Blend destinationBlend;
			public BlendOperation blendOperation;
			public Blend sourceBlendAlpha;
			public Blend destinationBlendAlpha;
			public BlendOperation blendOperationAlpha;
			public float[4] blendFactor;
		}
		[CRepr]
		public struct D2D1_INPUT_DESCRIPTION
		{
			public Filter filter;
			public uint32 levelOfDetailCount;
		}
		[CRepr]
		public struct D2D1_FEATURE_DATA_DOUBLES
		{
			public IntBool doublePrecisionFloatShaderOps;
		}
		[CRepr]
		public struct D2D1_FEATURE_DATA_D3D10_X_HARDWARE_OPTIONS
		{
			public IntBool computeShaders_Plus_RawAndStructuredBuffers_Via_Shader_4_x;
		}
		[CRepr]
		public struct D2D1_SVG_LENGTH
		{
			public float value;
			public D2D1_SVG_LENGTH_UNITS units;
		}
		[CRepr]
		public struct D2D1_SVG_PRESERVE_ASPECT_RATIO
		{
			public IntBool @defer;
			public D2D1_SVG_ASPECT_ALIGN align;
			public D2D1_SVG_ASPECT_SCALING meetOrSlice;
		}
		[CRepr]
		public struct D2D1_SVG_VIEWBOX
		{
			public float x;
			public float y;
			public float width;
			public float height;
		}
		[CRepr]
		public struct D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES
		{
			public D2D1_ORIENTATION orientation;
			public float scaleX;
			public float scaleY;
			public InterpolationMode interpolationMode;
			public D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS options;
		}
		[CRepr]
		public struct D2D1_INK_POINT
		{
			public float x;
			public float y;
			public float radius;
		}
		[CRepr]
		public struct D2D1_INK_BEZIER_SEGMENT
		{
			public D2D1_INK_POINT point1;
			public D2D1_INK_POINT point2;
			public D2D1_INK_POINT point3;
		}
		[CRepr]
		public struct D2D1_INK_STYLE_PROPERTIES
		{
			public D2D1_INK_NIB_SHAPE nibShape;
			public D2D_MATRIX_3X2_F nibTransform;
		}
		[CRepr]
		public struct D2D1_GRADIENT_MESH_PATCH
		{
			public Vector2 point00;
			public Vector2 point01;
			public Vector2 point02;
			public Vector2 point03;
			public Vector2 point10;
			public Vector2 point11;
			public Vector2 point12;
			public Vector2 point13;
			public Vector2 point20;
			public Vector2 point21;
			public Vector2 point22;
			public Vector2 point23;
			public Vector2 point30;
			public Vector2 point31;
			public Vector2 point32;
			public Vector2 point33;
			public ColorF color00;
			public ColorF color03;
			public ColorF color30;
			public ColorF color33;
			public D2D1_PATCH_EDGE_MODE topEdgeMode;
			public D2D1_PATCH_EDGE_MODE leftEdgeMode;
			public D2D1_PATCH_EDGE_MODE bottomEdgeMode;
			public D2D1_PATCH_EDGE_MODE rightEdgeMode;
		}
		[CRepr]
		public struct D2D1_SIMPLE_COLOR_PROFILE
		{
			public Vector2 redPrimary;
			public Vector2 greenPrimary;
			public Vector2 bluePrimary;
			public Vector2 whitePointXZ;
			public D2D1_GAMMA1 gamma;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ID2D1Resource : IUnknown
		{
			public const new Guid IID = .(0x2cd90691, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetFactory(out ID2D1Factory* factory) mut => VT.GetFactory(ref this, out factory);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Resource self, out ID2D1Factory* factory) GetFactory;
			}
		}
		[CRepr]
		public struct ID2D1Image : ID2D1Resource
		{
			public const new Guid IID = .(0x65019f75, 0x8da2, 0x497c, 0xb3, 0x2c, 0xdf, 0xa3, 0x4e, 0x48, 0xed, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ID2D1Resource.VTable {}
		}
		[CRepr]
		public struct ID2D1Bitmap : ID2D1Image
		{
			public const new Guid IID = .(0xa2296057, 0xea42, 0x4099, 0x98, 0x3b, 0x53, 0x9f, 0xb6, 0x50, 0x54, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D_SIZE_F GetSize() mut => VT.GetSize(ref this);
			public SizeU GetPixelSize() mut => VT.GetPixelSize(ref this);
			public PixelFormat GetPixelFormat() mut => VT._GetPixelFormat(ref this);
			public void GetDpi(out float dpiX, out float dpiY) mut => VT.GetDpi(ref this, out dpiX, out dpiY);
			public HResult CopyFromBitmap(D2D_POINT_2U* destPoint, ref ID2D1Bitmap bitmap, D2D_RECT_U* srcRect) mut => VT.CopyFromBitmap(ref this, destPoint, ref bitmap, srcRect);
			public HResult CopyFromRenderTarget(D2D_POINT_2U* destPoint, ref ID2D1RenderTarget renderTarget, D2D_RECT_U* srcRect) mut => VT.CopyFromRenderTarget(ref this, destPoint, ref renderTarget, srcRect);
			public HResult CopyFromMemory(D2D_RECT_U* dstRect, void* srcData, uint32 pitch) mut => VT.CopyFromMemory(ref this, dstRect, srcData, pitch);

			[CRepr]
			public struct VTable : ID2D1Image.VTable
			{
				public new function [CallingConvention(.Stdcall)] D2D_SIZE_F(ref ID2D1Bitmap self) GetSize;
				public new function [CallingConvention(.Stdcall)] SizeU(ref ID2D1Bitmap self) GetPixelSize;
				public new function [CallingConvention(.Stdcall)] PixelFormat(ref ID2D1Bitmap self) _GetPixelFormat;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Bitmap self, out float dpiX, out float dpiY) GetDpi;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Bitmap self, D2D_POINT_2U* destPoint, ref ID2D1Bitmap bitmap, D2D_RECT_U* srcRect) CopyFromBitmap;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Bitmap self, D2D_POINT_2U* destPoint, ref ID2D1RenderTarget renderTarget, D2D_RECT_U* srcRect) CopyFromRenderTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Bitmap self, D2D_RECT_U* dstRect, void* srcData, uint32 pitch) CopyFromMemory;
			}
		}
		[CRepr]
		public struct ID2D1GradientStopCollection : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd906a7, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetGradientStopCount() mut => VT.GetGradientStopCount(ref this);
			public void GetGradientStops(D2D1_GRADIENT_STOP* gradientStops, uint32 gradientStopsCount) mut => VT.GetGradientStops(ref this, gradientStops, gradientStopsCount);
			public D2D1_GAMMA GetColorInterpolationGamma() mut => VT.GetColorInterpolationGamma(ref this);
			public D2D1_EXTEND_MODE GetExtendMode() mut => VT.GetExtendMode(ref this);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1GradientStopCollection self) GetGradientStopCount;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1GradientStopCollection self, D2D1_GRADIENT_STOP* gradientStops, uint32 gradientStopsCount) GetGradientStops;
				public new function [CallingConvention(.Stdcall)] D2D1_GAMMA(ref ID2D1GradientStopCollection self) GetColorInterpolationGamma;
				public new function [CallingConvention(.Stdcall)] D2D1_EXTEND_MODE(ref ID2D1GradientStopCollection self) GetExtendMode;
			}
		}
		[CRepr]
		public struct ID2D1Brush : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd906a8, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetOpacity(float opacity) mut => VT.SetOpacity(ref this, opacity);
			public void SetTransform(in D2D_MATRIX_3X2_F transform) mut => VT.SetTransform(ref this, transform);
			public float GetOpacity() mut => VT.GetOpacity(ref this);
			public void GetTransform(out D2D_MATRIX_3X2_F transform) mut => VT.GetTransform(ref this, out transform);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Brush self, float opacity) SetOpacity;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Brush self, in D2D_MATRIX_3X2_F transform) SetTransform;
				public new function [CallingConvention(.Stdcall)] float(ref ID2D1Brush self) GetOpacity;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Brush self, out D2D_MATRIX_3X2_F transform) GetTransform;
			}
		}
		[CRepr]
		public struct ID2D1BitmapBrush : ID2D1Brush
		{
			public const new Guid IID = .(0x2cd906aa, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetExtendModeX(D2D1_EXTEND_MODE extendModeX) mut => VT.SetExtendModeX(ref this, extendModeX);
			public void SetExtendModeY(D2D1_EXTEND_MODE extendModeY) mut => VT.SetExtendModeY(ref this, extendModeY);
			public void SetInterpolationMode(D2D1_BITMAP_INTERPOLATION_MODE interpolationMode) mut => VT.SetInterpolationMode(ref this, interpolationMode);
			public void SetBitmap(ID2D1Bitmap* bitmap) mut => VT.SetBitmap(ref this, bitmap);
			public D2D1_EXTEND_MODE GetExtendModeX() mut => VT.GetExtendModeX(ref this);
			public D2D1_EXTEND_MODE GetExtendModeY() mut => VT.GetExtendModeY(ref this);
			public D2D1_BITMAP_INTERPOLATION_MODE GetInterpolationMode() mut => VT.GetInterpolationMode(ref this);
			public void GetBitmap(ID2D1Bitmap** bitmap) mut => VT.GetBitmap(ref this, bitmap);

			[CRepr]
			public struct VTable : ID2D1Brush.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1BitmapBrush self, D2D1_EXTEND_MODE extendModeX) SetExtendModeX;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1BitmapBrush self, D2D1_EXTEND_MODE extendModeY) SetExtendModeY;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1BitmapBrush self, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode) SetInterpolationMode;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1BitmapBrush self, ID2D1Bitmap* bitmap) SetBitmap;
				public new function [CallingConvention(.Stdcall)] D2D1_EXTEND_MODE(ref ID2D1BitmapBrush self) GetExtendModeX;
				public new function [CallingConvention(.Stdcall)] D2D1_EXTEND_MODE(ref ID2D1BitmapBrush self) GetExtendModeY;
				public new function [CallingConvention(.Stdcall)] D2D1_BITMAP_INTERPOLATION_MODE(ref ID2D1BitmapBrush self) GetInterpolationMode;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1BitmapBrush self, ID2D1Bitmap** bitmap) GetBitmap;
			}
		}
		[CRepr]
		public struct ID2D1SolidColorBrush : ID2D1Brush
		{
			public const new Guid IID = .(0x2cd906a9, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetColor(in ColorF color) mut => VT.SetColor(ref this, color);
			public ColorF GetColor() mut => VT.GetColor(ref this);

			[CRepr]
			public struct VTable : ID2D1Brush.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SolidColorBrush self, in ColorF color) SetColor;
				public new function [CallingConvention(.Stdcall)] ColorF(ref ID2D1SolidColorBrush self) GetColor;
			}
		}
		[CRepr]
		public struct ID2D1LinearGradientBrush : ID2D1Brush
		{
			public const new Guid IID = .(0x2cd906ab, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetStartPoint(Vector2 startPoint) mut => VT.SetStartPoint(ref this, startPoint);
			public void SetEndPoint(Vector2 endPoint) mut => VT.SetEndPoint(ref this, endPoint);
			public Vector2 GetStartPoint() mut => VT.GetStartPoint(ref this);
			public Vector2 GetEndPoint() mut => VT.GetEndPoint(ref this);
			public void GetGradientStopCollection(out ID2D1GradientStopCollection* gradientStopCollection) mut => VT.GetGradientStopCollection(ref this, out gradientStopCollection);

			[CRepr]
			public struct VTable : ID2D1Brush.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1LinearGradientBrush self, Vector2 startPoint) SetStartPoint;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1LinearGradientBrush self, Vector2 endPoint) SetEndPoint;
				public new function [CallingConvention(.Stdcall)] Vector2(ref ID2D1LinearGradientBrush self) GetStartPoint;
				public new function [CallingConvention(.Stdcall)] Vector2(ref ID2D1LinearGradientBrush self) GetEndPoint;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1LinearGradientBrush self, out ID2D1GradientStopCollection* gradientStopCollection) GetGradientStopCollection;
			}
		}
		[CRepr]
		public struct ID2D1RadialGradientBrush : ID2D1Brush
		{
			public const new Guid IID = .(0x2cd906ac, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetCenter(Vector2 center) mut => VT.SetCenter(ref this, center);
			public void SetGradientOriginOffset(Vector2 gradientOriginOffset) mut => VT.SetGradientOriginOffset(ref this, gradientOriginOffset);
			public void SetRadiusX(float radiusX) mut => VT.SetRadiusX(ref this, radiusX);
			public void SetRadiusY(float radiusY) mut => VT.SetRadiusY(ref this, radiusY);
			public Vector2 GetCenter() mut => VT.GetCenter(ref this);
			public Vector2 GetGradientOriginOffset() mut => VT.GetGradientOriginOffset(ref this);
			public float GetRadiusX() mut => VT.GetRadiusX(ref this);
			public float GetRadiusY() mut => VT.GetRadiusY(ref this);
			public void GetGradientStopCollection(out ID2D1GradientStopCollection* gradientStopCollection) mut => VT.GetGradientStopCollection(ref this, out gradientStopCollection);

			[CRepr]
			public struct VTable : ID2D1Brush.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RadialGradientBrush self, Vector2 center) SetCenter;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RadialGradientBrush self, Vector2 gradientOriginOffset) SetGradientOriginOffset;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RadialGradientBrush self, float radiusX) SetRadiusX;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RadialGradientBrush self, float radiusY) SetRadiusY;
				public new function [CallingConvention(.Stdcall)] Vector2(ref ID2D1RadialGradientBrush self) GetCenter;
				public new function [CallingConvention(.Stdcall)] Vector2(ref ID2D1RadialGradientBrush self) GetGradientOriginOffset;
				public new function [CallingConvention(.Stdcall)] float(ref ID2D1RadialGradientBrush self) GetRadiusX;
				public new function [CallingConvention(.Stdcall)] float(ref ID2D1RadialGradientBrush self) GetRadiusY;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RadialGradientBrush self, out ID2D1GradientStopCollection* gradientStopCollection) GetGradientStopCollection;
			}
		}
		[CRepr]
		public struct ID2D1StrokeStyle : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd9069d, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D1_CAP_STYLE GetStartCap() mut => VT.GetStartCap(ref this);
			public D2D1_CAP_STYLE GetEndCap() mut => VT.GetEndCap(ref this);
			public D2D1_CAP_STYLE GetDashCap() mut => VT.GetDashCap(ref this);
			public float GetMiterLimit() mut => VT._GetMiterLimit(ref this);
			public D2D1_LINE_JOIN GetLineJoin() mut => VT.GetLineJoin(ref this);
			public float GetDashOffset() mut => VT.GetDashOffset(ref this);
			public D2D1_DASH_STYLE GetDashStyle() mut => VT.GetDashStyle(ref this);
			public uint32 GetDashesCount() mut => VT.GetDashesCount(ref this);
			public void GetDashes(float* dashes, uint32 dashesCount) mut => VT.GetDashes(ref this, dashes, dashesCount);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] D2D1_CAP_STYLE(ref ID2D1StrokeStyle self) GetStartCap;
				public new function [CallingConvention(.Stdcall)] D2D1_CAP_STYLE(ref ID2D1StrokeStyle self) GetEndCap;
				public new function [CallingConvention(.Stdcall)] D2D1_CAP_STYLE(ref ID2D1StrokeStyle self) GetDashCap;
				public new function [CallingConvention(.Stdcall)] float(ref ID2D1StrokeStyle self) _GetMiterLimit;
				public new function [CallingConvention(.Stdcall)] D2D1_LINE_JOIN(ref ID2D1StrokeStyle self) GetLineJoin;
				public new function [CallingConvention(.Stdcall)] float(ref ID2D1StrokeStyle self) GetDashOffset;
				public new function [CallingConvention(.Stdcall)] D2D1_DASH_STYLE(ref ID2D1StrokeStyle self) GetDashStyle;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1StrokeStyle self) GetDashesCount;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1StrokeStyle self, float* dashes, uint32 dashesCount) GetDashes;
			}
		}
		[CRepr]
		public struct ID2D1Geometry : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd906a1, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetBounds(D2D_MATRIX_3X2_F* worldTransform, out RectF bounds) mut => VT.GetBounds(ref this, worldTransform, out bounds);
			public HResult GetWidenedBounds(float strokeWidth, ID2D1StrokeStyle* strokeStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, out RectF bounds) mut => VT.GetWidenedBounds(ref this, strokeWidth, strokeStyle, worldTransform, flatteningTolerance, out bounds);
			public HResult StrokeContainsPoint(Vector2 point, float strokeWidth, ID2D1StrokeStyle* strokeStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, out IntBool contains) mut => VT.StrokeContainsPoint(ref this, point, strokeWidth, strokeStyle, worldTransform, flatteningTolerance, out contains);
			public HResult FillContainsPoint(Vector2 point, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, out IntBool contains) mut => VT.FillContainsPoint(ref this, point, worldTransform, flatteningTolerance, out contains);
			public HResult CompareWithGeometry(ref ID2D1Geometry inputGeometry, D2D_MATRIX_3X2_F* inputGeometryTransform, float flatteningTolerance, out D2D1_GEOMETRY_RELATION relation) mut => VT.CompareWithGeometry(ref this, ref inputGeometry, inputGeometryTransform, flatteningTolerance, out relation);
			public HResult Simplify(D2D1_GEOMETRY_SIMPLIFICATION_OPTION simplificationOption, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ref ID2D1SimplifiedGeometrySink geometrySink) mut => VT.Simplify(ref this, simplificationOption, worldTransform, flatteningTolerance, ref geometrySink);
			public HResult Tessellate(D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ref ID2D1TessellationSink tessellationSink) mut => VT.Tessellate(ref this, worldTransform, flatteningTolerance, ref tessellationSink);
			public HResult CombineWithGeometry(ref ID2D1Geometry inputGeometry, D2D1_COMBINE_MODE combineMode, D2D_MATRIX_3X2_F* inputGeometryTransform, float flatteningTolerance, ref ID2D1SimplifiedGeometrySink geometrySink) mut => VT.CombineWithGeometry(ref this, ref inputGeometry, combineMode, inputGeometryTransform, flatteningTolerance, ref geometrySink);
			public HResult Outline(D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ref ID2D1SimplifiedGeometrySink geometrySink) mut => VT.Outline(ref this, worldTransform, flatteningTolerance, ref geometrySink);
			public HResult ComputeArea(D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, out float area) mut => VT.ComputeArea(ref this, worldTransform, flatteningTolerance, out area);
			public HResult ComputeLength(D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, out float length) mut => VT.ComputeLength(ref this, worldTransform, flatteningTolerance, out length);
			public HResult ComputePointAtLength(float length, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, Vector2* point, Vector2* unitTangentVector) mut => VT.ComputePointAtLength(ref this, length, worldTransform, flatteningTolerance, point, unitTangentVector);
			public HResult Widen(float strokeWidth, ID2D1StrokeStyle* strokeStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ref ID2D1SimplifiedGeometrySink geometrySink) mut => VT.Widen(ref this, strokeWidth, strokeStyle, worldTransform, flatteningTolerance, ref geometrySink);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Geometry self, D2D_MATRIX_3X2_F* worldTransform, out RectF bounds) GetBounds;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Geometry self, float strokeWidth, ID2D1StrokeStyle* strokeStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, out RectF bounds) GetWidenedBounds;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Geometry self, Vector2 point, float strokeWidth, ID2D1StrokeStyle* strokeStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, out IntBool contains) StrokeContainsPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Geometry self, Vector2 point, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, out IntBool contains) FillContainsPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Geometry self, ref ID2D1Geometry inputGeometry, D2D_MATRIX_3X2_F* inputGeometryTransform, float flatteningTolerance, out D2D1_GEOMETRY_RELATION relation) CompareWithGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Geometry self, D2D1_GEOMETRY_SIMPLIFICATION_OPTION simplificationOption, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ref ID2D1SimplifiedGeometrySink geometrySink) Simplify;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Geometry self, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ref ID2D1TessellationSink tessellationSink) Tessellate;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Geometry self, ref ID2D1Geometry inputGeometry, D2D1_COMBINE_MODE combineMode, D2D_MATRIX_3X2_F* inputGeometryTransform, float flatteningTolerance, ref ID2D1SimplifiedGeometrySink geometrySink) CombineWithGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Geometry self, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ref ID2D1SimplifiedGeometrySink geometrySink) Outline;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Geometry self, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, out float area) ComputeArea;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Geometry self, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, out float length) ComputeLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Geometry self, float length, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, Vector2* point, Vector2* unitTangentVector) ComputePointAtLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Geometry self, float strokeWidth, ID2D1StrokeStyle* strokeStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ref ID2D1SimplifiedGeometrySink geometrySink) Widen;
			}
		}
		[CRepr]
		public struct ID2D1RectangleGeometry : ID2D1Geometry
		{
			public const new Guid IID = .(0x2cd906a2, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetRect(out RectF rect) mut => VT.GetRect(ref this, out rect);

			[CRepr]
			public struct VTable : ID2D1Geometry.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RectangleGeometry self, out RectF rect) GetRect;
			}
		}
		[CRepr]
		public struct ID2D1RoundedRectangleGeometry : ID2D1Geometry
		{
			public const new Guid IID = .(0x2cd906a3, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetRoundedRect(out D2D1_ROUNDED_RECT roundedRect) mut => VT.GetRoundedRect(ref this, out roundedRect);

			[CRepr]
			public struct VTable : ID2D1Geometry.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RoundedRectangleGeometry self, out D2D1_ROUNDED_RECT roundedRect) GetRoundedRect;
			}
		}
		[CRepr]
		public struct ID2D1EllipseGeometry : ID2D1Geometry
		{
			public const new Guid IID = .(0x2cd906a4, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetEllipse(out D2D1_ELLIPSE ellipse) mut => VT.GetEllipse(ref this, out ellipse);

			[CRepr]
			public struct VTable : ID2D1Geometry.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1EllipseGeometry self, out D2D1_ELLIPSE ellipse) GetEllipse;
			}
		}
		[CRepr]
		public struct ID2D1GeometryGroup : ID2D1Geometry
		{
			public const new Guid IID = .(0x2cd906a6, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public FillMode GetFillMode() mut => VT.GetFillMode(ref this);
			public uint32 GetSourceGeometryCount() mut => VT.GetSourceGeometryCount(ref this);
			public void GetSourceGeometries(ID2D1Geometry** geometries, uint32 geometriesCount) mut => VT.GetSourceGeometries(ref this, geometries, geometriesCount);

			[CRepr]
			public struct VTable : ID2D1Geometry.VTable
			{
				public new function [CallingConvention(.Stdcall)] FillMode(ref ID2D1GeometryGroup self) GetFillMode;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1GeometryGroup self) GetSourceGeometryCount;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1GeometryGroup self, ID2D1Geometry** geometries, uint32 geometriesCount) GetSourceGeometries;
			}
		}
		[CRepr]
		public struct ID2D1TransformedGeometry : ID2D1Geometry
		{
			public const new Guid IID = .(0x2cd906bb, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetSourceGeometry(out ID2D1Geometry* sourceGeometry) mut => VT.GetSourceGeometry(ref this, out sourceGeometry);
			public void GetTransform(out D2D_MATRIX_3X2_F transform) mut => VT.GetTransform(ref this, out transform);

			[CRepr]
			public struct VTable : ID2D1Geometry.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1TransformedGeometry self, out ID2D1Geometry* sourceGeometry) GetSourceGeometry;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1TransformedGeometry self, out D2D_MATRIX_3X2_F transform) GetTransform;
			}
		}
		[CRepr]
		public struct ID2D1GeometrySink : ID2D1SimplifiedGeometrySink
		{
			public const new Guid IID = .(0x2cd9069f, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void AddLine(Vector2 point) mut => VT.AddLine(ref this, point);
			public void AddBezier(in BezierSegment bezier) mut => VT.AddBezier(ref this, bezier);
			public void AddQuadraticBezier(in D2D1_QUADRATIC_BEZIER_SEGMENT bezier) mut => VT.AddQuadraticBezier(ref this, bezier);
			public void AddQuadraticBeziers(D2D1_QUADRATIC_BEZIER_SEGMENT* beziers, uint32 beziersCount) mut => VT.AddQuadraticBeziers(ref this, beziers, beziersCount);
			public void AddArc(in D2D1_ARC_SEGMENT arc) mut => VT.AddArc(ref this, arc);

			[CRepr]
			public struct VTable : ID2D1SimplifiedGeometrySink.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1GeometrySink self, Vector2 point) AddLine;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1GeometrySink self, in BezierSegment bezier) AddBezier;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1GeometrySink self, in D2D1_QUADRATIC_BEZIER_SEGMENT bezier) AddQuadraticBezier;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1GeometrySink self, D2D1_QUADRATIC_BEZIER_SEGMENT* beziers, uint32 beziersCount) AddQuadraticBeziers;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1GeometrySink self, in D2D1_ARC_SEGMENT arc) AddArc;
			}
		}
		[CRepr]
		public struct ID2D1TessellationSink : IUnknown
		{
			public const new Guid IID = .(0x2cd906c1, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void AddTriangles(D2D1_TRIANGLE* triangles, uint32 trianglesCount) mut => VT.AddTriangles(ref this, triangles, trianglesCount);
			public HResult Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1TessellationSink self, D2D1_TRIANGLE* triangles, uint32 trianglesCount) AddTriangles;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1TessellationSink self) Close;
			}
		}
		[CRepr]
		public struct ID2D1PathGeometry : ID2D1Geometry
		{
			public const new Guid IID = .(0x2cd906a5, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Open(out ID2D1GeometrySink* geometrySink) mut => VT.Open(ref this, out geometrySink);
			public HResult Stream(ref ID2D1GeometrySink geometrySink) mut => VT.Stream(ref this, ref geometrySink);
			public HResult GetSegmentCount(out uint32 count) mut => VT.GetSegmentCount(ref this, out count);
			public HResult GetFigureCount(out uint32 count) mut => VT.GetFigureCount(ref this, out count);

			[CRepr]
			public struct VTable : ID2D1Geometry.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1PathGeometry self, out ID2D1GeometrySink* geometrySink) Open;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1PathGeometry self, ref ID2D1GeometrySink geometrySink) Stream;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1PathGeometry self, out uint32 count) GetSegmentCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1PathGeometry self, out uint32 count) GetFigureCount;
			}
		}
		[CRepr]
		public struct ID2D1Mesh : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd906c2, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Open(out ID2D1TessellationSink* tessellationSink) mut => VT.Open(ref this, out tessellationSink);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Mesh self, out ID2D1TessellationSink* tessellationSink) Open;
			}
		}
		[CRepr]
		public struct ID2D1Layer : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd9069b, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D_SIZE_F GetSize() mut => VT.GetSize(ref this);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] D2D_SIZE_F(ref ID2D1Layer self) GetSize;
			}
		}
		[CRepr]
		public struct ID2D1DrawingStateBlock : ID2D1Resource
		{
			public const new Guid IID = .(0x28506e39, 0xebf6, 0x46a1, 0xbb, 0x47, 0xfd, 0x85, 0x56, 0x5a, 0xb9, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetDescription(out D2D1_DRAWING_STATE_DESCRIPTION stateDescription) mut => VT.GetDescription(ref this, out stateDescription);
			public void SetDescription(in D2D1_DRAWING_STATE_DESCRIPTION stateDescription) mut => VT.SetDescription(ref this, stateDescription);
			public void SetTextRenderingParams(IDWriteRenderingParams* textRenderingParams) mut => VT.SetTextRenderingParams(ref this, textRenderingParams);
			public void GetTextRenderingParams(IDWriteRenderingParams** textRenderingParams) mut => VT.GetTextRenderingParams(ref this, textRenderingParams);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DrawingStateBlock self, out D2D1_DRAWING_STATE_DESCRIPTION stateDescription) GetDescription;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DrawingStateBlock self, in D2D1_DRAWING_STATE_DESCRIPTION stateDescription) SetDescription;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DrawingStateBlock self, IDWriteRenderingParams* textRenderingParams) SetTextRenderingParams;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DrawingStateBlock self, IDWriteRenderingParams** textRenderingParams) GetTextRenderingParams;
			}
		}
		[CRepr]
		public struct ID2D1RenderTarget : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd90694, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateBitmap(SizeU size, void* srcData, uint32 pitch, in D2D1_BITMAP_PROPERTIES bitmapProperties, out ID2D1Bitmap* bitmap) mut => VT._CreateBitmap(ref this, size, srcData, pitch, bitmapProperties, out bitmap);
			public HResult CreateBitmapFromWicBitmap(ref IWICBitmapSource wicBitmapSource, D2D1_BITMAP_PROPERTIES* bitmapProperties, out ID2D1Bitmap* bitmap) mut => VT.CreateBitmapFromWicBitmap(ref this, ref wicBitmapSource, bitmapProperties, out bitmap);
			public HResult CreateSharedBitmap(in Guid riid, void* data, D2D1_BITMAP_PROPERTIES* bitmapProperties, out ID2D1Bitmap* bitmap) mut => VT.CreateSharedBitmap(ref this, riid, data, bitmapProperties, out bitmap);
			public HResult CreateBitmapBrush(ID2D1Bitmap* bitmap, D2D1_BITMAP_BRUSH_PROPERTIES* bitmapBrushProperties, BrushProperties* brushProperties, out ID2D1BitmapBrush* bitmapBrush) mut => VT.CreateBitmapBrush(ref this, bitmap, bitmapBrushProperties, brushProperties, out bitmapBrush);
			public HResult CreateSolidColorBrush(in ColorF color, BrushProperties* brushProperties, out ID2D1SolidColorBrush* solidColorBrush) mut => VT.CreateSolidColorBrush(ref this, color, brushProperties, out solidColorBrush);
			public HResult CreateGradientStopCollection(D2D1_GRADIENT_STOP* gradientStops, uint32 gradientStopsCount, D2D1_GAMMA colorInterpolationGamma, D2D1_EXTEND_MODE extendMode, out ID2D1GradientStopCollection* gradientStopCollection) mut => VT.CreateGradientStopCollection(ref this, gradientStops, gradientStopsCount, colorInterpolationGamma, extendMode, out gradientStopCollection);
			public HResult CreateLinearGradientBrush(in D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES linearGradientBrushProperties, BrushProperties* brushProperties, ref ID2D1GradientStopCollection gradientStopCollection, out ID2D1LinearGradientBrush* linearGradientBrush) mut => VT.CreateLinearGradientBrush(ref this, linearGradientBrushProperties, brushProperties, ref gradientStopCollection, out linearGradientBrush);
			public HResult CreateRadialGradientBrush(in D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES radialGradientBrushProperties, BrushProperties* brushProperties, ref ID2D1GradientStopCollection gradientStopCollection, out ID2D1RadialGradientBrush* radialGradientBrush) mut => VT.CreateRadialGradientBrush(ref this, radialGradientBrushProperties, brushProperties, ref gradientStopCollection, out radialGradientBrush);
			public HResult CreateCompatibleRenderTarget(D2D_SIZE_F* desiredSize, SizeU* desiredPixelSize, PixelFormat* desiredFormat, D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS options, out ID2D1BitmapRenderTarget* bitmapRenderTarget) mut => VT.CreateCompatibleRenderTarget(ref this, desiredSize, desiredPixelSize, desiredFormat, options, out bitmapRenderTarget);
			public HResult CreateLayer(D2D_SIZE_F* size, out ID2D1Layer* layer) mut => VT.CreateLayer(ref this, size, out layer);
			public HResult CreateMesh(out ID2D1Mesh* mesh) mut => VT.CreateMesh(ref this, out mesh);
			public void DrawLine(Vector2 point0, Vector2 point1, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut => VT.DrawLine(ref this, point0, point1, ref brush, strokeWidth, strokeStyle);
			public void DrawRectangle(in RectF rect, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut => VT.DrawRectangle(ref this, rect, ref brush, strokeWidth, strokeStyle);
			public void FillRectangle(in RectF rect, ref ID2D1Brush brush) mut => VT.FillRectangle(ref this, rect, ref brush);
			public void DrawRoundedRectangle(in D2D1_ROUNDED_RECT roundedRect, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut => VT.DrawRoundedRectangle(ref this, roundedRect, ref brush, strokeWidth, strokeStyle);
			public void FillRoundedRectangle(in D2D1_ROUNDED_RECT roundedRect, ref ID2D1Brush brush) mut => VT.FillRoundedRectangle(ref this, roundedRect, ref brush);
			public void DrawEllipse(in D2D1_ELLIPSE ellipse, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut => VT.DrawEllipse(ref this, ellipse, ref brush, strokeWidth, strokeStyle);
			public void FillEllipse(in D2D1_ELLIPSE ellipse, ref ID2D1Brush brush) mut => VT.FillEllipse(ref this, ellipse, ref brush);
			public void DrawGeometry(ref ID2D1Geometry geometry, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut => VT.DrawGeometry(ref this, ref geometry, ref brush, strokeWidth, strokeStyle);
			public void FillGeometry(ref ID2D1Geometry geometry, ref ID2D1Brush brush, ID2D1Brush* opacityBrush) mut => VT.FillGeometry(ref this, ref geometry, ref brush, opacityBrush);
			public void FillMesh(ref ID2D1Mesh mesh, ref ID2D1Brush brush) mut => VT.FillMesh(ref this, ref mesh, ref brush);
			public void FillOpacityMask(ref ID2D1Bitmap opacityMask, ref ID2D1Brush brush, D2D1_OPACITY_MASK_CONTENT content, RectF* destinationRectangle, RectF* sourceRectangle) mut => VT.FillOpacityMask(ref this, ref opacityMask, ref brush, content, destinationRectangle, sourceRectangle);
			public void DrawBitmap(ref ID2D1Bitmap bitmap, RectF* destinationRectangle, float opacity, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode, RectF* sourceRectangle) mut => VT.DrawBitmap(ref this, ref bitmap, destinationRectangle, opacity, interpolationMode, sourceRectangle);
			public void DrawText(char16* string, uint32 stringLength, IDWriteTextFormat* textFormat, in RectF layoutRect, ID2D1Brush* defaultFillBrush, D2D1_DRAW_TEXT_OPTIONS options = .None, DWRITE_MEASURING_MODE measuringMode = .Natural) mut => VT.DrawText(ref this, string, stringLength, textFormat, layoutRect, defaultFillBrush, options, measuringMode);
			public void DrawTextLayout(Vector2 origin, ref IDWriteTextLayout textLayout, ref ID2D1Brush defaultFillBrush, D2D1_DRAW_TEXT_OPTIONS options) mut => VT.DrawTextLayout(ref this, origin, ref textLayout, ref defaultFillBrush, options);
			public void DrawGlyphRun(Vector2 baselineOrigin, in GlyphRun glyphRun, ID2D1Brush* foregroundBrush, DWRITE_MEASURING_MODE measuringMode) mut => VT.DrawGlyphRun(ref this, baselineOrigin, glyphRun, foregroundBrush, measuringMode);
			public void SetTransform(in D2D_MATRIX_3X2_F transform) mut => VT.SetTransform(ref this, transform);
			public void GetTransform(out D2D_MATRIX_3X2_F transform) mut => VT.GetTransform(ref this, out transform);
			public void SetAntialiasMode(D2D1_ANTIALIAS_MODE antialiasMode) mut => VT.SetAntialiasMode(ref this, antialiasMode);
			public D2D1_ANTIALIAS_MODE GetAntialiasMode() mut => VT.GetAntialiasMode(ref this);
			public void SetTextAntialiasMode(D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode) mut => VT.SetTextAntialiasMode(ref this, textAntialiasMode);
			public D2D1_TEXT_ANTIALIAS_MODE GetTextAntialiasMode() mut => VT.GetTextAntialiasMode(ref this);
			public void SetTextRenderingParams(IDWriteRenderingParams* textRenderingParams) mut => VT.SetTextRenderingParams(ref this, textRenderingParams);
			public void GetTextRenderingParams(IDWriteRenderingParams** textRenderingParams) mut => VT.GetTextRenderingParams(ref this, textRenderingParams);
			public void SetTags(uint64 tag1, uint64 tag2) mut => VT.SetTags(ref this, tag1, tag2);
			public void GetTags(uint64* tag1, uint64* tag2) mut => VT.GetTags(ref this, tag1, tag2);
			public void PushLayer(in D2D1_LAYER_PARAMETERS layerParameters, ID2D1Layer* layer) mut => VT.PushLayer(ref this, layerParameters, layer);
			public void PopLayer() mut => VT.PopLayer(ref this);
			public HResult Flush(uint64* tag1, uint64* tag2) mut => VT.Flush(ref this, tag1, tag2);
			public void SaveDrawingState(out ID2D1DrawingStateBlock drawingStateBlock) mut => VT.SaveDrawingState(ref this, out drawingStateBlock);
			public void RestoreDrawingState(ref ID2D1DrawingStateBlock drawingStateBlock) mut => VT.RestoreDrawingState(ref this, ref drawingStateBlock);
			public void PushAxisAlignedClip(in RectF clipRect, D2D1_ANTIALIAS_MODE antialiasMode) mut => VT.PushAxisAlignedClip(ref this, clipRect, antialiasMode);
			public void PopAxisAlignedClip() mut => VT.PopAxisAlignedClip(ref this);
			public void Clear(ColorF* clearColor) mut => VT.Clear(ref this, clearColor);
			public void BeginDraw() mut => VT.BeginDraw(ref this);
			public HResult EndDraw(uint64* tag1 = null, uint64* tag2 = null) mut => VT.EndDraw(ref this, tag1, tag2);
			public PixelFormat GetPixelFormat() mut => VT._GetPixelFormat(ref this);
			public void SetDpi(float dpiX, float dpiY) mut => VT.SetDpi(ref this, dpiX, dpiY);
			public void GetDpi(out float dpiX, out float dpiY) mut => VT.GetDpi(ref this, out dpiX, out dpiY);
			public D2D_SIZE_F GetSize() mut => VT.GetSize(ref this);
			public SizeU GetPixelSize() mut => VT.GetPixelSize(ref this);
			public uint32 GetMaximumBitmapSize() mut => VT.GetMaximumBitmapSize(ref this);
			public IntBool IsSupported(in RenderTargetProperties renderTargetProperties) mut => VT.IsSupported(ref this, renderTargetProperties);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderTarget self, SizeU size, void* srcData, uint32 pitch, in D2D1_BITMAP_PROPERTIES bitmapProperties, out ID2D1Bitmap* bitmap) _CreateBitmap;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderTarget self, ref IWICBitmapSource wicBitmapSource, D2D1_BITMAP_PROPERTIES* bitmapProperties, out ID2D1Bitmap* bitmap) CreateBitmapFromWicBitmap;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderTarget self, in Guid riid, void* data, D2D1_BITMAP_PROPERTIES* bitmapProperties, out ID2D1Bitmap* bitmap) CreateSharedBitmap;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderTarget self, ID2D1Bitmap* bitmap, D2D1_BITMAP_BRUSH_PROPERTIES* bitmapBrushProperties, BrushProperties* brushProperties, out ID2D1BitmapBrush* bitmapBrush) CreateBitmapBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderTarget self, in ColorF color, BrushProperties* brushProperties, out ID2D1SolidColorBrush* solidColorBrush) CreateSolidColorBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderTarget self, D2D1_GRADIENT_STOP* gradientStops, uint32 gradientStopsCount, D2D1_GAMMA colorInterpolationGamma, D2D1_EXTEND_MODE extendMode, out ID2D1GradientStopCollection* gradientStopCollection) CreateGradientStopCollection;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderTarget self, in D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES linearGradientBrushProperties, BrushProperties* brushProperties, ref ID2D1GradientStopCollection gradientStopCollection, out ID2D1LinearGradientBrush* linearGradientBrush) CreateLinearGradientBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderTarget self, in D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES radialGradientBrushProperties, BrushProperties* brushProperties, ref ID2D1GradientStopCollection gradientStopCollection, out ID2D1RadialGradientBrush* radialGradientBrush) CreateRadialGradientBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderTarget self, D2D_SIZE_F* desiredSize, SizeU* desiredPixelSize, PixelFormat* desiredFormat, D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS options, out ID2D1BitmapRenderTarget* bitmapRenderTarget) CreateCompatibleRenderTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderTarget self, D2D_SIZE_F* size, out ID2D1Layer* layer) CreateLayer;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderTarget self, out ID2D1Mesh* mesh) CreateMesh;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, Vector2 point0, Vector2 point1, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawLine;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, in RectF rect, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawRectangle;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, in RectF rect, ref ID2D1Brush brush) FillRectangle;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, in D2D1_ROUNDED_RECT roundedRect, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawRoundedRectangle;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, in D2D1_ROUNDED_RECT roundedRect, ref ID2D1Brush brush) FillRoundedRectangle;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, in D2D1_ELLIPSE ellipse, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawEllipse;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, in D2D1_ELLIPSE ellipse, ref ID2D1Brush brush) FillEllipse;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, ref ID2D1Geometry geometry, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawGeometry;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, ref ID2D1Geometry geometry, ref ID2D1Brush brush, ID2D1Brush* opacityBrush) FillGeometry;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, ref ID2D1Mesh mesh, ref ID2D1Brush brush) FillMesh;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, ref ID2D1Bitmap opacityMask, ref ID2D1Brush brush, D2D1_OPACITY_MASK_CONTENT content, RectF* destinationRectangle, RectF* sourceRectangle) FillOpacityMask;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, ref ID2D1Bitmap bitmap, RectF* destinationRectangle, float opacity, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode, RectF* sourceRectangle) DrawBitmap;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, char16* string, uint32 stringLength, IDWriteTextFormat* textFormat, in RectF layoutRect, ID2D1Brush* defaultFillBrush, D2D1_DRAW_TEXT_OPTIONS options, DWRITE_MEASURING_MODE measuringMode) DrawText;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, Vector2 origin, ref IDWriteTextLayout textLayout, ref ID2D1Brush defaultFillBrush, D2D1_DRAW_TEXT_OPTIONS options) DrawTextLayout;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, Vector2 baselineOrigin, in GlyphRun glyphRun, ID2D1Brush* foregroundBrush, DWRITE_MEASURING_MODE measuringMode) DrawGlyphRun;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, in D2D_MATRIX_3X2_F transform) SetTransform;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, out D2D_MATRIX_3X2_F transform) GetTransform;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, D2D1_ANTIALIAS_MODE antialiasMode) SetAntialiasMode;
				public new function [CallingConvention(.Stdcall)] D2D1_ANTIALIAS_MODE(ref ID2D1RenderTarget self) GetAntialiasMode;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode) SetTextAntialiasMode;
				public new function [CallingConvention(.Stdcall)] D2D1_TEXT_ANTIALIAS_MODE(ref ID2D1RenderTarget self) GetTextAntialiasMode;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, IDWriteRenderingParams* textRenderingParams) SetTextRenderingParams;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, IDWriteRenderingParams** textRenderingParams) GetTextRenderingParams;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, uint64 tag1, uint64 tag2) SetTags;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, uint64* tag1, uint64* tag2) GetTags;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, in D2D1_LAYER_PARAMETERS layerParameters, ID2D1Layer* layer) PushLayer;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self) PopLayer;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderTarget self, uint64* tag1, uint64* tag2) Flush;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, out ID2D1DrawingStateBlock drawingStateBlock) SaveDrawingState;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, ref ID2D1DrawingStateBlock drawingStateBlock) RestoreDrawingState;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, in RectF clipRect, D2D1_ANTIALIAS_MODE antialiasMode) PushAxisAlignedClip;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self) PopAxisAlignedClip;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, ColorF* clearColor) Clear;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self) BeginDraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderTarget self, uint64* tag1, uint64* tag2) EndDraw;
				public new function [CallingConvention(.Stdcall)] PixelFormat(ref ID2D1RenderTarget self) _GetPixelFormat;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, float dpiX, float dpiY) SetDpi;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderTarget self, out float dpiX, out float dpiY) GetDpi;
				public new function [CallingConvention(.Stdcall)] D2D_SIZE_F(ref ID2D1RenderTarget self) GetSize;
				public new function [CallingConvention(.Stdcall)] SizeU(ref ID2D1RenderTarget self) GetPixelSize;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1RenderTarget self) GetMaximumBitmapSize;
				public new function [CallingConvention(.Stdcall)] IntBool(ref ID2D1RenderTarget self, in RenderTargetProperties renderTargetProperties) IsSupported;
			}
		}
		[CRepr]
		public struct ID2D1BitmapRenderTarget : ID2D1RenderTarget
		{
			public const new Guid IID = .(0x2cd90695, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetBitmap(out ID2D1Bitmap* bitmap) mut => VT.GetBitmap(ref this, out bitmap);

			[CRepr]
			public struct VTable : ID2D1RenderTarget.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1BitmapRenderTarget self, out ID2D1Bitmap* bitmap) GetBitmap;
			}
		}
		[CRepr]
		public struct ID2D1HwndRenderTarget : ID2D1RenderTarget
		{
			public const new Guid IID = .(0x2cd90698, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D1_WINDOW_STATE CheckWindowState() mut => VT.CheckWindowState(ref this);
			public HResult Resize(in SizeU pixelSize) mut => VT.Resize(ref this, pixelSize);
			public HWnd GetHwnd() mut => VT.GetHwnd(ref this);

			[CRepr]
			public struct VTable : ID2D1RenderTarget.VTable
			{
				public new function [CallingConvention(.Stdcall)] D2D1_WINDOW_STATE(ref ID2D1HwndRenderTarget self) CheckWindowState;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1HwndRenderTarget self, in SizeU pixelSize) Resize;
				public new function [CallingConvention(.Stdcall)] HWnd(ref ID2D1HwndRenderTarget self) GetHwnd;
			}
		}
		[CRepr]
		public struct ID2D1GdiInteropRenderTarget : IUnknown
		{
			public const new Guid IID = .(0xe0db51c3, 0x6f77, 0x4bae, 0xb3, 0xd5, 0xe4, 0x75, 0x09, 0xb3, 0x58, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetDC(D2D1_DC_INITIALIZE_MODE mode, out HDC hdc) mut => VT._GetDC(ref this, mode, out hdc);
			public HResult ReleaseDC(RectF* update) mut => VT._ReleaseDC(ref this, update);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1GdiInteropRenderTarget self, D2D1_DC_INITIALIZE_MODE mode, out HDC hdc) _GetDC;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1GdiInteropRenderTarget self, RectF* update) _ReleaseDC;
			}
		}
		[CRepr]
		public struct ID2D1DCRenderTarget : ID2D1RenderTarget
		{
			public const new Guid IID = .(0x1c51bc64, 0xde61, 0x46fd, 0x98, 0x99, 0x63, 0xa5, 0xd8, 0xf0, 0x39, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult BindDC(HDC hDC, in RectF pSubRect) mut => VT.BindDC(ref this, hDC, pSubRect);

			[CRepr]
			public struct VTable : ID2D1RenderTarget.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DCRenderTarget self, HDC hDC, in RectF pSubRect) BindDC;
			}
		}
		[CRepr]
		public struct ID2D1Factory : IUnknown
		{
			public const new Guid IID = .(0x06152247, 0x6f50, 0x465a, 0x92, 0x45, 0x11, 0x8b, 0xfd, 0x3b, 0x60, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ReloadSystemMetrics() mut => VT.ReloadSystemMetrics(ref this);
			public void GetDesktopDpi(out float dpiX, out float dpiY) mut => VT.GetDesktopDpi(ref this, out dpiX, out dpiY);
			public HResult CreateRectangleGeometry(in RectF rectangle, out ID2D1RectangleGeometry* rectangleGeometry) mut => VT.CreateRectangleGeometry(ref this, rectangle, out rectangleGeometry);
			public HResult CreateRoundedRectangleGeometry(in D2D1_ROUNDED_RECT roundedRectangle, out ID2D1RoundedRectangleGeometry* roundedRectangleGeometry) mut => VT.CreateRoundedRectangleGeometry(ref this, roundedRectangle, out roundedRectangleGeometry);
			public HResult CreateEllipseGeometry(in D2D1_ELLIPSE ellipse, out ID2D1EllipseGeometry* ellipseGeometry) mut => VT.CreateEllipseGeometry(ref this, ellipse, out ellipseGeometry);
			public HResult CreateGeometryGroup(FillMode fillMode, ID2D1Geometry** geometries, uint32 geometriesCount, out ID2D1GeometryGroup* geometryGroup) mut => VT.CreateGeometryGroup(ref this, fillMode, geometries, geometriesCount, out geometryGroup);
			public HResult CreateTransformedGeometry(ref ID2D1Geometry sourceGeometry, in D2D_MATRIX_3X2_F transform, out ID2D1TransformedGeometry* transformedGeometry) mut => VT.CreateTransformedGeometry(ref this, ref sourceGeometry, transform, out transformedGeometry);
			public HResult CreatePathGeometry(out ID2D1PathGeometry* pathGeometry) mut => VT.CreatePathGeometry(ref this, out pathGeometry);
			public HResult CreateStrokeStyle(in D2D1_STROKE_STYLE_PROPERTIES strokeStyleProperties, float* dashes, uint32 dashesCount, out ID2D1StrokeStyle* strokeStyle) mut => VT.CreateStrokeStyle(ref this, strokeStyleProperties, dashes, dashesCount, out strokeStyle);
			public HResult CreateDrawingStateBlock(D2D1_DRAWING_STATE_DESCRIPTION* drawingStateDescription, IDWriteRenderingParams* textRenderingParams, out ID2D1DrawingStateBlock* drawingStateBlock) mut => VT.CreateDrawingStateBlock(ref this, drawingStateDescription, textRenderingParams, out drawingStateBlock);
			public HResult CreateWicBitmapRenderTarget(IWICBitmap* target, in RenderTargetProperties renderTargetProperties, out ID2D1RenderTarget* renderTarget) mut => VT.CreateWicBitmapRenderTarget(ref this, target, renderTargetProperties, out renderTarget);
			public HResult CreateHwndRenderTarget(RenderTargetProperties renderTargetProperties, HwndRenderTargetProperties hwndRenderTargetProperties, out ID2D1HwndRenderTarget* hwndRenderTarget) mut => VT.CreateHwndRenderTarget(ref this, renderTargetProperties, hwndRenderTargetProperties, out hwndRenderTarget);
			public HResult CreateDxgiSurfaceRenderTarget(ref IDXGISurface dxgiSurface, RenderTargetProperties renderTargetProperties, out ID2D1RenderTarget* renderTarget) mut => VT.CreateDxgiSurfaceRenderTarget(ref this, ref dxgiSurface, renderTargetProperties, out renderTarget);
			public HResult CreateDCRenderTarget(in RenderTargetProperties renderTargetProperties, out ID2D1DCRenderTarget* dcRenderTarget) mut => VT.CreateDCRenderTarget(ref this, renderTargetProperties, out dcRenderTarget);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory self) ReloadSystemMetrics;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Factory self, out float dpiX, out float dpiY) GetDesktopDpi;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory self, in RectF rectangle, out ID2D1RectangleGeometry* rectangleGeometry) CreateRectangleGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory self, in D2D1_ROUNDED_RECT roundedRectangle, out ID2D1RoundedRectangleGeometry* roundedRectangleGeometry) CreateRoundedRectangleGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory self, in D2D1_ELLIPSE ellipse, out ID2D1EllipseGeometry* ellipseGeometry) CreateEllipseGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory self, FillMode fillMode, ID2D1Geometry** geometries, uint32 geometriesCount, out ID2D1GeometryGroup* geometryGroup) CreateGeometryGroup;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory self, ref ID2D1Geometry sourceGeometry, in D2D_MATRIX_3X2_F transform, out ID2D1TransformedGeometry* transformedGeometry) CreateTransformedGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory self, out ID2D1PathGeometry* pathGeometry) CreatePathGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory self, in D2D1_STROKE_STYLE_PROPERTIES strokeStyleProperties, float* dashes, uint32 dashesCount, out ID2D1StrokeStyle* strokeStyle) CreateStrokeStyle;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory self, D2D1_DRAWING_STATE_DESCRIPTION* drawingStateDescription, IDWriteRenderingParams* textRenderingParams, out ID2D1DrawingStateBlock* drawingStateBlock) CreateDrawingStateBlock;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory self, IWICBitmap* target, in RenderTargetProperties renderTargetProperties, out ID2D1RenderTarget* renderTarget) CreateWicBitmapRenderTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory self, in RenderTargetProperties renderTargetProperties, in HwndRenderTargetProperties hwndRenderTargetProperties, out ID2D1HwndRenderTarget* hwndRenderTarget) CreateHwndRenderTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory self, ref IDXGISurface dxgiSurface, in RenderTargetProperties renderTargetProperties, out ID2D1RenderTarget* renderTarget) CreateDxgiSurfaceRenderTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory self, in RenderTargetProperties renderTargetProperties, out ID2D1DCRenderTarget* dcRenderTarget) CreateDCRenderTarget;
			}
		}
		[CRepr]
		public struct ID2D1GdiMetafileSink : IUnknown
		{
			public const new Guid IID = .(0x82237326, 0x8111, 0x4f7c, 0xbc, 0xf4, 0xb5, 0xc1, 0x17, 0x55, 0x64, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ProcessRecord(uint32 recordType, void* recordData, uint32 recordDataSize) mut => VT.ProcessRecord(ref this, recordType, recordData, recordDataSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1GdiMetafileSink self, uint32 recordType, void* recordData, uint32 recordDataSize) ProcessRecord;
			}
		}
		[CRepr]
		public struct ID2D1GdiMetafile : ID2D1Resource
		{
			public const new Guid IID = .(0x2f543dc3, 0xcfc1, 0x4211, 0x86, 0x4f, 0xcf, 0xd9, 0x1c, 0x6f, 0x33, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Stream(ref ID2D1GdiMetafileSink sink) mut => VT.Stream(ref this, ref sink);
			public HResult GetBounds(out RectF bounds) mut => VT.GetBounds(ref this, out bounds);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1GdiMetafile self, ref ID2D1GdiMetafileSink sink) Stream;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1GdiMetafile self, out RectF bounds) GetBounds;
			}
		}
		[CRepr]
		public struct ID2D1CommandSink : IUnknown
		{
			public const new Guid IID = .(0x54d7898a, 0xa061, 0x40a7, 0xbe, 0xc7, 0xe4, 0x65, 0xbc, 0xba, 0x2c, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult BeginDraw() mut => VT.BeginDraw(ref this);
			public HResult EndDraw() mut => VT.EndDraw(ref this);
			public HResult SetAntialiasMode(D2D1_ANTIALIAS_MODE antialiasMode) mut => VT.SetAntialiasMode(ref this, antialiasMode);
			public HResult SetTags(uint64 tag1, uint64 tag2) mut => VT.SetTags(ref this, tag1, tag2);
			public HResult SetTextAntialiasMode(D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode) mut => VT.SetTextAntialiasMode(ref this, textAntialiasMode);
			public HResult SetTextRenderingParams(IDWriteRenderingParams* textRenderingParams) mut => VT.SetTextRenderingParams(ref this, textRenderingParams);
			public HResult SetTransform(in D2D_MATRIX_3X2_F transform) mut => VT.SetTransform(ref this, transform);
			public HResult SetPrimitiveBlend(D2D1_PRIMITIVE_BLEND primitiveBlend) mut => VT.SetPrimitiveBlend(ref this, primitiveBlend);
			public HResult SetUnitMode(UnitMode unitMode) mut => VT.SetUnitMode(ref this, unitMode);
			public HResult Clear(ColorF* color) mut => VT.Clear(ref this, color);
			public HResult DrawGlyphRun(Vector2 baselineOrigin, in GlyphRun glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, ref ID2D1Brush foregroundBrush, DWRITE_MEASURING_MODE measuringMode) mut => VT.DrawGlyphRun(ref this, baselineOrigin, glyphRun, glyphRunDescription, ref foregroundBrush, measuringMode);
			public HResult DrawLine(Vector2 point0, Vector2 point1, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut => VT.DrawLine(ref this, point0, point1, ref brush, strokeWidth, strokeStyle);
			public HResult DrawGeometry(ref ID2D1Geometry geometry, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut => VT.DrawGeometry(ref this, ref geometry, ref brush, strokeWidth, strokeStyle);
			public HResult DrawRectangle(in RectF rect, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut => VT.DrawRectangle(ref this, rect, ref brush, strokeWidth, strokeStyle);
			public HResult DrawBitmap(ref ID2D1Bitmap bitmap, RectF* destinationRectangle, float opacity, InterpolationMode interpolationMode, RectF* sourceRectangle, D2D_MATRIX_4X4_F* perspectiveTransform) mut => VT.DrawBitmap(ref this, ref bitmap, destinationRectangle, opacity, interpolationMode, sourceRectangle, perspectiveTransform);
			public HResult DrawImage(ref ID2D1Image image, Vector2* targetOffset, RectF* imageRectangle, InterpolationMode interpolationMode, D2D1_COMPOSITE_MODE compositeMode) mut => VT.DrawImage(ref this, ref image, targetOffset, imageRectangle, interpolationMode, compositeMode);
			public HResult DrawGdiMetafile(ref ID2D1GdiMetafile gdiMetafile, Vector2* targetOffset) mut => VT.DrawGdiMetafile(ref this, ref gdiMetafile, targetOffset);
			public HResult FillMesh(ref ID2D1Mesh mesh, ref ID2D1Brush brush) mut => VT.FillMesh(ref this, ref mesh, ref brush);
			public HResult FillOpacityMask(ref ID2D1Bitmap opacityMask, ref ID2D1Brush brush, RectF* destinationRectangle, RectF* sourceRectangle) mut => VT.FillOpacityMask(ref this, ref opacityMask, ref brush, destinationRectangle, sourceRectangle);
			public HResult FillGeometry(ref ID2D1Geometry geometry, ref ID2D1Brush brush, ID2D1Brush* opacityBrush) mut => VT.FillGeometry(ref this, ref geometry, ref brush, opacityBrush);
			public HResult FillRectangle(in RectF rect, ref ID2D1Brush brush) mut => VT.FillRectangle(ref this, rect, ref brush);
			public HResult PushAxisAlignedClip(in RectF clipRect, D2D1_ANTIALIAS_MODE antialiasMode) mut => VT.PushAxisAlignedClip(ref this, clipRect, antialiasMode);
			public HResult PushLayer(in D2D1_LAYER_PARAMETERS1 layerParameters1, ID2D1Layer* layer) mut => VT.PushLayer(ref this, layerParameters1, layer);
			public HResult PopAxisAlignedClip() mut => VT.PopAxisAlignedClip(ref this);
			public HResult PopLayer() mut => VT.PopLayer(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self) BeginDraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self) EndDraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, D2D1_ANTIALIAS_MODE antialiasMode) SetAntialiasMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, uint64 tag1, uint64 tag2) SetTags;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode) SetTextAntialiasMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, IDWriteRenderingParams* textRenderingParams) SetTextRenderingParams;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, in D2D_MATRIX_3X2_F transform) SetTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, D2D1_PRIMITIVE_BLEND primitiveBlend) SetPrimitiveBlend;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, UnitMode unitMode) SetUnitMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, ColorF* color) Clear;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, Vector2 baselineOrigin, in GlyphRun glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, ref ID2D1Brush foregroundBrush, DWRITE_MEASURING_MODE measuringMode) DrawGlyphRun;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, Vector2 point0, Vector2 point1, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawLine;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, ref ID2D1Geometry geometry, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, in RectF rect, ref ID2D1Brush brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, ref ID2D1Bitmap bitmap, RectF* destinationRectangle, float opacity, InterpolationMode interpolationMode, RectF* sourceRectangle, D2D_MATRIX_4X4_F* perspectiveTransform) DrawBitmap;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, ref ID2D1Image image, Vector2* targetOffset, RectF* imageRectangle, InterpolationMode interpolationMode, D2D1_COMPOSITE_MODE compositeMode) DrawImage;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, ref ID2D1GdiMetafile gdiMetafile, Vector2* targetOffset) DrawGdiMetafile;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, ref ID2D1Mesh mesh, ref ID2D1Brush brush) FillMesh;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, ref ID2D1Bitmap opacityMask, ref ID2D1Brush brush, RectF* destinationRectangle, RectF* sourceRectangle) FillOpacityMask;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, ref ID2D1Geometry geometry, ref ID2D1Brush brush, ID2D1Brush* opacityBrush) FillGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, in RectF rect, ref ID2D1Brush brush) FillRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, in RectF clipRect, D2D1_ANTIALIAS_MODE antialiasMode) PushAxisAlignedClip;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self, in D2D1_LAYER_PARAMETERS1 layerParameters1, ID2D1Layer* layer) PushLayer;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self) PopAxisAlignedClip;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink self) PopLayer;
			}
		}
		[CRepr]
		public struct ID2D1CommandList : ID2D1Image
		{
			public const new Guid IID = .(0xb4f34a19, 0x2383, 0x4d76, 0x94, 0xf6, 0xec, 0x34, 0x36, 0x57, 0xc3, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Stream(ref ID2D1CommandSink sink) mut => VT.Stream(ref this, ref sink);
			public HResult Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : ID2D1Image.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandList self, ref ID2D1CommandSink sink) Stream;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandList self) Close;
			}
		}
		[CRepr]
		public struct ID2D1PrintControl : IUnknown
		{
			public const new Guid IID = .(0x2c1d867d, 0xc290, 0x41c8, 0xae, 0x7e, 0x34, 0xa9, 0x87, 0x02, 0xe9, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddPage(ref ID2D1CommandList commandList, D2D_SIZE_F pageSize, IStream* pagePrintTicketStream, uint64* tag1, uint64* tag2) mut => VT.AddPage(ref this, ref commandList, pageSize, pagePrintTicketStream, tag1, tag2);
			public HResult Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1PrintControl self, ref ID2D1CommandList commandList, D2D_SIZE_F pageSize, IStream* pagePrintTicketStream, uint64* tag1, uint64* tag2) AddPage;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1PrintControl self) Close;
			}
		}
		[CRepr]
		public struct ID2D1ImageBrush : ID2D1Brush
		{
			public const new Guid IID = .(0xfe9e984d, 0x3f95, 0x407c, 0xb5, 0xdb, 0xcb, 0x94, 0xd4, 0xe8, 0xf8, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetImage(ID2D1Image* image) mut => VT.SetImage(ref this, image);
			public void SetExtendModeX(D2D1_EXTEND_MODE extendModeX) mut => VT.SetExtendModeX(ref this, extendModeX);
			public void SetExtendModeY(D2D1_EXTEND_MODE extendModeY) mut => VT.SetExtendModeY(ref this, extendModeY);
			public void SetInterpolationMode(InterpolationMode interpolationMode) mut => VT.SetInterpolationMode(ref this, interpolationMode);
			public void SetSourceRectangle(in RectF sourceRectangle) mut => VT.SetSourceRectangle(ref this, sourceRectangle);
			public void GetImage(ID2D1Image** image) mut => VT.GetImage(ref this, image);
			public D2D1_EXTEND_MODE GetExtendModeX() mut => VT.GetExtendModeX(ref this);
			public D2D1_EXTEND_MODE GetExtendModeY() mut => VT.GetExtendModeY(ref this);
			public InterpolationMode GetInterpolationMode() mut => VT.GetInterpolationMode(ref this);
			public void GetSourceRectangle(out RectF sourceRectangle) mut => VT.GetSourceRectangle(ref this, out sourceRectangle);

			[CRepr]
			public struct VTable : ID2D1Brush.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1ImageBrush self, ID2D1Image* image) SetImage;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1ImageBrush self, D2D1_EXTEND_MODE extendModeX) SetExtendModeX;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1ImageBrush self, D2D1_EXTEND_MODE extendModeY) SetExtendModeY;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1ImageBrush self, InterpolationMode interpolationMode) SetInterpolationMode;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1ImageBrush self, in RectF sourceRectangle) SetSourceRectangle;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1ImageBrush self, ID2D1Image** image) GetImage;
				public new function [CallingConvention(.Stdcall)] D2D1_EXTEND_MODE(ref ID2D1ImageBrush self) GetExtendModeX;
				public new function [CallingConvention(.Stdcall)] D2D1_EXTEND_MODE(ref ID2D1ImageBrush self) GetExtendModeY;
				public new function [CallingConvention(.Stdcall)] InterpolationMode(ref ID2D1ImageBrush self) GetInterpolationMode;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1ImageBrush self, out RectF sourceRectangle) GetSourceRectangle;
			}
		}
		[CRepr]
		public struct ID2D1BitmapBrush1 : ID2D1BitmapBrush
		{
			public const new Guid IID = .(0x41343a53, 0xe41a, 0x49a2, 0x91, 0xcd, 0x21, 0x79, 0x3b, 0xbb, 0x62, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetInterpolationMode1(InterpolationMode interpolationMode) mut => VT.SetInterpolationMode1(ref this, interpolationMode);
			public InterpolationMode GetInterpolationMode1() mut => VT.GetInterpolationMode1(ref this);

			[CRepr]
			public struct VTable : ID2D1BitmapBrush.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1BitmapBrush1 self, InterpolationMode interpolationMode) SetInterpolationMode1;
				public new function [CallingConvention(.Stdcall)] InterpolationMode(ref ID2D1BitmapBrush1 self) GetInterpolationMode1;
			}
		}
		[CRepr]
		public struct ID2D1StrokeStyle1 : ID2D1StrokeStyle
		{
			public const new Guid IID = .(0x10a72a66, 0xe91c, 0x43f4, 0x99, 0x3f, 0xdd, 0xf4, 0xb8, 0x2b, 0x0b, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D1_STROKE_TRANSFORM_TYPE GetStrokeTransformType() mut => VT.GetStrokeTransformType(ref this);

			[CRepr]
			public struct VTable : ID2D1StrokeStyle.VTable
			{
				public new function [CallingConvention(.Stdcall)] D2D1_STROKE_TRANSFORM_TYPE(ref ID2D1StrokeStyle1 self) GetStrokeTransformType;
			}
		}
		[CRepr]
		public struct ID2D1PathGeometry1 : ID2D1PathGeometry
		{
			public const new Guid IID = .(0x62baa2d2, 0xab54, 0x41b7, 0xb8, 0x72, 0x78, 0x7e, 0x01, 0x06, 0xa4, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ComputePointAndSegmentAtLength(float length, uint32 startSegment, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, out D2D1_POINT_DESCRIPTION pointDescription) mut => VT.ComputePointAndSegmentAtLength(ref this, length, startSegment, worldTransform, flatteningTolerance, out pointDescription);

			[CRepr]
			public struct VTable : ID2D1PathGeometry.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1PathGeometry1 self, float length, uint32 startSegment, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, out D2D1_POINT_DESCRIPTION pointDescription) ComputePointAndSegmentAtLength;
			}
		}
		[CRepr]
		public struct ID2D1Properties : IUnknown
		{
			public const new Guid IID = .(0x483473d7, 0xcd46, 0x4f9d, 0x9d, 0x3a, 0x31, 0x12, 0xaa, 0x80, 0x15, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetPropertyCount() mut => VT.GetPropertyCount(ref this);
			public HResult GetPropertyName(uint32 index, char16* name, uint32 nameCount) mut => VT.GetPropertyName(ref this, index, name, nameCount);
			public uint32 GetPropertyNameLength(uint32 index) mut => VT.GetPropertyNameLength(ref this, index);
			public PropertyType ComGetType(uint32 index) mut => VT.ComGetType(ref this, index);
			public uint32 GetPropertyIndex(char16* name) mut => VT.GetPropertyIndex(ref this, name);
			public HResult SetValueByName(char16* name, PropertyType type, uint8* data, uint32 dataSize) mut => VT.SetValueByName(ref this, name, type, data, dataSize);
			public HResult SetValue(uint32 index, PropertyType type, uint8* data, uint32 dataSize) mut => VT.SetValue(ref this, index, type, data, dataSize);
			public HResult GetValueByName(char16* name, PropertyType type, uint8* data, uint32 dataSize) mut => VT.GetValueByName(ref this, name, type, data, dataSize);
			public HResult GetValue(uint32 index, PropertyType type, uint8* data, uint32 dataSize) mut => VT.GetValue(ref this, index, type, data, dataSize);
			public uint32 GetValueSize(uint32 index) mut => VT.GetValueSize(ref this, index);
			public HResult GetSubProperties(uint32 index, ID2D1Properties** subProperties) mut => VT.GetSubProperties(ref this, index, subProperties);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1Properties self) GetPropertyCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Properties self, uint32 index, char16* name, uint32 nameCount) GetPropertyName;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1Properties self, uint32 index) GetPropertyNameLength;
				public new function [CallingConvention(.Stdcall)] PropertyType(ref ID2D1Properties self, uint32 index) ComGetType;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1Properties self, char16* name) GetPropertyIndex;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Properties self, char16* name, PropertyType type, uint8* data, uint32 dataSize) SetValueByName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Properties self, uint32 index, PropertyType type, uint8* data, uint32 dataSize) SetValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Properties self, char16* name, PropertyType type, uint8* data, uint32 dataSize) GetValueByName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Properties self, uint32 index, PropertyType type, uint8* data, uint32 dataSize) GetValue;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1Properties self, uint32 index) GetValueSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Properties self, uint32 index, ID2D1Properties** subProperties) GetSubProperties;
			}
		}
		[CRepr]
		public struct ID2D1Effect : ID2D1Properties
		{
			public const new Guid IID = .(0x28211a43, 0x7d89, 0x476f, 0x81, 0x81, 0x2d, 0x61, 0x59, 0xb2, 0x20, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetInput(uint32 index, ID2D1Image* input, IntBool invalidate) mut => VT.SetInput(ref this, index, input, invalidate);
			public HResult SetInputCount(uint32 inputCount) mut => VT.SetInputCount(ref this, inputCount);
			public void GetInput(uint32 index, ID2D1Image** input) mut => VT.GetInput(ref this, index, input);
			public uint32 GetInputCount() mut => VT.GetInputCount(ref this);
			public void GetOutput(out ID2D1Image* outputImage) mut => VT.GetOutput(ref this, out outputImage);

			[CRepr]
			public struct VTable : ID2D1Properties.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Effect self, uint32 index, ID2D1Image* input, IntBool invalidate) SetInput;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Effect self, uint32 inputCount) SetInputCount;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Effect self, uint32 index, ID2D1Image** input) GetInput;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1Effect self) GetInputCount;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Effect self, out ID2D1Image* outputImage) GetOutput;
			}
		}
		[CRepr]
		public struct ID2D1Bitmap1 : ID2D1Bitmap
		{
			public const new Guid IID = .(0xa898a84c, 0x3873, 0x4588, 0xb0, 0x8b, 0xeb, 0xbf, 0x97, 0x8d, 0xf0, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetColorContext(ID2D1ColorContext** colorContext) mut => VT.GetColorContext(ref this, colorContext);
			public BitmapOptions GetOptions() mut => VT.GetOptions(ref this);
			public HResult GetSurface(IDXGISurface** dxgiSurface) mut => VT.GetSurface(ref this, dxgiSurface);
			public HResult Map(MapOptions options, out D2D1_MAPPED_RECT mappedRect) mut => VT.Map(ref this, options, out mappedRect);
			public HResult Unmap() mut => VT.Unmap(ref this);

			[CRepr]
			public struct VTable : ID2D1Bitmap.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Bitmap1 self, ID2D1ColorContext** colorContext) GetColorContext;
				public new function [CallingConvention(.Stdcall)] BitmapOptions(ref ID2D1Bitmap1 self) GetOptions;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Bitmap1 self, IDXGISurface** dxgiSurface) GetSurface;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Bitmap1 self, MapOptions options, out D2D1_MAPPED_RECT mappedRect) Map;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Bitmap1 self) Unmap;
			}
		}
		[CRepr]
		public struct ID2D1ColorContext : ID2D1Resource
		{
			public const new Guid IID = .(0x1c4820bb, 0x5771, 0x4518, 0xa5, 0x81, 0x2f, 0xe4, 0xdd, 0x0e, 0xc6, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public ColorSpace GetColorSpace() mut => VT.GetColorSpace(ref this);
			public uint32 GetProfileSize() mut => VT.GetProfileSize(ref this);
			public HResult GetProfile(uint8* profile, uint32 profileSize) mut => VT.GetProfile(ref this, profile, profileSize);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] ColorSpace(ref ID2D1ColorContext self) GetColorSpace;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1ColorContext self) GetProfileSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1ColorContext self, uint8* profile, uint32 profileSize) GetProfile;
			}
		}
		[CRepr]
		public struct ID2D1GradientStopCollection1 : ID2D1GradientStopCollection
		{
			public const new Guid IID = .(0xae1572f4, 0x5dd0, 0x4777, 0x99, 0x8b, 0x92, 0x79, 0x47, 0x2a, 0xe6, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetGradientStops1(D2D1_GRADIENT_STOP* gradientStops, uint32 gradientStopsCount) mut => VT.GetGradientStops1(ref this, gradientStops, gradientStopsCount);
			public ColorSpace GetPreInterpolationSpace() mut => VT.GetPreInterpolationSpace(ref this);
			public ColorSpace GetPostInterpolationSpace() mut => VT.GetPostInterpolationSpace(ref this);
			public BufferPrecision GetBufferPrecision() mut => VT.GetBufferPrecision(ref this);
			public D2D1_COLOR_INTERPOLATION_MODE GetColorInterpolationMode() mut => VT.GetColorInterpolationMode(ref this);

			[CRepr]
			public struct VTable : ID2D1GradientStopCollection.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1GradientStopCollection1 self, D2D1_GRADIENT_STOP* gradientStops, uint32 gradientStopsCount) GetGradientStops1;
				public new function [CallingConvention(.Stdcall)] ColorSpace(ref ID2D1GradientStopCollection1 self) GetPreInterpolationSpace;
				public new function [CallingConvention(.Stdcall)] ColorSpace(ref ID2D1GradientStopCollection1 self) GetPostInterpolationSpace;
				public new function [CallingConvention(.Stdcall)] BufferPrecision(ref ID2D1GradientStopCollection1 self) GetBufferPrecision;
				public new function [CallingConvention(.Stdcall)] D2D1_COLOR_INTERPOLATION_MODE(ref ID2D1GradientStopCollection1 self) GetColorInterpolationMode;
			}
		}
		[CRepr]
		public struct ID2D1DrawingStateBlock1 : ID2D1DrawingStateBlock
		{
			public const new Guid IID = .(0x689f1f85, 0xc72e, 0x4e33, 0x8f, 0x19, 0x85, 0x75, 0x4e, 0xfd, 0x5a, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetDescription(out D2D1_DRAWING_STATE_DESCRIPTION1 stateDescription) mut => VT.GetDescription(ref this, out stateDescription);
			public void SetDescription(in D2D1_DRAWING_STATE_DESCRIPTION1 stateDescription) mut => VT.SetDescription(ref this, stateDescription);

			[CRepr]
			public struct VTable : ID2D1DrawingStateBlock.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DrawingStateBlock1 self, out D2D1_DRAWING_STATE_DESCRIPTION1 stateDescription) GetDescription;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DrawingStateBlock1 self, in D2D1_DRAWING_STATE_DESCRIPTION1 stateDescription) SetDescription;
			}
		}
		[CRepr]
		public struct ID2D1DeviceContext : ID2D1RenderTarget
		{
			public const new Guid IID = .(0xe8f7fe7a, 0x191c, 0x466d, 0xad, 0x95, 0x97, 0x56, 0x78, 0xbd, 0xa9, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateBitmap(SizeU size, void* sourceData, uint32 pitch, in D2D1_BITMAP_PROPERTIES1 bitmapProperties, out ID2D1Bitmap1* bitmap) mut => VT._CreateBitmap(ref this, size, sourceData, pitch, bitmapProperties, out bitmap);
			public HResult CreateBitmapFromWicBitmap(ref IWICBitmapSource wicBitmapSource, D2D1_BITMAP_PROPERTIES1* bitmapProperties, out ID2D1Bitmap1* bitmap) mut => VT.CreateBitmapFromWicBitmap(ref this, ref wicBitmapSource, bitmapProperties, out bitmap);
			public HResult CreateColorContext(ColorSpace space, uint8* profile, uint32 profileSize, out ID2D1ColorContext* colorContext) mut => VT.CreateColorContext(ref this, space, profile, profileSize, out colorContext);
			public HResult CreateColorContextFromFilename(char16* filename, out ID2D1ColorContext* colorContext) mut => VT.CreateColorContextFromFilename(ref this, filename, out colorContext);
			public HResult CreateColorContextFromWicColorContext(ref IWICColorContext wicColorContext, out ID2D1ColorContext* colorContext) mut => VT.CreateColorContextFromWicColorContext(ref this, ref wicColorContext, out colorContext);
			public HResult CreateBitmapFromDxgiSurface(ref IDXGISurface surface, D2D1_BITMAP_PROPERTIES1* bitmapProperties, out ID2D1Bitmap1* bitmap) mut => VT.CreateBitmapFromDxgiSurface(ref this, ref surface, bitmapProperties, out bitmap);
			public HResult CreateEffect(in Guid effectId, out ID2D1Effect* effect) mut => VT.CreateEffect(ref this, effectId, out effect);
			public HResult CreateGradientStopCollection(D2D1_GRADIENT_STOP* straightAlphaGradientStops, uint32 straightAlphaGradientStopsCount, ColorSpace preInterpolationSpace, ColorSpace postInterpolationSpace, BufferPrecision bufferPrecision, D2D1_EXTEND_MODE extendMode, D2D1_COLOR_INTERPOLATION_MODE colorInterpolationMode, out ID2D1GradientStopCollection1* gradientStopCollection1) mut => VT.CreateGradientStopCollection(ref this, straightAlphaGradientStops, straightAlphaGradientStopsCount, preInterpolationSpace, postInterpolationSpace, bufferPrecision, extendMode, colorInterpolationMode, out gradientStopCollection1);
			public HResult CreateImageBrush(ID2D1Image* image, in D2D1_IMAGE_BRUSH_PROPERTIES imageBrushProperties, BrushProperties* brushProperties, out ID2D1ImageBrush* imageBrush) mut => VT.CreateImageBrush(ref this, image, imageBrushProperties, brushProperties, out imageBrush);
			public HResult CreateBitmapBrush(ID2D1Bitmap* bitmap, D2D1_BITMAP_BRUSH_PROPERTIES1* bitmapBrushProperties, BrushProperties* brushProperties, out ID2D1BitmapBrush1* bitmapBrush) mut => VT.CreateBitmapBrush(ref this, bitmap, bitmapBrushProperties, brushProperties, out bitmapBrush);
			public HResult CreateCommandList(out ID2D1CommandList* commandList) mut => VT.CreateCommandList(ref this, out commandList);
			public IntBool IsDxgiFormatSupported(DXGIFormat format) mut => VT.IsDxgiFormatSupported(ref this, format);
			public IntBool IsBufferPrecisionSupported(BufferPrecision bufferPrecision) mut => VT.IsBufferPrecisionSupported(ref this, bufferPrecision);
			public HResult GetImageLocalBounds(ref ID2D1Image image, out RectF localBounds) mut => VT.GetImageLocalBounds(ref this, ref image, out localBounds);
			public HResult GetImageWorldBounds(ref ID2D1Image image, out RectF worldBounds) mut => VT.GetImageWorldBounds(ref this, ref image, out worldBounds);
			public HResult GetGlyphRunWorldBounds(Vector2 baselineOrigin, in GlyphRun glyphRun, DWRITE_MEASURING_MODE measuringMode, out RectF bounds) mut => VT.GetGlyphRunWorldBounds(ref this, baselineOrigin, glyphRun, measuringMode, out bounds);
			public void GetDevice(out ID2D1Device* device) mut => VT.GetDevice(ref this, out device);
			public void SetTarget(ID2D1Image* image) mut => VT.SetTarget(ref this, image);
			public void GetTarget(ID2D1Image** image) mut => VT.GetTarget(ref this, image);
			public void SetRenderingControls(in D2D1_RENDERING_CONTROLS renderingControls) mut => VT.SetRenderingControls(ref this, renderingControls);
			public void GetRenderingControls(out D2D1_RENDERING_CONTROLS renderingControls) mut => VT.GetRenderingControls(ref this, out renderingControls);
			public void SetPrimitiveBlend(D2D1_PRIMITIVE_BLEND primitiveBlend) mut => VT.SetPrimitiveBlend(ref this, primitiveBlend);
			public D2D1_PRIMITIVE_BLEND GetPrimitiveBlend() mut => VT.GetPrimitiveBlend(ref this);
			public void SetUnitMode(UnitMode unitMode) mut => VT.SetUnitMode(ref this, unitMode);
			public UnitMode GetUnitMode() mut => VT.GetUnitMode(ref this);
			public void DrawGlyphRun(Vector2 baselineOrigin, in GlyphRun glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, ref ID2D1Brush foregroundBrush, DWRITE_MEASURING_MODE measuringMode) mut => VT.DrawGlyphRun(ref this, baselineOrigin, glyphRun, glyphRunDescription, ref foregroundBrush, measuringMode);
			public void DrawImage(ref ID2D1Image image, Vector2* targetOffset, RectF* imageRectangle, InterpolationMode interpolationMode, D2D1_COMPOSITE_MODE compositeMode) mut => VT.DrawImage(ref this, ref image, targetOffset, imageRectangle, interpolationMode, compositeMode);
			public void DrawGdiMetafile(ref ID2D1GdiMetafile gdiMetafile, Vector2* targetOffset) mut => VT.DrawGdiMetafile(ref this, ref gdiMetafile, targetOffset);
			public void DrawBitmap(ref ID2D1Bitmap bitmap, RectF* destinationRectangle, float opacity, InterpolationMode interpolationMode, RectF* sourceRectangle, D2D_MATRIX_4X4_F* perspectiveTransform) mut => VT.DrawBitmap(ref this, ref bitmap, destinationRectangle, opacity, interpolationMode, sourceRectangle, perspectiveTransform);
			public void PushLayer(in D2D1_LAYER_PARAMETERS1 layerParameters, ID2D1Layer* layer) mut => VT.PushLayer(ref this, layerParameters, layer);
			public HResult InvalidateEffectInputRectangle(ref ID2D1Effect effect, uint32 input, in RectF inputRectangle) mut => VT.InvalidateEffectInputRectangle(ref this, ref effect, input, inputRectangle);
			public HResult GetEffectInvalidRectangleCount(ref ID2D1Effect effect, out uint32 rectangleCount) mut => VT.GetEffectInvalidRectangleCount(ref this, ref effect, out rectangleCount);
			public HResult GetEffectInvalidRectangles(ref ID2D1Effect effect, RectF* rectangles, uint32 rectanglesCount) mut => VT.GetEffectInvalidRectangles(ref this, ref effect, rectangles, rectanglesCount);
			public HResult GetEffectRequiredInputRectangles(ref ID2D1Effect renderEffect, RectF* renderImageRectangle, D2D1_EFFECT_INPUT_DESCRIPTION* inputDescriptions, RectF* requiredInputRects, uint32 inputCount) mut => VT.GetEffectRequiredInputRectangles(ref this, ref renderEffect, renderImageRectangle, inputDescriptions, requiredInputRects, inputCount);
			public void FillOpacityMask(ref ID2D1Bitmap opacityMask, ref ID2D1Brush brush, RectF* destinationRectangle, RectF* sourceRectangle) mut => VT.FillOpacityMask(ref this, ref opacityMask, ref brush, destinationRectangle, sourceRectangle);

			[CRepr]
			public struct VTable : ID2D1RenderTarget.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, SizeU size, void* sourceData, uint32 pitch, in D2D1_BITMAP_PROPERTIES1 bitmapProperties, out ID2D1Bitmap1* bitmap) _CreateBitmap;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, ref IWICBitmapSource wicBitmapSource, D2D1_BITMAP_PROPERTIES1* bitmapProperties, out ID2D1Bitmap1* bitmap) CreateBitmapFromWicBitmap;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, ColorSpace space, uint8* profile, uint32 profileSize, out ID2D1ColorContext* colorContext) CreateColorContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, char16* filename, out ID2D1ColorContext* colorContext) CreateColorContextFromFilename;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, ref IWICColorContext wicColorContext, out ID2D1ColorContext* colorContext) CreateColorContextFromWicColorContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, ref IDXGISurface surface, D2D1_BITMAP_PROPERTIES1* bitmapProperties, out ID2D1Bitmap1* bitmap) CreateBitmapFromDxgiSurface;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, in Guid effectId, out ID2D1Effect* effect) CreateEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, D2D1_GRADIENT_STOP* straightAlphaGradientStops, uint32 straightAlphaGradientStopsCount, ColorSpace preInterpolationSpace, ColorSpace postInterpolationSpace, BufferPrecision bufferPrecision, D2D1_EXTEND_MODE extendMode, D2D1_COLOR_INTERPOLATION_MODE colorInterpolationMode, out ID2D1GradientStopCollection1* gradientStopCollection1) CreateGradientStopCollection;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, ID2D1Image* image, in D2D1_IMAGE_BRUSH_PROPERTIES imageBrushProperties, BrushProperties* brushProperties, out ID2D1ImageBrush* imageBrush) CreateImageBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, ID2D1Bitmap* bitmap, D2D1_BITMAP_BRUSH_PROPERTIES1* bitmapBrushProperties, BrushProperties* brushProperties, out ID2D1BitmapBrush1* bitmapBrush) CreateBitmapBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, out ID2D1CommandList* commandList) CreateCommandList;
				public new function [CallingConvention(.Stdcall)] IntBool(ref ID2D1DeviceContext self, DXGIFormat format) IsDxgiFormatSupported;
				public new function [CallingConvention(.Stdcall)] IntBool(ref ID2D1DeviceContext self, BufferPrecision bufferPrecision) IsBufferPrecisionSupported;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, ref ID2D1Image image, out RectF localBounds) GetImageLocalBounds;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, ref ID2D1Image image, out RectF worldBounds) GetImageWorldBounds;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, Vector2 baselineOrigin, in GlyphRun glyphRun, DWRITE_MEASURING_MODE measuringMode, out RectF bounds) GetGlyphRunWorldBounds;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext self, out ID2D1Device* device) GetDevice;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext self, ID2D1Image* image) SetTarget;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext self, ID2D1Image** image) GetTarget;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext self, in D2D1_RENDERING_CONTROLS renderingControls) SetRenderingControls;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext self, out D2D1_RENDERING_CONTROLS renderingControls) GetRenderingControls;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext self, D2D1_PRIMITIVE_BLEND primitiveBlend) SetPrimitiveBlend;
				public new function [CallingConvention(.Stdcall)] D2D1_PRIMITIVE_BLEND(ref ID2D1DeviceContext self) GetPrimitiveBlend;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext self, UnitMode unitMode) SetUnitMode;
				public new function [CallingConvention(.Stdcall)] UnitMode(ref ID2D1DeviceContext self) GetUnitMode;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext self, Vector2 baselineOrigin, in GlyphRun glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, ref ID2D1Brush foregroundBrush, DWRITE_MEASURING_MODE measuringMode) DrawGlyphRun;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext self, ref ID2D1Image image, Vector2* targetOffset, RectF* imageRectangle, InterpolationMode interpolationMode, D2D1_COMPOSITE_MODE compositeMode) DrawImage;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext self, ref ID2D1GdiMetafile gdiMetafile, Vector2* targetOffset) DrawGdiMetafile;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext self, ref ID2D1Bitmap bitmap, RectF* destinationRectangle, float opacity, InterpolationMode interpolationMode, RectF* sourceRectangle, D2D_MATRIX_4X4_F* perspectiveTransform) DrawBitmap;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext self, in D2D1_LAYER_PARAMETERS1 layerParameters, ID2D1Layer* layer) PushLayer;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, ref ID2D1Effect effect, uint32 input, in RectF inputRectangle) InvalidateEffectInputRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, ref ID2D1Effect effect, out uint32 rectangleCount) GetEffectInvalidRectangleCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, ref ID2D1Effect effect, RectF* rectangles, uint32 rectanglesCount) GetEffectInvalidRectangles;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext self, ref ID2D1Effect renderEffect, RectF* renderImageRectangle, D2D1_EFFECT_INPUT_DESCRIPTION* inputDescriptions, RectF* requiredInputRects, uint32 inputCount) GetEffectRequiredInputRectangles;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext self, ref ID2D1Bitmap opacityMask, ref ID2D1Brush brush, RectF* destinationRectangle, RectF* sourceRectangle) FillOpacityMask;
			}
		}
		[CRepr]
		public struct ID2D1Device : ID2D1Resource
		{
			public const new Guid IID = .(0x47dd575d, 0xac05, 0x4cdd, 0x80, 0x49, 0x9b, 0x02, 0xcd, 0x16, 0xf4, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDeviceContext(DeviceContextOptions options, out ID2D1DeviceContext* deviceContext) mut => VT.CreateDeviceContext(ref this, options, out deviceContext);
			public HResult CreatePrintControl(ref IWICImagingFactory wicFactory, ref IPrintDocumentPackageTarget documentTarget, D2D1_PRINT_CONTROL_PROPERTIES* printControlProperties, out ID2D1PrintControl* printControl) mut => VT.CreatePrintControl(ref this, ref wicFactory, ref documentTarget, printControlProperties, out printControl);
			public void SetMaximumTextureMemory(uint64 maximumInBytes) mut => VT.SetMaximumTextureMemory(ref this, maximumInBytes);
			public uint64 GetMaximumTextureMemory() mut => VT.GetMaximumTextureMemory(ref this);
			public void ClearResources(uint32 millisecondsSinceUse) mut => VT.ClearResources(ref this, millisecondsSinceUse);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Device self, DeviceContextOptions options, out ID2D1DeviceContext* deviceContext) CreateDeviceContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Device self, ref IWICImagingFactory wicFactory, ref IPrintDocumentPackageTarget documentTarget, D2D1_PRINT_CONTROL_PROPERTIES* printControlProperties, out ID2D1PrintControl* printControl) CreatePrintControl;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Device self, uint64 maximumInBytes) SetMaximumTextureMemory;
				public new function [CallingConvention(.Stdcall)] uint64(ref ID2D1Device self) GetMaximumTextureMemory;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Device self, uint32 millisecondsSinceUse) ClearResources;
			}
		}
		[CRepr]
		public struct ID2D1Factory1 : ID2D1Factory
		{
			public const new Guid IID = .(0xbb12d362, 0xdaee, 0x4b9a, 0xaa, 0x1d, 0x14, 0xba, 0x40, 0x1c, 0xfa, 0x1f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDevice(ref IDXGIDevice dxgiDevice, out ID2D1Device* d2dDevice) mut => VT.CreateDevice(ref this, ref dxgiDevice, out d2dDevice);
			public HResult CreateStrokeStyle(in D2D1_STROKE_STYLE_PROPERTIES1 strokeStyleProperties, float* dashes, uint32 dashesCount, out ID2D1StrokeStyle1* strokeStyle) mut => VT.CreateStrokeStyle(ref this, strokeStyleProperties, dashes, dashesCount, out strokeStyle);
			public HResult CreatePathGeometry(out ID2D1PathGeometry1* pathGeometry) mut => VT.CreatePathGeometry(ref this, out pathGeometry);
			public HResult CreateDrawingStateBlock(D2D1_DRAWING_STATE_DESCRIPTION1* drawingStateDescription, IDWriteRenderingParams* textRenderingParams, out ID2D1DrawingStateBlock1* drawingStateBlock) mut => VT.CreateDrawingStateBlock(ref this, drawingStateDescription, textRenderingParams, out drawingStateBlock);
			public HResult CreateGdiMetafile(ref IStream metafileStream, out ID2D1GdiMetafile* metafile) mut => VT.CreateGdiMetafile(ref this, ref metafileStream, out metafile);
			public HResult RegisterEffectFromStream(in Guid classId, ref IStream propertyXml, D2D1_PROPERTY_BINDING* bindings, uint32 bindingsCount, PD2D1_EFFECT_FACTORY effectFactory) mut => VT.RegisterEffectFromStream(ref this, classId, ref propertyXml, bindings, bindingsCount, effectFactory);
			public HResult RegisterEffectFromString(in Guid classId, char16* propertyXml, D2D1_PROPERTY_BINDING* bindings, uint32 bindingsCount, PD2D1_EFFECT_FACTORY effectFactory) mut => VT.RegisterEffectFromString(ref this, classId, propertyXml, bindings, bindingsCount, effectFactory);
			public HResult UnregisterEffect(in Guid classId) mut => VT.UnregisterEffect(ref this, classId);
			public HResult GetRegisteredEffects(Guid* effects, uint32 effectsCount, uint32* effectsReturned, uint32* effectsRegistered) mut => VT.GetRegisteredEffects(ref this, effects, effectsCount, effectsReturned, effectsRegistered);
			public HResult GetEffectProperties(in Guid effectId, out ID2D1Properties* properties) mut => VT.GetEffectProperties(ref this, effectId, out properties);

			[CRepr]
			public struct VTable : ID2D1Factory.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory1 self, ref IDXGIDevice dxgiDevice, out ID2D1Device* d2dDevice) CreateDevice;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory1 self, in D2D1_STROKE_STYLE_PROPERTIES1 strokeStyleProperties, float* dashes, uint32 dashesCount, out ID2D1StrokeStyle1* strokeStyle) CreateStrokeStyle;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory1 self, out ID2D1PathGeometry1* pathGeometry) CreatePathGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory1 self, D2D1_DRAWING_STATE_DESCRIPTION1* drawingStateDescription, IDWriteRenderingParams* textRenderingParams, out ID2D1DrawingStateBlock1* drawingStateBlock) CreateDrawingStateBlock;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory1 self, ref IStream metafileStream, out ID2D1GdiMetafile* metafile) CreateGdiMetafile;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory1 self, in Guid classId, ref IStream propertyXml, D2D1_PROPERTY_BINDING* bindings, uint32 bindingsCount, PD2D1_EFFECT_FACTORY effectFactory) RegisterEffectFromStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory1 self, in Guid classId, char16* propertyXml, D2D1_PROPERTY_BINDING* bindings, uint32 bindingsCount, PD2D1_EFFECT_FACTORY effectFactory) RegisterEffectFromString;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory1 self, in Guid classId) UnregisterEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory1 self, Guid* effects, uint32 effectsCount, uint32* effectsReturned, uint32* effectsRegistered) GetRegisteredEffects;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory1 self, in Guid effectId, out ID2D1Properties* properties) GetEffectProperties;
			}
		}
		[CRepr]
		public struct ID2D1Multithread : IUnknown
		{
			public const new Guid IID = .(0x31e6e7bc, 0xe0ff, 0x4d46, 0x8c, 0x64, 0xa0, 0xa8, 0xc4, 0x1c, 0x15, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public IntBool GetMultithreadProtected() mut => VT.GetMultithreadProtected(ref this);
			public void Enter() mut => VT.Enter(ref this);
			public void Leave() mut => VT.Leave(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] IntBool(ref ID2D1Multithread self) GetMultithreadProtected;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Multithread self) Enter;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Multithread self) Leave;
			}
		}
		[CRepr]
		public struct ID2D1VertexBuffer : IUnknown
		{
			public const new Guid IID = .(0x9b8b1336, 0x00a5, 0x4668, 0x92, 0xb7, 0xce, 0xd5, 0xd8, 0xbf, 0x9b, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Map(out uint8* data, uint32 bufferSize) mut => VT.Map(ref this, out data, bufferSize);
			public HResult Unmap() mut => VT.Unmap(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1VertexBuffer self, out uint8* data, uint32 bufferSize) Map;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1VertexBuffer self) Unmap;
			}
		}
		[CRepr]
		public struct ID2D1ResourceTexture : IUnknown
		{
			public const new Guid IID = .(0x688d15c3, 0x02b0, 0x438d, 0xb1, 0x3a, 0xd1, 0xb4, 0x4c, 0x32, 0xc3, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Update(uint32* minimumExtents, uint32* maximimumExtents, uint32* strides, uint32 dimensions, uint8* data, uint32 dataCount) mut => VT.Update(ref this, minimumExtents, maximimumExtents, strides, dimensions, data, dataCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1ResourceTexture self, uint32* minimumExtents, uint32* maximimumExtents, uint32* strides, uint32 dimensions, uint8* data, uint32 dataCount) Update;
			}
		}
		[CRepr]
		public struct ID2D1RenderInfo : IUnknown
		{
			public const new Guid IID = .(0x519ae1bd, 0xd19a, 0x420d, 0xb8, 0x49, 0x36, 0x4f, 0x59, 0x47, 0x76, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetInputDescription(uint32 inputIndex, D2D1_INPUT_DESCRIPTION inputDescription) mut => VT.SetInputDescription(ref this, inputIndex, inputDescription);
			public HResult SetOutputBuffer(BufferPrecision bufferPrecision, ChannelDepth channelDepth) mut => VT.SetOutputBuffer(ref this, bufferPrecision, channelDepth);
			public void SetCached(IntBool isCached) mut => VT.SetCached(ref this, isCached);
			public void SetInstructionCountHint(uint32 instructionCount) mut => VT.SetInstructionCountHint(ref this, instructionCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderInfo self, uint32 inputIndex, D2D1_INPUT_DESCRIPTION inputDescription) SetInputDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1RenderInfo self, BufferPrecision bufferPrecision, ChannelDepth channelDepth) SetOutputBuffer;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderInfo self, IntBool isCached) SetCached;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1RenderInfo self, uint32 instructionCount) SetInstructionCountHint;
			}
		}
		[CRepr]
		public struct ID2D1DrawInfo : ID2D1RenderInfo
		{
			public const new Guid IID = .(0x693ce632, 0x7f2f, 0x45de, 0x93, 0xfe, 0x18, 0xd8, 0x8b, 0x37, 0xaa, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetPixelShaderConstantBuffer(uint8* buffer, uint32 bufferCount) mut => VT.SetPixelShaderConstantBuffer(ref this, buffer, bufferCount);
			public HResult SetResourceTexture(uint32 textureIndex, ref ID2D1ResourceTexture resourceTexture) mut => VT.SetResourceTexture(ref this, textureIndex, ref resourceTexture);
			public HResult SetVertexShaderConstantBuffer(uint8* buffer, uint32 bufferCount) mut => VT.SetVertexShaderConstantBuffer(ref this, buffer, bufferCount);
			public HResult SetPixelShader(in Guid shaderId, PixelOptions pixelOptions) mut => VT.SetPixelShader(ref this, shaderId, pixelOptions);
			public HResult SetVertexProcessing(ID2D1VertexBuffer* vertexBuffer, VertexOptions vertexOptions, D2D1_BLEND_DESCRIPTION* blendDescription, D2D1_VERTEX_RANGE* vertexRange, Guid* vertexShader) mut => VT.SetVertexProcessing(ref this, vertexBuffer, vertexOptions, blendDescription, vertexRange, vertexShader);

			[CRepr]
			public struct VTable : ID2D1RenderInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DrawInfo self, uint8* buffer, uint32 bufferCount) SetPixelShaderConstantBuffer;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DrawInfo self, uint32 textureIndex, ref ID2D1ResourceTexture resourceTexture) SetResourceTexture;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DrawInfo self, uint8* buffer, uint32 bufferCount) SetVertexShaderConstantBuffer;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DrawInfo self, in Guid shaderId, PixelOptions pixelOptions) SetPixelShader;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DrawInfo self, ID2D1VertexBuffer* vertexBuffer, VertexOptions vertexOptions, D2D1_BLEND_DESCRIPTION* blendDescription, D2D1_VERTEX_RANGE* vertexRange, Guid* vertexShader) SetVertexProcessing;
			}
		}
		[CRepr]
		public struct ID2D1ComputeInfo : ID2D1RenderInfo
		{
			public const new Guid IID = .(0x5598b14b, 0x9fd7, 0x48b7, 0x9b, 0xdb, 0x8f, 0x09, 0x64, 0xeb, 0x38, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetComputeShaderConstantBuffer(uint8* buffer, uint32 bufferCount) mut => VT.SetComputeShaderConstantBuffer(ref this, buffer, bufferCount);
			public HResult SetComputeShader(in Guid shaderId) mut => VT.SetComputeShader(ref this, shaderId);
			public HResult SetResourceTexture(uint32 textureIndex, ref ID2D1ResourceTexture resourceTexture) mut => VT.SetResourceTexture(ref this, textureIndex, ref resourceTexture);

			[CRepr]
			public struct VTable : ID2D1RenderInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1ComputeInfo self, uint8* buffer, uint32 bufferCount) SetComputeShaderConstantBuffer;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1ComputeInfo self, in Guid shaderId) SetComputeShader;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1ComputeInfo self, uint32 textureIndex, ref ID2D1ResourceTexture resourceTexture) SetResourceTexture;
			}
		}
		[CRepr]
		public struct ID2D1TransformNode : IUnknown
		{
			public const new Guid IID = .(0xb2efe1e7, 0x729f, 0x4102, 0x94, 0x9f, 0x50, 0x5f, 0xa2, 0x1b, 0xf6, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetInputCount() mut => VT.GetInputCount(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1TransformNode self) GetInputCount;
			}
		}
		[CRepr]
		public struct ID2D1TransformGraph : IUnknown
		{
			public const new Guid IID = .(0x13d29038, 0xc3e6, 0x4034, 0x90, 0x81, 0x13, 0xb5, 0x3a, 0x41, 0x79, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetInputCount() mut => VT.GetInputCount(ref this);
			public HResult SetSingleTransformNode(ref ID2D1TransformNode node) mut => VT.SetSingleTransformNode(ref this, ref node);
			public HResult AddNode(ref ID2D1TransformNode node) mut => VT.AddNode(ref this, ref node);
			public HResult RemoveNode(ref ID2D1TransformNode node) mut => VT.RemoveNode(ref this, ref node);
			public HResult SetOutputNode(ref ID2D1TransformNode node) mut => VT.SetOutputNode(ref this, ref node);
			public HResult ConnectNode(ref ID2D1TransformNode fromNode, ref ID2D1TransformNode toNode, uint32 toNodeInputIndex) mut => VT.ConnectNode(ref this, ref fromNode, ref toNode, toNodeInputIndex);
			public HResult ConnectToEffectInput(uint32 toEffectInputIndex, ref ID2D1TransformNode node, uint32 toNodeInputIndex) mut => VT.ConnectToEffectInput(ref this, toEffectInputIndex, ref node, toNodeInputIndex);
			public void Clear() mut => VT.Clear(ref this);
			public HResult SetPassthroughGraph(uint32 effectInputIndex) mut => VT.SetPassthroughGraph(ref this, effectInputIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1TransformGraph self) GetInputCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1TransformGraph self, ref ID2D1TransformNode node) SetSingleTransformNode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1TransformGraph self, ref ID2D1TransformNode node) AddNode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1TransformGraph self, ref ID2D1TransformNode node) RemoveNode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1TransformGraph self, ref ID2D1TransformNode node) SetOutputNode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1TransformGraph self, ref ID2D1TransformNode fromNode, ref ID2D1TransformNode toNode, uint32 toNodeInputIndex) ConnectNode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1TransformGraph self, uint32 toEffectInputIndex, ref ID2D1TransformNode node, uint32 toNodeInputIndex) ConnectToEffectInput;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1TransformGraph self) Clear;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1TransformGraph self, uint32 effectInputIndex) SetPassthroughGraph;
			}
		}
		[CRepr]
		public struct ID2D1Transform : ID2D1TransformNode
		{
			public const new Guid IID = .(0xef1a287d, 0x342a, 0x4f76, 0x8f, 0xdb, 0xda, 0x0d, 0x6e, 0xa9, 0xf9, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult MapOutputRectToInputRects(in RectF outputRect, RectF* inputRects, uint32 inputRectsCount) mut => VT.MapOutputRectToInputRects(ref this, outputRect, inputRects, inputRectsCount);
			public HResult MapInputRectsToOutputRect(RectF* inputRects, RectF* inputOpaqueSubRects, uint32 inputRectCount, out RectF outputRect, out RectF outputOpaqueSubRect) mut => VT.MapInputRectsToOutputRect(ref this, inputRects, inputOpaqueSubRects, inputRectCount, out outputRect, out outputOpaqueSubRect);
			public HResult MapInvalidRect(uint32 inputIndex, RectF invalidInputRect, out RectF invalidOutputRect) mut => VT.MapInvalidRect(ref this, inputIndex, invalidInputRect, out invalidOutputRect);

			[CRepr]
			public struct VTable : ID2D1TransformNode.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Transform self, in RectF outputRect, RectF* inputRects, uint32 inputRectsCount) MapOutputRectToInputRects;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Transform self, RectF* inputRects, RectF* inputOpaqueSubRects, uint32 inputRectCount, out RectF outputRect, out RectF outputOpaqueSubRect) MapInputRectsToOutputRect;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Transform self, uint32 inputIndex, RectF invalidInputRect, out RectF invalidOutputRect) MapInvalidRect;
			}
		}
		[CRepr]
		public struct ID2D1DrawTransform : ID2D1Transform
		{
			public const new Guid IID = .(0x36bfdcb6, 0x9739, 0x435d, 0xa3, 0x0d, 0xa6, 0x53, 0xbe, 0xff, 0x6a, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetDrawInfo(ref ID2D1DrawInfo drawInfo) mut => VT.SetDrawInfo(ref this, ref drawInfo);

			[CRepr]
			public struct VTable : ID2D1Transform.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DrawTransform self, ref ID2D1DrawInfo drawInfo) SetDrawInfo;
			}
		}
		[CRepr]
		public struct ID2D1ComputeTransform : ID2D1Transform
		{
			public const new Guid IID = .(0x0d85573c, 0x01e3, 0x4f7d, 0xbf, 0xd9, 0x0d, 0x60, 0x60, 0x8b, 0xf3, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetComputeInfo(ref ID2D1ComputeInfo computeInfo) mut => VT.SetComputeInfo(ref this, ref computeInfo);
			public HResult CalculateThreadgroups(in RectF outputRect, out uint32 dimensionX, out uint32 dimensionY, out uint32 dimensionZ) mut => VT.CalculateThreadgroups(ref this, outputRect, out dimensionX, out dimensionY, out dimensionZ);

			[CRepr]
			public struct VTable : ID2D1Transform.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1ComputeTransform self, ref ID2D1ComputeInfo computeInfo) SetComputeInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1ComputeTransform self, in RectF outputRect, out uint32 dimensionX, out uint32 dimensionY, out uint32 dimensionZ) CalculateThreadgroups;
			}
		}
		[CRepr]
		public struct ID2D1AnalysisTransform : IUnknown
		{
			public const new Guid IID = .(0x0359dc30, 0x95e6, 0x4568, 0x90, 0x55, 0x27, 0x72, 0x0d, 0x13, 0x0e, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ProcessAnalysisResults(uint8* analysisData, uint32 analysisDataCount) mut => VT.ProcessAnalysisResults(ref this, analysisData, analysisDataCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1AnalysisTransform self, uint8* analysisData, uint32 analysisDataCount) ProcessAnalysisResults;
			}
		}
		[CRepr]
		public struct ID2D1SourceTransform : ID2D1Transform
		{
			public const new Guid IID = .(0xdb1800dd, 0x0c34, 0x4cf9, 0xbe, 0x90, 0x31, 0xcc, 0x0a, 0x56, 0x53, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetRenderInfo(ref ID2D1RenderInfo renderInfo) mut => VT.SetRenderInfo(ref this, ref renderInfo);
			public HResult Draw(ref ID2D1Bitmap1 target, in RectF drawRect, D2D_POINT_2U targetOrigin) mut => VT.Draw(ref this, ref target, drawRect, targetOrigin);

			[CRepr]
			public struct VTable : ID2D1Transform.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SourceTransform self, ref ID2D1RenderInfo renderInfo) SetRenderInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SourceTransform self, ref ID2D1Bitmap1 target, in RectF drawRect, D2D_POINT_2U targetOrigin) Draw;
			}
		}
		[CRepr]
		public struct ID2D1ConcreteTransform : ID2D1TransformNode
		{
			public const new Guid IID = .(0x1a799d8a, 0x69f7, 0x4e4c, 0x9f, 0xed, 0x43, 0x7c, 0xcc, 0x66, 0x84, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetOutputBuffer(BufferPrecision bufferPrecision, ChannelDepth channelDepth) mut => VT.SetOutputBuffer(ref this, bufferPrecision, channelDepth);
			public void SetCached(IntBool isCached) mut => VT.SetCached(ref this, isCached);

			[CRepr]
			public struct VTable : ID2D1TransformNode.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1ConcreteTransform self, BufferPrecision bufferPrecision, ChannelDepth channelDepth) SetOutputBuffer;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1ConcreteTransform self, IntBool isCached) SetCached;
			}
		}
		[CRepr]
		public struct ID2D1BlendTransform : ID2D1ConcreteTransform
		{
			public const new Guid IID = .(0x63ac0b32, 0xba44, 0x450f, 0x88, 0x06, 0x7f, 0x4c, 0xa1, 0xff, 0x2f, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetDescription(in D2D1_BLEND_DESCRIPTION description) mut => VT.SetDescription(ref this, description);
			public void GetDescription(out D2D1_BLEND_DESCRIPTION description) mut => VT.GetDescription(ref this, out description);

			[CRepr]
			public struct VTable : ID2D1ConcreteTransform.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1BlendTransform self, in D2D1_BLEND_DESCRIPTION description) SetDescription;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1BlendTransform self, out D2D1_BLEND_DESCRIPTION description) GetDescription;
			}
		}
		[CRepr]
		public struct ID2D1BorderTransform : ID2D1ConcreteTransform
		{
			public const new Guid IID = .(0x4998735c, 0x3a19, 0x473c, 0x97, 0x81, 0x65, 0x68, 0x47, 0xe3, 0xa3, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetExtendModeX(D2D1_EXTEND_MODE extendMode) mut => VT.SetExtendModeX(ref this, extendMode);
			public void SetExtendModeY(D2D1_EXTEND_MODE extendMode) mut => VT.SetExtendModeY(ref this, extendMode);
			public D2D1_EXTEND_MODE GetExtendModeX() mut => VT.GetExtendModeX(ref this);
			public D2D1_EXTEND_MODE GetExtendModeY() mut => VT.GetExtendModeY(ref this);

			[CRepr]
			public struct VTable : ID2D1ConcreteTransform.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1BorderTransform self, D2D1_EXTEND_MODE extendMode) SetExtendModeX;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1BorderTransform self, D2D1_EXTEND_MODE extendMode) SetExtendModeY;
				public new function [CallingConvention(.Stdcall)] D2D1_EXTEND_MODE(ref ID2D1BorderTransform self) GetExtendModeX;
				public new function [CallingConvention(.Stdcall)] D2D1_EXTEND_MODE(ref ID2D1BorderTransform self) GetExtendModeY;
			}
		}
		[CRepr]
		public struct ID2D1OffsetTransform : ID2D1TransformNode
		{
			public const new Guid IID = .(0x3fe6adea, 0x7643, 0x4f53, 0xbd, 0x14, 0xa0, 0xce, 0x63, 0xf2, 0x40, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetOffset(POINT offset) mut => VT.SetOffset(ref this, offset);
			public POINT GetOffset() mut => VT.GetOffset(ref this);

			[CRepr]
			public struct VTable : ID2D1TransformNode.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1OffsetTransform self, POINT offset) SetOffset;
				public new function [CallingConvention(.Stdcall)] POINT(ref ID2D1OffsetTransform self) GetOffset;
			}
		}
		[CRepr]
		public struct ID2D1BoundsAdjustmentTransform : ID2D1TransformNode
		{
			public const new Guid IID = .(0x90f732e2, 0x5092, 0x4606, 0xa8, 0x19, 0x86, 0x51, 0x97, 0x0b, 0xac, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetOutputBounds(in RectF outputBounds) mut => VT.SetOutputBounds(ref this, outputBounds);
			public void GetOutputBounds(out RectF outputBounds) mut => VT.GetOutputBounds(ref this, out outputBounds);

			[CRepr]
			public struct VTable : ID2D1TransformNode.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1BoundsAdjustmentTransform self, in RectF outputBounds) SetOutputBounds;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1BoundsAdjustmentTransform self, out RectF outputBounds) GetOutputBounds;
			}
		}
		[CRepr]
		public struct ID2D1EffectImpl : IUnknown
		{
			public const new Guid IID = .(0xa248fd3f, 0x3e6c, 0x4e63, 0x9f, 0x03, 0x7f, 0x68, 0xec, 0xc9, 0x1d, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Initialize(ref ID2D1EffectContext effectContext, ref ID2D1TransformGraph transformGraph) mut => VT.Initialize(ref this, ref effectContext, ref transformGraph);
			public HResult PrepareForRender(ChangeType changeType) mut => VT.PrepareForRender(ref this, changeType);
			public HResult SetGraph(ref ID2D1TransformGraph transformGraph) mut => VT.SetGraph(ref this, ref transformGraph);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectImpl self, ref ID2D1EffectContext effectContext, ref ID2D1TransformGraph transformGraph) Initialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectImpl self, ChangeType changeType) PrepareForRender;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectImpl self, ref ID2D1TransformGraph transformGraph) SetGraph;
			}
		}
		[CRepr]
		public struct ID2D1EffectContext : IUnknown
		{
			public const new Guid IID = .(0x3d9f916b, 0x27dc, 0x4ad7, 0xb4, 0xf1, 0x64, 0x94, 0x53, 0x40, 0xf5, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetDpi(out float dpiX, out float dpiY) mut => VT.GetDpi(ref this, out dpiX, out dpiY);
			public HResult CreateEffect(in Guid effectId, out ID2D1Effect* effect) mut => VT.CreateEffect(ref this, effectId, out effect);
			public HResult GetMaximumSupportedFeatureLevel(FeatureLevel* featureLevels, uint32 featureLevelsCount, out FeatureLevel maximumSupportedFeatureLevel) mut => VT.GetMaximumSupportedFeatureLevel(ref this, featureLevels, featureLevelsCount, out maximumSupportedFeatureLevel);
			public HResult CreateTransformNodeFromEffect(ref ID2D1Effect effect, out ID2D1TransformNode* transformNode) mut => VT.CreateTransformNodeFromEffect(ref this, ref effect, out transformNode);
			public HResult CreateBlendTransform(uint32 numInputs, in D2D1_BLEND_DESCRIPTION blendDescription, out ID2D1BlendTransform* transform) mut => VT.CreateBlendTransform(ref this, numInputs, blendDescription, out transform);
			public HResult CreateBorderTransform(D2D1_EXTEND_MODE extendModeX, D2D1_EXTEND_MODE extendModeY, out ID2D1BorderTransform* transform) mut => VT.CreateBorderTransform(ref this, extendModeX, extendModeY, out transform);
			public HResult CreateOffsetTransform(POINT offset, out ID2D1OffsetTransform* transform) mut => VT.CreateOffsetTransform(ref this, offset, out transform);
			public HResult CreateBoundsAdjustmentTransform(in RectF outputRectangle, out ID2D1BoundsAdjustmentTransform* transform) mut => VT.CreateBoundsAdjustmentTransform(ref this, outputRectangle, out transform);
			public HResult LoadPixelShader(in Guid shaderId, uint8* shaderBuffer, uint32 shaderBufferCount) mut => VT.LoadPixelShader(ref this, shaderId, shaderBuffer, shaderBufferCount);
			public HResult LoadVertexShader(in Guid resourceId, uint8* shaderBuffer, uint32 shaderBufferCount) mut => VT.LoadVertexShader(ref this, resourceId, shaderBuffer, shaderBufferCount);
			public HResult LoadComputeShader(in Guid resourceId, uint8* shaderBuffer, uint32 shaderBufferCount) mut => VT.LoadComputeShader(ref this, resourceId, shaderBuffer, shaderBufferCount);
			public IntBool IsShaderLoaded(in Guid shaderId) mut => VT.IsShaderLoaded(ref this, shaderId);
			public HResult CreateResourceTexture(Guid* resourceId, in D2D1_RESOURCE_TEXTURE_PROPERTIES resourceTextureProperties, uint8* data, uint32* strides, uint32 dataSize, out ID2D1ResourceTexture* resourceTexture) mut => VT.CreateResourceTexture(ref this, resourceId, resourceTextureProperties, data, strides, dataSize, out resourceTexture);
			public HResult FindResourceTexture(in Guid resourceId, out ID2D1ResourceTexture* resourceTexture) mut => VT.FindResourceTexture(ref this, resourceId, out resourceTexture);
			public HResult CreateVertexBuffer(in D2D1_VERTEX_BUFFER_PROPERTIES vertexBufferProperties, Guid* resourceId, D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES* customVertexBufferProperties, out ID2D1VertexBuffer* buffer) mut => VT.CreateVertexBuffer(ref this, vertexBufferProperties, resourceId, customVertexBufferProperties, out buffer);
			public HResult FindVertexBuffer(in Guid resourceId, out ID2D1VertexBuffer* buffer) mut => VT.FindVertexBuffer(ref this, resourceId, out buffer);
			public HResult CreateColorContext(ColorSpace space, uint8* profile, uint32 profileSize, out ID2D1ColorContext* colorContext) mut => VT.CreateColorContext(ref this, space, profile, profileSize, out colorContext);
			public HResult CreateColorContextFromFilename(char16* filename, out ID2D1ColorContext* colorContext) mut => VT.CreateColorContextFromFilename(ref this, filename, out colorContext);
			public HResult CreateColorContextFromWicColorContext(ref IWICColorContext wicColorContext, out ID2D1ColorContext* colorContext) mut => VT.CreateColorContextFromWicColorContext(ref this, ref wicColorContext, out colorContext);
			public HResult CheckFeatureSupport(Feature feature, void* featureSupportData, uint32 featureSupportDataSize) mut => VT.CheckFeatureSupport(ref this, feature, featureSupportData, featureSupportDataSize);
			public IntBool IsBufferPrecisionSupported(BufferPrecision bufferPrecision) mut => VT.IsBufferPrecisionSupported(ref this, bufferPrecision);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1EffectContext self, out float dpiX, out float dpiY) GetDpi;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, in Guid effectId, out ID2D1Effect* effect) CreateEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, FeatureLevel* featureLevels, uint32 featureLevelsCount, out FeatureLevel maximumSupportedFeatureLevel) GetMaximumSupportedFeatureLevel;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, ref ID2D1Effect effect, out ID2D1TransformNode* transformNode) CreateTransformNodeFromEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, uint32 numInputs, in D2D1_BLEND_DESCRIPTION blendDescription, out ID2D1BlendTransform* transform) CreateBlendTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, D2D1_EXTEND_MODE extendModeX, D2D1_EXTEND_MODE extendModeY, out ID2D1BorderTransform* transform) CreateBorderTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, POINT offset, out ID2D1OffsetTransform* transform) CreateOffsetTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, in RectF outputRectangle, out ID2D1BoundsAdjustmentTransform* transform) CreateBoundsAdjustmentTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, in Guid shaderId, uint8* shaderBuffer, uint32 shaderBufferCount) LoadPixelShader;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, in Guid resourceId, uint8* shaderBuffer, uint32 shaderBufferCount) LoadVertexShader;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, in Guid resourceId, uint8* shaderBuffer, uint32 shaderBufferCount) LoadComputeShader;
				public new function [CallingConvention(.Stdcall)] IntBool(ref ID2D1EffectContext self, in Guid shaderId) IsShaderLoaded;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, Guid* resourceId, in D2D1_RESOURCE_TEXTURE_PROPERTIES resourceTextureProperties, uint8* data, uint32* strides, uint32 dataSize, out ID2D1ResourceTexture* resourceTexture) CreateResourceTexture;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, in Guid resourceId, out ID2D1ResourceTexture* resourceTexture) FindResourceTexture;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, in D2D1_VERTEX_BUFFER_PROPERTIES vertexBufferProperties, Guid* resourceId, D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES* customVertexBufferProperties, out ID2D1VertexBuffer* buffer) CreateVertexBuffer;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, in Guid resourceId, out ID2D1VertexBuffer* buffer) FindVertexBuffer;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, ColorSpace space, uint8* profile, uint32 profileSize, out ID2D1ColorContext* colorContext) CreateColorContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, char16* filename, out ID2D1ColorContext* colorContext) CreateColorContextFromFilename;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, ref IWICColorContext wicColorContext, out ID2D1ColorContext* colorContext) CreateColorContextFromWicColorContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext self, Feature feature, void* featureSupportData, uint32 featureSupportDataSize) CheckFeatureSupport;
				public new function [CallingConvention(.Stdcall)] IntBool(ref ID2D1EffectContext self, BufferPrecision bufferPrecision) IsBufferPrecisionSupported;
			}
		}
		[CRepr]
		public struct ID2D1GeometryRealization : ID2D1Resource
		{
			public const new Guid IID = .(0xa16907d7, 0xbc02, 0x4801, 0x99, 0xe8, 0x8c, 0xf7, 0xf4, 0x85, 0xf7, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ID2D1Resource.VTable {}
		}
		[CRepr]
		public struct ID2D1DeviceContext1 : ID2D1DeviceContext
		{
			public const new Guid IID = .(0xd37f57e4, 0x6908, 0x459f, 0xa1, 0x99, 0xe7, 0x2f, 0x24, 0xf7, 0x99, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateFilledGeometryRealization(ref ID2D1Geometry geometry, float flatteningTolerance, out ID2D1GeometryRealization* geometryRealization) mut => VT.CreateFilledGeometryRealization(ref this, ref geometry, flatteningTolerance, out geometryRealization);
			public HResult CreateStrokedGeometryRealization(ref ID2D1Geometry geometry, float flatteningTolerance, float strokeWidth, ID2D1StrokeStyle* strokeStyle, out ID2D1GeometryRealization* geometryRealization) mut => VT.CreateStrokedGeometryRealization(ref this, ref geometry, flatteningTolerance, strokeWidth, strokeStyle, out geometryRealization);
			public void DrawGeometryRealization(ref ID2D1GeometryRealization geometryRealization, ref ID2D1Brush brush) mut => VT.DrawGeometryRealization(ref this, ref geometryRealization, ref brush);

			[CRepr]
			public struct VTable : ID2D1DeviceContext.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext1 self, ref ID2D1Geometry geometry, float flatteningTolerance, out ID2D1GeometryRealization* geometryRealization) CreateFilledGeometryRealization;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext1 self, ref ID2D1Geometry geometry, float flatteningTolerance, float strokeWidth, ID2D1StrokeStyle* strokeStyle, out ID2D1GeometryRealization* geometryRealization) CreateStrokedGeometryRealization;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext1 self, ref ID2D1GeometryRealization geometryRealization, ref ID2D1Brush brush) DrawGeometryRealization;
			}
		}
		[CRepr]
		public struct ID2D1Device1 : ID2D1Device
		{
			public const new Guid IID = .(0xd21768e1, 0x23a4, 0x4823, 0xa1, 0x4b, 0x7c, 0x3e, 0xba, 0x85, 0xd6, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D1_RENDERING_PRIORITY GetRenderingPriority() mut => VT.GetRenderingPriority(ref this);
			public void SetRenderingPriority(D2D1_RENDERING_PRIORITY renderingPriority) mut => VT.SetRenderingPriority(ref this, renderingPriority);
			public HResult CreateDeviceContext(DeviceContextOptions options, out ID2D1DeviceContext1* deviceContext1) mut => VT.CreateDeviceContext(ref this, options, out deviceContext1);

			[CRepr]
			public struct VTable : ID2D1Device.VTable
			{
				public new function [CallingConvention(.Stdcall)] D2D1_RENDERING_PRIORITY(ref ID2D1Device1 self) GetRenderingPriority;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Device1 self, D2D1_RENDERING_PRIORITY renderingPriority) SetRenderingPriority;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Device1 self, DeviceContextOptions options, out ID2D1DeviceContext1* deviceContext1) CreateDeviceContext;
			}
		}
		[CRepr]
		public struct ID2D1Factory2 : ID2D1Factory1
		{
			public const new Guid IID = .(0x94f81a73, 0x9212, 0x4376, 0x9c, 0x58, 0xb1, 0x6a, 0x3a, 0x0d, 0x39, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDevice(ref IDXGIDevice dxgiDevice, out ID2D1Device1* d2dDevice1) mut => VT.CreateDevice(ref this, ref dxgiDevice, out d2dDevice1);

			[CRepr]
			public struct VTable : ID2D1Factory1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory2 self, ref IDXGIDevice dxgiDevice, out ID2D1Device1* d2dDevice1) CreateDevice;
			}
		}
		[CRepr]
		public struct ID2D1CommandSink1 : ID2D1CommandSink
		{
			public const new Guid IID = .(0x9eb767fd, 0x4269, 0x4467, 0xb8, 0xc2, 0xeb, 0x30, 0xcb, 0x30, 0x57, 0x43);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetPrimitiveBlend1(D2D1_PRIMITIVE_BLEND primitiveBlend) mut => VT.SetPrimitiveBlend1(ref this, primitiveBlend);

			[CRepr]
			public struct VTable : ID2D1CommandSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink1 self, D2D1_PRIMITIVE_BLEND primitiveBlend) SetPrimitiveBlend1;
			}
		}
		[CRepr]
		public struct ID2D1SvgAttribute : ID2D1Resource
		{
			public const new Guid IID = .(0xc9cdb0dd, 0xf8c9, 0x4e70, 0xb7, 0xc2, 0x30, 0x1c, 0x80, 0x29, 0x2c, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetElement(ID2D1SvgElement** element) mut => VT.GetElement(ref this, element);
			public HResult Clone(out ID2D1SvgAttribute* attribute) mut => VT.Clone(ref this, out attribute);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SvgAttribute self, ID2D1SvgElement** element) GetElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgAttribute self, out ID2D1SvgAttribute* attribute) Clone;
			}
		}
		[CRepr]
		public struct ID2D1SvgPaint : ID2D1SvgAttribute
		{
			public const new Guid IID = .(0xd59bab0a, 0x68a2, 0x455b, 0xa5, 0xdc, 0x9e, 0xb2, 0x85, 0x4e, 0x24, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetPaintType(D2D1_SVG_PAINT_TYPE paintType) mut => VT.SetPaintType(ref this, paintType);
			public D2D1_SVG_PAINT_TYPE GetPaintType() mut => VT.GetPaintType(ref this);
			public HResult SetColor(in ColorF color) mut => VT.SetColor(ref this, color);
			public void GetColor(out ColorF color) mut => VT.GetColor(ref this, out color);
			public HResult SetId(char16* id) mut => VT.SetId(ref this, id);
			public HResult GetId(char16* id, uint32 idCount) mut => VT.GetId(ref this, id, idCount);
			public uint32 GetIdLength() mut => VT.GetIdLength(ref this);

			[CRepr]
			public struct VTable : ID2D1SvgAttribute.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPaint self, D2D1_SVG_PAINT_TYPE paintType) SetPaintType;
				public new function [CallingConvention(.Stdcall)] D2D1_SVG_PAINT_TYPE(ref ID2D1SvgPaint self) GetPaintType;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPaint self, in ColorF color) SetColor;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SvgPaint self, out ColorF color) GetColor;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPaint self, char16* id) SetId;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPaint self, char16* id, uint32 idCount) GetId;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1SvgPaint self) GetIdLength;
			}
		}
		[CRepr]
		public struct ID2D1SvgStrokeDashArray : ID2D1SvgAttribute
		{
			public const new Guid IID = .(0xf1c0ca52, 0x92a3, 0x4f00, 0xb4, 0xce, 0xf3, 0x56, 0x91, 0xef, 0xd9, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RemoveDashesAtEnd(uint32 dashesCount) mut => VT.RemoveDashesAtEnd(ref this, dashesCount);
			public HResult UpdateDashes(D2D1_SVG_LENGTH* dashes, uint32 dashesCount, uint32 startIndex) mut => VT.UpdateDashes(ref this, dashes, dashesCount, startIndex);
			public HResult UpdateDashes(float* dashes, uint32 dashesCount, uint32 startIndex) mut => VT.UpdateDashes2(ref this, dashes, dashesCount, startIndex);
			public HResult GetDashes(D2D1_SVG_LENGTH* dashes, uint32 dashesCount, uint32 startIndex) mut => VT.GetDashes(ref this, dashes, dashesCount, startIndex);
			public HResult GetDashes(float* dashes, uint32 dashesCount, uint32 startIndex) mut => VT.GetDashes2(ref this, dashes, dashesCount, startIndex);
			public uint32 GetDashesCount() mut => VT.GetDashesCount(ref this);

			[CRepr]
			public struct VTable : ID2D1SvgAttribute.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgStrokeDashArray self, uint32 dashesCount) RemoveDashesAtEnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgStrokeDashArray self, D2D1_SVG_LENGTH* dashes, uint32 dashesCount, uint32 startIndex) UpdateDashes;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgStrokeDashArray self, float* dashes, uint32 dashesCount, uint32 startIndex) UpdateDashes2;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgStrokeDashArray self, D2D1_SVG_LENGTH* dashes, uint32 dashesCount, uint32 startIndex) GetDashes;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgStrokeDashArray self, float* dashes, uint32 dashesCount, uint32 startIndex) GetDashes2;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1SvgStrokeDashArray self) GetDashesCount;
			}
		}
		[CRepr]
		public struct ID2D1SvgPointCollection : ID2D1SvgAttribute
		{
			public const new Guid IID = .(0x9dbe4c0d, 0x3572, 0x4dd9, 0x98, 0x25, 0x55, 0x30, 0x81, 0x3b, 0xb7, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RemovePointsAtEnd(uint32 pointsCount) mut => VT.RemovePointsAtEnd(ref this, pointsCount);
			public HResult UpdatePoints(Vector2* points, uint32 pointsCount, uint32 startIndex) mut => VT.UpdatePoints(ref this, points, pointsCount, startIndex);
			public HResult GetPoints(Vector2* points, uint32 pointsCount, uint32 startIndex) mut => VT.GetPoints(ref this, points, pointsCount, startIndex);
			public uint32 GetPointsCount() mut => VT.GetPointsCount(ref this);

			[CRepr]
			public struct VTable : ID2D1SvgAttribute.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPointCollection self, uint32 pointsCount) RemovePointsAtEnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPointCollection self, Vector2* points, uint32 pointsCount, uint32 startIndex) UpdatePoints;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPointCollection self, Vector2* points, uint32 pointsCount, uint32 startIndex) GetPoints;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1SvgPointCollection self) GetPointsCount;
			}
		}
		[CRepr]
		public struct ID2D1SvgPathData : ID2D1SvgAttribute
		{
			public const new Guid IID = .(0xc095e4f4, 0xbb98, 0x43d6, 0x97, 0x45, 0x4d, 0x1b, 0x84, 0xec, 0x98, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RemoveSegmentDataAtEnd(uint32 dataCount) mut => VT.RemoveSegmentDataAtEnd(ref this, dataCount);
			public HResult UpdateSegmentData(float* data, uint32 dataCount, uint32 startIndex) mut => VT.UpdateSegmentData(ref this, data, dataCount, startIndex);
			public HResult GetSegmentData(float* data, uint32 dataCount, uint32 startIndex) mut => VT.GetSegmentData(ref this, data, dataCount, startIndex);
			public uint32 GetSegmentDataCount() mut => VT.GetSegmentDataCount(ref this);
			public HResult RemoveCommandsAtEnd(uint32 commandsCount) mut => VT.RemoveCommandsAtEnd(ref this, commandsCount);
			public HResult UpdateCommands(D2D1_SVG_PATH_COMMAND* commands, uint32 commandsCount, uint32 startIndex) mut => VT.UpdateCommands(ref this, commands, commandsCount, startIndex);
			public HResult GetCommands(D2D1_SVG_PATH_COMMAND* commands, uint32 commandsCount, uint32 startIndex) mut => VT.GetCommands(ref this, commands, commandsCount, startIndex);
			public uint32 GetCommandsCount() mut => VT.GetCommandsCount(ref this);
			public HResult CreatePathGeometry(FillMode fillMode, out ID2D1PathGeometry1* pathGeometry) mut => VT.CreatePathGeometry(ref this, fillMode, out pathGeometry);

			[CRepr]
			public struct VTable : ID2D1SvgAttribute.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPathData self, uint32 dataCount) RemoveSegmentDataAtEnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPathData self, float* data, uint32 dataCount, uint32 startIndex) UpdateSegmentData;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPathData self, float* data, uint32 dataCount, uint32 startIndex) GetSegmentData;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1SvgPathData self) GetSegmentDataCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPathData self, uint32 commandsCount) RemoveCommandsAtEnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPathData self, D2D1_SVG_PATH_COMMAND* commands, uint32 commandsCount, uint32 startIndex) UpdateCommands;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPathData self, D2D1_SVG_PATH_COMMAND* commands, uint32 commandsCount, uint32 startIndex) GetCommands;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1SvgPathData self) GetCommandsCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgPathData self, FillMode fillMode, out ID2D1PathGeometry1* pathGeometry) CreatePathGeometry;
			}
		}
		[CRepr]
		public struct ID2D1SvgElement : ID2D1Resource
		{
			public const new Guid IID = .(0xac7b67a6, 0x183e, 0x49c1, 0xa8, 0x23, 0x0e, 0xbe, 0x40, 0xb0, 0xdb, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetDocument(ID2D1SvgDocument** document) mut => VT.GetDocument(ref this, document);
			public HResult GetTagName(char16* name, uint32 nameCount) mut => VT.GetTagName(ref this, name, nameCount);
			public uint32 GetTagNameLength() mut => VT.GetTagNameLength(ref this);
			public IntBool IsTextContent() mut => VT.IsTextContent(ref this);
			public void GetParent(ID2D1SvgElement** parent) mut => VT._GetParent(ref this, parent);
			public IntBool HasChildren() mut => VT.HasChildren(ref this);
			public void GetFirstChild(ID2D1SvgElement** child) mut => VT.GetFirstChild(ref this, child);
			public void GetLastChild(ID2D1SvgElement** child) mut => VT.GetLastChild(ref this, child);
			public HResult GetPreviousChild(ref ID2D1SvgElement referenceChild, ID2D1SvgElement** previousChild) mut => VT.GetPreviousChild(ref this, ref referenceChild, previousChild);
			public HResult GetNextChild(ref ID2D1SvgElement referenceChild, ID2D1SvgElement** nextChild) mut => VT.GetNextChild(ref this, ref referenceChild, nextChild);
			public HResult InsertChildBefore(ref ID2D1SvgElement newChild, ID2D1SvgElement* referenceChild) mut => VT.InsertChildBefore(ref this, ref newChild, referenceChild);
			public HResult AppendChild(ref ID2D1SvgElement newChild) mut => VT.AppendChild(ref this, ref newChild);
			public HResult ReplaceChild(ref ID2D1SvgElement newChild, ref ID2D1SvgElement oldChild) mut => VT.ReplaceChild(ref this, ref newChild, ref oldChild);
			public HResult RemoveChild(ref ID2D1SvgElement oldChild) mut => VT.RemoveChild(ref this, ref oldChild);
			public HResult CreateChild(char16* tagName, out ID2D1SvgElement* newChild) mut => VT.CreateChild(ref this, tagName, out newChild);
			public IntBool IsAttributeSpecified(char16* name, IntBool* inherited) mut => VT.IsAttributeSpecified(ref this, name, inherited);
			public uint32 GetSpecifiedAttributeCount() mut => VT.GetSpecifiedAttributeCount(ref this);
			public HResult GetSpecifiedAttributeName(uint32 index, char16* name, uint32 nameCount, IntBool* inherited) mut => VT.GetSpecifiedAttributeName(ref this, index, name, nameCount, inherited);
			public HResult GetSpecifiedAttributeNameLength(uint32 index, out uint32 nameLength, IntBool* inherited) mut => VT.GetSpecifiedAttributeNameLength(ref this, index, out nameLength, inherited);
			public HResult RemoveAttribute(char16* name) mut => VT.RemoveAttribute(ref this, name);
			public HResult SetTextValue(char16* name, uint32 nameCount) mut => VT.SetTextValue(ref this, name, nameCount);
			public HResult GetTextValue(char16* name, uint32 nameCount) mut => VT.GetTextValue(ref this, name, nameCount);
			public uint32 GetTextValueLength() mut => VT.GetTextValueLength(ref this);
			public HResult SetAttributeValue(char16* name, ref ID2D1SvgAttribute value) mut => VT.SetAttributeValue(ref this, name, ref value);
			public HResult SetAttributeValue(char16* name, D2D1_SVG_ATTRIBUTE_POD_TYPE type, void* value, uint32 valueSizeInBytes) mut => VT.SetAttributeValue2(ref this, name, type, value, valueSizeInBytes);
			public HResult SetAttributeValue(char16* name, D2D1_SVG_ATTRIBUTE_STRING_TYPE type, char16* value) mut => VT.SetAttributeValue3(ref this, name, type, value);
			public HResult GetAttributeValue(char16* name, in Guid riid, void** value) mut => VT.GetAttributeValue(ref this, name, riid, value);
			public HResult GetAttributeValue(char16* name, D2D1_SVG_ATTRIBUTE_POD_TYPE type, void* value, uint32 valueSizeInBytes) mut => VT.GetAttributeValue2(ref this, name, type, value, valueSizeInBytes);
			public HResult GetAttributeValue(char16* name, D2D1_SVG_ATTRIBUTE_STRING_TYPE type, char16* value, uint32 valueCount) mut => VT.GetAttributeValue3(ref this, name, type, value, valueCount);
			public HResult GetAttributeValueLength(char16* name, D2D1_SVG_ATTRIBUTE_STRING_TYPE type, out uint32 valueLength) mut => VT.GetAttributeValueLength(ref this, name, type, out valueLength);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SvgElement self, ID2D1SvgDocument** document) GetDocument;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, char16* name, uint32 nameCount) GetTagName;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1SvgElement self) GetTagNameLength;
				public new function [CallingConvention(.Stdcall)] IntBool(ref ID2D1SvgElement self) IsTextContent;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SvgElement self, ID2D1SvgElement** parent) _GetParent;
				public new function [CallingConvention(.Stdcall)] IntBool(ref ID2D1SvgElement self) HasChildren;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SvgElement self, ID2D1SvgElement** child) GetFirstChild;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SvgElement self, ID2D1SvgElement** child) GetLastChild;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, ref ID2D1SvgElement referenceChild, ID2D1SvgElement** previousChild) GetPreviousChild;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, ref ID2D1SvgElement referenceChild, ID2D1SvgElement** nextChild) GetNextChild;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, ref ID2D1SvgElement newChild, ID2D1SvgElement* referenceChild) InsertChildBefore;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, ref ID2D1SvgElement newChild) AppendChild;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, ref ID2D1SvgElement newChild, ref ID2D1SvgElement oldChild) ReplaceChild;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, ref ID2D1SvgElement oldChild) RemoveChild;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, char16* tagName, out ID2D1SvgElement* newChild) CreateChild;
				public new function [CallingConvention(.Stdcall)] IntBool(ref ID2D1SvgElement self, char16* name, IntBool* inherited) IsAttributeSpecified;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1SvgElement self) GetSpecifiedAttributeCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, uint32 index, char16* name, uint32 nameCount, IntBool* inherited) GetSpecifiedAttributeName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, uint32 index, out uint32 nameLength, IntBool* inherited) GetSpecifiedAttributeNameLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, char16* name) RemoveAttribute;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, char16* name, uint32 nameCount) SetTextValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, char16* name, uint32 nameCount) GetTextValue;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1SvgElement self) GetTextValueLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, char16* name, ref ID2D1SvgAttribute value) SetAttributeValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, char16* name, D2D1_SVG_ATTRIBUTE_POD_TYPE type, void* value, uint32 valueSizeInBytes) SetAttributeValue2;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, char16* name, D2D1_SVG_ATTRIBUTE_STRING_TYPE type, char16* value) SetAttributeValue3;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, char16* name, in Guid riid, void** value) GetAttributeValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, char16* name, D2D1_SVG_ATTRIBUTE_POD_TYPE type, void* value, uint32 valueSizeInBytes) GetAttributeValue2;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, char16* name, D2D1_SVG_ATTRIBUTE_STRING_TYPE type, char16* value, uint32 valueCount) GetAttributeValue3;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgElement self, char16* name, D2D1_SVG_ATTRIBUTE_STRING_TYPE type, out uint32 valueLength) GetAttributeValueLength;
			}
		}
		[CRepr]
		public struct ID2D1SvgDocument : ID2D1Resource
		{
			public const new Guid IID = .(0x86b88e4d, 0xafa4, 0x4d7b, 0x88, 0xe4, 0x68, 0xa5, 0x1c, 0x4a, 0x0a, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetViewportSize(D2D_SIZE_F viewportSize) mut => VT.SetViewportSize(ref this, viewportSize);
			public D2D_SIZE_F GetViewportSize() mut => VT.GetViewportSize(ref this);
			public HResult SetRoot(ID2D1SvgElement* root) mut => VT.SetRoot(ref this, root);
			public void GetRoot(ID2D1SvgElement** root) mut => VT.GetRoot(ref this, root);
			public HResult FindElementById(char16* id, ID2D1SvgElement** svgElement) mut => VT.FindElementById(ref this, id, svgElement);
			public HResult Serialize(ref IStream outputXmlStream, ID2D1SvgElement* subtree) mut => VT.Serialize(ref this, ref outputXmlStream, subtree);
			public HResult Deserialize(ref IStream inputXmlStream, out ID2D1SvgElement* subtree) mut => VT.Deserialize(ref this, ref inputXmlStream, out subtree);
			public HResult CreatePaint(D2D1_SVG_PAINT_TYPE paintType, ColorF* color, char16* id, out ID2D1SvgPaint* paint) mut => VT.CreatePaint(ref this, paintType, color, id, out paint);
			public HResult CreateStrokeDashArray(D2D1_SVG_LENGTH* dashes, uint32 dashesCount, out ID2D1SvgStrokeDashArray* strokeDashArray) mut => VT.CreateStrokeDashArray(ref this, dashes, dashesCount, out strokeDashArray);
			public HResult CreatePointCollection(Vector2* points, uint32 pointsCount, out ID2D1SvgPointCollection* pointCollection) mut => VT.CreatePointCollection(ref this, points, pointsCount, out pointCollection);
			public HResult CreatePathData(float* segmentData, uint32 segmentDataCount, D2D1_SVG_PATH_COMMAND* commands, uint32 commandsCount, out ID2D1SvgPathData* pathData) mut => VT.CreatePathData(ref this, segmentData, segmentDataCount, commands, commandsCount, out pathData);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgDocument self, D2D_SIZE_F viewportSize) SetViewportSize;
				public new function [CallingConvention(.Stdcall)] D2D_SIZE_F(ref ID2D1SvgDocument self) GetViewportSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgDocument self, ID2D1SvgElement* root) SetRoot;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SvgDocument self, ID2D1SvgElement** root) GetRoot;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgDocument self, char16* id, ID2D1SvgElement** svgElement) FindElementById;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgDocument self, ref IStream outputXmlStream, ID2D1SvgElement* subtree) Serialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgDocument self, ref IStream inputXmlStream, out ID2D1SvgElement* subtree) Deserialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgDocument self, D2D1_SVG_PAINT_TYPE paintType, ColorF* color, char16* id, out ID2D1SvgPaint* paint) CreatePaint;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgDocument self, D2D1_SVG_LENGTH* dashes, uint32 dashesCount, out ID2D1SvgStrokeDashArray* strokeDashArray) CreateStrokeDashArray;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgDocument self, Vector2* points, uint32 pointsCount, out ID2D1SvgPointCollection* pointCollection) CreatePointCollection;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgDocument self, float* segmentData, uint32 segmentDataCount, D2D1_SVG_PATH_COMMAND* commands, uint32 commandsCount, out ID2D1SvgPathData* pathData) CreatePathData;
			}
		}
		[CRepr]
		public struct ID2D1InkStyle : ID2D1Resource
		{
			public const new Guid IID = .(0xbae8b344, 0x23fc, 0x4071, 0x8c, 0xb5, 0xd0, 0x5d, 0x6f, 0x07, 0x38, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetNibTransform(in D2D_MATRIX_3X2_F transform) mut => VT.SetNibTransform(ref this, transform);
			public void GetNibTransform(out D2D_MATRIX_3X2_F transform) mut => VT.GetNibTransform(ref this, out transform);
			public void SetNibShape(D2D1_INK_NIB_SHAPE nibShape) mut => VT.SetNibShape(ref this, nibShape);
			public D2D1_INK_NIB_SHAPE GetNibShape() mut => VT.GetNibShape(ref this);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1InkStyle self, in D2D_MATRIX_3X2_F transform) SetNibTransform;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1InkStyle self, out D2D_MATRIX_3X2_F transform) GetNibTransform;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1InkStyle self, D2D1_INK_NIB_SHAPE nibShape) SetNibShape;
				public new function [CallingConvention(.Stdcall)] D2D1_INK_NIB_SHAPE(ref ID2D1InkStyle self) GetNibShape;
			}
		}
		[CRepr]
		public struct ID2D1Ink : ID2D1Resource
		{
			public const new Guid IID = .(0xb499923b, 0x7029, 0x478f, 0xa8, 0xb3, 0x43, 0x2c, 0x7c, 0x5f, 0x53, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetStartPoint(in D2D1_INK_POINT startPoint) mut => VT.SetStartPoint(ref this, startPoint);
			public D2D1_INK_POINT GetStartPoint() mut => VT.GetStartPoint(ref this);
			public HResult AddSegments(D2D1_INK_BEZIER_SEGMENT* segments, uint32 segmentsCount) mut => VT.AddSegments(ref this, segments, segmentsCount);
			public HResult RemoveSegmentsAtEnd(uint32 segmentsCount) mut => VT.RemoveSegmentsAtEnd(ref this, segmentsCount);
			public HResult SetSegments(uint32 startSegment, D2D1_INK_BEZIER_SEGMENT* segments, uint32 segmentsCount) mut => VT.SetSegments(ref this, startSegment, segments, segmentsCount);
			public HResult SetSegmentAtEnd(in D2D1_INK_BEZIER_SEGMENT segment) mut => VT.SetSegmentAtEnd(ref this, segment);
			public uint32 GetSegmentCount() mut => VT.GetSegmentCount(ref this);
			public HResult GetSegments(uint32 startSegment, D2D1_INK_BEZIER_SEGMENT* segments, uint32 segmentsCount) mut => VT.GetSegments(ref this, startSegment, segments, segmentsCount);
			public HResult StreamAsGeometry(ID2D1InkStyle* inkStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ref ID2D1SimplifiedGeometrySink geometrySink) mut => VT.StreamAsGeometry(ref this, inkStyle, worldTransform, flatteningTolerance, ref geometrySink);
			public HResult GetBounds(ID2D1InkStyle* inkStyle, D2D_MATRIX_3X2_F* worldTransform, out RectF bounds) mut => VT.GetBounds(ref this, inkStyle, worldTransform, out bounds);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Ink self, in D2D1_INK_POINT startPoint) SetStartPoint;
				public new function [CallingConvention(.Stdcall)] D2D1_INK_POINT(ref ID2D1Ink self) GetStartPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Ink self, D2D1_INK_BEZIER_SEGMENT* segments, uint32 segmentsCount) AddSegments;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Ink self, uint32 segmentsCount) RemoveSegmentsAtEnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Ink self, uint32 startSegment, D2D1_INK_BEZIER_SEGMENT* segments, uint32 segmentsCount) SetSegments;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Ink self, in D2D1_INK_BEZIER_SEGMENT segment) SetSegmentAtEnd;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1Ink self) GetSegmentCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Ink self, uint32 startSegment, D2D1_INK_BEZIER_SEGMENT* segments, uint32 segmentsCount) GetSegments;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Ink self, ID2D1InkStyle* inkStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ref ID2D1SimplifiedGeometrySink geometrySink) StreamAsGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Ink self, ID2D1InkStyle* inkStyle, D2D_MATRIX_3X2_F* worldTransform, out RectF bounds) GetBounds;
			}
		}
		[CRepr]
		public struct ID2D1GradientMesh : ID2D1Resource
		{
			public const new Guid IID = .(0xf292e401, 0xc050, 0x4cde, 0x83, 0xd7, 0x04, 0x96, 0x2d, 0x3b, 0x23, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetPatchCount() mut => VT.GetPatchCount(ref this);
			public HResult GetPatches(uint32 startIndex, D2D1_GRADIENT_MESH_PATCH* patches, uint32 patchesCount) mut => VT.GetPatches(ref this, startIndex, patches, patchesCount);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1GradientMesh self) GetPatchCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1GradientMesh self, uint32 startIndex, D2D1_GRADIENT_MESH_PATCH* patches, uint32 patchesCount) GetPatches;
			}
		}
		[CRepr]
		public struct ID2D1ImageSource : ID2D1Image
		{
			public const new Guid IID = .(0xc9b664e5, 0x74a1, 0x4378, 0x9a, 0xc2, 0xee, 0xfc, 0x37, 0xa3, 0xf4, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OfferResources() mut => VT.OfferResources(ref this);
			public HResult TryReclaimResources(out IntBool resourcesDiscarded) mut => VT.TryReclaimResources(ref this, out resourcesDiscarded);

			[CRepr]
			public struct VTable : ID2D1Image.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1ImageSource self) OfferResources;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1ImageSource self, out IntBool resourcesDiscarded) TryReclaimResources;
			}
		}
		[CRepr]
		public struct ID2D1ImageSourceFromWic : ID2D1ImageSource
		{
			public const new Guid IID = .(0x77395441, 0x1c8f, 0x4555, 0x86, 0x83, 0xf5, 0x0d, 0xab, 0x0f, 0xe7, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult EnsureCached(D2D_RECT_U* rectangleToFill) mut => VT.EnsureCached(ref this, rectangleToFill);
			public HResult TrimCache(D2D_RECT_U* rectangleToPreserve) mut => VT.TrimCache(ref this, rectangleToPreserve);
			public void GetSource(IWICBitmapSource** wicBitmapSource) mut => VT.GetSource(ref this, wicBitmapSource);

			[CRepr]
			public struct VTable : ID2D1ImageSource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1ImageSourceFromWic self, D2D_RECT_U* rectangleToFill) EnsureCached;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1ImageSourceFromWic self, D2D_RECT_U* rectangleToPreserve) TrimCache;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1ImageSourceFromWic self, IWICBitmapSource** wicBitmapSource) GetSource;
			}
		}
		[CRepr]
		public struct ID2D1TransformedImageSource : ID2D1Image
		{
			public const new Guid IID = .(0x7f1f79e5, 0x2796, 0x416c, 0x8f, 0x55, 0x70, 0x0f, 0x91, 0x14, 0x45, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetSource(ID2D1ImageSource** imageSource) mut => VT.GetSource(ref this, imageSource);
			public void GetProperties(out D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES properties) mut => VT.GetProperties(ref this, out properties);

			[CRepr]
			public struct VTable : ID2D1Image.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1TransformedImageSource self, ID2D1ImageSource** imageSource) GetSource;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1TransformedImageSource self, out D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES properties) GetProperties;
			}
		}
		[CRepr]
		public struct ID2D1LookupTable3D : ID2D1Resource
		{
			public const new Guid IID = .(0x53dd9855, 0xa3b0, 0x4d5b, 0x82, 0xe1, 0x26, 0xe2, 0x5c, 0x5e, 0x57, 0x97);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ID2D1Resource.VTable {}
		}
		[CRepr]
		public struct ID2D1DeviceContext2 : ID2D1DeviceContext1
		{
			public const new Guid IID = .(0x394ea6a3, 0x0c34, 0x4321, 0x95, 0x0b, 0x6c, 0xa2, 0x0f, 0x0b, 0xe6, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateInk(in D2D1_INK_POINT startPoint, out ID2D1Ink* ink) mut => VT.CreateInk(ref this, startPoint, out ink);
			public HResult CreateInkStyle(D2D1_INK_STYLE_PROPERTIES* inkStyleProperties, out ID2D1InkStyle* inkStyle) mut => VT.CreateInkStyle(ref this, inkStyleProperties, out inkStyle);
			public HResult CreateGradientMesh(D2D1_GRADIENT_MESH_PATCH* patches, uint32 patchesCount, out ID2D1GradientMesh* gradientMesh) mut => VT.CreateGradientMesh(ref this, patches, patchesCount, out gradientMesh);
			public HResult CreateImageSourceFromWic(ref IWICBitmapSource wicBitmapSource, D2D1_IMAGE_SOURCE_LOADING_OPTIONS loadingOptions, AlphaMode alphaMode, out ID2D1ImageSourceFromWic* imageSource) mut => VT.CreateImageSourceFromWic(ref this, ref wicBitmapSource, loadingOptions, alphaMode, out imageSource);
			public HResult CreateLookupTable3D(BufferPrecision precision, uint32* extents, uint8* data, uint32 dataCount, uint32* strides, out ID2D1LookupTable3D* lookupTable) mut => VT.CreateLookupTable3D(ref this, precision, extents, data, dataCount, strides, out lookupTable);
			public HResult CreateImageSourceFromDxgi(IDXGISurface** surfaces, uint32 surfaceCount, DXGI_COLOR_SPACE_TYPE colorSpace, D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS options, out ID2D1ImageSource* imageSource) mut => VT.CreateImageSourceFromDxgi(ref this, surfaces, surfaceCount, colorSpace, options, out imageSource);
			public HResult GetGradientMeshWorldBounds(ref ID2D1GradientMesh gradientMesh, out RectF pBounds) mut => VT.GetGradientMeshWorldBounds(ref this, ref gradientMesh, out pBounds);
			public void DrawInk(ref ID2D1Ink ink, ref ID2D1Brush brush, ID2D1InkStyle* inkStyle) mut => VT.DrawInk(ref this, ref ink, ref brush, inkStyle);
			public void DrawGradientMesh(ref ID2D1GradientMesh gradientMesh) mut => VT.DrawGradientMesh(ref this, ref gradientMesh);
			public void DrawGdiMetafile(ref ID2D1GdiMetafile gdiMetafile, RectF* destinationRectangle, RectF* sourceRectangle) mut => VT.DrawGdiMetafile(ref this, ref gdiMetafile, destinationRectangle, sourceRectangle);
			public HResult CreateTransformedImageSource(ref ID2D1ImageSource imageSource, in D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES properties, out ID2D1TransformedImageSource* transformedImageSource) mut => VT.CreateTransformedImageSource(ref this, ref imageSource, properties, out transformedImageSource);

			[CRepr]
			public struct VTable : ID2D1DeviceContext1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext2 self, in D2D1_INK_POINT startPoint, out ID2D1Ink* ink) CreateInk;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext2 self, D2D1_INK_STYLE_PROPERTIES* inkStyleProperties, out ID2D1InkStyle* inkStyle) CreateInkStyle;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext2 self, D2D1_GRADIENT_MESH_PATCH* patches, uint32 patchesCount, out ID2D1GradientMesh* gradientMesh) CreateGradientMesh;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext2 self, ref IWICBitmapSource wicBitmapSource, D2D1_IMAGE_SOURCE_LOADING_OPTIONS loadingOptions, AlphaMode alphaMode, out ID2D1ImageSourceFromWic* imageSource) CreateImageSourceFromWic;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext2 self, BufferPrecision precision, uint32* extents, uint8* data, uint32 dataCount, uint32* strides, out ID2D1LookupTable3D* lookupTable) CreateLookupTable3D;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext2 self, IDXGISurface** surfaces, uint32 surfaceCount, DXGI_COLOR_SPACE_TYPE colorSpace, D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS options, out ID2D1ImageSource* imageSource) CreateImageSourceFromDxgi;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext2 self, ref ID2D1GradientMesh gradientMesh, out RectF pBounds) GetGradientMeshWorldBounds;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext2 self, ref ID2D1Ink ink, ref ID2D1Brush brush, ID2D1InkStyle* inkStyle) DrawInk;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext2 self, ref ID2D1GradientMesh gradientMesh) DrawGradientMesh;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext2 self, ref ID2D1GdiMetafile gdiMetafile, RectF* destinationRectangle, RectF* sourceRectangle) DrawGdiMetafile;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext2 self, ref ID2D1ImageSource imageSource, in D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES properties, out ID2D1TransformedImageSource* transformedImageSource) CreateTransformedImageSource;
			}
		}
		[CRepr]
		public struct ID2D1Device2 : ID2D1Device1
		{
			public const new Guid IID = .(0xa44472e1, 0x8dfb, 0x4e60, 0x84, 0x92, 0x6e, 0x28, 0x61, 0xc9, 0xca, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDeviceContext(DeviceContextOptions options, out ID2D1DeviceContext2* deviceContext2) mut => VT.CreateDeviceContext(ref this, options, out deviceContext2);
			public void FlushDeviceContexts(ref ID2D1Bitmap bitmap) mut => VT.FlushDeviceContexts(ref this, ref bitmap);
			public HResult GetDxgiDevice(out IDXGIDevice* dxgiDevice) mut => VT.GetDxgiDevice(ref this, out dxgiDevice);

			[CRepr]
			public struct VTable : ID2D1Device1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Device2 self, DeviceContextOptions options, out ID2D1DeviceContext2* deviceContext2) CreateDeviceContext;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Device2 self, ref ID2D1Bitmap bitmap) FlushDeviceContexts;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Device2 self, out IDXGIDevice* dxgiDevice) GetDxgiDevice;
			}
		}
		[CRepr]
		public struct ID2D1Factory3 : ID2D1Factory2
		{
			public const new Guid IID = .(0x0869759f, 0x4f00, 0x413f, 0xb0, 0x3e, 0x2b, 0xda, 0x45, 0x40, 0x4d, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDevice(ref IDXGIDevice dxgiDevice, out ID2D1Device2* d2dDevice2) mut => VT.CreateDevice(ref this, ref dxgiDevice, out d2dDevice2);

			[CRepr]
			public struct VTable : ID2D1Factory2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory3 self, ref IDXGIDevice dxgiDevice, out ID2D1Device2* d2dDevice2) CreateDevice;
			}
		}
		[CRepr]
		public struct ID2D1CommandSink2 : ID2D1CommandSink1
		{
			public const new Guid IID = .(0x3bab440e, 0x417e, 0x47df, 0xa2, 0xe2, 0xbc, 0x0b, 0xe6, 0xa0, 0x09, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult DrawInk(ref ID2D1Ink ink, ref ID2D1Brush brush, ID2D1InkStyle* inkStyle) mut => VT.DrawInk(ref this, ref ink, ref brush, inkStyle);
			public HResult DrawGradientMesh(ref ID2D1GradientMesh gradientMesh) mut => VT.DrawGradientMesh(ref this, ref gradientMesh);
			public HResult DrawGdiMetafile(ref ID2D1GdiMetafile gdiMetafile, RectF* destinationRectangle, RectF* sourceRectangle) mut => VT.DrawGdiMetafile(ref this, ref gdiMetafile, destinationRectangle, sourceRectangle);

			[CRepr]
			public struct VTable : ID2D1CommandSink1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink2 self, ref ID2D1Ink ink, ref ID2D1Brush brush, ID2D1InkStyle* inkStyle) DrawInk;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink2 self, ref ID2D1GradientMesh gradientMesh) DrawGradientMesh;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink2 self, ref ID2D1GdiMetafile gdiMetafile, RectF* destinationRectangle, RectF* sourceRectangle) DrawGdiMetafile;
			}
		}
		[CRepr]
		public struct ID2D1GdiMetafile1 : ID2D1GdiMetafile
		{
			public const new Guid IID = .(0x2e69f9e8, 0xdd3f, 0x4bf9, 0x95, 0xba, 0xc0, 0x4f, 0x49, 0xd7, 0x88, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetDpi(out float dpiX, out float dpiY) mut => VT.GetDpi(ref this, out dpiX, out dpiY);
			public HResult GetSourceBounds(out RectF bounds) mut => VT.GetSourceBounds(ref this, out bounds);

			[CRepr]
			public struct VTable : ID2D1GdiMetafile.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1GdiMetafile1 self, out float dpiX, out float dpiY) GetDpi;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1GdiMetafile1 self, out RectF bounds) GetSourceBounds;
			}
		}
		[CRepr]
		public struct ID2D1GdiMetafileSink1 : ID2D1GdiMetafileSink
		{
			public const new Guid IID = .(0xfd0ecb6b, 0x91e6, 0x411e, 0x86, 0x55, 0x39, 0x5e, 0x76, 0x0f, 0x91, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ProcessRecord(uint32 recordType, void* recordData, uint32 recordDataSize, uint32 flags) mut => VT.ProcessRecord(ref this, recordType, recordData, recordDataSize, flags);

			[CRepr]
			public struct VTable : ID2D1GdiMetafileSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1GdiMetafileSink1 self, uint32 recordType, void* recordData, uint32 recordDataSize, uint32 flags) ProcessRecord;
			}
		}
		[CRepr]
		public struct ID2D1SpriteBatch : ID2D1Resource
		{
			public const new Guid IID = .(0x4dc583bf, 0x3a10, 0x438a, 0x87, 0x22, 0xe9, 0x76, 0x52, 0x24, 0xf1, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddSprites(uint32 spriteCount, in RectF destinationRectangles, D2D_RECT_U* sourceRectangles, ColorF* colors, D2D_MATRIX_3X2_F* transforms, uint32 destinationRectanglesStride, uint32 sourceRectanglesStride, uint32 colorsStride, uint32 transformsStride) mut => VT.AddSprites(ref this, spriteCount, destinationRectangles, sourceRectangles, colors, transforms, destinationRectanglesStride, sourceRectanglesStride, colorsStride, transformsStride);
			public HResult SetSprites(uint32 startIndex, uint32 spriteCount, RectF* destinationRectangles, D2D_RECT_U* sourceRectangles, ColorF* colors, D2D_MATRIX_3X2_F* transforms, uint32 destinationRectanglesStride, uint32 sourceRectanglesStride, uint32 colorsStride, uint32 transformsStride) mut => VT.SetSprites(ref this, startIndex, spriteCount, destinationRectangles, sourceRectangles, colors, transforms, destinationRectanglesStride, sourceRectanglesStride, colorsStride, transformsStride);
			public HResult GetSprites(uint32 startIndex, uint32 spriteCount, RectF* destinationRectangles, D2D_RECT_U* sourceRectangles, ColorF* colors, D2D_MATRIX_3X2_F* transforms) mut => VT.GetSprites(ref this, startIndex, spriteCount, destinationRectangles, sourceRectangles, colors, transforms);
			public uint32 GetSpriteCount() mut => VT.GetSpriteCount(ref this);
			public void Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SpriteBatch self, uint32 spriteCount, in RectF destinationRectangles, D2D_RECT_U* sourceRectangles, ColorF* colors, D2D_MATRIX_3X2_F* transforms, uint32 destinationRectanglesStride, uint32 sourceRectanglesStride, uint32 colorsStride, uint32 transformsStride) AddSprites;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SpriteBatch self, uint32 startIndex, uint32 spriteCount, RectF* destinationRectangles, D2D_RECT_U* sourceRectangles, ColorF* colors, D2D_MATRIX_3X2_F* transforms, uint32 destinationRectanglesStride, uint32 sourceRectanglesStride, uint32 colorsStride, uint32 transformsStride) SetSprites;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SpriteBatch self, uint32 startIndex, uint32 spriteCount, RectF* destinationRectangles, D2D_RECT_U* sourceRectangles, ColorF* colors, D2D_MATRIX_3X2_F* transforms) GetSprites;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1SpriteBatch self) GetSpriteCount;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SpriteBatch self) Clear;
			}
		}
		[CRepr]
		public struct ID2D1DeviceContext3 : ID2D1DeviceContext2
		{
			public const new Guid IID = .(0x235a7496, 0x8351, 0x414c, 0xbc, 0xd4, 0x66, 0x72, 0xab, 0x2d, 0x8e, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateSpriteBatch(out ID2D1SpriteBatch* spriteBatch) mut => VT.CreateSpriteBatch(ref this, out spriteBatch);
			public void DrawSpriteBatch(ref ID2D1SpriteBatch spriteBatch, uint32 startIndex, uint32 spriteCount, ref ID2D1Bitmap bitmap, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode, D2D1_SPRITE_OPTIONS spriteOptions) mut => VT.DrawSpriteBatch(ref this, ref spriteBatch, startIndex, spriteCount, ref bitmap, interpolationMode, spriteOptions);

			[CRepr]
			public struct VTable : ID2D1DeviceContext2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext3 self, out ID2D1SpriteBatch* spriteBatch) CreateSpriteBatch;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext3 self, ref ID2D1SpriteBatch spriteBatch, uint32 startIndex, uint32 spriteCount, ref ID2D1Bitmap bitmap, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode, D2D1_SPRITE_OPTIONS spriteOptions) DrawSpriteBatch;
			}
		}
		[CRepr]
		public struct ID2D1Device3 : ID2D1Device2
		{
			public const new Guid IID = .(0x852f2087, 0x802c, 0x4037, 0xab, 0x60, 0xff, 0x2e, 0x7e, 0xe6, 0xfc, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDeviceContext(DeviceContextOptions options, out ID2D1DeviceContext3* deviceContext3) mut => VT.CreateDeviceContext(ref this, options, out deviceContext3);

			[CRepr]
			public struct VTable : ID2D1Device2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Device3 self, DeviceContextOptions options, out ID2D1DeviceContext3* deviceContext3) CreateDeviceContext;
			}
		}
		[CRepr]
		public struct ID2D1Factory4 : ID2D1Factory3
		{
			public const new Guid IID = .(0xbd4ec2d2, 0x0662, 0x4bee, 0xba, 0x8e, 0x6f, 0x29, 0xf0, 0x32, 0xe0, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDevice(ref IDXGIDevice dxgiDevice, out ID2D1Device3* d2dDevice3) mut => VT.CreateDevice(ref this, ref dxgiDevice, out d2dDevice3);

			[CRepr]
			public struct VTable : ID2D1Factory3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory4 self, ref IDXGIDevice dxgiDevice, out ID2D1Device3* d2dDevice3) CreateDevice;
			}
		}
		[CRepr]
		public struct ID2D1CommandSink3 : ID2D1CommandSink2
		{
			public const new Guid IID = .(0x18079135, 0x4cf3, 0x4868, 0xbc, 0x8e, 0x06, 0x06, 0x7e, 0x6d, 0x24, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult DrawSpriteBatch(ref ID2D1SpriteBatch spriteBatch, uint32 startIndex, uint32 spriteCount, ref ID2D1Bitmap bitmap, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode, D2D1_SPRITE_OPTIONS spriteOptions) mut => VT.DrawSpriteBatch(ref this, ref spriteBatch, startIndex, spriteCount, ref bitmap, interpolationMode, spriteOptions);

			[CRepr]
			public struct VTable : ID2D1CommandSink2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink3 self, ref ID2D1SpriteBatch spriteBatch, uint32 startIndex, uint32 spriteCount, ref ID2D1Bitmap bitmap, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode, D2D1_SPRITE_OPTIONS spriteOptions) DrawSpriteBatch;
			}
		}
		[CRepr]
		public struct ID2D1SvgGlyphStyle : ID2D1Resource
		{
			public const new Guid IID = .(0xaf671749, 0xd241, 0x4db8, 0x8e, 0x41, 0xdc, 0xc2, 0xe5, 0xc1, 0xa4, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetFill(ID2D1Brush* brush) mut => VT.SetFill(ref this, brush);
			public void GetFill(ID2D1Brush** brush) mut => VT.GetFill(ref this, brush);
			public HResult SetStroke(ID2D1Brush* brush, float strokeWidth, float* dashes, uint32 dashesCount, float dashOffset) mut => VT.SetStroke(ref this, brush, strokeWidth, dashes, dashesCount, dashOffset);
			public uint32 GetStrokeDashesCount() mut => VT.GetStrokeDashesCount(ref this);
			public void GetStroke(ID2D1Brush** brush, float* strokeWidth, float* dashes, uint32 dashesCount, float* dashOffset) mut => VT.GetStroke(ref this, brush, strokeWidth, dashes, dashesCount, dashOffset);

			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgGlyphStyle self, ID2D1Brush* brush) SetFill;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SvgGlyphStyle self, ID2D1Brush** brush) GetFill;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1SvgGlyphStyle self, ID2D1Brush* brush, float strokeWidth, float* dashes, uint32 dashesCount, float dashOffset) SetStroke;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID2D1SvgGlyphStyle self) GetStrokeDashesCount;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SvgGlyphStyle self, ID2D1Brush** brush, float* strokeWidth, float* dashes, uint32 dashesCount, float* dashOffset) GetStroke;
			}
		}
		[CRepr]
		public struct ID2D1DeviceContext4 : ID2D1DeviceContext3
		{
			public const new Guid IID = .(0x8c427831, 0x3d90, 0x4476, 0xb6, 0x47, 0xc4, 0xfa, 0xe3, 0x49, 0xe4, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateSvgGlyphStyle(out ID2D1SvgGlyphStyle* svgGlyphStyle) mut => VT.CreateSvgGlyphStyle(ref this, out svgGlyphStyle);
			public void DrawText(char16* string, uint32 stringLength, ref IDWriteTextFormat textFormat, in RectF layoutRect, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, D2D1_DRAW_TEXT_OPTIONS options, DWRITE_MEASURING_MODE measuringMode) mut => VT.DrawText(ref this, string, stringLength, ref textFormat, layoutRect, defaultFillBrush, svgGlyphStyle, colorPaletteIndex, options, measuringMode);
			public void DrawTextLayout(Vector2 origin, ref IDWriteTextLayout textLayout, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, D2D1_DRAW_TEXT_OPTIONS options) mut => VT.DrawTextLayout(ref this, origin, ref textLayout, defaultFillBrush, svgGlyphStyle, colorPaletteIndex, options);
			public void DrawColorBitmapGlyphRun(DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, Vector2 baselineOrigin, in GlyphRun glyphRun, DWRITE_MEASURING_MODE measuringMode, D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION bitmapSnapOption) mut => VT.DrawColorBitmapGlyphRun(ref this, glyphImageFormat, baselineOrigin, glyphRun, measuringMode, bitmapSnapOption);
			public void DrawSvgGlyphRun(Vector2 baselineOrigin, in GlyphRun glyphRun, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, DWRITE_MEASURING_MODE measuringMode) mut => VT.DrawSvgGlyphRun(ref this, baselineOrigin, glyphRun, defaultFillBrush, svgGlyphStyle, colorPaletteIndex, measuringMode);
			public HResult GetColorBitmapGlyphImage(DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, Vector2 glyphOrigin, ref IDWriteFontFace fontFace, float fontEmSize, uint16 glyphIndex, IntBool isSideways, D2D_MATRIX_3X2_F* worldTransform, float dpiX, float dpiY, out D2D_MATRIX_3X2_F glyphTransform, out ID2D1Image* glyphImage) mut => VT.GetColorBitmapGlyphImage(ref this, glyphImageFormat, glyphOrigin, ref fontFace, fontEmSize, glyphIndex, isSideways, worldTransform, dpiX, dpiY, out glyphTransform, out glyphImage);
			public HResult GetSvgGlyphImage(Vector2 glyphOrigin, ref IDWriteFontFace fontFace, float fontEmSize, uint16 glyphIndex, IntBool isSideways, D2D_MATRIX_3X2_F* worldTransform, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, out D2D_MATRIX_3X2_F glyphTransform, out ID2D1CommandList* glyphImage) mut => VT.GetSvgGlyphImage(ref this, glyphOrigin, ref fontFace, fontEmSize, glyphIndex, isSideways, worldTransform, defaultFillBrush, svgGlyphStyle, colorPaletteIndex, out glyphTransform, out glyphImage);

			[CRepr]
			public struct VTable : ID2D1DeviceContext3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext4 self, out ID2D1SvgGlyphStyle* svgGlyphStyle) CreateSvgGlyphStyle;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext4 self, char16* string, uint32 stringLength, ref IDWriteTextFormat textFormat, in RectF layoutRect, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, D2D1_DRAW_TEXT_OPTIONS options, DWRITE_MEASURING_MODE measuringMode) DrawText;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext4 self, Vector2 origin, ref IDWriteTextLayout textLayout, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, D2D1_DRAW_TEXT_OPTIONS options) DrawTextLayout;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext4 self, DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, Vector2 baselineOrigin, in GlyphRun glyphRun, DWRITE_MEASURING_MODE measuringMode, D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION bitmapSnapOption) DrawColorBitmapGlyphRun;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext4 self, Vector2 baselineOrigin, in GlyphRun glyphRun, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, DWRITE_MEASURING_MODE measuringMode) DrawSvgGlyphRun;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext4 self, DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, Vector2 glyphOrigin, ref IDWriteFontFace fontFace, float fontEmSize, uint16 glyphIndex, IntBool isSideways, D2D_MATRIX_3X2_F* worldTransform, float dpiX, float dpiY, out D2D_MATRIX_3X2_F glyphTransform, out ID2D1Image* glyphImage) GetColorBitmapGlyphImage;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext4 self, Vector2 glyphOrigin, ref IDWriteFontFace fontFace, float fontEmSize, uint16 glyphIndex, IntBool isSideways, D2D_MATRIX_3X2_F* worldTransform, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, out D2D_MATRIX_3X2_F glyphTransform, out ID2D1CommandList* glyphImage) GetSvgGlyphImage;
			}
		}
		[CRepr]
		public struct ID2D1Device4 : ID2D1Device3
		{
			public const new Guid IID = .(0xd7bdb159, 0x5683, 0x4a46, 0xbc, 0x9c, 0x72, 0xdc, 0x72, 0x0b, 0x85, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDeviceContext(DeviceContextOptions options, out ID2D1DeviceContext4* deviceContext4) mut => VT.CreateDeviceContext(ref this, options, out deviceContext4);
			public void SetMaximumColorGlyphCacheMemory(uint64 maximumInBytes) mut => VT.SetMaximumColorGlyphCacheMemory(ref this, maximumInBytes);
			public uint64 GetMaximumColorGlyphCacheMemory() mut => VT.GetMaximumColorGlyphCacheMemory(ref this);

			[CRepr]
			public struct VTable : ID2D1Device3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Device4 self, DeviceContextOptions options, out ID2D1DeviceContext4* deviceContext4) CreateDeviceContext;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1Device4 self, uint64 maximumInBytes) SetMaximumColorGlyphCacheMemory;
				public new function [CallingConvention(.Stdcall)] uint64(ref ID2D1Device4 self) GetMaximumColorGlyphCacheMemory;
			}
		}
		[CRepr]
		public struct ID2D1Factory5 : ID2D1Factory4
		{
			public const new Guid IID = .(0xc4349994, 0x838e, 0x4b0f, 0x8c, 0xab, 0x44, 0x99, 0x7d, 0x9e, 0xea, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDevice(ref IDXGIDevice dxgiDevice, out ID2D1Device4* d2dDevice4) mut => VT.CreateDevice(ref this, ref dxgiDevice, out d2dDevice4);

			[CRepr]
			public struct VTable : ID2D1Factory4.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory5 self, ref IDXGIDevice dxgiDevice, out ID2D1Device4* d2dDevice4) CreateDevice;
			}
		}
		[CRepr]
		public struct ID2D1CommandSink4 : ID2D1CommandSink3
		{
			public const new Guid IID = .(0xc78a6519, 0x40d6, 0x4218, 0xb2, 0xde, 0xbe, 0xee, 0xb7, 0x44, 0xbb, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetPrimitiveBlend2(D2D1_PRIMITIVE_BLEND primitiveBlend) mut => VT.SetPrimitiveBlend2(ref this, primitiveBlend);

			[CRepr]
			public struct VTable : ID2D1CommandSink3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink4 self, D2D1_PRIMITIVE_BLEND primitiveBlend) SetPrimitiveBlend2;
			}
		}
		[CRepr]
		public struct ID2D1ColorContext1 : ID2D1ColorContext
		{
			public const new Guid IID = .(0x1ab42875, 0xc57f, 0x4be9, 0xbd, 0x85, 0x9c, 0xd7, 0x8d, 0x6f, 0x55, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D1_COLOR_CONTEXT_TYPE GetColorContextType() mut => VT.GetColorContextType(ref this);
			public DXGI_COLOR_SPACE_TYPE GetDXGIColorSpace() mut => VT.GetDXGIColorSpace(ref this);
			public HResult GetSimpleColorProfile(out D2D1_SIMPLE_COLOR_PROFILE simpleProfile) mut => VT.GetSimpleColorProfile(ref this, out simpleProfile);

			[CRepr]
			public struct VTable : ID2D1ColorContext.VTable
			{
				public new function [CallingConvention(.Stdcall)] D2D1_COLOR_CONTEXT_TYPE(ref ID2D1ColorContext1 self) GetColorContextType;
				public new function [CallingConvention(.Stdcall)] DXGI_COLOR_SPACE_TYPE(ref ID2D1ColorContext1 self) GetDXGIColorSpace;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1ColorContext1 self, out D2D1_SIMPLE_COLOR_PROFILE simpleProfile) GetSimpleColorProfile;
			}
		}
		[CRepr]
		public struct ID2D1DeviceContext5 : ID2D1DeviceContext4
		{
			public const new Guid IID = .(0x7836d248, 0x68cc, 0x4df6, 0xb9, 0xe8, 0xde, 0x99, 0x1b, 0xf6, 0x2e, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateSvgDocument(IStream* inputXmlStream, D2D_SIZE_F viewportSize, out ID2D1SvgDocument* svgDocument) mut => VT.CreateSvgDocument(ref this, inputXmlStream, viewportSize, out svgDocument);
			public void DrawSvgDocument(ref ID2D1SvgDocument svgDocument) mut => VT.DrawSvgDocument(ref this, ref svgDocument);
			public HResult CreateColorContextFromDxgiColorSpace(DXGI_COLOR_SPACE_TYPE colorSpace, out ID2D1ColorContext1* colorContext) mut => VT.CreateColorContextFromDxgiColorSpace(ref this, colorSpace, out colorContext);
			public HResult CreateColorContextFromSimpleColorProfile(in D2D1_SIMPLE_COLOR_PROFILE simpleProfile, out ID2D1ColorContext1* colorContext) mut => VT.CreateColorContextFromSimpleColorProfile(ref this, simpleProfile, out colorContext);

			[CRepr]
			public struct VTable : ID2D1DeviceContext4.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext5 self, IStream* inputXmlStream, D2D_SIZE_F viewportSize, out ID2D1SvgDocument* svgDocument) CreateSvgDocument;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext5 self, ref ID2D1SvgDocument svgDocument) DrawSvgDocument;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext5 self, DXGI_COLOR_SPACE_TYPE colorSpace, out ID2D1ColorContext1* colorContext) CreateColorContextFromDxgiColorSpace;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1DeviceContext5 self, in D2D1_SIMPLE_COLOR_PROFILE simpleProfile, out ID2D1ColorContext1* colorContext) CreateColorContextFromSimpleColorProfile;
			}
		}
		[CRepr]
		public struct ID2D1Device5 : ID2D1Device4
		{
			public const new Guid IID = .(0xd55ba0a4, 0x6405, 0x4694, 0xae, 0xf5, 0x08, 0xee, 0x1a, 0x43, 0x58, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDeviceContext(DeviceContextOptions options, out ID2D1DeviceContext5* deviceContext5) mut => VT.CreateDeviceContext(ref this, options, out deviceContext5);

			[CRepr]
			public struct VTable : ID2D1Device4.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Device5 self, DeviceContextOptions options, out ID2D1DeviceContext5* deviceContext5) CreateDeviceContext;
			}
		}
		[CRepr]
		public struct ID2D1Factory6 : ID2D1Factory5
		{
			public const new Guid IID = .(0xf9976f46, 0xf642, 0x44c1, 0x97, 0xca, 0xda, 0x32, 0xea, 0x2a, 0x26, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDevice(ref IDXGIDevice dxgiDevice, out ID2D1Device5* d2dDevice5) mut => VT.CreateDevice(ref this, ref dxgiDevice, out d2dDevice5);

			[CRepr]
			public struct VTable : ID2D1Factory5.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory6 self, ref IDXGIDevice dxgiDevice, out ID2D1Device5* d2dDevice5) CreateDevice;
			}
		}
		[CRepr]
		public struct ID2D1CommandSink5 : ID2D1CommandSink4
		{
			public const new Guid IID = .(0x7047dd26, 0xb1e7, 0x44a7, 0x95, 0x9a, 0x83, 0x49, 0xe2, 0x14, 0x4f, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult BlendImage(ref ID2D1Image image, BlendMode blendMode, Vector2* targetOffset, RectF* imageRectangle, InterpolationMode interpolationMode) mut => VT.BlendImage(ref this, ref image, blendMode, targetOffset, imageRectangle, interpolationMode);

			[CRepr]
			public struct VTable : ID2D1CommandSink4.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1CommandSink5 self, ref ID2D1Image image, BlendMode blendMode, Vector2* targetOffset, RectF* imageRectangle, InterpolationMode interpolationMode) BlendImage;
			}
		}
		[CRepr]
		public struct ID2D1DeviceContext6 : ID2D1DeviceContext5
		{
			public const new Guid IID = .(0x985f7e37, 0x4ed0, 0x4a19, 0x98, 0xa3, 0x15, 0xb0, 0xed, 0xfd, 0xe3, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public void BlendImage(ref ID2D1Image image, BlendMode blendMode, Vector2* targetOffset, RectF* imageRectangle, InterpolationMode interpolationMode) mut => VT.BlendImage(ref this, ref image, blendMode, targetOffset, imageRectangle, interpolationMode);

			[CRepr]
			public struct VTable : ID2D1DeviceContext5.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1DeviceContext6 self, ref ID2D1Image image, BlendMode blendMode, Vector2* targetOffset, RectF* imageRectangle, InterpolationMode interpolationMode) BlendImage;
			}
		}
		[CRepr]
		public struct ID2D1Device6 : ID2D1Device5
		{
			public const new Guid IID = .(0x7bfef914, 0x2d75, 0x4bad, 0xbe, 0x87, 0xe1, 0x8d, 0xdb, 0x07, 0x7b, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDeviceContext(DeviceContextOptions options, out ID2D1DeviceContext6* deviceContext6) mut => VT.CreateDeviceContext(ref this, options, out deviceContext6);

			[CRepr]
			public struct VTable : ID2D1Device5.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Device6 self, DeviceContextOptions options, out ID2D1DeviceContext6* deviceContext6) CreateDeviceContext;
			}
		}
		[CRepr]
		public struct ID2D1Factory7 : ID2D1Factory6
		{
			public const new Guid IID = .(0xbdc2bdd3, 0xb96c, 0x4de6, 0xbd, 0xf7, 0x99, 0xd4, 0x74, 0x54, 0x54, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDevice(ref IDXGIDevice dxgiDevice, out ID2D1Device6* d2dDevice6) mut => VT.CreateDevice(ref this, ref dxgiDevice, out d2dDevice6);

			[CRepr]
			public struct VTable : ID2D1Factory6.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1Factory7 self, ref IDXGIDevice dxgiDevice, out ID2D1Device6* d2dDevice6) CreateDevice;
			}
		}
		[CRepr]
		public struct ID2D1EffectContext1 : ID2D1EffectContext
		{
			public const new Guid IID = .(0x84ab595a, 0xfc81, 0x4546, 0xba, 0xcd, 0xe8, 0xef, 0x4d, 0x8a, 0xbe, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateLookupTable3D(BufferPrecision precision, uint32* extents, uint8* data, uint32 dataCount, uint32* strides, out ID2D1LookupTable3D* lookupTable) mut => VT.CreateLookupTable3D(ref this, precision, extents, data, dataCount, strides, out lookupTable);

			[CRepr]
			public struct VTable : ID2D1EffectContext.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext1 self, BufferPrecision precision, uint32* extents, uint8* data, uint32 dataCount, uint32* strides, out ID2D1LookupTable3D* lookupTable) CreateLookupTable3D;
			}
		}
		[CRepr]
		public struct ID2D1EffectContext2 : ID2D1EffectContext1
		{
			public const new Guid IID = .(0x577ad2a0, 0x9fc7, 0x4dda, 0x8b, 0x18, 0xda, 0xb8, 0x10, 0x14, 0x00, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateColorContextFromDxgiColorSpace(DXGI_COLOR_SPACE_TYPE colorSpace, out ID2D1ColorContext1* colorContext) mut => VT.CreateColorContextFromDxgiColorSpace(ref this, colorSpace, out colorContext);
			public HResult CreateColorContextFromSimpleColorProfile(in D2D1_SIMPLE_COLOR_PROFILE simpleProfile, out ID2D1ColorContext1* colorContext) mut => VT.CreateColorContextFromSimpleColorProfile(ref this, simpleProfile, out colorContext);

			[CRepr]
			public struct VTable : ID2D1EffectContext1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext2 self, DXGI_COLOR_SPACE_TYPE colorSpace, out ID2D1ColorContext1* colorContext) CreateColorContextFromDxgiColorSpace;
				public new function [CallingConvention(.Stdcall)] HResult(ref ID2D1EffectContext2 self, in D2D1_SIMPLE_COLOR_PROFILE simpleProfile, out ID2D1ColorContext1* colorContext) CreateColorContextFromSimpleColorProfile;
			}
		}
		
		// --- Functions ---
		
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult D2D1CreateFactory<T>(FactoryType factoryType, in Guid riid, D2D1_FACTORY_OPTIONS* pFactoryOptions, out T* ppIFactory) where T : IUnknown;
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void D2D1MakeRotateMatrix(float angle, Vector2 center, out D2D_MATRIX_3X2_F matrix);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void D2D1MakeSkewMatrix(float angleX, float angleY, Vector2 center, out D2D_MATRIX_3X2_F matrix);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool D2D1IsMatrixInvertible(in D2D_MATRIX_3X2_F matrix);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool D2D1InvertMatrix(out D2D_MATRIX_3X2_F matrix);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult D2D1CreateDevice(ref IDXGIDevice dxgiDevice, D2D1_CREATION_PROPERTIES* creationProperties, out ID2D1Device* d2dDevice);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult D2D1CreateDeviceContext(ref IDXGISurface dxgiSurface, D2D1_CREATION_PROPERTIES* creationProperties, out ID2D1DeviceContext* d2dDeviceContext);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ColorF D2D1ConvertColorSpace(ColorSpace sourceColorSpace, ColorSpace destinationColorSpace, in ColorF color);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void D2D1SinCos(float angle, out float s, out float c);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern float D2D1Tan(float angle);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern float D2D1Vec3Length(float x, float y, float z);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern float D2D1ComputeMaximumScaleFactor(in D2D_MATRIX_3X2_F matrix);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void D2D1GetGradientMeshInteriorPointsFromCoonsPatch(in Vector2 pPoint0, in Vector2 pPoint1, in Vector2 pPoint2, in Vector2 pPoint3, in Vector2 pPoint4, in Vector2 pPoint5, in Vector2 pPoint6, in Vector2 pPoint7, in Vector2 pPoint8, in Vector2 pPoint9, in Vector2 pPoint10, in Vector2 pPoint11, out Vector2 pTensorPoint11, out Vector2 pTensorPoint12, out Vector2 pTensorPoint21, out Vector2 pTensorPoint22);
	}
}
