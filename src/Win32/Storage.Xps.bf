using System;
using System.IO;
using static Win32.Win32;
using static Win32.Storage.Packaging.Opc;
using static Win32.Security.Cryptography;
using static Win32.Graphics.Gdi;
using static Win32.System.Com;
using static System.Windows;
using static System.Windows.COM_IUnknown;

// namespace Storage.Xps
namespace Win32.Storage
{
	public static class Xps
	{
		// --- Constants ---
		
		public const HResult XPS_E_SIGREQUESTID_DUP = (.)-2142108795;
		public const HResult XPS_E_PACKAGE_NOT_OPENED = (.)-2142108794;
		public const HResult XPS_E_PACKAGE_ALREADY_OPENED = (.)-2142108793;
		public const HResult XPS_E_SIGNATUREID_DUP = (.)-2142108792;
		public const HResult XPS_E_MARKUP_COMPATIBILITY_ELEMENTS = (.)-2142108791;
		public const HResult XPS_E_OBJECT_DETACHED = (.)-2142108790;
		public const HResult XPS_E_INVALID_SIGNATUREBLOCK_MARKUP = (.)-2142108789;
		public const HResult XPS_E_INVALID_NUMBER_OF_POINTS_IN_CURVE_SEGMENTS = (.)-2142108160;
		public const HResult XPS_E_ABSOLUTE_REFERENCE = (.)-2142108159;
		public const HResult XPS_E_INVALID_NUMBER_OF_COLOR_CHANNELS = (.)-2142108158;
		public const HResult XPS_E_INVALID_LANGUAGE = (.)-2142109696;
		public const HResult XPS_E_INVALID_NAME = (.)-2142109695;
		public const HResult XPS_E_INVALID_RESOURCE_KEY = (.)-2142109694;
		public const HResult XPS_E_INVALID_PAGE_SIZE = (.)-2142109693;
		public const HResult XPS_E_INVALID_BLEED_BOX = (.)-2142109692;
		public const HResult XPS_E_INVALID_THUMBNAIL_IMAGE_TYPE = (.)-2142109691;
		public const HResult XPS_E_INVALID_LOOKUP_TYPE = (.)-2142109690;
		public const HResult XPS_E_INVALID_FLOAT = (.)-2142109689;
		public const HResult XPS_E_UNEXPECTED_CONTENT_TYPE = (.)-2142109688;
		public const HResult XPS_E_INVALID_FONT_URI = (.)-2142109686;
		public const HResult XPS_E_INVALID_CONTENT_BOX = (.)-2142109685;
		public const HResult XPS_E_INVALID_MARKUP = (.)-2142109684;
		public const HResult XPS_E_INVALID_XML_ENCODING = (.)-2142109683;
		public const HResult XPS_E_INVALID_CONTENT_TYPE = (.)-2142109682;
		public const HResult XPS_E_INVALID_OBFUSCATED_FONT_URI = (.)-2142109681;
		public const HResult XPS_E_UNEXPECTED_RELATIONSHIP_TYPE = (.)-2142109680;
		public const HResult XPS_E_UNEXPECTED_RESTRICTED_FONT_RELATIONSHIP = (.)-2142109679;
		public const HResult XPS_E_MISSING_NAME = (.)-2142109440;
		public const HResult XPS_E_MISSING_LOOKUP = (.)-2142109439;
		public const HResult XPS_E_MISSING_GLYPHS = (.)-2142109438;
		public const HResult XPS_E_MISSING_SEGMENT_DATA = (.)-2142109437;
		public const HResult XPS_E_MISSING_COLORPROFILE = (.)-2142109436;
		public const HResult XPS_E_MISSING_RELATIONSHIP_TARGET = (.)-2142109435;
		public const HResult XPS_E_MISSING_RESOURCE_RELATIONSHIP = (.)-2142109434;
		public const HResult XPS_E_MISSING_FONTURI = (.)-2142109433;
		public const HResult XPS_E_MISSING_DOCUMENTSEQUENCE_RELATIONSHIP = (.)-2142109432;
		public const HResult XPS_E_MISSING_DOCUMENT = (.)-2142109431;
		public const HResult XPS_E_MISSING_REFERRED_DOCUMENT = (.)-2142109430;
		public const HResult XPS_E_MISSING_REFERRED_PAGE = (.)-2142109429;
		public const HResult XPS_E_MISSING_PAGE_IN_DOCUMENT = (.)-2142109428;
		public const HResult XPS_E_MISSING_PAGE_IN_PAGEREFERENCE = (.)-2142109427;
		public const HResult XPS_E_MISSING_IMAGE_IN_IMAGEBRUSH = (.)-2142109426;
		public const HResult XPS_E_MISSING_RESOURCE_KEY = (.)-2142109425;
		public const HResult XPS_E_MISSING_PART_REFERENCE = (.)-2142109424;
		public const HResult XPS_E_MISSING_RESTRICTED_FONT_RELATIONSHIP = (.)-2142109423;
		public const HResult XPS_E_MISSING_DISCARDCONTROL = (.)-2142109422;
		public const HResult XPS_E_MISSING_PART_STREAM = (.)-2142109421;
		public const HResult XPS_E_UNAVAILABLE_PACKAGE = (.)-2142109420;
		public const HResult XPS_E_DUPLICATE_RESOURCE_KEYS = (.)-2142109184;
		public const HResult XPS_E_MULTIPLE_RESOURCES = (.)-2142109183;
		public const HResult XPS_E_MULTIPLE_DOCUMENTSEQUENCE_RELATIONSHIPS = (.)-2142109182;
		public const HResult XPS_E_MULTIPLE_THUMBNAILS_ON_PAGE = (.)-2142109181;
		public const HResult XPS_E_MULTIPLE_THUMBNAILS_ON_PACKAGE = (.)-2142109180;
		public const HResult XPS_E_MULTIPLE_PRINTTICKETS_ON_PAGE = (.)-2142109179;
		public const HResult XPS_E_MULTIPLE_PRINTTICKETS_ON_DOCUMENT = (.)-2142109178;
		public const HResult XPS_E_MULTIPLE_PRINTTICKETS_ON_DOCUMENTSEQUENCE = (.)-2142109177;
		public const HResult XPS_E_MULTIPLE_REFERENCES_TO_PART = (.)-2142109176;
		public const HResult XPS_E_DUPLICATE_NAMES = (.)-2142109175;
		public const HResult XPS_E_STRING_TOO_LONG = (.)-2142108928;
		public const HResult XPS_E_TOO_MANY_INDICES = (.)-2142108927;
		public const HResult XPS_E_MAPPING_OUT_OF_ORDER = (.)-2142108926;
		public const HResult XPS_E_MAPPING_OUTSIDE_STRING = (.)-2142108925;
		public const HResult XPS_E_MAPPING_OUTSIDE_INDICES = (.)-2142108924;
		public const HResult XPS_E_CARET_OUTSIDE_STRING = (.)-2142108923;
		public const HResult XPS_E_CARET_OUT_OF_ORDER = (.)-2142108922;
		public const HResult XPS_E_ODD_BIDILEVEL = (.)-2142108921;
		public const HResult XPS_E_ONE_TO_ONE_MAPPING_EXPECTED = (.)-2142108920;
		public const HResult XPS_E_RESTRICTED_FONT_NOT_OBFUSCATED = (.)-2142108919;
		public const HResult XPS_E_NEGATIVE_FLOAT = (.)-2142108918;
		public const HResult XPS_E_XKEY_ATTR_PRESENT_OUTSIDE_RES_DICT = (.)-2142108672;
		public const HResult XPS_E_DICTIONARY_ITEM_NAMED = (.)-2142108671;
		public const HResult XPS_E_NESTED_REMOTE_DICTIONARY = (.)-2142108670;
		public const HResult XPS_E_INDEX_OUT_OF_RANGE = (.)-2142108416;
		public const HResult XPS_E_VISUAL_CIRCULAR_REF = (.)-2142108415;
		public const HResult XPS_E_NO_CUSTOM_OBJECTS = (.)-2142108414;
		public const HResult XPS_E_ALREADY_OWNED = (.)-2142108413;
		public const HResult XPS_E_RESOURCE_NOT_OWNED = (.)-2142108412;
		public const HResult XPS_E_UNEXPECTED_COLORPROFILE = (.)-2142108411;
		public const HResult XPS_E_COLOR_COMPONENT_OUT_OF_RANGE = (.)-2142108410;
		public const HResult XPS_E_BOTH_PATHFIGURE_AND_ABBR_SYNTAX_PRESENT = (.)-2142108409;
		public const HResult XPS_E_BOTH_RESOURCE_AND_SOURCEATTR_PRESENT = (.)-2142108408;
		public const HResult XPS_E_BLEED_BOX_PAGE_DIMENSIONS_NOT_IN_SYNC = (.)-2142108407;
		public const HResult XPS_E_RELATIONSHIP_EXTERNAL = (.)-2142108406;
		public const HResult XPS_E_NOT_ENOUGH_GRADIENT_STOPS = (.)-2142108405;
		public const HResult XPS_E_PACKAGE_WRITER_NOT_CLOSED = (.)-2142108404;
		
		// --- Typedefs ---
		
		public typealias HPTPROVIDER = int;
		
		// --- Enums ---
		
		public enum PRINT_WINDOW_FLAGS : uint32
		{
			PW_CLIENTONLY = 1,
		}
		public enum DEVICE_CAPABILITIES : uint32
		{
			BINNAMES = 12,
			BINS = 6,
			COLLATE = 22,
			COLORDEVICE = 32,
			COPIES = 18,
			DRIVER = 11,
			DUPLEX = 7,
			ENUMRESOLUTIONS = 13,
			EXTRA = 9,
			FIELDS = 1,
			FILEDEPENDENCIES = 14,
			MAXEXTENT = 5,
			MEDIAREADY = 29,
			MEDIATYPENAMES = 34,
			MEDIATYPES = 35,
			MINEXTENT = 4,
			ORIENTATION = 17,
			NUP = 33,
			PAPERNAMES = 16,
			PAPERS = 2,
			PAPERSIZE = 3,
			PERSONALITY = 25,
			PRINTERMEM = 28,
			PRINTRATE = 26,
			PRINTRATEPPM = 31,
			PRINTRATEUNIT = 27,
			SIZE = 8,
			STAPLE = 30,
			TRUETYPE = 15,
			VERSION = 10,
		}
		public enum PSINJECT_POINT : uint16
		{
			BEGINSTREAM = 1,
			PSADOBE = 2,
			PAGESATEND = 3,
			PAGES = 4,
			DOCNEEDEDRES = 5,
			DOCSUPPLIEDRES = 6,
			PAGEORDER = 7,
			ORIENTATION = 8,
			BOUNDINGBOX = 9,
			DOCUMENTPROCESSCOLORS = 10,
			COMMENTS = 11,
			BEGINDEFAULTS = 12,
			ENDDEFAULTS = 13,
			BEGINPROLOG = 14,
			ENDPROLOG = 15,
			BEGINSETUP = 16,
			ENDSETUP = 17,
			TRAILER = 18,
			EOF = 19,
			ENDSTREAM = 20,
			DOCUMENTPROCESSCOLORSATEND = 21,
			PAGENUMBER = 100,
			BEGINPAGESETUP = 101,
			ENDPAGESETUP = 102,
			PAGETRAILER = 103,
			PLATECOLOR = 104,
			SHOWPAGE = 105,
			PAGEBBOX = 106,
			ENDPAGECOMMENTS = 107,
			VMSAVE = 200,
			VMRESTORE = 201,
		}
		public enum XPS_TILE_MODE : int32
		{
			NONE = 1,
			TILE = 2,
			FLIPX = 3,
			FLIPY = 4,
			FLIPXY = 5,
		}
		public enum XPS_COLOR_INTERPOLATION : int32
		{
			SCRGBLINEAR = 1,
			SRGBLINEAR = 2,
		}
		public enum XPS_SPREAD_METHOD : int32
		{
			PAD = 1,
			REFLECT = 2,
			REPEAT = 3,
		}
		public enum XPS_STYLE_SIMULATION : int32
		{
			NONE = 1,
			ITALIC = 2,
			BOLD = 3,
			BOLDITALIC = 4,
		}
		public enum XPS_LINE_CAP : int32
		{
			FLAT = 1,
			ROUND = 2,
			SQUARE = 3,
			TRIANGLE = 4,
		}
		public enum XPS_DASH_CAP : int32
		{
			FLAT = 1,
			ROUND = 2,
			SQUARE = 3,
			TRIANGLE = 4,
		}
		public enum XPS_LINE_JOIN : int32
		{
			MITER = 1,
			BEVEL = 2,
			ROUND = 3,
		}
		public enum XPS_IMAGE_TYPE : int32
		{
			JPEG = 1,
			PNG = 2,
			TIFF = 3,
			WDP = 4,
			JXR = 5,
		}
		public enum XPS_COLOR_TYPE : int32
		{
			SRGB = 1,
			SCRGB = 2,
			CONTEXT = 3,
		}
		public enum XPS_FILL_RULE : int32
		{
			EVENODD = 1,
			NONZERO = 2,
		}
		public enum XPS_SEGMENT_TYPE : int32
		{
			ARC_LARGE_CLOCKWISE = 1,
			ARC_LARGE_COUNTERCLOCKWISE = 2,
			ARC_SMALL_CLOCKWISE = 3,
			ARC_SMALL_COUNTERCLOCKWISE = 4,
			BEZIER = 5,
			LINE = 6,
			QUADRATIC_BEZIER = 7,
		}
		public enum XPS_SEGMENT_STROKE_PATTERN : int32
		{
			ALL = 1,
			NONE = 2,
			MIXED = 3,
		}
		public enum XPS_FONT_EMBEDDING : int32
		{
			NORMAL = 1,
			OBFUSCATED = 2,
			RESTRICTED = 3,
			RESTRICTED_UNOBFUSCATED = 4,
		}
		public enum XPS_OBJECT_TYPE : int32
		{
			CANVAS = 1,
			GLYPHS = 2,
			PATH = 3,
			MATRIX_TRANSFORM = 4,
			GEOMETRY = 5,
			SOLID_COLOR_BRUSH = 6,
			IMAGE_BRUSH = 7,
			LINEAR_GRADIENT_BRUSH = 8,
			RADIAL_GRADIENT_BRUSH = 9,
			VISUAL_BRUSH = 10,
		}
		public enum XPS_THUMBNAIL_SIZE : int32
		{
			VERYSMALL = 1,
			SMALL = 2,
			MEDIUM = 3,
			LARGE = 4,
		}
		public enum XPS_INTERLEAVING : int32
		{
			OFF = 1,
			ON = 2,
		}
		public enum XPS_DOCUMENT_TYPE : int32
		{
			UNSPECIFIED = 1,
			XPS = 2,
			OPENXPS = 3,
		}
		public enum XPS_SIGNATURE_STATUS : int32
		{
			INCOMPLIANT = 1,
			INCOMPLETE = 2,
			BROKEN = 3,
			QUESTIONABLE = 4,
			VALID = 5,
		}
		public enum XPS_SIGN_POLICY : int32
		{
			NONE = 0,
			CORE_PROPERTIES = 1,
			SIGNATURE_RELATIONSHIPS = 2,
			PRINT_TICKET = 4,
			DISCARD_CONTROL = 8,
			ALL = 15,
		}
		public enum XPS_SIGN_FLAGS : int32
		{
			NONE = 0,
			IGNORE_MARKUP_COMPATIBILITY = 1,
		}
		
		// --- Function Pointers ---
		
		public function IntBool ABORTPROC(HDC param0, int32 param1);
		
		// --- Structs ---
		
		[CRepr]
		public struct DRAWPATRECT
		{
			public POINT ptPosition;
			public POINT ptSize;
			public uint16 wStyle;
			public uint16 wPattern;
		}
		[CRepr]
		public struct PSINJECTDATA
		{
			public uint32 DataBytes;
			public PSINJECT_POINT InjectionPoint;
			public uint16 PageNumber;
		}
		[CRepr]
		public struct PSFEATURE_OUTPUT
		{
			public IntBool bPageIndependent;
			public IntBool bSetPageDevice;
		}
		[CRepr]
		public struct PSFEATURE_CUSTPAPER
		{
			public int32 lOrientation;
			public int32 lWidth;
			public int32 lHeight;
			public int32 lWidthOffset;
			public int32 lHeightOffset;
		}
		[CRepr]
		public struct DOCINFOA
		{
			public int32 cbSize;
			public char8* lpszDocName;
			public char8* lpszOutput;
			public char8* lpszDatatype;
			public uint32 fwType;
		}
		[CRepr]
		public struct DOCINFOW
		{
			public int32 cbSize;
			public char16* lpszDocName;
			public char16* lpszOutput;
			public char16* lpszDatatype;
			public uint32 fwType;
		}
		[CRepr]
		public struct XPS_POINT
		{
			public float x;
			public float y;
		}
		[CRepr]
		public struct XPS_SIZE
		{
			public float width;
			public float height;
		}
		[CRepr]
		public struct XPS_RECT
		{
			public float x;
			public float y;
			public float width;
			public float height;
		}
		[CRepr]
		public struct XPS_DASH
		{
			public float length;
			public float gap;
		}
		[CRepr]
		public struct XPS_GLYPH_INDEX
		{
			public int32 index;
			public float advanceWidth;
			public float horizontalOffset;
			public float verticalOffset;
		}
		[CRepr]
		public struct XPS_GLYPH_MAPPING
		{
			public uint32 unicodeStringStart;
			public uint16 unicodeStringLength;
			public uint32 glyphIndicesStart;
			public uint16 glyphIndicesLength;
		}
		[CRepr]
		public struct XPS_MATRIX
		{
			public float m11;
			public float m12;
			public float m21;
			public float m22;
			public float m31;
			public float m32;
		}
		[CRepr]
		public struct XPS_COLOR
		{
			public XPS_COLOR_TYPE colorType;
			public XPS_COLOR_VALUE value;
			
			[CRepr, Union]
			public struct XPS_COLOR_VALUE
			{
				public _sRGB_e__Struct sRGB;
				public _scRGB_e__Struct scRGB;
				public _context_e__Struct context;
				
				[CRepr]
				public struct _scRGB_e__Struct
				{
					public float alpha;
					public float red;
					public float green;
					public float blue;
				}
				[CRepr]
				public struct _sRGB_e__Struct
				{
					public uint8 alpha;
					public uint8 red;
					public uint8 green;
					public uint8 blue;
				}
				[CRepr]
				public struct _context_e__Struct
				{
					public uint8 channelCount;
					public float[9] channels;
				}
			}
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_XpsOMObjectFactory = .(0xe974d26d, 0x3d9b, 0x4d47, 0x88, 0xcc, 0x38, 0x72, 0xf2, 0xdc, 0x35, 0x85);
		public const Guid CLSID_XpsOMThumbnailGenerator = .(0x7e4a23e2, 0xb969, 0x4761, 0xbe, 0x35, 0x1a, 0x8c, 0xed, 0x58, 0xe3, 0x23);
		public const Guid CLSID_XpsSignatureManager = .(0xb0c43320, 0x2315, 0x44a2, 0xb7, 0x0a, 0x09, 0x43, 0xa1, 0x40, 0xa8, 0xee);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IXpsOMShareable : IUnknown
		{
			public const new Guid IID = .(0x7137398f, 0x2fc1, 0x454d, 0x8c, 0x6a, 0x2c, 0x31, 0x15, 0xa1, 0x6e, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOwner(out IUnknown* owner) mut => VT.GetOwner(ref this, out owner);
			public HResult ComGetType(out XPS_OBJECT_TYPE type) mut => VT.ComGetType(ref this, out type);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMShareable self, out IUnknown* owner) GetOwner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMShareable self, out XPS_OBJECT_TYPE type) ComGetType;
			}
		}
		[CRepr]
		public struct IXpsOMVisual : IXpsOMShareable
		{
			public const new Guid IID = .(0xbc3e7333, 0xfb0b, 0x4af3, 0xa8, 0x19, 0x0b, 0x4e, 0xaa, 0xd0, 0xd2, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetTransform(out IXpsOMMatrixTransform* matrixTransform) mut => VT.GetTransform(ref this, out matrixTransform);
			public HResult GetTransformLocal(out IXpsOMMatrixTransform* matrixTransform) mut => VT.GetTransformLocal(ref this, out matrixTransform);
			public HResult SetTransformLocal(ref IXpsOMMatrixTransform matrixTransform) mut => VT.SetTransformLocal(ref this, ref matrixTransform);
			public HResult GetTransformLookup(out char16* key) mut => VT.GetTransformLookup(ref this, out key);
			public HResult SetTransformLookup(char16* key) mut => VT.SetTransformLookup(ref this, key);
			public HResult GetClipGeometry(out IXpsOMGeometry* clipGeometry) mut => VT.GetClipGeometry(ref this, out clipGeometry);
			public HResult GetClipGeometryLocal(out IXpsOMGeometry* clipGeometry) mut => VT.GetClipGeometryLocal(ref this, out clipGeometry);
			public HResult SetClipGeometryLocal(ref IXpsOMGeometry clipGeometry) mut => VT.SetClipGeometryLocal(ref this, ref clipGeometry);
			public HResult GetClipGeometryLookup(out char16* key) mut => VT.GetClipGeometryLookup(ref this, out key);
			public HResult SetClipGeometryLookup(char16* key) mut => VT.SetClipGeometryLookup(ref this, key);
			public HResult GetOpacity(out float opacity) mut => VT.GetOpacity(ref this, out opacity);
			public HResult SetOpacity(float opacity) mut => VT.SetOpacity(ref this, opacity);
			public HResult GetOpacityMaskBrush(out IXpsOMBrush* opacityMaskBrush) mut => VT.GetOpacityMaskBrush(ref this, out opacityMaskBrush);
			public HResult GetOpacityMaskBrushLocal(out IXpsOMBrush* opacityMaskBrush) mut => VT.GetOpacityMaskBrushLocal(ref this, out opacityMaskBrush);
			public HResult SetOpacityMaskBrushLocal(ref IXpsOMBrush opacityMaskBrush) mut => VT.SetOpacityMaskBrushLocal(ref this, ref opacityMaskBrush);
			public HResult GetOpacityMaskBrushLookup(out char16* key) mut => VT.GetOpacityMaskBrushLookup(ref this, out key);
			public HResult SetOpacityMaskBrushLookup(char16* key) mut => VT.SetOpacityMaskBrushLookup(ref this, key);
			public HResult GetName(out char16* name) mut => VT.GetName(ref this, out name);
			public HResult SetName(char16* name) mut => VT.SetName(ref this, name);
			public HResult GetIsHyperlinkTarget(out IntBool isHyperlink) mut => VT.GetIsHyperlinkTarget(ref this, out isHyperlink);
			public HResult SetIsHyperlinkTarget(IntBool isHyperlink) mut => VT.SetIsHyperlinkTarget(ref this, isHyperlink);
			public HResult GetHyperlinkNavigateUri(out IUri* hyperlinkUri) mut => VT.GetHyperlinkNavigateUri(ref this, out hyperlinkUri);
			public HResult SetHyperlinkNavigateUri(ref IUri hyperlinkUri) mut => VT.SetHyperlinkNavigateUri(ref this, ref hyperlinkUri);
			public HResult GetLanguage(out char16* language) mut => VT.GetLanguage(ref this, out language);
			public HResult SetLanguage(char16* language) mut => VT.SetLanguage(ref this, language);

			[CRepr]
			public struct VTable : IXpsOMShareable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out IXpsOMMatrixTransform* matrixTransform) GetTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out IXpsOMMatrixTransform* matrixTransform) GetTransformLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, ref IXpsOMMatrixTransform matrixTransform) SetTransformLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out char16* key) GetTransformLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, char16* key) SetTransformLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out IXpsOMGeometry* clipGeometry) GetClipGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out IXpsOMGeometry* clipGeometry) GetClipGeometryLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, ref IXpsOMGeometry clipGeometry) SetClipGeometryLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out char16* key) GetClipGeometryLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, char16* key) SetClipGeometryLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out float opacity) GetOpacity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, float opacity) SetOpacity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out IXpsOMBrush* opacityMaskBrush) GetOpacityMaskBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out IXpsOMBrush* opacityMaskBrush) GetOpacityMaskBrushLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, ref IXpsOMBrush opacityMaskBrush) SetOpacityMaskBrushLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out char16* key) GetOpacityMaskBrushLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, char16* key) SetOpacityMaskBrushLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out char16* name) GetName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, char16* name) SetName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out IntBool isHyperlink) GetIsHyperlinkTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, IntBool isHyperlink) SetIsHyperlinkTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out IUri* hyperlinkUri) GetHyperlinkNavigateUri;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, ref IUri hyperlinkUri) SetHyperlinkNavigateUri;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, out char16* language) GetLanguage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisual self, char16* language) SetLanguage;
			}
		}
		[CRepr]
		public struct IXpsOMPart : IUnknown
		{
			public const new Guid IID = .(0x74eb2f0b, 0xa91e, 0x4486, 0xaf, 0xac, 0x0f, 0xab, 0xec, 0xa3, 0xdf, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetPartName(out IOpcPartUri* partUri) mut => VT.GetPartName(ref this, out partUri);
			public HResult SetPartName(ref IOpcPartUri partUri) mut => VT.SetPartName(ref this, ref partUri);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPart self, out IOpcPartUri* partUri) GetPartName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPart self, ref IOpcPartUri partUri) SetPartName;
			}
		}
		[CRepr]
		public struct IXpsOMGlyphsEditor : IUnknown
		{
			public const new Guid IID = .(0xa5ab8616, 0x5b16, 0x4b9f, 0x96, 0x29, 0x89, 0xb3, 0x23, 0xed, 0x79, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ApplyEdits() mut => VT.ApplyEdits(ref this);
			public HResult GetUnicodeString(out char16* unicodeString) mut => VT.GetUnicodeString(ref this, out unicodeString);
			public HResult SetUnicodeString(char16* unicodeString) mut => VT.SetUnicodeString(ref this, unicodeString);
			public HResult GetGlyphIndexCount(out uint32 indexCount) mut => VT.GetGlyphIndexCount(ref this, out indexCount);
			public HResult GetGlyphIndices(out uint32 indexCount, out XPS_GLYPH_INDEX glyphIndices) mut => VT.GetGlyphIndices(ref this, out indexCount, out glyphIndices);
			public HResult SetGlyphIndices(uint32 indexCount, in XPS_GLYPH_INDEX glyphIndices) mut => VT.SetGlyphIndices(ref this, indexCount, glyphIndices);
			public HResult GetGlyphMappingCount(out uint32 glyphMappingCount) mut => VT.GetGlyphMappingCount(ref this, out glyphMappingCount);
			public HResult GetGlyphMappings(out uint32 glyphMappingCount, out XPS_GLYPH_MAPPING glyphMappings) mut => VT.GetGlyphMappings(ref this, out glyphMappingCount, out glyphMappings);
			public HResult SetGlyphMappings(uint32 glyphMappingCount, in XPS_GLYPH_MAPPING glyphMappings) mut => VT.SetGlyphMappings(ref this, glyphMappingCount, glyphMappings);
			public HResult GetProhibitedCaretStopCount(out uint32 prohibitedCaretStopCount) mut => VT.GetProhibitedCaretStopCount(ref this, out prohibitedCaretStopCount);
			public HResult GetProhibitedCaretStops(out uint32 count, out uint32 prohibitedCaretStops) mut => VT.GetProhibitedCaretStops(ref this, out count, out prohibitedCaretStops);
			public HResult SetProhibitedCaretStops(uint32 count, in uint32 prohibitedCaretStops) mut => VT.SetProhibitedCaretStops(ref this, count, prohibitedCaretStops);
			public HResult GetBidiLevel(out uint32 bidiLevel) mut => VT.GetBidiLevel(ref this, out bidiLevel);
			public HResult SetBidiLevel(uint32 bidiLevel) mut => VT.SetBidiLevel(ref this, bidiLevel);
			public HResult GetIsSideways(out IntBool isSideways) mut => VT.GetIsSideways(ref this, out isSideways);
			public HResult SetIsSideways(IntBool isSideways) mut => VT.SetIsSideways(ref this, isSideways);
			public HResult GetDeviceFontName(out char16* deviceFontName) mut => VT.GetDeviceFontName(ref this, out deviceFontName);
			public HResult SetDeviceFontName(char16* deviceFontName) mut => VT.SetDeviceFontName(ref this, deviceFontName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self) ApplyEdits;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, out char16* unicodeString) GetUnicodeString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, char16* unicodeString) SetUnicodeString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, out uint32 indexCount) GetGlyphIndexCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, out uint32 indexCount, out XPS_GLYPH_INDEX glyphIndices) GetGlyphIndices;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, uint32 indexCount, in XPS_GLYPH_INDEX glyphIndices) SetGlyphIndices;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, out uint32 glyphMappingCount) GetGlyphMappingCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, out uint32 glyphMappingCount, out XPS_GLYPH_MAPPING glyphMappings) GetGlyphMappings;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, uint32 glyphMappingCount, in XPS_GLYPH_MAPPING glyphMappings) SetGlyphMappings;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, out uint32 prohibitedCaretStopCount) GetProhibitedCaretStopCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, out uint32 count, out uint32 prohibitedCaretStops) GetProhibitedCaretStops;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, uint32 count, in uint32 prohibitedCaretStops) SetProhibitedCaretStops;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, out uint32 bidiLevel) GetBidiLevel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, uint32 bidiLevel) SetBidiLevel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, out IntBool isSideways) GetIsSideways;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, IntBool isSideways) SetIsSideways;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, out char16* deviceFontName) GetDeviceFontName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphsEditor self, char16* deviceFontName) SetDeviceFontName;
			}
		}
		[CRepr]
		public struct IXpsOMGlyphs : IXpsOMVisual
		{
			public const new Guid IID = .(0x819b3199, 0x0a5a, 0x4b64, 0xbe, 0xc7, 0xa9, 0xe1, 0x7e, 0x78, 0x0d, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetUnicodeString(out char16* unicodeString) mut => VT.GetUnicodeString(ref this, out unicodeString);
			public HResult GetGlyphIndexCount(out uint32 indexCount) mut => VT.GetGlyphIndexCount(ref this, out indexCount);
			public HResult GetGlyphIndices(out uint32 indexCount, out XPS_GLYPH_INDEX glyphIndices) mut => VT.GetGlyphIndices(ref this, out indexCount, out glyphIndices);
			public HResult GetGlyphMappingCount(out uint32 glyphMappingCount) mut => VT.GetGlyphMappingCount(ref this, out glyphMappingCount);
			public HResult GetGlyphMappings(out uint32 glyphMappingCount, out XPS_GLYPH_MAPPING glyphMappings) mut => VT.GetGlyphMappings(ref this, out glyphMappingCount, out glyphMappings);
			public HResult GetProhibitedCaretStopCount(out uint32 prohibitedCaretStopCount) mut => VT.GetProhibitedCaretStopCount(ref this, out prohibitedCaretStopCount);
			public HResult GetProhibitedCaretStops(out uint32 prohibitedCaretStopCount, out uint32 prohibitedCaretStops) mut => VT.GetProhibitedCaretStops(ref this, out prohibitedCaretStopCount, out prohibitedCaretStops);
			public HResult GetBidiLevel(out uint32 bidiLevel) mut => VT.GetBidiLevel(ref this, out bidiLevel);
			public HResult GetIsSideways(out IntBool isSideways) mut => VT.GetIsSideways(ref this, out isSideways);
			public HResult GetDeviceFontName(out char16* deviceFontName) mut => VT.GetDeviceFontName(ref this, out deviceFontName);
			public HResult GetStyleSimulations(out XPS_STYLE_SIMULATION styleSimulations) mut => VT.GetStyleSimulations(ref this, out styleSimulations);
			public HResult SetStyleSimulations(XPS_STYLE_SIMULATION styleSimulations) mut => VT.SetStyleSimulations(ref this, styleSimulations);
			public HResult GetOrigin(out XPS_POINT origin) mut => VT.GetOrigin(ref this, out origin);
			public HResult SetOrigin(in XPS_POINT origin) mut => VT.SetOrigin(ref this, origin);
			public HResult GetFontRenderingEmSize(out float fontRenderingEmSize) mut => VT.GetFontRenderingEmSize(ref this, out fontRenderingEmSize);
			public HResult SetFontRenderingEmSize(float fontRenderingEmSize) mut => VT.SetFontRenderingEmSize(ref this, fontRenderingEmSize);
			public HResult GetFontResource(out IXpsOMFontResource* fontResource) mut => VT.GetFontResource(ref this, out fontResource);
			public HResult SetFontResource(ref IXpsOMFontResource fontResource) mut => VT.SetFontResource(ref this, ref fontResource);
			public HResult GetFontFaceIndex(out int16 fontFaceIndex) mut => VT.GetFontFaceIndex(ref this, out fontFaceIndex);
			public HResult SetFontFaceIndex(int16 fontFaceIndex) mut => VT.SetFontFaceIndex(ref this, fontFaceIndex);
			public HResult GetFillBrush(out IXpsOMBrush* fillBrush) mut => VT.GetFillBrush(ref this, out fillBrush);
			public HResult GetFillBrushLocal(out IXpsOMBrush* fillBrush) mut => VT.GetFillBrushLocal(ref this, out fillBrush);
			public HResult SetFillBrushLocal(ref IXpsOMBrush fillBrush) mut => VT.SetFillBrushLocal(ref this, ref fillBrush);
			public HResult GetFillBrushLookup(out char16* key) mut => VT.GetFillBrushLookup(ref this, out key);
			public HResult SetFillBrushLookup(char16* key) mut => VT.SetFillBrushLookup(ref this, key);
			public HResult GetGlyphsEditor(out IXpsOMGlyphsEditor* editor) mut => VT.GetGlyphsEditor(ref this, out editor);
			public HResult Clone(out IXpsOMGlyphs* glyphs) mut => VT.Clone(ref this, out glyphs);

			[CRepr]
			public struct VTable : IXpsOMVisual.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out char16* unicodeString) GetUnicodeString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out uint32 indexCount) GetGlyphIndexCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out uint32 indexCount, out XPS_GLYPH_INDEX glyphIndices) GetGlyphIndices;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out uint32 glyphMappingCount) GetGlyphMappingCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out uint32 glyphMappingCount, out XPS_GLYPH_MAPPING glyphMappings) GetGlyphMappings;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out uint32 prohibitedCaretStopCount) GetProhibitedCaretStopCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out uint32 prohibitedCaretStopCount, out uint32 prohibitedCaretStops) GetProhibitedCaretStops;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out uint32 bidiLevel) GetBidiLevel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out IntBool isSideways) GetIsSideways;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out char16* deviceFontName) GetDeviceFontName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out XPS_STYLE_SIMULATION styleSimulations) GetStyleSimulations;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, XPS_STYLE_SIMULATION styleSimulations) SetStyleSimulations;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out XPS_POINT origin) GetOrigin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, in XPS_POINT origin) SetOrigin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out float fontRenderingEmSize) GetFontRenderingEmSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, float fontRenderingEmSize) SetFontRenderingEmSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out IXpsOMFontResource* fontResource) GetFontResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, ref IXpsOMFontResource fontResource) SetFontResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out int16 fontFaceIndex) GetFontFaceIndex;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, int16 fontFaceIndex) SetFontFaceIndex;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out IXpsOMBrush* fillBrush) GetFillBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out IXpsOMBrush* fillBrush) GetFillBrushLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, ref IXpsOMBrush fillBrush) SetFillBrushLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out char16* key) GetFillBrushLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, char16* key) SetFillBrushLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out IXpsOMGlyphsEditor* editor) GetGlyphsEditor;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGlyphs self, out IXpsOMGlyphs* glyphs) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMDashCollection : IUnknown
		{
			public const new Guid IID = .(0x081613f4, 0x74eb, 0x48f2, 0x83, 0xb3, 0x37, 0xa9, 0xce, 0x2d, 0x7d, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out XPS_DASH dash) mut => VT.GetAt(ref this, index, out dash);
			public HResult InsertAt(uint32 index, in XPS_DASH dash) mut => VT.InsertAt(ref this, index, dash);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);
			public HResult SetAt(uint32 index, in XPS_DASH dash) mut => VT.SetAt(ref this, index, dash);
			public HResult Append(in XPS_DASH dash) mut => VT.Append(ref this, dash);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDashCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDashCollection self, uint32 index, out XPS_DASH dash) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDashCollection self, uint32 index, in XPS_DASH dash) InsertAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDashCollection self, uint32 index) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDashCollection self, uint32 index, in XPS_DASH dash) SetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDashCollection self, in XPS_DASH dash) Append;
			}
		}
		[CRepr]
		public struct IXpsOMMatrixTransform : IXpsOMShareable
		{
			public const new Guid IID = .(0xb77330ff, 0xbb37, 0x4501, 0xa9, 0x3e, 0xf1, 0xb1, 0xe5, 0x0b, 0xfc, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetMatrix(out XPS_MATRIX matrix) mut => VT.GetMatrix(ref this, out matrix);
			public HResult SetMatrix(in XPS_MATRIX matrix) mut => VT.SetMatrix(ref this, matrix);
			public HResult Clone(out IXpsOMMatrixTransform* matrixTransform) mut => VT.Clone(ref this, out matrixTransform);

			[CRepr]
			public struct VTable : IXpsOMShareable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMMatrixTransform self, out XPS_MATRIX matrix) GetMatrix;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMMatrixTransform self, in XPS_MATRIX matrix) SetMatrix;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMMatrixTransform self, out IXpsOMMatrixTransform* matrixTransform) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGeometry : IXpsOMShareable
		{
			public const new Guid IID = .(0x64fcf3d7, 0x4d58, 0x44ba, 0xad, 0x73, 0xa1, 0x3a, 0xf6, 0x49, 0x20, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFigures(out IXpsOMGeometryFigureCollection* figures) mut => VT.GetFigures(ref this, out figures);
			public HResult GetFillRule(out XPS_FILL_RULE fillRule) mut => VT.GetFillRule(ref this, out fillRule);
			public HResult SetFillRule(XPS_FILL_RULE fillRule) mut => VT.SetFillRule(ref this, fillRule);
			public HResult GetTransform(out IXpsOMMatrixTransform* transform) mut => VT.GetTransform(ref this, out transform);
			public HResult GetTransformLocal(out IXpsOMMatrixTransform* transform) mut => VT.GetTransformLocal(ref this, out transform);
			public HResult SetTransformLocal(ref IXpsOMMatrixTransform transform) mut => VT.SetTransformLocal(ref this, ref transform);
			public HResult GetTransformLookup(out char16* lookup) mut => VT.GetTransformLookup(ref this, out lookup);
			public HResult SetTransformLookup(char16* lookup) mut => VT.SetTransformLookup(ref this, lookup);
			public HResult Clone(out IXpsOMGeometry* geometry) mut => VT.Clone(ref this, out geometry);

			[CRepr]
			public struct VTable : IXpsOMShareable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometry self, out IXpsOMGeometryFigureCollection* figures) GetFigures;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometry self, out XPS_FILL_RULE fillRule) GetFillRule;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometry self, XPS_FILL_RULE fillRule) SetFillRule;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometry self, out IXpsOMMatrixTransform* transform) GetTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometry self, out IXpsOMMatrixTransform* transform) GetTransformLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometry self, ref IXpsOMMatrixTransform transform) SetTransformLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometry self, out char16* lookup) GetTransformLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometry self, char16* lookup) SetTransformLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometry self, out IXpsOMGeometry* geometry) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGeometryFigure : IUnknown
		{
			public const new Guid IID = .(0xd410dc83, 0x908c, 0x443e, 0x89, 0x47, 0xb1, 0x79, 0x5d, 0x3c, 0x16, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOwner(out IXpsOMGeometry* owner) mut => VT.GetOwner(ref this, out owner);
			public HResult GetSegmentData(out uint32 dataCount, out float segmentData) mut => VT.GetSegmentData(ref this, out dataCount, out segmentData);
			public HResult GetSegmentTypes(out uint32 segmentCount, out XPS_SEGMENT_TYPE segmentTypes) mut => VT.GetSegmentTypes(ref this, out segmentCount, out segmentTypes);
			public HResult GetSegmentStrokes(out uint32 segmentCount, out IntBool segmentStrokes) mut => VT.GetSegmentStrokes(ref this, out segmentCount, out segmentStrokes);
			public HResult SetSegments(uint32 segmentCount, uint32 segmentDataCount, in XPS_SEGMENT_TYPE segmentTypes, in float segmentData, in IntBool segmentStrokes) mut => VT.SetSegments(ref this, segmentCount, segmentDataCount, segmentTypes, segmentData, segmentStrokes);
			public HResult GetStartPoint(out XPS_POINT startPoint) mut => VT.GetStartPoint(ref this, out startPoint);
			public HResult SetStartPoint(in XPS_POINT startPoint) mut => VT.SetStartPoint(ref this, startPoint);
			public HResult GetIsClosed(out IntBool isClosed) mut => VT.GetIsClosed(ref this, out isClosed);
			public HResult SetIsClosed(IntBool isClosed) mut => VT.SetIsClosed(ref this, isClosed);
			public HResult GetIsFilled(out IntBool isFilled) mut => VT.GetIsFilled(ref this, out isFilled);
			public HResult SetIsFilled(IntBool isFilled) mut => VT.SetIsFilled(ref this, isFilled);
			public HResult GetSegmentCount(out uint32 segmentCount) mut => VT.GetSegmentCount(ref this, out segmentCount);
			public HResult GetSegmentDataCount(out uint32 segmentDataCount) mut => VT.GetSegmentDataCount(ref this, out segmentDataCount);
			public HResult GetSegmentStrokePattern(out XPS_SEGMENT_STROKE_PATTERN segmentStrokePattern) mut => VT.GetSegmentStrokePattern(ref this, out segmentStrokePattern);
			public HResult Clone(out IXpsOMGeometryFigure* geometryFigure) mut => VT.Clone(ref this, out geometryFigure);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, out IXpsOMGeometry* owner) GetOwner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, out uint32 dataCount, out float segmentData) GetSegmentData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, out uint32 segmentCount, out XPS_SEGMENT_TYPE segmentTypes) GetSegmentTypes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, out uint32 segmentCount, out IntBool segmentStrokes) GetSegmentStrokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, uint32 segmentCount, uint32 segmentDataCount, in XPS_SEGMENT_TYPE segmentTypes, in float segmentData, in IntBool segmentStrokes) SetSegments;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, out XPS_POINT startPoint) GetStartPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, in XPS_POINT startPoint) SetStartPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, out IntBool isClosed) GetIsClosed;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, IntBool isClosed) SetIsClosed;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, out IntBool isFilled) GetIsFilled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, IntBool isFilled) SetIsFilled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, out uint32 segmentCount) GetSegmentCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, out uint32 segmentDataCount) GetSegmentDataCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, out XPS_SEGMENT_STROKE_PATTERN segmentStrokePattern) GetSegmentStrokePattern;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigure self, out IXpsOMGeometryFigure* geometryFigure) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGeometryFigureCollection : IUnknown
		{
			public const new Guid IID = .(0xfd48c3f3, 0xa58e, 0x4b5a, 0x88, 0x26, 0x1d, 0xe5, 0x4a, 0xbe, 0x72, 0xb2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IXpsOMGeometryFigure* geometryFigure) mut => VT.GetAt(ref this, index, out geometryFigure);
			public HResult InsertAt(uint32 index, ref IXpsOMGeometryFigure geometryFigure) mut => VT.InsertAt(ref this, index, ref geometryFigure);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);
			public HResult SetAt(uint32 index, ref IXpsOMGeometryFigure geometryFigure) mut => VT.SetAt(ref this, index, ref geometryFigure);
			public HResult Append(ref IXpsOMGeometryFigure geometryFigure) mut => VT.Append(ref this, ref geometryFigure);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigureCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigureCollection self, uint32 index, out IXpsOMGeometryFigure* geometryFigure) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigureCollection self, uint32 index, ref IXpsOMGeometryFigure geometryFigure) InsertAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigureCollection self, uint32 index) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigureCollection self, uint32 index, ref IXpsOMGeometryFigure geometryFigure) SetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGeometryFigureCollection self, ref IXpsOMGeometryFigure geometryFigure) Append;
			}
		}
		[CRepr]
		public struct IXpsOMPath : IXpsOMVisual
		{
			public const new Guid IID = .(0x37d38bb6, 0x3ee9, 0x4110, 0x93, 0x12, 0x14, 0xb1, 0x94, 0x16, 0x33, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetGeometry(out IXpsOMGeometry* geometry) mut => VT.GetGeometry(ref this, out geometry);
			public HResult GetGeometryLocal(out IXpsOMGeometry* geometry) mut => VT.GetGeometryLocal(ref this, out geometry);
			public HResult SetGeometryLocal(ref IXpsOMGeometry geometry) mut => VT.SetGeometryLocal(ref this, ref geometry);
			public HResult GetGeometryLookup(out char16* lookup) mut => VT.GetGeometryLookup(ref this, out lookup);
			public HResult SetGeometryLookup(char16* lookup) mut => VT.SetGeometryLookup(ref this, lookup);
			public HResult GetAccessibilityShortDescription(out char16* shortDescription) mut => VT.GetAccessibilityShortDescription(ref this, out shortDescription);
			public HResult SetAccessibilityShortDescription(char16* shortDescription) mut => VT.SetAccessibilityShortDescription(ref this, shortDescription);
			public HResult GetAccessibilityLongDescription(out char16* longDescription) mut => VT.GetAccessibilityLongDescription(ref this, out longDescription);
			public HResult SetAccessibilityLongDescription(char16* longDescription) mut => VT.SetAccessibilityLongDescription(ref this, longDescription);
			public HResult GetSnapsToPixels(out IntBool snapsToPixels) mut => VT.GetSnapsToPixels(ref this, out snapsToPixels);
			public HResult SetSnapsToPixels(IntBool snapsToPixels) mut => VT.SetSnapsToPixels(ref this, snapsToPixels);
			public HResult GetStrokeBrush(out IXpsOMBrush* brush) mut => VT.GetStrokeBrush(ref this, out brush);
			public HResult GetStrokeBrushLocal(out IXpsOMBrush* brush) mut => VT.GetStrokeBrushLocal(ref this, out brush);
			public HResult SetStrokeBrushLocal(ref IXpsOMBrush brush) mut => VT.SetStrokeBrushLocal(ref this, ref brush);
			public HResult GetStrokeBrushLookup(out char16* lookup) mut => VT.GetStrokeBrushLookup(ref this, out lookup);
			public HResult SetStrokeBrushLookup(char16* lookup) mut => VT.SetStrokeBrushLookup(ref this, lookup);
			public HResult GetStrokeDashes(out IXpsOMDashCollection* strokeDashes) mut => VT.GetStrokeDashes(ref this, out strokeDashes);
			public HResult GetStrokeDashCap(out XPS_DASH_CAP strokeDashCap) mut => VT.GetStrokeDashCap(ref this, out strokeDashCap);
			public HResult SetStrokeDashCap(XPS_DASH_CAP strokeDashCap) mut => VT.SetStrokeDashCap(ref this, strokeDashCap);
			public HResult GetStrokeDashOffset(out float strokeDashOffset) mut => VT.GetStrokeDashOffset(ref this, out strokeDashOffset);
			public HResult SetStrokeDashOffset(float strokeDashOffset) mut => VT.SetStrokeDashOffset(ref this, strokeDashOffset);
			public HResult GetStrokeStartLineCap(out XPS_LINE_CAP strokeStartLineCap) mut => VT.GetStrokeStartLineCap(ref this, out strokeStartLineCap);
			public HResult SetStrokeStartLineCap(XPS_LINE_CAP strokeStartLineCap) mut => VT.SetStrokeStartLineCap(ref this, strokeStartLineCap);
			public HResult GetStrokeEndLineCap(out XPS_LINE_CAP strokeEndLineCap) mut => VT.GetStrokeEndLineCap(ref this, out strokeEndLineCap);
			public HResult SetStrokeEndLineCap(XPS_LINE_CAP strokeEndLineCap) mut => VT.SetStrokeEndLineCap(ref this, strokeEndLineCap);
			public HResult GetStrokeLineJoin(out XPS_LINE_JOIN strokeLineJoin) mut => VT.GetStrokeLineJoin(ref this, out strokeLineJoin);
			public HResult SetStrokeLineJoin(XPS_LINE_JOIN strokeLineJoin) mut => VT.SetStrokeLineJoin(ref this, strokeLineJoin);
			public HResult GetStrokeMiterLimit(out float strokeMiterLimit) mut => VT.GetStrokeMiterLimit(ref this, out strokeMiterLimit);
			public HResult SetStrokeMiterLimit(float strokeMiterLimit) mut => VT.SetStrokeMiterLimit(ref this, strokeMiterLimit);
			public HResult GetStrokeThickness(out float strokeThickness) mut => VT.GetStrokeThickness(ref this, out strokeThickness);
			public HResult SetStrokeThickness(float strokeThickness) mut => VT.SetStrokeThickness(ref this, strokeThickness);
			public HResult GetFillBrush(out IXpsOMBrush* brush) mut => VT.GetFillBrush(ref this, out brush);
			public HResult GetFillBrushLocal(out IXpsOMBrush* brush) mut => VT.GetFillBrushLocal(ref this, out brush);
			public HResult SetFillBrushLocal(ref IXpsOMBrush brush) mut => VT.SetFillBrushLocal(ref this, ref brush);
			public HResult GetFillBrushLookup(out char16* lookup) mut => VT.GetFillBrushLookup(ref this, out lookup);
			public HResult SetFillBrushLookup(char16* lookup) mut => VT.SetFillBrushLookup(ref this, lookup);
			public HResult Clone(out IXpsOMPath* path) mut => VT.Clone(ref this, out path);

			[CRepr]
			public struct VTable : IXpsOMVisual.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out IXpsOMGeometry* geometry) GetGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out IXpsOMGeometry* geometry) GetGeometryLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, ref IXpsOMGeometry geometry) SetGeometryLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out char16* lookup) GetGeometryLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, char16* lookup) SetGeometryLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out char16* shortDescription) GetAccessibilityShortDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, char16* shortDescription) SetAccessibilityShortDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out char16* longDescription) GetAccessibilityLongDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, char16* longDescription) SetAccessibilityLongDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out IntBool snapsToPixels) GetSnapsToPixels;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, IntBool snapsToPixels) SetSnapsToPixels;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out IXpsOMBrush* brush) GetStrokeBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out IXpsOMBrush* brush) GetStrokeBrushLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, ref IXpsOMBrush brush) SetStrokeBrushLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out char16* lookup) GetStrokeBrushLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, char16* lookup) SetStrokeBrushLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out IXpsOMDashCollection* strokeDashes) GetStrokeDashes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out XPS_DASH_CAP strokeDashCap) GetStrokeDashCap;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, XPS_DASH_CAP strokeDashCap) SetStrokeDashCap;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out float strokeDashOffset) GetStrokeDashOffset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, float strokeDashOffset) SetStrokeDashOffset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out XPS_LINE_CAP strokeStartLineCap) GetStrokeStartLineCap;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, XPS_LINE_CAP strokeStartLineCap) SetStrokeStartLineCap;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out XPS_LINE_CAP strokeEndLineCap) GetStrokeEndLineCap;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, XPS_LINE_CAP strokeEndLineCap) SetStrokeEndLineCap;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out XPS_LINE_JOIN strokeLineJoin) GetStrokeLineJoin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, XPS_LINE_JOIN strokeLineJoin) SetStrokeLineJoin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out float strokeMiterLimit) GetStrokeMiterLimit;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, float strokeMiterLimit) SetStrokeMiterLimit;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out float strokeThickness) GetStrokeThickness;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, float strokeThickness) SetStrokeThickness;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out IXpsOMBrush* brush) GetFillBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out IXpsOMBrush* brush) GetFillBrushLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, ref IXpsOMBrush brush) SetFillBrushLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out char16* lookup) GetFillBrushLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, char16* lookup) SetFillBrushLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPath self, out IXpsOMPath* path) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMBrush : IXpsOMShareable
		{
			public const new Guid IID = .(0x56a3f80c, 0xea4c, 0x4187, 0xa5, 0x7b, 0xa2, 0xa4, 0x73, 0xb2, 0xb4, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOpacity(out float opacity) mut => VT.GetOpacity(ref this, out opacity);
			public HResult SetOpacity(float opacity) mut => VT.SetOpacity(ref this, opacity);

			[CRepr]
			public struct VTable : IXpsOMShareable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMBrush self, out float opacity) GetOpacity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMBrush self, float opacity) SetOpacity;
			}
		}
		[CRepr]
		public struct IXpsOMGradientStopCollection : IUnknown
		{
			public const new Guid IID = .(0xc9174c3a, 0x3cd3, 0x4319, 0xbd, 0xa4, 0x11, 0xa3, 0x93, 0x92, 0xce, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IXpsOMGradientStop* stop) mut => VT.GetAt(ref this, index, out stop);
			public HResult InsertAt(uint32 index, ref IXpsOMGradientStop stop) mut => VT.InsertAt(ref this, index, ref stop);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);
			public HResult SetAt(uint32 index, ref IXpsOMGradientStop stop) mut => VT.SetAt(ref this, index, ref stop);
			public HResult Append(ref IXpsOMGradientStop stop) mut => VT.Append(ref this, ref stop);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientStopCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientStopCollection self, uint32 index, out IXpsOMGradientStop* stop) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientStopCollection self, uint32 index, ref IXpsOMGradientStop stop) InsertAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientStopCollection self, uint32 index) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientStopCollection self, uint32 index, ref IXpsOMGradientStop stop) SetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientStopCollection self, ref IXpsOMGradientStop stop) Append;
			}
		}
		[CRepr]
		public struct IXpsOMSolidColorBrush : IXpsOMBrush
		{
			public const new Guid IID = .(0xa06f9f05, 0x3be9, 0x4763, 0x98, 0xa8, 0x09, 0x4f, 0xc6, 0x72, 0xe4, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetColor(out XPS_COLOR color, out IXpsOMColorProfileResource* colorProfile) mut => VT.GetColor(ref this, out color, out colorProfile);
			public HResult SetColor(in XPS_COLOR color, ref IXpsOMColorProfileResource colorProfile) mut => VT.SetColor(ref this, color, ref colorProfile);
			public HResult Clone(out IXpsOMSolidColorBrush* solidColorBrush) mut => VT.Clone(ref this, out solidColorBrush);

			[CRepr]
			public struct VTable : IXpsOMBrush.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMSolidColorBrush self, out XPS_COLOR color, out IXpsOMColorProfileResource* colorProfile) GetColor;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMSolidColorBrush self, in XPS_COLOR color, ref IXpsOMColorProfileResource colorProfile) SetColor;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMSolidColorBrush self, out IXpsOMSolidColorBrush* solidColorBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMTileBrush : IXpsOMBrush
		{
			public const new Guid IID = .(0x0fc2328d, 0xd722, 0x4a54, 0xb2, 0xec, 0xbe, 0x90, 0x21, 0x8a, 0x78, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetTransform(out IXpsOMMatrixTransform* transform) mut => VT.GetTransform(ref this, out transform);
			public HResult GetTransformLocal(out IXpsOMMatrixTransform* transform) mut => VT.GetTransformLocal(ref this, out transform);
			public HResult SetTransformLocal(ref IXpsOMMatrixTransform transform) mut => VT.SetTransformLocal(ref this, ref transform);
			public HResult GetTransformLookup(out char16* key) mut => VT.GetTransformLookup(ref this, out key);
			public HResult SetTransformLookup(char16* key) mut => VT.SetTransformLookup(ref this, key);
			public HResult GetViewbox(out XPS_RECT viewbox) mut => VT.GetViewbox(ref this, out viewbox);
			public HResult SetViewbox(in XPS_RECT viewbox) mut => VT.SetViewbox(ref this, viewbox);
			public HResult GetViewport(out XPS_RECT viewport) mut => VT.GetViewport(ref this, out viewport);
			public HResult SetViewport(in XPS_RECT viewport) mut => VT.SetViewport(ref this, viewport);
			public HResult GetTileMode(out XPS_TILE_MODE tileMode) mut => VT.GetTileMode(ref this, out tileMode);
			public HResult SetTileMode(XPS_TILE_MODE tileMode) mut => VT.SetTileMode(ref this, tileMode);

			[CRepr]
			public struct VTable : IXpsOMBrush.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMTileBrush self, out IXpsOMMatrixTransform* transform) GetTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMTileBrush self, out IXpsOMMatrixTransform* transform) GetTransformLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMTileBrush self, ref IXpsOMMatrixTransform transform) SetTransformLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMTileBrush self, out char16* key) GetTransformLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMTileBrush self, char16* key) SetTransformLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMTileBrush self, out XPS_RECT viewbox) GetViewbox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMTileBrush self, in XPS_RECT viewbox) SetViewbox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMTileBrush self, out XPS_RECT viewport) GetViewport;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMTileBrush self, in XPS_RECT viewport) SetViewport;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMTileBrush self, out XPS_TILE_MODE tileMode) GetTileMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMTileBrush self, XPS_TILE_MODE tileMode) SetTileMode;
			}
		}
		[CRepr]
		public struct IXpsOMVisualBrush : IXpsOMTileBrush
		{
			public const new Guid IID = .(0x97e294af, 0x5b37, 0x46b4, 0x80, 0x57, 0x87, 0x4d, 0x2f, 0x64, 0x11, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetVisual(out IXpsOMVisual* visual) mut => VT.GetVisual(ref this, out visual);
			public HResult GetVisualLocal(out IXpsOMVisual* visual) mut => VT.GetVisualLocal(ref this, out visual);
			public HResult SetVisualLocal(ref IXpsOMVisual visual) mut => VT.SetVisualLocal(ref this, ref visual);
			public HResult GetVisualLookup(out char16* lookup) mut => VT.GetVisualLookup(ref this, out lookup);
			public HResult SetVisualLookup(char16* lookup) mut => VT.SetVisualLookup(ref this, lookup);
			public HResult Clone(out IXpsOMVisualBrush* visualBrush) mut => VT.Clone(ref this, out visualBrush);

			[CRepr]
			public struct VTable : IXpsOMTileBrush.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisualBrush self, out IXpsOMVisual* visual) GetVisual;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisualBrush self, out IXpsOMVisual* visual) GetVisualLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisualBrush self, ref IXpsOMVisual visual) SetVisualLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisualBrush self, out char16* lookup) GetVisualLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisualBrush self, char16* lookup) SetVisualLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisualBrush self, out IXpsOMVisualBrush* visualBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMImageBrush : IXpsOMTileBrush
		{
			public const new Guid IID = .(0x3df0b466, 0xd382, 0x49ef, 0x85, 0x50, 0xdd, 0x94, 0xc8, 0x02, 0x42, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetImageResource(out IXpsOMImageResource* imageResource) mut => VT.GetImageResource(ref this, out imageResource);
			public HResult SetImageResource(ref IXpsOMImageResource imageResource) mut => VT.SetImageResource(ref this, ref imageResource);
			public HResult GetColorProfileResource(out IXpsOMColorProfileResource* colorProfileResource) mut => VT.GetColorProfileResource(ref this, out colorProfileResource);
			public HResult SetColorProfileResource(ref IXpsOMColorProfileResource colorProfileResource) mut => VT.SetColorProfileResource(ref this, ref colorProfileResource);
			public HResult Clone(out IXpsOMImageBrush* imageBrush) mut => VT.Clone(ref this, out imageBrush);

			[CRepr]
			public struct VTable : IXpsOMTileBrush.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageBrush self, out IXpsOMImageResource* imageResource) GetImageResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageBrush self, ref IXpsOMImageResource imageResource) SetImageResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageBrush self, out IXpsOMColorProfileResource* colorProfileResource) GetColorProfileResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageBrush self, ref IXpsOMColorProfileResource colorProfileResource) SetColorProfileResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageBrush self, out IXpsOMImageBrush* imageBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGradientStop : IUnknown
		{
			public const new Guid IID = .(0x5cf4f5cc, 0x3969, 0x49b5, 0xa7, 0x0a, 0x55, 0x50, 0xb6, 0x18, 0xfe, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOwner(out IXpsOMGradientBrush* owner) mut => VT.GetOwner(ref this, out owner);
			public HResult GetOffset(out float offset) mut => VT.GetOffset(ref this, out offset);
			public HResult SetOffset(float offset) mut => VT.SetOffset(ref this, offset);
			public HResult GetColor(out XPS_COLOR color, out IXpsOMColorProfileResource* colorProfile) mut => VT.GetColor(ref this, out color, out colorProfile);
			public HResult SetColor(in XPS_COLOR color, ref IXpsOMColorProfileResource colorProfile) mut => VT.SetColor(ref this, color, ref colorProfile);
			public HResult Clone(out IXpsOMGradientStop* gradientStop) mut => VT.Clone(ref this, out gradientStop);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientStop self, out IXpsOMGradientBrush* owner) GetOwner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientStop self, out float offset) GetOffset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientStop self, float offset) SetOffset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientStop self, out XPS_COLOR color, out IXpsOMColorProfileResource* colorProfile) GetColor;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientStop self, in XPS_COLOR color, ref IXpsOMColorProfileResource colorProfile) SetColor;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientStop self, out IXpsOMGradientStop* gradientStop) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGradientBrush : IXpsOMBrush
		{
			public const new Guid IID = .(0xedb59622, 0x61a2, 0x42c3, 0xba, 0xce, 0xac, 0xf2, 0x28, 0x6c, 0x06, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetGradientStops(out IXpsOMGradientStopCollection* gradientStops) mut => VT.GetGradientStops(ref this, out gradientStops);
			public HResult GetTransform(out IXpsOMMatrixTransform* transform) mut => VT.GetTransform(ref this, out transform);
			public HResult GetTransformLocal(out IXpsOMMatrixTransform* transform) mut => VT.GetTransformLocal(ref this, out transform);
			public HResult SetTransformLocal(ref IXpsOMMatrixTransform transform) mut => VT.SetTransformLocal(ref this, ref transform);
			public HResult GetTransformLookup(out char16* key) mut => VT.GetTransformLookup(ref this, out key);
			public HResult SetTransformLookup(char16* key) mut => VT.SetTransformLookup(ref this, key);
			public HResult GetSpreadMethod(out XPS_SPREAD_METHOD spreadMethod) mut => VT.GetSpreadMethod(ref this, out spreadMethod);
			public HResult SetSpreadMethod(XPS_SPREAD_METHOD spreadMethod) mut => VT.SetSpreadMethod(ref this, spreadMethod);
			public HResult GetColorInterpolationMode(out XPS_COLOR_INTERPOLATION colorInterpolationMode) mut => VT.GetColorInterpolationMode(ref this, out colorInterpolationMode);
			public HResult SetColorInterpolationMode(XPS_COLOR_INTERPOLATION colorInterpolationMode) mut => VT.SetColorInterpolationMode(ref this, colorInterpolationMode);

			[CRepr]
			public struct VTable : IXpsOMBrush.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientBrush self, out IXpsOMGradientStopCollection* gradientStops) GetGradientStops;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientBrush self, out IXpsOMMatrixTransform* transform) GetTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientBrush self, out IXpsOMMatrixTransform* transform) GetTransformLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientBrush self, ref IXpsOMMatrixTransform transform) SetTransformLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientBrush self, out char16* key) GetTransformLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientBrush self, char16* key) SetTransformLookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientBrush self, out XPS_SPREAD_METHOD spreadMethod) GetSpreadMethod;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientBrush self, XPS_SPREAD_METHOD spreadMethod) SetSpreadMethod;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientBrush self, out XPS_COLOR_INTERPOLATION colorInterpolationMode) GetColorInterpolationMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMGradientBrush self, XPS_COLOR_INTERPOLATION colorInterpolationMode) SetColorInterpolationMode;
			}
		}
		[CRepr]
		public struct IXpsOMLinearGradientBrush : IXpsOMGradientBrush
		{
			public const new Guid IID = .(0x005e279f, 0xc30d, 0x40ff, 0x93, 0xec, 0x19, 0x50, 0xd3, 0xc5, 0x28, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetStartPoint(out XPS_POINT startPoint) mut => VT.GetStartPoint(ref this, out startPoint);
			public HResult SetStartPoint(in XPS_POINT startPoint) mut => VT.SetStartPoint(ref this, startPoint);
			public HResult GetEndPoint(out XPS_POINT endPoint) mut => VT.GetEndPoint(ref this, out endPoint);
			public HResult SetEndPoint(in XPS_POINT endPoint) mut => VT.SetEndPoint(ref this, endPoint);
			public HResult Clone(out IXpsOMLinearGradientBrush* linearGradientBrush) mut => VT.Clone(ref this, out linearGradientBrush);

			[CRepr]
			public struct VTable : IXpsOMGradientBrush.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMLinearGradientBrush self, out XPS_POINT startPoint) GetStartPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMLinearGradientBrush self, in XPS_POINT startPoint) SetStartPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMLinearGradientBrush self, out XPS_POINT endPoint) GetEndPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMLinearGradientBrush self, in XPS_POINT endPoint) SetEndPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMLinearGradientBrush self, out IXpsOMLinearGradientBrush* linearGradientBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMRadialGradientBrush : IXpsOMGradientBrush
		{
			public const new Guid IID = .(0x75f207e5, 0x08bf, 0x413c, 0x96, 0xb1, 0xb8, 0x2b, 0x40, 0x64, 0x17, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCenter(out XPS_POINT center) mut => VT.GetCenter(ref this, out center);
			public HResult SetCenter(in XPS_POINT center) mut => VT.SetCenter(ref this, center);
			public HResult GetRadiiSizes(out XPS_SIZE radiiSizes) mut => VT.GetRadiiSizes(ref this, out radiiSizes);
			public HResult SetRadiiSizes(in XPS_SIZE radiiSizes) mut => VT.SetRadiiSizes(ref this, radiiSizes);
			public HResult GetGradientOrigin(out XPS_POINT origin) mut => VT.GetGradientOrigin(ref this, out origin);
			public HResult SetGradientOrigin(in XPS_POINT origin) mut => VT.SetGradientOrigin(ref this, origin);
			public HResult Clone(out IXpsOMRadialGradientBrush* radialGradientBrush) mut => VT.Clone(ref this, out radialGradientBrush);

			[CRepr]
			public struct VTable : IXpsOMGradientBrush.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRadialGradientBrush self, out XPS_POINT center) GetCenter;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRadialGradientBrush self, in XPS_POINT center) SetCenter;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRadialGradientBrush self, out XPS_SIZE radiiSizes) GetRadiiSizes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRadialGradientBrush self, in XPS_SIZE radiiSizes) SetRadiiSizes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRadialGradientBrush self, out XPS_POINT origin) GetGradientOrigin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRadialGradientBrush self, in XPS_POINT origin) SetGradientOrigin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRadialGradientBrush self, out IXpsOMRadialGradientBrush* radialGradientBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMResource : IXpsOMPart
		{
			public const new Guid IID = .(0xda2ac0a2, 0x73a2, 0x4975, 0xad, 0x14, 0x74, 0x09, 0x7c, 0x3f, 0xf3, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IXpsOMPart.VTable {}
		}
		[CRepr]
		public struct IXpsOMPartResources : IUnknown
		{
			public const new Guid IID = .(0xf4cf7729, 0x4864, 0x4275, 0x99, 0xb3, 0xa8, 0x71, 0x71, 0x63, 0xec, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFontResources(out IXpsOMFontResourceCollection* fontResources) mut => VT.GetFontResources(ref this, out fontResources);
			public HResult GetImageResources(out IXpsOMImageResourceCollection* imageResources) mut => VT.GetImageResources(ref this, out imageResources);
			public HResult GetColorProfileResources(out IXpsOMColorProfileResourceCollection* colorProfileResources) mut => VT.GetColorProfileResources(ref this, out colorProfileResources);
			public HResult GetRemoteDictionaryResources(out IXpsOMRemoteDictionaryResourceCollection* dictionaryResources) mut => VT.GetRemoteDictionaryResources(ref this, out dictionaryResources);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPartResources self, out IXpsOMFontResourceCollection* fontResources) GetFontResources;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPartResources self, out IXpsOMImageResourceCollection* imageResources) GetImageResources;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPartResources self, out IXpsOMColorProfileResourceCollection* colorProfileResources) GetColorProfileResources;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPartResources self, out IXpsOMRemoteDictionaryResourceCollection* dictionaryResources) GetRemoteDictionaryResources;
			}
		}
		[CRepr]
		public struct IXpsOMDictionary : IUnknown
		{
			public const new Guid IID = .(0x897c86b8, 0x8eaf, 0x4ae3, 0xbd, 0xde, 0x56, 0x41, 0x9f, 0xcf, 0x42, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOwner(out IUnknown* owner) mut => VT.GetOwner(ref this, out owner);
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out char16* key, out IXpsOMShareable* entry) mut => VT.GetAt(ref this, index, out key, out entry);
			public HResult GetByKey(char16* key, ref IXpsOMShareable beforeEntry, out IXpsOMShareable* entry) mut => VT.GetByKey(ref this, key, ref beforeEntry, out entry);
			public HResult GetIndex(ref IXpsOMShareable entry, out uint32 index) mut => VT.GetIndex(ref this, ref entry, out index);
			public HResult Append(char16* key, ref IXpsOMShareable entry) mut => VT.Append(ref this, key, ref entry);
			public HResult InsertAt(uint32 index, char16* key, ref IXpsOMShareable entry) mut => VT.InsertAt(ref this, index, key, ref entry);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);
			public HResult SetAt(uint32 index, char16* key, ref IXpsOMShareable entry) mut => VT.SetAt(ref this, index, key, ref entry);
			public HResult Clone(out IXpsOMDictionary* dictionary) mut => VT.Clone(ref this, out dictionary);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDictionary self, out IUnknown* owner) GetOwner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDictionary self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDictionary self, uint32 index, out char16* key, out IXpsOMShareable* entry) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDictionary self, char16* key, ref IXpsOMShareable beforeEntry, out IXpsOMShareable* entry) GetByKey;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDictionary self, ref IXpsOMShareable entry, out uint32 index) GetIndex;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDictionary self, char16* key, ref IXpsOMShareable entry) Append;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDictionary self, uint32 index, char16* key, ref IXpsOMShareable entry) InsertAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDictionary self, uint32 index) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDictionary self, uint32 index, char16* key, ref IXpsOMShareable entry) SetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDictionary self, out IXpsOMDictionary* dictionary) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMFontResource : IXpsOMResource
		{
			public const new Guid IID = .(0xa8c45708, 0x47d9, 0x4af4, 0x8d, 0x20, 0x33, 0xb4, 0x8c, 0x9b, 0x84, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetStream(out IStream* readerStream) mut => VT.GetStream(ref this, out readerStream);
			public HResult SetContent(ref IStream sourceStream, XPS_FONT_EMBEDDING embeddingOption, ref IOpcPartUri partName) mut => VT.SetContent(ref this, ref sourceStream, embeddingOption, ref partName);
			public HResult GetEmbeddingOption(out XPS_FONT_EMBEDDING embeddingOption) mut => VT.GetEmbeddingOption(ref this, out embeddingOption);

			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMFontResource self, out IStream* readerStream) GetStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMFontResource self, ref IStream sourceStream, XPS_FONT_EMBEDDING embeddingOption, ref IOpcPartUri partName) SetContent;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMFontResource self, out XPS_FONT_EMBEDDING embeddingOption) GetEmbeddingOption;
			}
		}
		[CRepr]
		public struct IXpsOMFontResourceCollection : IUnknown
		{
			public const new Guid IID = .(0x70b4a6bb, 0x88d4, 0x4fa8, 0xaa, 0xf9, 0x6d, 0x9c, 0x59, 0x6f, 0xdb, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IXpsOMFontResource* value) mut => VT.GetAt(ref this, index, out value);
			public HResult SetAt(uint32 index, ref IXpsOMFontResource value) mut => VT.SetAt(ref this, index, ref value);
			public HResult InsertAt(uint32 index, ref IXpsOMFontResource value) mut => VT.InsertAt(ref this, index, ref value);
			public HResult Append(ref IXpsOMFontResource value) mut => VT.Append(ref this, ref value);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);
			public HResult GetByPartName(ref IOpcPartUri partName, out IXpsOMFontResource* part) mut => VT.GetByPartName(ref this, ref partName, out part);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMFontResourceCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMFontResourceCollection self, uint32 index, out IXpsOMFontResource* value) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMFontResourceCollection self, uint32 index, ref IXpsOMFontResource value) SetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMFontResourceCollection self, uint32 index, ref IXpsOMFontResource value) InsertAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMFontResourceCollection self, ref IXpsOMFontResource value) Append;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMFontResourceCollection self, uint32 index) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMFontResourceCollection self, ref IOpcPartUri partName, out IXpsOMFontResource* part) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMImageResource : IXpsOMResource
		{
			public const new Guid IID = .(0x3db8417d, 0xae50, 0x485e, 0x9a, 0x44, 0xd7, 0x75, 0x8f, 0x78, 0xa2, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetStream(out IStream* readerStream) mut => VT.GetStream(ref this, out readerStream);
			public HResult SetContent(ref IStream sourceStream, XPS_IMAGE_TYPE imageType, ref IOpcPartUri partName) mut => VT.SetContent(ref this, ref sourceStream, imageType, ref partName);
			public HResult GetImageType(out XPS_IMAGE_TYPE imageType) mut => VT.GetImageType(ref this, out imageType);

			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageResource self, out IStream* readerStream) GetStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageResource self, ref IStream sourceStream, XPS_IMAGE_TYPE imageType, ref IOpcPartUri partName) SetContent;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageResource self, out XPS_IMAGE_TYPE imageType) GetImageType;
			}
		}
		[CRepr]
		public struct IXpsOMImageResourceCollection : IUnknown
		{
			public const new Guid IID = .(0x7a4a1a71, 0x9cde, 0x4b71, 0xb3, 0x3f, 0x62, 0xde, 0x84, 0x3e, 0xab, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IXpsOMImageResource* object) mut => VT.GetAt(ref this, index, out object);
			public HResult InsertAt(uint32 index, ref IXpsOMImageResource object) mut => VT.InsertAt(ref this, index, ref object);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);
			public HResult SetAt(uint32 index, ref IXpsOMImageResource object) mut => VT.SetAt(ref this, index, ref object);
			public HResult Append(ref IXpsOMImageResource object) mut => VT.Append(ref this, ref object);
			public HResult GetByPartName(ref IOpcPartUri partName, out IXpsOMImageResource* part) mut => VT.GetByPartName(ref this, ref partName, out part);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageResourceCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageResourceCollection self, uint32 index, out IXpsOMImageResource* object) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageResourceCollection self, uint32 index, ref IXpsOMImageResource object) InsertAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageResourceCollection self, uint32 index) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageResourceCollection self, uint32 index, ref IXpsOMImageResource object) SetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageResourceCollection self, ref IXpsOMImageResource object) Append;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMImageResourceCollection self, ref IOpcPartUri partName, out IXpsOMImageResource* part) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMColorProfileResource : IXpsOMResource
		{
			public const new Guid IID = .(0x67bd7d69, 0x1eef, 0x4bb1, 0xb5, 0xe7, 0x6f, 0x4f, 0x87, 0xbe, 0x8a, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetStream(out IStream* stream) mut => VT.GetStream(ref this, out stream);
			public HResult SetContent(ref IStream sourceStream, ref IOpcPartUri partName) mut => VT.SetContent(ref this, ref sourceStream, ref partName);

			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMColorProfileResource self, out IStream* stream) GetStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMColorProfileResource self, ref IStream sourceStream, ref IOpcPartUri partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMColorProfileResourceCollection : IUnknown
		{
			public const new Guid IID = .(0x12759630, 0x5fba, 0x4283, 0x8f, 0x7d, 0xcc, 0xa8, 0x49, 0x80, 0x9e, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IXpsOMColorProfileResource* object) mut => VT.GetAt(ref this, index, out object);
			public HResult InsertAt(uint32 index, ref IXpsOMColorProfileResource object) mut => VT.InsertAt(ref this, index, ref object);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);
			public HResult SetAt(uint32 index, ref IXpsOMColorProfileResource object) mut => VT.SetAt(ref this, index, ref object);
			public HResult Append(ref IXpsOMColorProfileResource object) mut => VT.Append(ref this, ref object);
			public HResult GetByPartName(ref IOpcPartUri partName, out IXpsOMColorProfileResource* part) mut => VT.GetByPartName(ref this, ref partName, out part);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMColorProfileResourceCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMColorProfileResourceCollection self, uint32 index, out IXpsOMColorProfileResource* object) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMColorProfileResourceCollection self, uint32 index, ref IXpsOMColorProfileResource object) InsertAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMColorProfileResourceCollection self, uint32 index) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMColorProfileResourceCollection self, uint32 index, ref IXpsOMColorProfileResource object) SetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMColorProfileResourceCollection self, ref IXpsOMColorProfileResource object) Append;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMColorProfileResourceCollection self, ref IOpcPartUri partName, out IXpsOMColorProfileResource* part) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMPrintTicketResource : IXpsOMResource
		{
			public const new Guid IID = .(0xe7ff32d2, 0x34aa, 0x499b, 0xbb, 0xe9, 0x9c, 0xd4, 0xee, 0x6c, 0x59, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetStream(out IStream* stream) mut => VT.GetStream(ref this, out stream);
			public HResult SetContent(ref IStream sourceStream, ref IOpcPartUri partName) mut => VT.SetContent(ref this, ref sourceStream, ref partName);

			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPrintTicketResource self, out IStream* stream) GetStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPrintTicketResource self, ref IStream sourceStream, ref IOpcPartUri partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMRemoteDictionaryResource : IXpsOMResource
		{
			public const new Guid IID = .(0xc9bd7cd4, 0xe16a, 0x4bf8, 0x8c, 0x84, 0xc9, 0x50, 0xaf, 0x7a, 0x30, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetDictionary(out IXpsOMDictionary* dictionary) mut => VT.GetDictionary(ref this, out dictionary);
			public HResult SetDictionary(ref IXpsOMDictionary dictionary) mut => VT.SetDictionary(ref this, ref dictionary);

			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRemoteDictionaryResource self, out IXpsOMDictionary* dictionary) GetDictionary;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRemoteDictionaryResource self, ref IXpsOMDictionary dictionary) SetDictionary;
			}
		}
		[CRepr]
		public struct IXpsOMRemoteDictionaryResourceCollection : IUnknown
		{
			public const new Guid IID = .(0x5c38db61, 0x7fec, 0x464a, 0x87, 0xbd, 0x41, 0xe3, 0xbe, 0xf0, 0x18, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IXpsOMRemoteDictionaryResource* object) mut => VT.GetAt(ref this, index, out object);
			public HResult InsertAt(uint32 index, ref IXpsOMRemoteDictionaryResource object) mut => VT.InsertAt(ref this, index, ref object);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);
			public HResult SetAt(uint32 index, ref IXpsOMRemoteDictionaryResource object) mut => VT.SetAt(ref this, index, ref object);
			public HResult Append(ref IXpsOMRemoteDictionaryResource object) mut => VT.Append(ref this, ref object);
			public HResult GetByPartName(ref IOpcPartUri partName, out IXpsOMRemoteDictionaryResource* remoteDictionaryResource) mut => VT.GetByPartName(ref this, ref partName, out remoteDictionaryResource);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRemoteDictionaryResourceCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRemoteDictionaryResourceCollection self, uint32 index, out IXpsOMRemoteDictionaryResource* object) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRemoteDictionaryResourceCollection self, uint32 index, ref IXpsOMRemoteDictionaryResource object) InsertAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRemoteDictionaryResourceCollection self, uint32 index) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRemoteDictionaryResourceCollection self, uint32 index, ref IXpsOMRemoteDictionaryResource object) SetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRemoteDictionaryResourceCollection self, ref IXpsOMRemoteDictionaryResource object) Append;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRemoteDictionaryResourceCollection self, ref IOpcPartUri partName, out IXpsOMRemoteDictionaryResource* remoteDictionaryResource) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMSignatureBlockResourceCollection : IUnknown
		{
			public const new Guid IID = .(0xab8f5d8e, 0x351b, 0x4d33, 0xaa, 0xed, 0xfa, 0x56, 0xf0, 0x02, 0x29, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IXpsOMSignatureBlockResource* signatureBlockResource) mut => VT.GetAt(ref this, index, out signatureBlockResource);
			public HResult InsertAt(uint32 index, ref IXpsOMSignatureBlockResource signatureBlockResource) mut => VT.InsertAt(ref this, index, ref signatureBlockResource);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);
			public HResult SetAt(uint32 index, ref IXpsOMSignatureBlockResource signatureBlockResource) mut => VT.SetAt(ref this, index, ref signatureBlockResource);
			public HResult Append(ref IXpsOMSignatureBlockResource signatureBlockResource) mut => VT.Append(ref this, ref signatureBlockResource);
			public HResult GetByPartName(ref IOpcPartUri partName, out IXpsOMSignatureBlockResource* signatureBlockResource) mut => VT.GetByPartName(ref this, ref partName, out signatureBlockResource);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMSignatureBlockResourceCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMSignatureBlockResourceCollection self, uint32 index, out IXpsOMSignatureBlockResource* signatureBlockResource) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMSignatureBlockResourceCollection self, uint32 index, ref IXpsOMSignatureBlockResource signatureBlockResource) InsertAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMSignatureBlockResourceCollection self, uint32 index) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMSignatureBlockResourceCollection self, uint32 index, ref IXpsOMSignatureBlockResource signatureBlockResource) SetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMSignatureBlockResourceCollection self, ref IXpsOMSignatureBlockResource signatureBlockResource) Append;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMSignatureBlockResourceCollection self, ref IOpcPartUri partName, out IXpsOMSignatureBlockResource* signatureBlockResource) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMDocumentStructureResource : IXpsOMResource
		{
			public const new Guid IID = .(0x85febc8a, 0x6b63, 0x48a9, 0xaf, 0x07, 0x70, 0x64, 0xe4, 0xec, 0xff, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOwner(out IXpsOMDocument* owner) mut => VT.GetOwner(ref this, out owner);
			public HResult GetStream(out IStream* stream) mut => VT.GetStream(ref this, out stream);
			public HResult SetContent(ref IStream sourceStream, ref IOpcPartUri partName) mut => VT.SetContent(ref this, ref sourceStream, ref partName);

			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocumentStructureResource self, out IXpsOMDocument* owner) GetOwner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocumentStructureResource self, out IStream* stream) GetStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocumentStructureResource self, ref IStream sourceStream, ref IOpcPartUri partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMStoryFragmentsResource : IXpsOMResource
		{
			public const new Guid IID = .(0xc2b3ca09, 0x0473, 0x4282, 0x87, 0xae, 0x17, 0x80, 0x86, 0x32, 0x23, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOwner(out IXpsOMPageReference* owner) mut => VT.GetOwner(ref this, out owner);
			public HResult GetStream(out IStream* stream) mut => VT.GetStream(ref this, out stream);
			public HResult SetContent(ref IStream sourceStream, ref IOpcPartUri partName) mut => VT.SetContent(ref this, ref sourceStream, ref partName);

			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMStoryFragmentsResource self, out IXpsOMPageReference* owner) GetOwner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMStoryFragmentsResource self, out IStream* stream) GetStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMStoryFragmentsResource self, ref IStream sourceStream, ref IOpcPartUri partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMSignatureBlockResource : IXpsOMResource
		{
			public const new Guid IID = .(0x4776ad35, 0x2e04, 0x4357, 0x87, 0x43, 0xeb, 0xf6, 0xc1, 0x71, 0xa9, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOwner(out IXpsOMDocument* owner) mut => VT.GetOwner(ref this, out owner);
			public HResult GetStream(out IStream* stream) mut => VT.GetStream(ref this, out stream);
			public HResult SetContent(ref IStream sourceStream, ref IOpcPartUri partName) mut => VT.SetContent(ref this, ref sourceStream, ref partName);

			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMSignatureBlockResource self, out IXpsOMDocument* owner) GetOwner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMSignatureBlockResource self, out IStream* stream) GetStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMSignatureBlockResource self, ref IStream sourceStream, ref IOpcPartUri partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMVisualCollection : IUnknown
		{
			public const new Guid IID = .(0x94d8abde, 0xab91, 0x46a8, 0x82, 0xb7, 0xf5, 0xb0, 0x5e, 0xf0, 0x1a, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IXpsOMVisual* object) mut => VT.GetAt(ref this, index, out object);
			public HResult InsertAt(uint32 index, ref IXpsOMVisual object) mut => VT.InsertAt(ref this, index, ref object);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);
			public HResult SetAt(uint32 index, ref IXpsOMVisual object) mut => VT.SetAt(ref this, index, ref object);
			public HResult Append(ref IXpsOMVisual object) mut => VT.Append(ref this, ref object);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisualCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisualCollection self, uint32 index, out IXpsOMVisual* object) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisualCollection self, uint32 index, ref IXpsOMVisual object) InsertAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisualCollection self, uint32 index) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisualCollection self, uint32 index, ref IXpsOMVisual object) SetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMVisualCollection self, ref IXpsOMVisual object) Append;
			}
		}
		[CRepr]
		public struct IXpsOMCanvas : IXpsOMVisual
		{
			public const new Guid IID = .(0x221d1452, 0x331e, 0x47c6, 0x87, 0xe9, 0x6c, 0xce, 0xfb, 0x9b, 0x5b, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetVisuals(out IXpsOMVisualCollection* visuals) mut => VT.GetVisuals(ref this, out visuals);
			public HResult GetUseAliasedEdgeMode(out IntBool useAliasedEdgeMode) mut => VT.GetUseAliasedEdgeMode(ref this, out useAliasedEdgeMode);
			public HResult SetUseAliasedEdgeMode(IntBool useAliasedEdgeMode) mut => VT.SetUseAliasedEdgeMode(ref this, useAliasedEdgeMode);
			public HResult GetAccessibilityShortDescription(out char16* shortDescription) mut => VT.GetAccessibilityShortDescription(ref this, out shortDescription);
			public HResult SetAccessibilityShortDescription(char16* shortDescription) mut => VT.SetAccessibilityShortDescription(ref this, shortDescription);
			public HResult GetAccessibilityLongDescription(out char16* longDescription) mut => VT.GetAccessibilityLongDescription(ref this, out longDescription);
			public HResult SetAccessibilityLongDescription(char16* longDescription) mut => VT.SetAccessibilityLongDescription(ref this, longDescription);
			public HResult GetDictionary(out IXpsOMDictionary* resourceDictionary) mut => VT.GetDictionary(ref this, out resourceDictionary);
			public HResult GetDictionaryLocal(out IXpsOMDictionary* resourceDictionary) mut => VT.GetDictionaryLocal(ref this, out resourceDictionary);
			public HResult SetDictionaryLocal(ref IXpsOMDictionary resourceDictionary) mut => VT.SetDictionaryLocal(ref this, ref resourceDictionary);
			public HResult GetDictionaryResource(out IXpsOMRemoteDictionaryResource* remoteDictionaryResource) mut => VT.GetDictionaryResource(ref this, out remoteDictionaryResource);
			public HResult SetDictionaryResource(ref IXpsOMRemoteDictionaryResource remoteDictionaryResource) mut => VT.SetDictionaryResource(ref this, ref remoteDictionaryResource);
			public HResult Clone(out IXpsOMCanvas* canvas) mut => VT.Clone(ref this, out canvas);

			[CRepr]
			public struct VTable : IXpsOMVisual.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCanvas self, out IXpsOMVisualCollection* visuals) GetVisuals;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCanvas self, out IntBool useAliasedEdgeMode) GetUseAliasedEdgeMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCanvas self, IntBool useAliasedEdgeMode) SetUseAliasedEdgeMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCanvas self, out char16* shortDescription) GetAccessibilityShortDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCanvas self, char16* shortDescription) SetAccessibilityShortDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCanvas self, out char16* longDescription) GetAccessibilityLongDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCanvas self, char16* longDescription) SetAccessibilityLongDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCanvas self, out IXpsOMDictionary* resourceDictionary) GetDictionary;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCanvas self, out IXpsOMDictionary* resourceDictionary) GetDictionaryLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCanvas self, ref IXpsOMDictionary resourceDictionary) SetDictionaryLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCanvas self, out IXpsOMRemoteDictionaryResource* remoteDictionaryResource) GetDictionaryResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCanvas self, ref IXpsOMRemoteDictionaryResource remoteDictionaryResource) SetDictionaryResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCanvas self, out IXpsOMCanvas* canvas) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMPage : IXpsOMPart
		{
			public const new Guid IID = .(0xd3e18888, 0xf120, 0x4fee, 0x8c, 0x68, 0x35, 0x29, 0x6e, 0xae, 0x91, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOwner(out IXpsOMPageReference* pageReference) mut => VT.GetOwner(ref this, out pageReference);
			public HResult GetVisuals(out IXpsOMVisualCollection* visuals) mut => VT.GetVisuals(ref this, out visuals);
			public HResult GetPageDimensions(out XPS_SIZE pageDimensions) mut => VT.GetPageDimensions(ref this, out pageDimensions);
			public HResult SetPageDimensions(in XPS_SIZE pageDimensions) mut => VT.SetPageDimensions(ref this, pageDimensions);
			public HResult GetContentBox(out XPS_RECT contentBox) mut => VT.GetContentBox(ref this, out contentBox);
			public HResult SetContentBox(in XPS_RECT contentBox) mut => VT.SetContentBox(ref this, contentBox);
			public HResult GetBleedBox(out XPS_RECT bleedBox) mut => VT.GetBleedBox(ref this, out bleedBox);
			public HResult SetBleedBox(in XPS_RECT bleedBox) mut => VT.SetBleedBox(ref this, bleedBox);
			public HResult GetLanguage(out char16* language) mut => VT.GetLanguage(ref this, out language);
			public HResult SetLanguage(char16* language) mut => VT.SetLanguage(ref this, language);
			public HResult GetName(out char16* name) mut => VT.GetName(ref this, out name);
			public HResult SetName(char16* name) mut => VT.SetName(ref this, name);
			public HResult GetIsHyperlinkTarget(out IntBool isHyperlinkTarget) mut => VT.GetIsHyperlinkTarget(ref this, out isHyperlinkTarget);
			public HResult SetIsHyperlinkTarget(IntBool isHyperlinkTarget) mut => VT.SetIsHyperlinkTarget(ref this, isHyperlinkTarget);
			public HResult GetDictionary(out IXpsOMDictionary* resourceDictionary) mut => VT.GetDictionary(ref this, out resourceDictionary);
			public HResult GetDictionaryLocal(out IXpsOMDictionary* resourceDictionary) mut => VT.GetDictionaryLocal(ref this, out resourceDictionary);
			public HResult SetDictionaryLocal(ref IXpsOMDictionary resourceDictionary) mut => VT.SetDictionaryLocal(ref this, ref resourceDictionary);
			public HResult GetDictionaryResource(out IXpsOMRemoteDictionaryResource* remoteDictionaryResource) mut => VT.GetDictionaryResource(ref this, out remoteDictionaryResource);
			public HResult SetDictionaryResource(ref IXpsOMRemoteDictionaryResource remoteDictionaryResource) mut => VT.SetDictionaryResource(ref this, ref remoteDictionaryResource);
			public HResult Write(ref ISequentialStream stream, IntBool optimizeMarkupSize) mut => VT.Write(ref this, ref stream, optimizeMarkupSize);
			public HResult GenerateUnusedLookupKey(XPS_OBJECT_TYPE type, out char16* key) mut => VT.GenerateUnusedLookupKey(ref this, type, out key);
			public HResult Clone(out IXpsOMPage* page) mut => VT.Clone(ref this, out page);

			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, out IXpsOMPageReference* pageReference) GetOwner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, out IXpsOMVisualCollection* visuals) GetVisuals;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, out XPS_SIZE pageDimensions) GetPageDimensions;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, in XPS_SIZE pageDimensions) SetPageDimensions;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, out XPS_RECT contentBox) GetContentBox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, in XPS_RECT contentBox) SetContentBox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, out XPS_RECT bleedBox) GetBleedBox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, in XPS_RECT bleedBox) SetBleedBox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, out char16* language) GetLanguage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, char16* language) SetLanguage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, out char16* name) GetName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, char16* name) SetName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, out IntBool isHyperlinkTarget) GetIsHyperlinkTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, IntBool isHyperlinkTarget) SetIsHyperlinkTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, out IXpsOMDictionary* resourceDictionary) GetDictionary;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, out IXpsOMDictionary* resourceDictionary) GetDictionaryLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, ref IXpsOMDictionary resourceDictionary) SetDictionaryLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, out IXpsOMRemoteDictionaryResource* remoteDictionaryResource) GetDictionaryResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, ref IXpsOMRemoteDictionaryResource remoteDictionaryResource) SetDictionaryResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, ref ISequentialStream stream, IntBool optimizeMarkupSize) Write;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, XPS_OBJECT_TYPE type, out char16* key) GenerateUnusedLookupKey;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage self, out IXpsOMPage* page) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMPageReference : IUnknown
		{
			public const new Guid IID = .(0xed360180, 0x6f92, 0x4998, 0x89, 0x0d, 0x2f, 0x20, 0x85, 0x31, 0xa0, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOwner(out IXpsOMDocument* document) mut => VT.GetOwner(ref this, out document);
			public HResult GetPage(out IXpsOMPage* page) mut => VT.GetPage(ref this, out page);
			public HResult SetPage(ref IXpsOMPage page) mut => VT.SetPage(ref this, ref page);
			public HResult DiscardPage() mut => VT.DiscardPage(ref this);
			public HResult IsPageLoaded(out IntBool isPageLoaded) mut => VT.IsPageLoaded(ref this, out isPageLoaded);
			public HResult GetAdvisoryPageDimensions(out XPS_SIZE pageDimensions) mut => VT.GetAdvisoryPageDimensions(ref this, out pageDimensions);
			public HResult SetAdvisoryPageDimensions(in XPS_SIZE pageDimensions) mut => VT.SetAdvisoryPageDimensions(ref this, pageDimensions);
			public HResult GetStoryFragmentsResource(out IXpsOMStoryFragmentsResource* storyFragmentsResource) mut => VT.GetStoryFragmentsResource(ref this, out storyFragmentsResource);
			public HResult SetStoryFragmentsResource(ref IXpsOMStoryFragmentsResource storyFragmentsResource) mut => VT.SetStoryFragmentsResource(ref this, ref storyFragmentsResource);
			public HResult GetPrintTicketResource(out IXpsOMPrintTicketResource* printTicketResource) mut => VT.GetPrintTicketResource(ref this, out printTicketResource);
			public HResult SetPrintTicketResource(ref IXpsOMPrintTicketResource printTicketResource) mut => VT.SetPrintTicketResource(ref this, ref printTicketResource);
			public HResult GetThumbnailResource(out IXpsOMImageResource* imageResource) mut => VT.GetThumbnailResource(ref this, out imageResource);
			public HResult SetThumbnailResource(ref IXpsOMImageResource imageResource) mut => VT.SetThumbnailResource(ref this, ref imageResource);
			public HResult CollectLinkTargets(out IXpsOMNameCollection* linkTargets) mut => VT.CollectLinkTargets(ref this, out linkTargets);
			public HResult CollectPartResources(out IXpsOMPartResources* partResources) mut => VT.CollectPartResources(ref this, out partResources);
			public HResult HasRestrictedFonts(out IntBool restrictedFonts) mut => VT.HasRestrictedFonts(ref this, out restrictedFonts);
			public HResult Clone(out IXpsOMPageReference* pageReference) mut => VT.Clone(ref this, out pageReference);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, out IXpsOMDocument* document) GetOwner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, out IXpsOMPage* page) GetPage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, ref IXpsOMPage page) SetPage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self) DiscardPage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, out IntBool isPageLoaded) IsPageLoaded;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, out XPS_SIZE pageDimensions) GetAdvisoryPageDimensions;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, in XPS_SIZE pageDimensions) SetAdvisoryPageDimensions;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, out IXpsOMStoryFragmentsResource* storyFragmentsResource) GetStoryFragmentsResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, ref IXpsOMStoryFragmentsResource storyFragmentsResource) SetStoryFragmentsResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, out IXpsOMPrintTicketResource* printTicketResource) GetPrintTicketResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, ref IXpsOMPrintTicketResource printTicketResource) SetPrintTicketResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, out IXpsOMImageResource* imageResource) GetThumbnailResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, ref IXpsOMImageResource imageResource) SetThumbnailResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, out IXpsOMNameCollection* linkTargets) CollectLinkTargets;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, out IXpsOMPartResources* partResources) CollectPartResources;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, out IntBool restrictedFonts) HasRestrictedFonts;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReference self, out IXpsOMPageReference* pageReference) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMPageReferenceCollection : IUnknown
		{
			public const new Guid IID = .(0xca16ba4d, 0xe7b9, 0x45c5, 0x95, 0x8b, 0xf9, 0x80, 0x22, 0x47, 0x37, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IXpsOMPageReference* pageReference) mut => VT.GetAt(ref this, index, out pageReference);
			public HResult InsertAt(uint32 index, ref IXpsOMPageReference pageReference) mut => VT.InsertAt(ref this, index, ref pageReference);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);
			public HResult SetAt(uint32 index, ref IXpsOMPageReference pageReference) mut => VT.SetAt(ref this, index, ref pageReference);
			public HResult Append(ref IXpsOMPageReference pageReference) mut => VT.Append(ref this, ref pageReference);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReferenceCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReferenceCollection self, uint32 index, out IXpsOMPageReference* pageReference) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReferenceCollection self, uint32 index, ref IXpsOMPageReference pageReference) InsertAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReferenceCollection self, uint32 index) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReferenceCollection self, uint32 index, ref IXpsOMPageReference pageReference) SetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPageReferenceCollection self, ref IXpsOMPageReference pageReference) Append;
			}
		}
		[CRepr]
		public struct IXpsOMDocument : IXpsOMPart
		{
			public const new Guid IID = .(0x2c2c94cb, 0xac5f, 0x4254, 0x8e, 0xe9, 0x23, 0x94, 0x83, 0x09, 0xd9, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOwner(out IXpsOMDocumentSequence* documentSequence) mut => VT.GetOwner(ref this, out documentSequence);
			public HResult GetPageReferences(out IXpsOMPageReferenceCollection* pageReferences) mut => VT.GetPageReferences(ref this, out pageReferences);
			public HResult GetPrintTicketResource(out IXpsOMPrintTicketResource* printTicketResource) mut => VT.GetPrintTicketResource(ref this, out printTicketResource);
			public HResult SetPrintTicketResource(ref IXpsOMPrintTicketResource printTicketResource) mut => VT.SetPrintTicketResource(ref this, ref printTicketResource);
			public HResult GetDocumentStructureResource(out IXpsOMDocumentStructureResource* documentStructureResource) mut => VT.GetDocumentStructureResource(ref this, out documentStructureResource);
			public HResult SetDocumentStructureResource(ref IXpsOMDocumentStructureResource documentStructureResource) mut => VT.SetDocumentStructureResource(ref this, ref documentStructureResource);
			public HResult GetSignatureBlockResources(out IXpsOMSignatureBlockResourceCollection* signatureBlockResources) mut => VT.GetSignatureBlockResources(ref this, out signatureBlockResources);
			public HResult Clone(out IXpsOMDocument* document) mut => VT.Clone(ref this, out document);

			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocument self, out IXpsOMDocumentSequence* documentSequence) GetOwner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocument self, out IXpsOMPageReferenceCollection* pageReferences) GetPageReferences;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocument self, out IXpsOMPrintTicketResource* printTicketResource) GetPrintTicketResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocument self, ref IXpsOMPrintTicketResource printTicketResource) SetPrintTicketResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocument self, out IXpsOMDocumentStructureResource* documentStructureResource) GetDocumentStructureResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocument self, ref IXpsOMDocumentStructureResource documentStructureResource) SetDocumentStructureResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocument self, out IXpsOMSignatureBlockResourceCollection* signatureBlockResources) GetSignatureBlockResources;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocument self, out IXpsOMDocument* document) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMDocumentCollection : IUnknown
		{
			public const new Guid IID = .(0xd1c87f0d, 0xe947, 0x4754, 0x8a, 0x25, 0x97, 0x14, 0x78, 0xf7, 0xe8, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IXpsOMDocument* document) mut => VT.GetAt(ref this, index, out document);
			public HResult InsertAt(uint32 index, ref IXpsOMDocument document) mut => VT.InsertAt(ref this, index, ref document);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);
			public HResult SetAt(uint32 index, ref IXpsOMDocument document) mut => VT.SetAt(ref this, index, ref document);
			public HResult Append(ref IXpsOMDocument document) mut => VT.Append(ref this, ref document);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocumentCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocumentCollection self, uint32 index, out IXpsOMDocument* document) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocumentCollection self, uint32 index, ref IXpsOMDocument document) InsertAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocumentCollection self, uint32 index) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocumentCollection self, uint32 index, ref IXpsOMDocument document) SetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocumentCollection self, ref IXpsOMDocument document) Append;
			}
		}
		[CRepr]
		public struct IXpsOMDocumentSequence : IXpsOMPart
		{
			public const new Guid IID = .(0x56492eb4, 0xd8d5, 0x425e, 0x82, 0x56, 0x4c, 0x2b, 0x64, 0xad, 0x02, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOwner(out IXpsOMPackage* package) mut => VT.GetOwner(ref this, out package);
			public HResult GetDocuments(out IXpsOMDocumentCollection* documents) mut => VT.GetDocuments(ref this, out documents);
			public HResult GetPrintTicketResource(out IXpsOMPrintTicketResource* printTicketResource) mut => VT.GetPrintTicketResource(ref this, out printTicketResource);
			public HResult SetPrintTicketResource(ref IXpsOMPrintTicketResource printTicketResource) mut => VT.SetPrintTicketResource(ref this, ref printTicketResource);

			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocumentSequence self, out IXpsOMPackage* package) GetOwner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocumentSequence self, out IXpsOMDocumentCollection* documents) GetDocuments;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocumentSequence self, out IXpsOMPrintTicketResource* printTicketResource) GetPrintTicketResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMDocumentSequence self, ref IXpsOMPrintTicketResource printTicketResource) SetPrintTicketResource;
			}
		}
		[CRepr]
		public struct IXpsOMCoreProperties : IXpsOMPart
		{
			public const new Guid IID = .(0x3340fe8f, 0x4027, 0x4aa1, 0x8f, 0x5f, 0xd3, 0x5a, 0xe4, 0x5f, 0xe5, 0x97);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOwner(out IXpsOMPackage* package) mut => VT.GetOwner(ref this, out package);
			public HResult GetCategory(out char16* category) mut => VT.GetCategory(ref this, out category);
			public HResult SetCategory(char16* category) mut => VT.SetCategory(ref this, category);
			public HResult GetContentStatus(out char16* contentStatus) mut => VT.GetContentStatus(ref this, out contentStatus);
			public HResult SetContentStatus(char16* contentStatus) mut => VT.SetContentStatus(ref this, contentStatus);
			public HResult GetContentType(out char16* contentType) mut => VT.GetContentType(ref this, out contentType);
			public HResult SetContentType(char16* contentType) mut => VT.SetContentType(ref this, contentType);
			public HResult GetCreated(out SYSTEMTIME created) mut => VT.GetCreated(ref this, out created);
			public HResult SetCreated(in SYSTEMTIME created) mut => VT.SetCreated(ref this, created);
			public HResult GetCreator(out char16* creator) mut => VT.GetCreator(ref this, out creator);
			public HResult SetCreator(char16* creator) mut => VT.SetCreator(ref this, creator);
			public HResult GetDescription(out char16* description) mut => VT.GetDescription(ref this, out description);
			public HResult SetDescription(char16* description) mut => VT.SetDescription(ref this, description);
			public HResult GetIdentifier(out char16* identifier) mut => VT.GetIdentifier(ref this, out identifier);
			public HResult SetIdentifier(char16* identifier) mut => VT.SetIdentifier(ref this, identifier);
			public HResult GetKeywords(out char16* keywords) mut => VT.GetKeywords(ref this, out keywords);
			public HResult SetKeywords(char16* keywords) mut => VT.SetKeywords(ref this, keywords);
			public HResult GetLanguage(out char16* language) mut => VT.GetLanguage(ref this, out language);
			public HResult SetLanguage(char16* language) mut => VT.SetLanguage(ref this, language);
			public HResult GetLastModifiedBy(out char16* lastModifiedBy) mut => VT.GetLastModifiedBy(ref this, out lastModifiedBy);
			public HResult SetLastModifiedBy(char16* lastModifiedBy) mut => VT.SetLastModifiedBy(ref this, lastModifiedBy);
			public HResult GetLastPrinted(out SYSTEMTIME lastPrinted) mut => VT.GetLastPrinted(ref this, out lastPrinted);
			public HResult SetLastPrinted(in SYSTEMTIME lastPrinted) mut => VT.SetLastPrinted(ref this, lastPrinted);
			public HResult GetModified(out SYSTEMTIME modified) mut => VT.GetModified(ref this, out modified);
			public HResult SetModified(in SYSTEMTIME modified) mut => VT.SetModified(ref this, modified);
			public HResult GetRevision(out char16* revision) mut => VT.GetRevision(ref this, out revision);
			public HResult SetRevision(char16* revision) mut => VT.SetRevision(ref this, revision);
			public HResult GetSubject(out char16* subject) mut => VT.GetSubject(ref this, out subject);
			public HResult SetSubject(char16* subject) mut => VT.SetSubject(ref this, subject);
			public HResult GetTitle(out char16* title) mut => VT.GetTitle(ref this, out title);
			public HResult SetTitle(char16* title) mut => VT.SetTitle(ref this, title);
			public HResult GetVersion(out char16* version) mut => VT.GetVersion(ref this, out version);
			public HResult SetVersion(char16* version) mut => VT.SetVersion(ref this, version);
			public HResult Clone(out IXpsOMCoreProperties* coreProperties) mut => VT.Clone(ref this, out coreProperties);

			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out IXpsOMPackage* package) GetOwner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out char16* category) GetCategory;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, char16* category) SetCategory;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out char16* contentStatus) GetContentStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, char16* contentStatus) SetContentStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out char16* contentType) GetContentType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, char16* contentType) SetContentType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out SYSTEMTIME created) GetCreated;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, in SYSTEMTIME created) SetCreated;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out char16* creator) GetCreator;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, char16* creator) SetCreator;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out char16* description) GetDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, char16* description) SetDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out char16* identifier) GetIdentifier;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, char16* identifier) SetIdentifier;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out char16* keywords) GetKeywords;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, char16* keywords) SetKeywords;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out char16* language) GetLanguage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, char16* language) SetLanguage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out char16* lastModifiedBy) GetLastModifiedBy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, char16* lastModifiedBy) SetLastModifiedBy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out SYSTEMTIME lastPrinted) GetLastPrinted;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, in SYSTEMTIME lastPrinted) SetLastPrinted;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out SYSTEMTIME modified) GetModified;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, in SYSTEMTIME modified) SetModified;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out char16* revision) GetRevision;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, char16* revision) SetRevision;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out char16* subject) GetSubject;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, char16* subject) SetSubject;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out char16* title) GetTitle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, char16* title) SetTitle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out char16* version) GetVersion;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, char16* version) SetVersion;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMCoreProperties self, out IXpsOMCoreProperties* coreProperties) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMPackage : IUnknown
		{
			public const new Guid IID = .(0x18c3df65, 0x81e1, 0x4674, 0x91, 0xdc, 0xfc, 0x45, 0x2f, 0x5a, 0x41, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetDocumentSequence(out IXpsOMDocumentSequence* documentSequence) mut => VT.GetDocumentSequence(ref this, out documentSequence);
			public HResult SetDocumentSequence(ref IXpsOMDocumentSequence documentSequence) mut => VT.SetDocumentSequence(ref this, ref documentSequence);
			public HResult GetCoreProperties(out IXpsOMCoreProperties* coreProperties) mut => VT.GetCoreProperties(ref this, out coreProperties);
			public HResult SetCoreProperties(ref IXpsOMCoreProperties coreProperties) mut => VT.SetCoreProperties(ref this, ref coreProperties);
			public HResult GetDiscardControlPartName(out IOpcPartUri* discardControlPartUri) mut => VT.GetDiscardControlPartName(ref this, out discardControlPartUri);
			public HResult SetDiscardControlPartName(ref IOpcPartUri discardControlPartUri) mut => VT.SetDiscardControlPartName(ref this, ref discardControlPartUri);
			public HResult GetThumbnailResource(out IXpsOMImageResource* imageResource) mut => VT.GetThumbnailResource(ref this, out imageResource);
			public HResult SetThumbnailResource(ref IXpsOMImageResource imageResource) mut => VT.SetThumbnailResource(ref this, ref imageResource);
			public HResult WriteToFile(char16* fileName, ref SecurityAttributes securityAttributes, uint32 flagsAndAttributes, IntBool optimizeMarkupSize) mut => VT.WriteToFile(ref this, fileName, ref securityAttributes, flagsAndAttributes, optimizeMarkupSize);
			public HResult WriteToStream(ref ISequentialStream stream, IntBool optimizeMarkupSize) mut => VT.WriteToStream(ref this, ref stream, optimizeMarkupSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackage self, out IXpsOMDocumentSequence* documentSequence) GetDocumentSequence;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackage self, ref IXpsOMDocumentSequence documentSequence) SetDocumentSequence;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackage self, out IXpsOMCoreProperties* coreProperties) GetCoreProperties;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackage self, ref IXpsOMCoreProperties coreProperties) SetCoreProperties;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackage self, out IOpcPartUri* discardControlPartUri) GetDiscardControlPartName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackage self, ref IOpcPartUri discardControlPartUri) SetDiscardControlPartName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackage self, out IXpsOMImageResource* imageResource) GetThumbnailResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackage self, ref IXpsOMImageResource imageResource) SetThumbnailResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackage self, char16* fileName, ref SecurityAttributes securityAttributes, uint32 flagsAndAttributes, IntBool optimizeMarkupSize) WriteToFile;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackage self, ref ISequentialStream stream, IntBool optimizeMarkupSize) WriteToStream;
			}
		}
		[CRepr]
		public struct IXpsOMObjectFactory : IUnknown
		{
			public const new Guid IID = .(0xf9b2a685, 0xa50d, 0x4fc2, 0xb7, 0x64, 0xb5, 0x6e, 0x09, 0x3e, 0xa0, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreatePackage(out IXpsOMPackage* package) mut => VT.CreatePackage(ref this, out package);
			public HResult CreatePackageFromFile(char16* filename, IntBool reuseObjects, out IXpsOMPackage* package) mut => VT.CreatePackageFromFile(ref this, filename, reuseObjects, out package);
			public HResult CreatePackageFromStream(ref IStream stream, IntBool reuseObjects, out IXpsOMPackage* package) mut => VT.CreatePackageFromStream(ref this, ref stream, reuseObjects, out package);
			public HResult CreateStoryFragmentsResource(ref IStream acquiredStream, ref IOpcPartUri partUri, out IXpsOMStoryFragmentsResource* storyFragmentsResource) mut => VT.CreateStoryFragmentsResource(ref this, ref acquiredStream, ref partUri, out storyFragmentsResource);
			public HResult CreateDocumentStructureResource(ref IStream acquiredStream, ref IOpcPartUri partUri, out IXpsOMDocumentStructureResource* documentStructureResource) mut => VT.CreateDocumentStructureResource(ref this, ref acquiredStream, ref partUri, out documentStructureResource);
			public HResult CreateSignatureBlockResource(ref IStream acquiredStream, ref IOpcPartUri partUri, out IXpsOMSignatureBlockResource* signatureBlockResource) mut => VT.CreateSignatureBlockResource(ref this, ref acquiredStream, ref partUri, out signatureBlockResource);
			public HResult CreateRemoteDictionaryResource(ref IXpsOMDictionary dictionary, ref IOpcPartUri partUri, out IXpsOMRemoteDictionaryResource* remoteDictionaryResource) mut => VT.CreateRemoteDictionaryResource(ref this, ref dictionary, ref partUri, out remoteDictionaryResource);
			public HResult CreateRemoteDictionaryResourceFromStream(ref IStream dictionaryMarkupStream, ref IOpcPartUri dictionaryPartUri, ref IXpsOMPartResources resources, out IXpsOMRemoteDictionaryResource* dictionaryResource) mut => VT.CreateRemoteDictionaryResourceFromStream(ref this, ref dictionaryMarkupStream, ref dictionaryPartUri, ref resources, out dictionaryResource);
			public HResult CreatePartResources(out IXpsOMPartResources* partResources) mut => VT.CreatePartResources(ref this, out partResources);
			public HResult CreateDocumentSequence(ref IOpcPartUri partUri, out IXpsOMDocumentSequence* documentSequence) mut => VT.CreateDocumentSequence(ref this, ref partUri, out documentSequence);
			public HResult CreateDocument(ref IOpcPartUri partUri, out IXpsOMDocument* document) mut => VT.CreateDocument(ref this, ref partUri, out document);
			public HResult CreatePageReference(in XPS_SIZE advisoryPageDimensions, out IXpsOMPageReference* pageReference) mut => VT.CreatePageReference(ref this, advisoryPageDimensions, out pageReference);
			public HResult CreatePage(in XPS_SIZE pageDimensions, char16* language, ref IOpcPartUri partUri, out IXpsOMPage* page) mut => VT.CreatePage(ref this, pageDimensions, language, ref partUri, out page);
			public HResult CreatePageFromStream(ref IStream pageMarkupStream, ref IOpcPartUri partUri, ref IXpsOMPartResources resources, IntBool reuseObjects, out IXpsOMPage* page) mut => VT.CreatePageFromStream(ref this, ref pageMarkupStream, ref partUri, ref resources, reuseObjects, out page);
			public HResult CreateCanvas(out IXpsOMCanvas* canvas) mut => VT.CreateCanvas(ref this, out canvas);
			public HResult CreateGlyphs(ref IXpsOMFontResource fontResource, out IXpsOMGlyphs* glyphs) mut => VT.CreateGlyphs(ref this, ref fontResource, out glyphs);
			public HResult CreatePath(out IXpsOMPath* path) mut => VT.CreatePath(ref this, out path);
			public HResult CreateGeometry(out IXpsOMGeometry* geometry) mut => VT.CreateGeometry(ref this, out geometry);
			public HResult CreateGeometryFigure(in XPS_POINT startPoint, out IXpsOMGeometryFigure* figure) mut => VT.CreateGeometryFigure(ref this, startPoint, out figure);
			public HResult CreateMatrixTransform(in XPS_MATRIX matrix, out IXpsOMMatrixTransform* transform) mut => VT.CreateMatrixTransform(ref this, matrix, out transform);
			public HResult CreateSolidColorBrush(in XPS_COLOR color, ref IXpsOMColorProfileResource colorProfile, out IXpsOMSolidColorBrush* solidColorBrush) mut => VT.CreateSolidColorBrush(ref this, color, ref colorProfile, out solidColorBrush);
			public HResult CreateColorProfileResource(ref IStream acquiredStream, ref IOpcPartUri partUri, out IXpsOMColorProfileResource* colorProfileResource) mut => VT.CreateColorProfileResource(ref this, ref acquiredStream, ref partUri, out colorProfileResource);
			public HResult CreateImageBrush(ref IXpsOMImageResource image, in XPS_RECT viewBox, in XPS_RECT viewPort, out IXpsOMImageBrush* imageBrush) mut => VT.CreateImageBrush(ref this, ref image, viewBox, viewPort, out imageBrush);
			public HResult CreateVisualBrush(in XPS_RECT viewBox, in XPS_RECT viewPort, out IXpsOMVisualBrush* visualBrush) mut => VT.CreateVisualBrush(ref this, viewBox, viewPort, out visualBrush);
			public HResult CreateImageResource(ref IStream acquiredStream, XPS_IMAGE_TYPE contentType, ref IOpcPartUri partUri, out IXpsOMImageResource* imageResource) mut => VT.CreateImageResource(ref this, ref acquiredStream, contentType, ref partUri, out imageResource);
			public HResult CreatePrintTicketResource(ref IStream acquiredStream, ref IOpcPartUri partUri, out IXpsOMPrintTicketResource* printTicketResource) mut => VT.CreatePrintTicketResource(ref this, ref acquiredStream, ref partUri, out printTicketResource);
			public HResult CreateFontResource(ref IStream acquiredStream, XPS_FONT_EMBEDDING fontEmbedding, ref IOpcPartUri partUri, IntBool isObfSourceStream, out IXpsOMFontResource* fontResource) mut => VT.CreateFontResource(ref this, ref acquiredStream, fontEmbedding, ref partUri, isObfSourceStream, out fontResource);
			public HResult CreateGradientStop(in XPS_COLOR color, ref IXpsOMColorProfileResource colorProfile, float offset, out IXpsOMGradientStop* gradientStop) mut => VT.CreateGradientStop(ref this, color, ref colorProfile, offset, out gradientStop);
			public HResult CreateLinearGradientBrush(ref IXpsOMGradientStop gradStop1, ref IXpsOMGradientStop gradStop2, in XPS_POINT startPoint, in XPS_POINT endPoint, out IXpsOMLinearGradientBrush* linearGradientBrush) mut => VT.CreateLinearGradientBrush(ref this, ref gradStop1, ref gradStop2, startPoint, endPoint, out linearGradientBrush);
			public HResult CreateRadialGradientBrush(ref IXpsOMGradientStop gradStop1, ref IXpsOMGradientStop gradStop2, in XPS_POINT centerPoint, in XPS_POINT gradientOrigin, in XPS_SIZE radiiSizes, out IXpsOMRadialGradientBrush* radialGradientBrush) mut => VT.CreateRadialGradientBrush(ref this, ref gradStop1, ref gradStop2, centerPoint, gradientOrigin, radiiSizes, out radialGradientBrush);
			public HResult CreateCoreProperties(ref IOpcPartUri partUri, out IXpsOMCoreProperties* coreProperties) mut => VT.CreateCoreProperties(ref this, ref partUri, out coreProperties);
			public HResult CreateDictionary(out IXpsOMDictionary* dictionary) mut => VT.CreateDictionary(ref this, out dictionary);
			public HResult CreatePartUriCollection(out IXpsOMPartUriCollection* partUriCollection) mut => VT.CreatePartUriCollection(ref this, out partUriCollection);
			public HResult CreatePackageWriterOnFile(char16* fileName, ref SecurityAttributes securityAttributes, uint32 flagsAndAttributes, IntBool optimizeMarkupSize, XPS_INTERLEAVING interleaving, ref IOpcPartUri documentSequencePartName, ref IXpsOMCoreProperties coreProperties, ref IXpsOMImageResource packageThumbnail, ref IXpsOMPrintTicketResource documentSequencePrintTicket, ref IOpcPartUri discardControlPartName, out IXpsOMPackageWriter* packageWriter) mut => VT.CreatePackageWriterOnFile(ref this, fileName, ref securityAttributes, flagsAndAttributes, optimizeMarkupSize, interleaving, ref documentSequencePartName, ref coreProperties, ref packageThumbnail, ref documentSequencePrintTicket, ref discardControlPartName, out packageWriter);
			public HResult CreatePackageWriterOnStream(ref ISequentialStream outputStream, IntBool optimizeMarkupSize, XPS_INTERLEAVING interleaving, ref IOpcPartUri documentSequencePartName, ref IXpsOMCoreProperties coreProperties, ref IXpsOMImageResource packageThumbnail, ref IXpsOMPrintTicketResource documentSequencePrintTicket, ref IOpcPartUri discardControlPartName, out IXpsOMPackageWriter* packageWriter) mut => VT.CreatePackageWriterOnStream(ref this, ref outputStream, optimizeMarkupSize, interleaving, ref documentSequencePartName, ref coreProperties, ref packageThumbnail, ref documentSequencePrintTicket, ref discardControlPartName, out packageWriter);
			public HResult CreatePartUri(char16* uri, out IOpcPartUri* partUri) mut => VT.CreatePartUri(ref this, uri, out partUri);
			public HResult CreateReadOnlyStreamOnFile(char16* filename, out IStream* stream) mut => VT.CreateReadOnlyStreamOnFile(ref this, filename, out stream);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, out IXpsOMPackage* package) CreatePackage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, char16* filename, IntBool reuseObjects, out IXpsOMPackage* package) CreatePackageFromFile;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IStream stream, IntBool reuseObjects, out IXpsOMPackage* package) CreatePackageFromStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IStream acquiredStream, ref IOpcPartUri partUri, out IXpsOMStoryFragmentsResource* storyFragmentsResource) CreateStoryFragmentsResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IStream acquiredStream, ref IOpcPartUri partUri, out IXpsOMDocumentStructureResource* documentStructureResource) CreateDocumentStructureResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IStream acquiredStream, ref IOpcPartUri partUri, out IXpsOMSignatureBlockResource* signatureBlockResource) CreateSignatureBlockResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IXpsOMDictionary dictionary, ref IOpcPartUri partUri, out IXpsOMRemoteDictionaryResource* remoteDictionaryResource) CreateRemoteDictionaryResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IStream dictionaryMarkupStream, ref IOpcPartUri dictionaryPartUri, ref IXpsOMPartResources resources, out IXpsOMRemoteDictionaryResource* dictionaryResource) CreateRemoteDictionaryResourceFromStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, out IXpsOMPartResources* partResources) CreatePartResources;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IOpcPartUri partUri, out IXpsOMDocumentSequence* documentSequence) CreateDocumentSequence;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IOpcPartUri partUri, out IXpsOMDocument* document) CreateDocument;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, in XPS_SIZE advisoryPageDimensions, out IXpsOMPageReference* pageReference) CreatePageReference;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, in XPS_SIZE pageDimensions, char16* language, ref IOpcPartUri partUri, out IXpsOMPage* page) CreatePage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IStream pageMarkupStream, ref IOpcPartUri partUri, ref IXpsOMPartResources resources, IntBool reuseObjects, out IXpsOMPage* page) CreatePageFromStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, out IXpsOMCanvas* canvas) CreateCanvas;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IXpsOMFontResource fontResource, out IXpsOMGlyphs* glyphs) CreateGlyphs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, out IXpsOMPath* path) CreatePath;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, out IXpsOMGeometry* geometry) CreateGeometry;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, in XPS_POINT startPoint, out IXpsOMGeometryFigure* figure) CreateGeometryFigure;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, in XPS_MATRIX matrix, out IXpsOMMatrixTransform* transform) CreateMatrixTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, in XPS_COLOR color, ref IXpsOMColorProfileResource colorProfile, out IXpsOMSolidColorBrush* solidColorBrush) CreateSolidColorBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IStream acquiredStream, ref IOpcPartUri partUri, out IXpsOMColorProfileResource* colorProfileResource) CreateColorProfileResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IXpsOMImageResource image, in XPS_RECT viewBox, in XPS_RECT viewPort, out IXpsOMImageBrush* imageBrush) CreateImageBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, in XPS_RECT viewBox, in XPS_RECT viewPort, out IXpsOMVisualBrush* visualBrush) CreateVisualBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IStream acquiredStream, XPS_IMAGE_TYPE contentType, ref IOpcPartUri partUri, out IXpsOMImageResource* imageResource) CreateImageResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IStream acquiredStream, ref IOpcPartUri partUri, out IXpsOMPrintTicketResource* printTicketResource) CreatePrintTicketResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IStream acquiredStream, XPS_FONT_EMBEDDING fontEmbedding, ref IOpcPartUri partUri, IntBool isObfSourceStream, out IXpsOMFontResource* fontResource) CreateFontResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, in XPS_COLOR color, ref IXpsOMColorProfileResource colorProfile, float offset, out IXpsOMGradientStop* gradientStop) CreateGradientStop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IXpsOMGradientStop gradStop1, ref IXpsOMGradientStop gradStop2, in XPS_POINT startPoint, in XPS_POINT endPoint, out IXpsOMLinearGradientBrush* linearGradientBrush) CreateLinearGradientBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IXpsOMGradientStop gradStop1, ref IXpsOMGradientStop gradStop2, in XPS_POINT centerPoint, in XPS_POINT gradientOrigin, in XPS_SIZE radiiSizes, out IXpsOMRadialGradientBrush* radialGradientBrush) CreateRadialGradientBrush;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref IOpcPartUri partUri, out IXpsOMCoreProperties* coreProperties) CreateCoreProperties;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, out IXpsOMDictionary* dictionary) CreateDictionary;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, out IXpsOMPartUriCollection* partUriCollection) CreatePartUriCollection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, char16* fileName, ref SecurityAttributes securityAttributes, uint32 flagsAndAttributes, IntBool optimizeMarkupSize, XPS_INTERLEAVING interleaving, ref IOpcPartUri documentSequencePartName, ref IXpsOMCoreProperties coreProperties, ref IXpsOMImageResource packageThumbnail, ref IXpsOMPrintTicketResource documentSequencePrintTicket, ref IOpcPartUri discardControlPartName, out IXpsOMPackageWriter* packageWriter) CreatePackageWriterOnFile;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, ref ISequentialStream outputStream, IntBool optimizeMarkupSize, XPS_INTERLEAVING interleaving, ref IOpcPartUri documentSequencePartName, ref IXpsOMCoreProperties coreProperties, ref IXpsOMImageResource packageThumbnail, ref IXpsOMPrintTicketResource documentSequencePrintTicket, ref IOpcPartUri discardControlPartName, out IXpsOMPackageWriter* packageWriter) CreatePackageWriterOnStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, char16* uri, out IOpcPartUri* partUri) CreatePartUri;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory self, char16* filename, out IStream* stream) CreateReadOnlyStreamOnFile;
			}
		}
		[CRepr]
		public struct IXpsOMNameCollection : IUnknown
		{
			public const new Guid IID = .(0x4bddf8ec, 0xc915, 0x421b, 0xa1, 0x66, 0xd1, 0x73, 0xd2, 0x56, 0x53, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out char16* name) mut => VT.GetAt(ref this, index, out name);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMNameCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMNameCollection self, uint32 index, out char16* name) GetAt;
			}
		}
		[CRepr]
		public struct IXpsOMPartUriCollection : IUnknown
		{
			public const new Guid IID = .(0x57c650d4, 0x067c, 0x4893, 0x8c, 0x33, 0xf6, 0x2a, 0x06, 0x33, 0x73, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IOpcPartUri* partUri) mut => VT.GetAt(ref this, index, out partUri);
			public HResult InsertAt(uint32 index, ref IOpcPartUri partUri) mut => VT.InsertAt(ref this, index, ref partUri);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);
			public HResult SetAt(uint32 index, ref IOpcPartUri partUri) mut => VT.SetAt(ref this, index, ref partUri);
			public HResult Append(ref IOpcPartUri partUri) mut => VT.Append(ref this, ref partUri);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPartUriCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPartUriCollection self, uint32 index, out IOpcPartUri* partUri) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPartUriCollection self, uint32 index, ref IOpcPartUri partUri) InsertAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPartUriCollection self, uint32 index) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPartUriCollection self, uint32 index, ref IOpcPartUri partUri) SetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPartUriCollection self, ref IOpcPartUri partUri) Append;
			}
		}
		[CRepr]
		public struct IXpsOMPackageWriter : IUnknown
		{
			public const new Guid IID = .(0x4e2aa182, 0xa443, 0x42c6, 0xb4, 0x1b, 0x4f, 0x8e, 0x9d, 0xe7, 0x3f, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult StartNewDocument(ref IOpcPartUri documentPartName, ref IXpsOMPrintTicketResource documentPrintTicket, ref IXpsOMDocumentStructureResource documentStructure, ref IXpsOMSignatureBlockResourceCollection signatureBlockResources, ref IXpsOMPartUriCollection restrictedFonts) mut => VT.StartNewDocument(ref this, ref documentPartName, ref documentPrintTicket, ref documentStructure, ref signatureBlockResources, ref restrictedFonts);
			public HResult AddPage(ref IXpsOMPage page, in XPS_SIZE advisoryPageDimensions, ref IXpsOMPartUriCollection discardableResourceParts, ref IXpsOMStoryFragmentsResource storyFragments, ref IXpsOMPrintTicketResource pagePrintTicket, ref IXpsOMImageResource pageThumbnail) mut => VT.AddPage(ref this, ref page, advisoryPageDimensions, ref discardableResourceParts, ref storyFragments, ref pagePrintTicket, ref pageThumbnail);
			public HResult AddResource(ref IXpsOMResource resource) mut => VT.AddResource(ref this, ref resource);
			public HResult Close() mut => VT.Close(ref this);
			public HResult IsClosed(out IntBool isClosed) mut => VT.IsClosed(ref this, out isClosed);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackageWriter self, ref IOpcPartUri documentPartName, ref IXpsOMPrintTicketResource documentPrintTicket, ref IXpsOMDocumentStructureResource documentStructure, ref IXpsOMSignatureBlockResourceCollection signatureBlockResources, ref IXpsOMPartUriCollection restrictedFonts) StartNewDocument;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackageWriter self, ref IXpsOMPage page, in XPS_SIZE advisoryPageDimensions, ref IXpsOMPartUriCollection discardableResourceParts, ref IXpsOMStoryFragmentsResource storyFragments, ref IXpsOMPrintTicketResource pagePrintTicket, ref IXpsOMImageResource pageThumbnail) AddPage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackageWriter self, ref IXpsOMResource resource) AddResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackageWriter self) Close;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackageWriter self, out IntBool isClosed) IsClosed;
			}
		}
		[CRepr]
		public struct IXpsOMPackageTarget : IUnknown
		{
			public const new Guid IID = .(0x219a9db0, 0x4959, 0x47d0, 0x80, 0x34, 0xb1, 0xce, 0x84, 0xf4, 0x1a, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateXpsOMPackageWriter(ref IOpcPartUri documentSequencePartName, ref IXpsOMPrintTicketResource documentSequencePrintTicket, ref IOpcPartUri discardControlPartName, out IXpsOMPackageWriter* packageWriter) mut => VT.CreateXpsOMPackageWriter(ref this, ref documentSequencePartName, ref documentSequencePrintTicket, ref discardControlPartName, out packageWriter);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackageTarget self, ref IOpcPartUri documentSequencePartName, ref IXpsOMPrintTicketResource documentSequencePrintTicket, ref IOpcPartUri discardControlPartName, out IXpsOMPackageWriter* packageWriter) CreateXpsOMPackageWriter;
			}
		}
		[CRepr]
		public struct IXpsOMThumbnailGenerator : IUnknown
		{
			public const new Guid IID = .(0x15b873d5, 0x1971, 0x41e8, 0x83, 0xa3, 0x65, 0x78, 0x40, 0x30, 0x64, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GenerateThumbnail(ref IXpsOMPage page, XPS_IMAGE_TYPE thumbnailType, XPS_THUMBNAIL_SIZE thumbnailSize, ref IOpcPartUri imageResourcePartName, out IXpsOMImageResource* imageResource) mut => VT.GenerateThumbnail(ref this, ref page, thumbnailType, thumbnailSize, ref imageResourcePartName, out imageResource);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMThumbnailGenerator self, ref IXpsOMPage page, XPS_IMAGE_TYPE thumbnailType, XPS_THUMBNAIL_SIZE thumbnailSize, ref IOpcPartUri imageResourcePartName, out IXpsOMImageResource* imageResource) GenerateThumbnail;
			}
		}
		[CRepr]
		public struct IXpsOMObjectFactory1 : IXpsOMObjectFactory
		{
			public const new Guid IID = .(0x0a91b617, 0xd612, 0x4181, 0xbf, 0x7c, 0xbe, 0x58, 0x24, 0xe9, 0xcc, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetDocumentTypeFromFile(char16* filename, out XPS_DOCUMENT_TYPE documentType) mut => VT.GetDocumentTypeFromFile(ref this, filename, out documentType);
			public HResult GetDocumentTypeFromStream(ref IStream xpsDocumentStream, out XPS_DOCUMENT_TYPE documentType) mut => VT.GetDocumentTypeFromStream(ref this, ref xpsDocumentStream, out documentType);
			public HResult ConvertHDPhotoToJpegXR(out IXpsOMImageResource imageResource) mut => VT.ConvertHDPhotoToJpegXR(ref this, out imageResource);
			public HResult ConvertJpegXRToHDPhoto(out IXpsOMImageResource imageResource) mut => VT.ConvertJpegXRToHDPhoto(ref this, out imageResource);
			public HResult CreatePackageWriterOnFile1(char16* fileName, ref SecurityAttributes securityAttributes, uint32 flagsAndAttributes, IntBool optimizeMarkupSize, XPS_INTERLEAVING interleaving, ref IOpcPartUri documentSequencePartName, ref IXpsOMCoreProperties coreProperties, ref IXpsOMImageResource packageThumbnail, ref IXpsOMPrintTicketResource documentSequencePrintTicket, ref IOpcPartUri discardControlPartName, XPS_DOCUMENT_TYPE documentType, out IXpsOMPackageWriter* packageWriter) mut => VT.CreatePackageWriterOnFile1(ref this, fileName, ref securityAttributes, flagsAndAttributes, optimizeMarkupSize, interleaving, ref documentSequencePartName, ref coreProperties, ref packageThumbnail, ref documentSequencePrintTicket, ref discardControlPartName, documentType, out packageWriter);
			public HResult CreatePackageWriterOnStream1(ref ISequentialStream outputStream, IntBool optimizeMarkupSize, XPS_INTERLEAVING interleaving, ref IOpcPartUri documentSequencePartName, ref IXpsOMCoreProperties coreProperties, ref IXpsOMImageResource packageThumbnail, ref IXpsOMPrintTicketResource documentSequencePrintTicket, ref IOpcPartUri discardControlPartName, XPS_DOCUMENT_TYPE documentType, out IXpsOMPackageWriter* packageWriter) mut => VT.CreatePackageWriterOnStream1(ref this, ref outputStream, optimizeMarkupSize, interleaving, ref documentSequencePartName, ref coreProperties, ref packageThumbnail, ref documentSequencePrintTicket, ref discardControlPartName, documentType, out packageWriter);
			public HResult CreatePackage1(out IXpsOMPackage1* package) mut => VT.CreatePackage1(ref this, out package);
			public HResult CreatePackageFromStream1(ref IStream stream, IntBool reuseObjects, out IXpsOMPackage1* package) mut => VT.CreatePackageFromStream1(ref this, ref stream, reuseObjects, out package);
			public HResult CreatePackageFromFile1(char16* filename, IntBool reuseObjects, out IXpsOMPackage1* package) mut => VT.CreatePackageFromFile1(ref this, filename, reuseObjects, out package);
			public HResult CreatePage1(in XPS_SIZE pageDimensions, char16* language, ref IOpcPartUri partUri, out IXpsOMPage1* page) mut => VT.CreatePage1(ref this, pageDimensions, language, ref partUri, out page);
			public HResult CreatePageFromStream1(ref IStream pageMarkupStream, ref IOpcPartUri partUri, ref IXpsOMPartResources resources, IntBool reuseObjects, out IXpsOMPage1* page) mut => VT.CreatePageFromStream1(ref this, ref pageMarkupStream, ref partUri, ref resources, reuseObjects, out page);
			public HResult CreateRemoteDictionaryResourceFromStream1(ref IStream dictionaryMarkupStream, ref IOpcPartUri partUri, ref IXpsOMPartResources resources, out IXpsOMRemoteDictionaryResource* dictionaryResource) mut => VT.CreateRemoteDictionaryResourceFromStream1(ref this, ref dictionaryMarkupStream, ref partUri, ref resources, out dictionaryResource);

			[CRepr]
			public struct VTable : IXpsOMObjectFactory.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory1 self, char16* filename, out XPS_DOCUMENT_TYPE documentType) GetDocumentTypeFromFile;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory1 self, ref IStream xpsDocumentStream, out XPS_DOCUMENT_TYPE documentType) GetDocumentTypeFromStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory1 self, out IXpsOMImageResource imageResource) ConvertHDPhotoToJpegXR;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory1 self, out IXpsOMImageResource imageResource) ConvertJpegXRToHDPhoto;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory1 self, char16* fileName, ref SecurityAttributes securityAttributes, uint32 flagsAndAttributes, IntBool optimizeMarkupSize, XPS_INTERLEAVING interleaving, ref IOpcPartUri documentSequencePartName, ref IXpsOMCoreProperties coreProperties, ref IXpsOMImageResource packageThumbnail, ref IXpsOMPrintTicketResource documentSequencePrintTicket, ref IOpcPartUri discardControlPartName, XPS_DOCUMENT_TYPE documentType, out IXpsOMPackageWriter* packageWriter) CreatePackageWriterOnFile1;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory1 self, ref ISequentialStream outputStream, IntBool optimizeMarkupSize, XPS_INTERLEAVING interleaving, ref IOpcPartUri documentSequencePartName, ref IXpsOMCoreProperties coreProperties, ref IXpsOMImageResource packageThumbnail, ref IXpsOMPrintTicketResource documentSequencePrintTicket, ref IOpcPartUri discardControlPartName, XPS_DOCUMENT_TYPE documentType, out IXpsOMPackageWriter* packageWriter) CreatePackageWriterOnStream1;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory1 self, out IXpsOMPackage1* package) CreatePackage1;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory1 self, ref IStream stream, IntBool reuseObjects, out IXpsOMPackage1* package) CreatePackageFromStream1;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory1 self, char16* filename, IntBool reuseObjects, out IXpsOMPackage1* package) CreatePackageFromFile1;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory1 self, in XPS_SIZE pageDimensions, char16* language, ref IOpcPartUri partUri, out IXpsOMPage1* page) CreatePage1;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory1 self, ref IStream pageMarkupStream, ref IOpcPartUri partUri, ref IXpsOMPartResources resources, IntBool reuseObjects, out IXpsOMPage1* page) CreatePageFromStream1;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMObjectFactory1 self, ref IStream dictionaryMarkupStream, ref IOpcPartUri partUri, ref IXpsOMPartResources resources, out IXpsOMRemoteDictionaryResource* dictionaryResource) CreateRemoteDictionaryResourceFromStream1;
			}
		}
		[CRepr]
		public struct IXpsOMPackage1 : IXpsOMPackage
		{
			public const new Guid IID = .(0x95a9435e, 0x12bb, 0x461b, 0x8e, 0x7f, 0xc6, 0xad, 0xb0, 0x4c, 0xd9, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetDocumentType(out XPS_DOCUMENT_TYPE documentType) mut => VT.GetDocumentType(ref this, out documentType);
			public HResult WriteToFile1(char16* fileName, ref SecurityAttributes securityAttributes, uint32 flagsAndAttributes, IntBool optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) mut => VT.WriteToFile1(ref this, fileName, ref securityAttributes, flagsAndAttributes, optimizeMarkupSize, documentType);
			public HResult WriteToStream1(ref ISequentialStream outputStream, IntBool optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) mut => VT.WriteToStream1(ref this, ref outputStream, optimizeMarkupSize, documentType);

			[CRepr]
			public struct VTable : IXpsOMPackage.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackage1 self, out XPS_DOCUMENT_TYPE documentType) GetDocumentType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackage1 self, char16* fileName, ref SecurityAttributes securityAttributes, uint32 flagsAndAttributes, IntBool optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) WriteToFile1;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackage1 self, ref ISequentialStream outputStream, IntBool optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) WriteToStream1;
			}
		}
		[CRepr]
		public struct IXpsOMPage1 : IXpsOMPage
		{
			public const new Guid IID = .(0x305b60ef, 0x6892, 0x4dda, 0x9c, 0xbb, 0x3a, 0xa6, 0x59, 0x74, 0x50, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetDocumentType(out XPS_DOCUMENT_TYPE documentType) mut => VT.GetDocumentType(ref this, out documentType);
			public HResult Write1(ref ISequentialStream stream, IntBool optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) mut => VT.Write1(ref this, ref stream, optimizeMarkupSize, documentType);

			[CRepr]
			public struct VTable : IXpsOMPage.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage1 self, out XPS_DOCUMENT_TYPE documentType) GetDocumentType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPage1 self, ref ISequentialStream stream, IntBool optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) Write1;
			}
		}
		[CRepr]
		public struct IXpsDocumentPackageTarget : IUnknown
		{
			public const new Guid IID = .(0x3b0b6d38, 0x53ad, 0x41da, 0xb2, 0x12, 0xd3, 0x76, 0x37, 0xa6, 0x71, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetXpsOMPackageWriter(ref IOpcPartUri documentSequencePartName, ref IOpcPartUri discardControlPartName, out IXpsOMPackageWriter* packageWriter) mut => VT.GetXpsOMPackageWriter(ref this, ref documentSequencePartName, ref discardControlPartName, out packageWriter);
			public HResult GetXpsOMFactory(out IXpsOMObjectFactory* xpsFactory) mut => VT.GetXpsOMFactory(ref this, out xpsFactory);
			public HResult GetXpsType(out XPS_DOCUMENT_TYPE documentType) mut => VT.GetXpsType(ref this, out documentType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsDocumentPackageTarget self, ref IOpcPartUri documentSequencePartName, ref IOpcPartUri discardControlPartName, out IXpsOMPackageWriter* packageWriter) GetXpsOMPackageWriter;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsDocumentPackageTarget self, out IXpsOMObjectFactory* xpsFactory) GetXpsOMFactory;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsDocumentPackageTarget self, out XPS_DOCUMENT_TYPE documentType) GetXpsType;
			}
		}
		[CRepr]
		public struct IXpsOMRemoteDictionaryResource1 : IXpsOMRemoteDictionaryResource
		{
			public const new Guid IID = .(0xbf8fc1d4, 0x9d46, 0x4141, 0xba, 0x5f, 0x94, 0xbb, 0x92, 0x50, 0xd0, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetDocumentType(out XPS_DOCUMENT_TYPE documentType) mut => VT.GetDocumentType(ref this, out documentType);
			public HResult Write1(ref ISequentialStream stream, XPS_DOCUMENT_TYPE documentType) mut => VT.Write1(ref this, ref stream, documentType);

			[CRepr]
			public struct VTable : IXpsOMRemoteDictionaryResource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRemoteDictionaryResource1 self, out XPS_DOCUMENT_TYPE documentType) GetDocumentType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMRemoteDictionaryResource1 self, ref ISequentialStream stream, XPS_DOCUMENT_TYPE documentType) Write1;
			}
		}
		[CRepr]
		public struct IXpsOMPackageWriter3D : IXpsOMPackageWriter
		{
			public const new Guid IID = .(0xe8a45033, 0x640e, 0x43fa, 0x9b, 0xdf, 0xfd, 0xde, 0xaa, 0x31, 0xc6, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddModelTexture(ref IOpcPartUri texturePartName, ref IStream textureData) mut => VT.AddModelTexture(ref this, ref texturePartName, ref textureData);
			public HResult SetModelPrintTicket(ref IOpcPartUri printTicketPartName, ref IStream printTicketData) mut => VT.SetModelPrintTicket(ref this, ref printTicketPartName, ref printTicketData);

			[CRepr]
			public struct VTable : IXpsOMPackageWriter.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackageWriter3D self, ref IOpcPartUri texturePartName, ref IStream textureData) AddModelTexture;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsOMPackageWriter3D self, ref IOpcPartUri printTicketPartName, ref IStream printTicketData) SetModelPrintTicket;
			}
		}
		[CRepr]
		public struct IXpsDocumentPackageTarget3D : IUnknown
		{
			public const new Guid IID = .(0x60ba71b8, 0x3101, 0x4984, 0x91, 0x99, 0xf4, 0xea, 0x77, 0x5f, 0xf0, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetXpsOMPackageWriter3D(ref IOpcPartUri documentSequencePartName, ref IOpcPartUri discardControlPartName, ref IOpcPartUri modelPartName, ref IStream modelData, out IXpsOMPackageWriter3D* packageWriter) mut => VT.GetXpsOMPackageWriter3D(ref this, ref documentSequencePartName, ref discardControlPartName, ref modelPartName, ref modelData, out packageWriter);
			public HResult GetXpsOMFactory(out IXpsOMObjectFactory* xpsFactory) mut => VT.GetXpsOMFactory(ref this, out xpsFactory);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsDocumentPackageTarget3D self, ref IOpcPartUri documentSequencePartName, ref IOpcPartUri discardControlPartName, ref IOpcPartUri modelPartName, ref IStream modelData, out IXpsOMPackageWriter3D* packageWriter) GetXpsOMPackageWriter3D;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsDocumentPackageTarget3D self, out IXpsOMObjectFactory* xpsFactory) GetXpsOMFactory;
			}
		}
		[CRepr]
		public struct IXpsSigningOptions : IUnknown
		{
			public const new Guid IID = .(0x7718eae4, 0x3215, 0x49be, 0xaf, 0x5b, 0x59, 0x4f, 0xef, 0x7f, 0xcf, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetSignatureId(out char16* signatureId) mut => VT.GetSignatureId(ref this, out signatureId);
			public HResult SetSignatureId(char16* signatureId) mut => VT.SetSignatureId(ref this, signatureId);
			public HResult GetSignatureMethod(out char16* signatureMethod) mut => VT.GetSignatureMethod(ref this, out signatureMethod);
			public HResult SetSignatureMethod(char16* signatureMethod) mut => VT.SetSignatureMethod(ref this, signatureMethod);
			public HResult GetDigestMethod(out char16* digestMethod) mut => VT.GetDigestMethod(ref this, out digestMethod);
			public HResult SetDigestMethod(char16* digestMethod) mut => VT.SetDigestMethod(ref this, digestMethod);
			public HResult GetSignaturePartName(out IOpcPartUri* signaturePartName) mut => VT.GetSignaturePartName(ref this, out signaturePartName);
			public HResult SetSignaturePartName(ref IOpcPartUri signaturePartName) mut => VT.SetSignaturePartName(ref this, ref signaturePartName);
			public HResult GetPolicy(out XPS_SIGN_POLICY policy) mut => VT.GetPolicy(ref this, out policy);
			public HResult SetPolicy(XPS_SIGN_POLICY policy) mut => VT.SetPolicy(ref this, policy);
			public HResult GetSigningTimeFormat(out OPC_SIGNATURE_TIME_FORMAT timeFormat) mut => VT.GetSigningTimeFormat(ref this, out timeFormat);
			public HResult SetSigningTimeFormat(OPC_SIGNATURE_TIME_FORMAT timeFormat) mut => VT.SetSigningTimeFormat(ref this, timeFormat);
			public HResult GetCustomObjects(out IOpcSignatureCustomObjectSet* customObjectSet) mut => VT.GetCustomObjects(ref this, out customObjectSet);
			public HResult GetCustomReferences(out IOpcSignatureReferenceSet* customReferenceSet) mut => VT.GetCustomReferences(ref this, out customReferenceSet);
			public HResult GetCertificateSet(out IOpcCertificateSet* certificateSet) mut => VT.GetCertificateSet(ref this, out certificateSet);
			public HResult ComGetFlags(out XPS_SIGN_FLAGS flags) mut => VT.ComGetFlags(ref this, out flags);
			public HResult SetFlags(XPS_SIGN_FLAGS flags) mut => VT.SetFlags(ref this, flags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, out char16* signatureId) GetSignatureId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, char16* signatureId) SetSignatureId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, out char16* signatureMethod) GetSignatureMethod;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, char16* signatureMethod) SetSignatureMethod;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, out char16* digestMethod) GetDigestMethod;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, char16* digestMethod) SetDigestMethod;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, out IOpcPartUri* signaturePartName) GetSignaturePartName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, ref IOpcPartUri signaturePartName) SetSignaturePartName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, out XPS_SIGN_POLICY policy) GetPolicy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, XPS_SIGN_POLICY policy) SetPolicy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, out OPC_SIGNATURE_TIME_FORMAT timeFormat) GetSigningTimeFormat;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, OPC_SIGNATURE_TIME_FORMAT timeFormat) SetSigningTimeFormat;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, out IOpcSignatureCustomObjectSet* customObjectSet) GetCustomObjects;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, out IOpcSignatureReferenceSet* customReferenceSet) GetCustomReferences;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, out IOpcCertificateSet* certificateSet) GetCertificateSet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, out XPS_SIGN_FLAGS flags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSigningOptions self, XPS_SIGN_FLAGS flags) SetFlags;
			}
		}
		[CRepr]
		public struct IXpsSignatureCollection : IUnknown
		{
			public const new Guid IID = .(0xa2d1d95d, 0xadd2, 0x4dff, 0xab, 0x27, 0x6b, 0x9c, 0x64, 0x5f, 0xf3, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IXpsSignature* signature) mut => VT.GetAt(ref this, index, out signature);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureCollection self, uint32 index, out IXpsSignature* signature) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureCollection self, uint32 index) RemoveAt;
			}
		}
		[CRepr]
		public struct IXpsSignature : IUnknown
		{
			public const new Guid IID = .(0x6ae4c93e, 0x1ade, 0x42fb, 0x89, 0x8b, 0x3a, 0x56, 0x58, 0x28, 0x48, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetSignatureId(out char16* sigId) mut => VT.GetSignatureId(ref this, out sigId);
			public HResult GetSignatureValue(uint8** signatureHashValue, out uint32 count) mut => VT.GetSignatureValue(ref this, signatureHashValue, out count);
			public HResult GetCertificateEnumerator(out IOpcCertificateEnumerator* certificateEnumerator) mut => VT.GetCertificateEnumerator(ref this, out certificateEnumerator);
			public HResult GetSigningTime(out char16* sigDateTimeString) mut => VT.GetSigningTime(ref this, out sigDateTimeString);
			public HResult GetSigningTimeFormat(out OPC_SIGNATURE_TIME_FORMAT timeFormat) mut => VT.GetSigningTimeFormat(ref this, out timeFormat);
			public HResult GetSignaturePartName(out IOpcPartUri* signaturePartName) mut => VT.GetSignaturePartName(ref this, out signaturePartName);
			public HResult Verify(in CERT_CONTEXT x509Certificate, out XPS_SIGNATURE_STATUS sigStatus) mut => VT.Verify(ref this, x509Certificate, out sigStatus);
			public HResult GetPolicy(out XPS_SIGN_POLICY policy) mut => VT.GetPolicy(ref this, out policy);
			public HResult GetCustomObjectEnumerator(out IOpcSignatureCustomObjectEnumerator* customObjectEnumerator) mut => VT.GetCustomObjectEnumerator(ref this, out customObjectEnumerator);
			public HResult GetCustomReferenceEnumerator(out IOpcSignatureReferenceEnumerator* customReferenceEnumerator) mut => VT.GetCustomReferenceEnumerator(ref this, out customReferenceEnumerator);
			public HResult GetSignatureXml(uint8** signatureXml, out uint32 count) mut => VT.GetSignatureXml(ref this, signatureXml, out count);
			public HResult SetSignatureXml(uint8* signatureXml, uint32 count) mut => VT.SetSignatureXml(ref this, signatureXml, count);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignature self, out char16* sigId) GetSignatureId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignature self, uint8** signatureHashValue, out uint32 count) GetSignatureValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignature self, out IOpcCertificateEnumerator* certificateEnumerator) GetCertificateEnumerator;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignature self, out char16* sigDateTimeString) GetSigningTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignature self, out OPC_SIGNATURE_TIME_FORMAT timeFormat) GetSigningTimeFormat;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignature self, out IOpcPartUri* signaturePartName) GetSignaturePartName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignature self, in CERT_CONTEXT x509Certificate, out XPS_SIGNATURE_STATUS sigStatus) Verify;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignature self, out XPS_SIGN_POLICY policy) GetPolicy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignature self, out IOpcSignatureCustomObjectEnumerator* customObjectEnumerator) GetCustomObjectEnumerator;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignature self, out IOpcSignatureReferenceEnumerator* customReferenceEnumerator) GetCustomReferenceEnumerator;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignature self, uint8** signatureXml, out uint32 count) GetSignatureXml;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignature self, uint8* signatureXml, uint32 count) SetSignatureXml;
			}
		}
		[CRepr]
		public struct IXpsSignatureBlockCollection : IUnknown
		{
			public const new Guid IID = .(0x23397050, 0xfe99, 0x467a, 0x8d, 0xce, 0x92, 0x37, 0xf0, 0x74, 0xff, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IXpsSignatureBlock* signatureBlock) mut => VT.GetAt(ref this, index, out signatureBlock);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureBlockCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureBlockCollection self, uint32 index, out IXpsSignatureBlock* signatureBlock) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureBlockCollection self, uint32 index) RemoveAt;
			}
		}
		[CRepr]
		public struct IXpsSignatureBlock : IUnknown
		{
			public const new Guid IID = .(0x151fac09, 0x0b97, 0x4ac6, 0xa3, 0x23, 0x5e, 0x42, 0x97, 0xd4, 0x32, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetRequests(out IXpsSignatureRequestCollection* requests) mut => VT.GetRequests(ref this, out requests);
			public HResult GetPartName(out IOpcPartUri* partName) mut => VT.GetPartName(ref this, out partName);
			public HResult GetDocumentIndex(out uint32 fixedDocumentIndex) mut => VT.GetDocumentIndex(ref this, out fixedDocumentIndex);
			public HResult GetDocumentName(out IOpcPartUri* fixedDocumentName) mut => VT.GetDocumentName(ref this, out fixedDocumentName);
			public HResult CreateRequest(char16* requestId, out IXpsSignatureRequest* signatureRequest) mut => VT.CreateRequest(ref this, requestId, out signatureRequest);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureBlock self, out IXpsSignatureRequestCollection* requests) GetRequests;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureBlock self, out IOpcPartUri* partName) GetPartName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureBlock self, out uint32 fixedDocumentIndex) GetDocumentIndex;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureBlock self, out IOpcPartUri* fixedDocumentName) GetDocumentName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureBlock self, char16* requestId, out IXpsSignatureRequest* signatureRequest) CreateRequest;
			}
		}
		[CRepr]
		public struct IXpsSignatureRequestCollection : IUnknown
		{
			public const new Guid IID = .(0xf0253e68, 0x9f19, 0x412e, 0x9b, 0x4f, 0x54, 0xd3, 0xb0, 0xac, 0x6c, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
			public HResult GetAt(uint32 index, out IXpsSignatureRequest* signatureRequest) mut => VT.GetAt(ref this, index, out signatureRequest);
			public HResult RemoveAt(uint32 index) mut => VT.RemoveAt(ref this, index);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequestCollection self, out uint32 count) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequestCollection self, uint32 index, out IXpsSignatureRequest* signatureRequest) GetAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequestCollection self, uint32 index) RemoveAt;
			}
		}
		[CRepr]
		public struct IXpsSignatureRequest : IUnknown
		{
			public const new Guid IID = .(0xac58950b, 0x7208, 0x4b2d, 0xb2, 0xc4, 0x95, 0x10, 0x83, 0xd3, 0xb8, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetIntent(out char16* intent) mut => VT.GetIntent(ref this, out intent);
			public HResult SetIntent(char16* intent) mut => VT.SetIntent(ref this, intent);
			public HResult GetRequestedSigner(out char16* signerName) mut => VT.GetRequestedSigner(ref this, out signerName);
			public HResult SetRequestedSigner(char16* signerName) mut => VT.SetRequestedSigner(ref this, signerName);
			public HResult GetRequestSignByDate(out char16* dateString) mut => VT.GetRequestSignByDate(ref this, out dateString);
			public HResult SetRequestSignByDate(char16* dateString) mut => VT.SetRequestSignByDate(ref this, dateString);
			public HResult GetSigningLocale(out char16* place) mut => VT.GetSigningLocale(ref this, out place);
			public HResult SetSigningLocale(char16* place) mut => VT.SetSigningLocale(ref this, place);
			public HResult GetSpotLocation(out int32 pageIndex, out IOpcPartUri* pagePartName, out float x, out float y) mut => VT.GetSpotLocation(ref this, out pageIndex, out pagePartName, out x, out y);
			public HResult SetSpotLocation(int32 pageIndex, float x, float y) mut => VT.SetSpotLocation(ref this, pageIndex, x, y);
			public HResult GetRequestId(out char16* requestId) mut => VT.GetRequestId(ref this, out requestId);
			public HResult GetSignature(out IXpsSignature* signature) mut => VT.GetSignature(ref this, out signature);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequest self, out char16* intent) GetIntent;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequest self, char16* intent) SetIntent;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequest self, out char16* signerName) GetRequestedSigner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequest self, char16* signerName) SetRequestedSigner;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequest self, out char16* dateString) GetRequestSignByDate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequest self, char16* dateString) SetRequestSignByDate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequest self, out char16* place) GetSigningLocale;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequest self, char16* place) SetSigningLocale;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequest self, out int32 pageIndex, out IOpcPartUri* pagePartName, out float x, out float y) GetSpotLocation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequest self, int32 pageIndex, float x, float y) SetSpotLocation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequest self, out char16* requestId) GetRequestId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureRequest self, out IXpsSignature* signature) GetSignature;
			}
		}
		[CRepr]
		public struct IXpsSignatureManager : IUnknown
		{
			public const new Guid IID = .(0xd3e8d338, 0xfdc4, 0x4afc, 0x80, 0xb5, 0xd5, 0x32, 0xa1, 0x78, 0x2e, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult LoadPackageFile(char16* fileName) mut => VT.LoadPackageFile(ref this, fileName);
			public HResult LoadPackageStream(ref IStream stream) mut => VT.LoadPackageStream(ref this, ref stream);
			public HResult Sign(ref IXpsSigningOptions signOptions, in CERT_CONTEXT x509Certificate, out IXpsSignature* signature) mut => VT.Sign(ref this, ref signOptions, x509Certificate, out signature);
			public HResult GetSignatureOriginPartName(out IOpcPartUri* signatureOriginPartName) mut => VT.GetSignatureOriginPartName(ref this, out signatureOriginPartName);
			public HResult SetSignatureOriginPartName(ref IOpcPartUri signatureOriginPartName) mut => VT.SetSignatureOriginPartName(ref this, ref signatureOriginPartName);
			public HResult GetSignatures(out IXpsSignatureCollection* signatures) mut => VT.GetSignatures(ref this, out signatures);
			public HResult AddSignatureBlock(ref IOpcPartUri partName, uint32 fixedDocumentIndex, out IXpsSignatureBlock* signatureBlock) mut => VT.AddSignatureBlock(ref this, ref partName, fixedDocumentIndex, out signatureBlock);
			public HResult GetSignatureBlocks(out IXpsSignatureBlockCollection* signatureBlocks) mut => VT.GetSignatureBlocks(ref this, out signatureBlocks);
			public HResult CreateSigningOptions(out IXpsSigningOptions* signingOptions) mut => VT.CreateSigningOptions(ref this, out signingOptions);
			public HResult SavePackageToFile(char16* fileName, ref SecurityAttributes securityAttributes, uint32 flagsAndAttributes) mut => VT.SavePackageToFile(ref this, fileName, ref securityAttributes, flagsAndAttributes);
			public HResult SavePackageToStream(ref IStream stream) mut => VT.SavePackageToStream(ref this, ref stream);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureManager self, char16* fileName) LoadPackageFile;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureManager self, ref IStream stream) LoadPackageStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureManager self, ref IXpsSigningOptions signOptions, in CERT_CONTEXT x509Certificate, out IXpsSignature* signature) Sign;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureManager self, out IOpcPartUri* signatureOriginPartName) GetSignatureOriginPartName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureManager self, ref IOpcPartUri signatureOriginPartName) SetSignatureOriginPartName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureManager self, out IXpsSignatureCollection* signatures) GetSignatures;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureManager self, ref IOpcPartUri partName, uint32 fixedDocumentIndex, out IXpsSignatureBlock* signatureBlock) AddSignatureBlock;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureManager self, out IXpsSignatureBlockCollection* signatureBlocks) GetSignatureBlocks;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureManager self, out IXpsSigningOptions* signingOptions) CreateSigningOptions;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureManager self, char16* fileName, ref SecurityAttributes securityAttributes, uint32 flagsAndAttributes) SavePackageToFile;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXpsSignatureManager self, ref IStream stream) SavePackageToStream;
			}
		}
		
		// --- Functions ---
		
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DeviceCapabilitiesA(char8* pDevice, char8* pPort, DEVICE_CAPABILITIES fwCapability, char8* pOutput, DEVMODEA* pDevMode);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DeviceCapabilitiesW(char16* pDevice, char16* pPort, DEVICE_CAPABILITIES fwCapability, char16* pOutput, DEVMODEW* pDevMode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 Escape(HDC hdc, int32 iEscape, int32 cjIn, char8* pvIn, void* pvOut);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ExtEscape(HDC hdc, int32 iEscape, int32 cjInput, char8* lpInData, int32 cjOutput, char8* lpOutData);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StartDocA(HDC hdc, in DOCINFOA lpdi);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StartDocW(HDC hdc, in DOCINFOW lpdi);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EndDoc(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StartPage(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EndPage(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AbortDoc(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetAbortProc(HDC hdc, ABORTPROC proc);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool PrintWindow(HWnd hwnd, HDC hdcBlt, PRINT_WINDOW_FLAGS nFlags);
	}
}
