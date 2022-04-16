using System;

// namespace UI.TabletPC
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const String MICROSOFT_URL_EXPERIENCE_PROPERTY = "Microsoft TIP URL Experience";
		public const String MICROSOFT_TIP_NO_INSERT_BUTTON_PROPERTY = "Microsoft TIP No Insert Option";
		public const String MICROSOFT_TIP_COMBOBOXLIST_PROPERTY = "Microsoft TIP ComboBox List Window Identifier";
		public const String MICROSOFT_TIP_OPENING_MSG = "TabletInputPanelOpening";
		public const uint32 SAFE_PARTIAL = 1;
		public const uint32 BEST_COMPLETE = 2;
		public const uint32 MAX_VENDORNAME = 32;
		public const uint32 MAX_FRIENDLYNAME = 64;
		public const uint32 MAX_LANGUAGES = 64;
		public const uint32 CAC_FULL = 0;
		public const uint32 CAC_PREFIX = 1;
		public const uint32 CAC_RANDOM = 2;
		public const uint32 ASYNC_RECO_INTERRUPTED = 1;
		public const uint32 ASYNC_RECO_PROCESS_FAILED = 2;
		public const uint32 ASYNC_RECO_ADDSTROKE_FAILED = 4;
		public const uint32 ASYNC_RECO_SETCACMODE_FAILED = 8;
		public const uint32 ASYNC_RECO_RESETCONTEXT_FAILED = 16;
		public const uint32 ASYNC_RECO_SETGUIDE_FAILED = 32;
		public const uint32 ASYNC_RECO_SETFLAGS_FAILED = 64;
		public const uint32 ASYNC_RECO_SETFACTOID_FAILED = 128;
		public const uint32 ASYNC_RECO_SETTEXTCONTEXT_FAILED = 256;
		public const uint32 ASYNC_RECO_SETWORDLIST_FAILED = 512;
		public const int32 RF_DONTCARE = 1;
		public const int32 RF_OBJECT = 2;
		public const int32 RF_FREE_INPUT = 4;
		public const int32 RF_LINED_INPUT = 8;
		public const int32 RF_BOXED_INPUT = 16;
		public const int32 RF_CAC_INPUT = 32;
		public const int32 RF_RIGHT_AND_DOWN = 64;
		public const int32 RF_LEFT_AND_DOWN = 128;
		public const int32 RF_DOWN_AND_LEFT = 256;
		public const int32 RF_DOWN_AND_RIGHT = 512;
		public const int32 RF_ARBITRARY_ANGLE = 1024;
		public const int32 RF_LATTICE = 2048;
		public const int32 RF_ADVISEINKCHANGE = 4096;
		public const int32 RF_STROKEREORDER = 8192;
		public const int32 RF_PERSONALIZABLE = 16384;
		public const int32 RF_PERFORMSLINEBREAKING = 65536;
		public const int32 RF_REQUIRESSEGMENTATIONBREAKING = 131072;
		public const uint32 FLICK_WM_HANDLED_MASK = 1;
		public const uint32 NUM_FLICK_DIRECTIONS = 8;
		public const uint32 WM_TABLET_DEFBASE = 704;
		public const uint32 WM_TABLET_MAXOFFSET = 32;
		public const uint32 WM_TABLET_ADDED = 712;
		public const uint32 WM_TABLET_DELETED = 713;
		public const uint32 WM_TABLET_FLICK = 715;
		public const uint32 WM_TABLET_QUERYSYSTEMGESTURESTATUS = 716;
		public const uint32 TABLET_DISABLE_PRESSANDHOLD = 1;
		public const uint32 TABLET_DISABLE_PENTAPFEEDBACK = 8;
		public const uint32 TABLET_DISABLE_PENBARRELFEEDBACK = 16;
		public const uint32 TABLET_DISABLE_TOUCHUIFORCEON = 256;
		public const uint32 TABLET_DISABLE_TOUCHUIFORCEOFF = 512;
		public const uint32 TABLET_DISABLE_TOUCHSWITCH = 32768;
		public const uint32 TABLET_DISABLE_FLICKS = 65536;
		public const uint32 TABLET_ENABLE_FLICKSONCONTEXT = 131072;
		public const uint32 TABLET_ENABLE_FLICKLEARNINGMODE = 262144;
		public const uint32 TABLET_DISABLE_SMOOTHSCROLLING = 524288;
		public const uint32 TABLET_DISABLE_FLICKFALLBACKKEYS = 1048576;
		public const uint32 TABLET_ENABLE_MULTITOUCHDATA = 16777216;
		public const uint32 MAX_PACKET_PROPERTY_COUNT = 32;
		public const uint32 MAX_PACKET_BUTTON_COUNT = 32;
		public const uint32 IP_CURSOR_DOWN = 1;
		public const uint32 IP_INVERTED = 2;
		public const uint32 IP_MARGIN = 4;
		public const uint32 IEC__BASE = 1536;
		public const uint32 EM_GETINKMODE = 1537;
		public const uint32 EM_SETINKMODE = 1538;
		public const uint32 EM_GETINKINSERTMODE = 1539;
		public const uint32 EM_SETINKINSERTMODE = 1540;
		public const uint32 EM_GETDRAWATTR = 1541;
		public const uint32 EM_SETDRAWATTR = 1542;
		public const uint32 EM_GETRECOTIMEOUT = 1543;
		public const uint32 EM_SETRECOTIMEOUT = 1544;
		public const uint32 EM_GETGESTURESTATUS = 1545;
		public const uint32 EM_SETGESTURESTATUS = 1546;
		public const uint32 EM_GETRECOGNIZER = 1547;
		public const uint32 EM_SETRECOGNIZER = 1548;
		public const uint32 EM_GETFACTOID = 1549;
		public const uint32 EM_SETFACTOID = 1550;
		public const uint32 EM_GETSELINK = 1551;
		public const uint32 EM_SETSELINK = 1552;
		public const uint32 EM_GETMOUSEICON = 1553;
		public const uint32 EM_SETMOUSEICON = 1554;
		public const uint32 EM_GETMOUSEPOINTER = 1555;
		public const uint32 EM_SETMOUSEPOINTER = 1556;
		public const uint32 EM_GETSTATUS = 1557;
		public const uint32 EM_RECOGNIZE = 1558;
		public const uint32 EM_GETUSEMOUSEFORINPUT = 1559;
		public const uint32 EM_SETUSEMOUSEFORINPUT = 1560;
		public const uint32 EM_SETSELINKDISPLAYMODE = 1561;
		public const uint32 EM_GETSELINKDISPLAYMODE = 1562;
		public const uint32 IECN__BASE = 2048;
		public const uint32 IECN_STROKE = 2049;
		public const uint32 IECN_GESTURE = 2050;
		public const uint32 IECN_RECOGNITIONRESULT = 2051;
		public const uint32 RECOFLAG_WORDMODE = 1;
		public const uint32 RECOFLAG_COERCE = 2;
		public const uint32 RECOFLAG_SINGLESEG = 4;
		public const uint32 RECOFLAG_PREFIXOK = 8;
		public const uint32 RECOFLAG_LINEMODE = 16;
		public const uint32 RECOFLAG_DISABLEPERSONALIZATION = 32;
		public const uint32 RECOFLAG_AUTOSPACE = 64;
		public const int32 RECOCONF_LOWCONFIDENCE = -1;
		public const uint32 RECOCONF_MEDIUMCONFIDENCE = 0;
		public const uint32 RECOCONF_HIGHCONFIDENCE = 1;
		public const uint32 RECOCONF_NOTSET = 128;
		public const uint32 GESTURE_NULL = 61440;
		public const uint32 GESTURE_SCRATCHOUT = 61441;
		public const uint32 GESTURE_TRIANGLE = 61442;
		public const uint32 GESTURE_SQUARE = 61443;
		public const uint32 GESTURE_STAR = 61444;
		public const uint32 GESTURE_CHECK = 61445;
		public const uint32 GESTURE_INFINITY = 61446;
		public const uint32 GESTURE_CROSS = 61447;
		public const uint32 GESTURE_PARAGRAPH = 61448;
		public const uint32 GESTURE_SECTION = 61449;
		public const uint32 GESTURE_BULLET = 61450;
		public const uint32 GESTURE_BULLET_CROSS = 61451;
		public const uint32 GESTURE_SQUIGGLE = 61452;
		public const uint32 GESTURE_SWAP = 61453;
		public const uint32 GESTURE_OPENUP = 61454;
		public const uint32 GESTURE_CLOSEUP = 61455;
		public const uint32 GESTURE_CURLICUE = 61456;
		public const uint32 GESTURE_DOUBLE_CURLICUE = 61457;
		public const uint32 GESTURE_RECTANGLE = 61458;
		public const uint32 GESTURE_CIRCLE = 61472;
		public const uint32 GESTURE_DOUBLE_CIRCLE = 61473;
		public const uint32 GESTURE_CIRCLE_TAP = 61474;
		public const uint32 GESTURE_CIRCLE_CIRCLE = 61475;
		public const uint32 GESTURE_CIRCLE_CROSS = 61477;
		public const uint32 GESTURE_CIRCLE_LINE_VERT = 61478;
		public const uint32 GESTURE_CIRCLE_LINE_HORZ = 61479;
		public const uint32 GESTURE_SEMICIRCLE_LEFT = 61480;
		public const uint32 GESTURE_SEMICIRCLE_RIGHT = 61481;
		public const uint32 GESTURE_CHEVRON_UP = 61488;
		public const uint32 GESTURE_CHEVRON_DOWN = 61489;
		public const uint32 GESTURE_CHEVRON_LEFT = 61490;
		public const uint32 GESTURE_CHEVRON_RIGHT = 61491;
		public const uint32 GESTURE_ARROW_UP = 61496;
		public const uint32 GESTURE_ARROW_DOWN = 61497;
		public const uint32 GESTURE_ARROW_LEFT = 61498;
		public const uint32 GESTURE_ARROW_RIGHT = 61499;
		public const uint32 GESTURE_DOUBLE_ARROW_UP = 61500;
		public const uint32 GESTURE_DOUBLE_ARROW_DOWN = 61501;
		public const uint32 GESTURE_DOUBLE_ARROW_LEFT = 61502;
		public const uint32 GESTURE_DOUBLE_ARROW_RIGHT = 61503;
		public const uint32 GESTURE_UP_ARROW_LEFT = 61504;
		public const uint32 GESTURE_UP_ARROW_RIGHT = 61505;
		public const uint32 GESTURE_DOWN_ARROW_LEFT = 61506;
		public const uint32 GESTURE_DOWN_ARROW_RIGHT = 61507;
		public const uint32 GESTURE_LEFT_ARROW_UP = 61508;
		public const uint32 GESTURE_LEFT_ARROW_DOWN = 61509;
		public const uint32 GESTURE_RIGHT_ARROW_UP = 61510;
		public const uint32 GESTURE_RIGHT_ARROW_DOWN = 61511;
		public const uint32 GESTURE_UP = 61528;
		public const uint32 GESTURE_DOWN = 61529;
		public const uint32 GESTURE_LEFT = 61530;
		public const uint32 GESTURE_RIGHT = 61531;
		public const uint32 GESTURE_DIAGONAL_LEFTUP = 61532;
		public const uint32 GESTURE_DIAGONAL_RIGHTUP = 61533;
		public const uint32 GESTURE_DIAGONAL_LEFTDOWN = 61534;
		public const uint32 GESTURE_DIAGONAL_RIGHTDOWN = 61535;
		public const uint32 GESTURE_UP_DOWN = 61536;
		public const uint32 GESTURE_DOWN_UP = 61537;
		public const uint32 GESTURE_LEFT_RIGHT = 61538;
		public const uint32 GESTURE_RIGHT_LEFT = 61539;
		public const uint32 GESTURE_UP_LEFT_LONG = 61540;
		public const uint32 GESTURE_UP_RIGHT_LONG = 61541;
		public const uint32 GESTURE_DOWN_LEFT_LONG = 61542;
		public const uint32 GESTURE_DOWN_RIGHT_LONG = 61543;
		public const uint32 GESTURE_UP_LEFT = 61544;
		public const uint32 GESTURE_UP_RIGHT = 61545;
		public const uint32 GESTURE_DOWN_LEFT = 61546;
		public const uint32 GESTURE_DOWN_RIGHT = 61547;
		public const uint32 GESTURE_LEFT_UP = 61548;
		public const uint32 GESTURE_LEFT_DOWN = 61549;
		public const uint32 GESTURE_RIGHT_UP = 61550;
		public const uint32 GESTURE_RIGHT_DOWN = 61551;
		public const uint32 GESTURE_LETTER_A = 61568;
		public const uint32 GESTURE_LETTER_B = 61569;
		public const uint32 GESTURE_LETTER_C = 61570;
		public const uint32 GESTURE_LETTER_D = 61571;
		public const uint32 GESTURE_LETTER_E = 61572;
		public const uint32 GESTURE_LETTER_F = 61573;
		public const uint32 GESTURE_LETTER_G = 61574;
		public const uint32 GESTURE_LETTER_H = 61575;
		public const uint32 GESTURE_LETTER_I = 61576;
		public const uint32 GESTURE_LETTER_J = 61577;
		public const uint32 GESTURE_LETTER_K = 61578;
		public const uint32 GESTURE_LETTER_L = 61579;
		public const uint32 GESTURE_LETTER_M = 61580;
		public const uint32 GESTURE_LETTER_N = 61581;
		public const uint32 GESTURE_LETTER_O = 61582;
		public const uint32 GESTURE_LETTER_P = 61583;
		public const uint32 GESTURE_LETTER_Q = 61584;
		public const uint32 GESTURE_LETTER_R = 61585;
		public const uint32 GESTURE_LETTER_S = 61586;
		public const uint32 GESTURE_LETTER_T = 61587;
		public const uint32 GESTURE_LETTER_U = 61588;
		public const uint32 GESTURE_LETTER_V = 61589;
		public const uint32 GESTURE_LETTER_W = 61590;
		public const uint32 GESTURE_LETTER_X = 61591;
		public const uint32 GESTURE_LETTER_Y = 61592;
		public const uint32 GESTURE_LETTER_Z = 61593;
		public const uint32 GESTURE_DIGIT_0 = 61594;
		public const uint32 GESTURE_DIGIT_1 = 61595;
		public const uint32 GESTURE_DIGIT_2 = 61596;
		public const uint32 GESTURE_DIGIT_3 = 61597;
		public const uint32 GESTURE_DIGIT_4 = 61598;
		public const uint32 GESTURE_DIGIT_5 = 61599;
		public const uint32 GESTURE_DIGIT_6 = 61600;
		public const uint32 GESTURE_DIGIT_7 = 61601;
		public const uint32 GESTURE_DIGIT_8 = 61602;
		public const uint32 GESTURE_DIGIT_9 = 61603;
		public const uint32 GESTURE_EXCLAMATION = 61604;
		public const uint32 GESTURE_QUESTION = 61605;
		public const uint32 GESTURE_SHARP = 61606;
		public const uint32 GESTURE_DOLLAR = 61607;
		public const uint32 GESTURE_ASTERISK = 61608;
		public const uint32 GESTURE_PLUS = 61609;
		public const uint32 GESTURE_DOUBLE_UP = 61624;
		public const uint32 GESTURE_DOUBLE_DOWN = 61625;
		public const uint32 GESTURE_DOUBLE_LEFT = 61626;
		public const uint32 GESTURE_DOUBLE_RIGHT = 61627;
		public const uint32 GESTURE_TRIPLE_UP = 61628;
		public const uint32 GESTURE_TRIPLE_DOWN = 61629;
		public const uint32 GESTURE_TRIPLE_LEFT = 61630;
		public const uint32 GESTURE_TRIPLE_RIGHT = 61631;
		public const uint32 GESTURE_BRACKET_OVER = 61668;
		public const uint32 GESTURE_BRACKET_UNDER = 61669;
		public const uint32 GESTURE_BRACKET_LEFT = 61670;
		public const uint32 GESTURE_BRACKET_RIGHT = 61671;
		public const uint32 GESTURE_BRACE_OVER = 61672;
		public const uint32 GESTURE_BRACE_UNDER = 61673;
		public const uint32 GESTURE_BRACE_LEFT = 61674;
		public const uint32 GESTURE_BRACE_RIGHT = 61675;
		public const uint32 GESTURE_TAP = 61680;
		public const uint32 GESTURE_DOUBLE_TAP = 61681;
		public const uint32 GESTURE_TRIPLE_TAP = 61682;
		public const uint32 GESTURE_QUAD_TAP = 61683;
		public const uint32 FACILITY_INK = 40;
		public const Guid GUID_PACKETPROPERTY_GUID_X = .(0x598a6a8f, 0x52c0, 0x4ba0, 0x93, 0xaf, 0xaf, 0x35, 0x74, 0x11, 0xa5, 0x61);
		public const Guid GUID_PACKETPROPERTY_GUID_Y = .(0xb53f9f75, 0x04e0, 0x4498, 0xa7, 0xee, 0xc3, 0x0d, 0xbb, 0x5a, 0x90, 0x11);
		public const Guid GUID_PACKETPROPERTY_GUID_Z = .(0x735adb30, 0x0ebb, 0x4788, 0xa0, 0xe4, 0x0f, 0x31, 0x64, 0x90, 0x05, 0x5d);
		public const Guid GUID_PACKETPROPERTY_GUID_PACKET_STATUS = .(0x6e0e07bf, 0xafe7, 0x4cf7, 0x87, 0xd1, 0xaf, 0x64, 0x46, 0x20, 0x84, 0x18);
		public const Guid GUID_PACKETPROPERTY_GUID_TIMER_TICK = .(0x436510c5, 0xfed3, 0x45d1, 0x8b, 0x76, 0x71, 0xd3, 0xea, 0x7a, 0x82, 0x9d);
		public const Guid GUID_PACKETPROPERTY_GUID_SERIAL_NUMBER = .(0x78a81b56, 0x0935, 0x4493, 0xba, 0xae, 0x00, 0x54, 0x1a, 0x8a, 0x16, 0xc4);
		public const Guid GUID_PACKETPROPERTY_GUID_NORMAL_PRESSURE = .(0x7307502d, 0xf9f4, 0x4e18, 0xb3, 0xf2, 0x2c, 0xe1, 0xb1, 0xa3, 0x61, 0x0c);
		public const Guid GUID_PACKETPROPERTY_GUID_TANGENT_PRESSURE = .(0x6da4488b, 0x5244, 0x41ec, 0x90, 0x5b, 0x32, 0xd8, 0x9a, 0xb8, 0x08, 0x09);
		public const Guid GUID_PACKETPROPERTY_GUID_BUTTON_PRESSURE = .(0x8b7fefc4, 0x96aa, 0x4bfe, 0xac, 0x26, 0x8a, 0x5f, 0x0b, 0xe0, 0x7b, 0xf5);
		public const Guid GUID_PACKETPROPERTY_GUID_X_TILT_ORIENTATION = .(0xa8d07b3a, 0x8bf0, 0x40b0, 0x95, 0xa9, 0xb8, 0x0a, 0x6b, 0xb7, 0x87, 0xbf);
		public const Guid GUID_PACKETPROPERTY_GUID_Y_TILT_ORIENTATION = .(0x0e932389, 0x1d77, 0x43af, 0xac, 0x00, 0x5b, 0x95, 0x0d, 0x6d, 0x4b, 0x2d);
		public const Guid GUID_PACKETPROPERTY_GUID_AZIMUTH_ORIENTATION = .(0x029123b4, 0x8828, 0x410b, 0xb2, 0x50, 0xa0, 0x53, 0x65, 0x95, 0xe5, 0xdc);
		public const Guid GUID_PACKETPROPERTY_GUID_ALTITUDE_ORIENTATION = .(0x82dec5c7, 0xf6ba, 0x4906, 0x89, 0x4f, 0x66, 0xd6, 0x8d, 0xfc, 0x45, 0x6c);
		public const Guid GUID_PACKETPROPERTY_GUID_TWIST_ORIENTATION = .(0x0d324960, 0x13b2, 0x41e4, 0xac, 0xe6, 0x7a, 0xe9, 0xd4, 0x3d, 0x2d, 0x3b);
		public const Guid GUID_PACKETPROPERTY_GUID_PITCH_ROTATION = .(0x7f7e57b7, 0xbe37, 0x4be1, 0xa3, 0x56, 0x7a, 0x84, 0x16, 0x0e, 0x18, 0x93);
		public const Guid GUID_PACKETPROPERTY_GUID_ROLL_ROTATION = .(0x5d5d5e56, 0x6ba9, 0x4c5b, 0x9f, 0xb0, 0x85, 0x1c, 0x91, 0x71, 0x4e, 0x56);
		public const Guid GUID_PACKETPROPERTY_GUID_YAW_ROTATION = .(0x6a849980, 0x7c3a, 0x45b7, 0xaa, 0x82, 0x90, 0xa2, 0x62, 0x95, 0x0e, 0x89);
		public const Guid GUID_PACKETPROPERTY_GUID_WIDTH = .(0xbaabe94d, 0x2712, 0x48f5, 0xbe, 0x9d, 0x8f, 0x8b, 0x5e, 0xa0, 0x71, 0x1a);
		public const Guid GUID_PACKETPROPERTY_GUID_HEIGHT = .(0xe61858d2, 0xe447, 0x4218, 0x9d, 0x3f, 0x18, 0x86, 0x5c, 0x20, 0x3d, 0xf4);
		public const Guid GUID_PACKETPROPERTY_GUID_FINGERCONTACTCONFIDENCE = .(0xe706c804, 0x57f0, 0x4f00, 0x8a, 0x0c, 0x85, 0x3d, 0x57, 0x78, 0x9b, 0xe9);
		public const Guid GUID_PACKETPROPERTY_GUID_DEVICE_CONTACT_ID = .(0x02585b91, 0x049b, 0x4750, 0x96, 0x15, 0xdf, 0x89, 0x48, 0xab, 0x3c, 0x9c);
		public const int32 InkMinTransparencyValue = 0;
		public const int32 InkMaxTransparencyValue = 255;
		public const int32 InkCollectorClipInkToMargin = 0;
		public const int32 InkCollectorDefaultMargin = -2147483648;
		public const Guid GUID_GESTURE_DATA = .(0x41e4ec0f, 0x26aa, 0x455a, 0x9a, 0xa5, 0x2c, 0xd3, 0x6c, 0xf6, 0x3f, 0xb9);
		public const Guid GUID_DYNAMIC_RENDERER_CACHED_DATA = .(0xbf531b92, 0x25bf, 0x4a95, 0x89, 0xad, 0x0e, 0x47, 0x6b, 0x34, 0xb4, 0xf5);
		
		// --- Typedefs ---
		
		public typealias HRECOALT = int;
		public typealias HRECOCONTEXT = int;
		public typealias HRECOGNIZER = int;
		public typealias HRECOLATTICE = int;
		public typealias HRECOWORDLIST = int;
		
		// --- Enums ---
		
		public enum PROPERTY_UNITS : int32
		{
			DEFAULT = 0,
			INCHES = 1,
			CENTIMETERS = 2,
			DEGREES = 3,
			RADIANS = 4,
			SECONDS = 5,
			POUNDS = 6,
			GRAMS = 7,
			SILINEAR = 8,
			SIROTATION = 9,
			ENGLINEAR = 10,
			ENGROTATION = 11,
			SLUGS = 12,
			KELVIN = 13,
			FAHRENHEIT = 14,
			AMPERE = 15,
			CANDELA = 16,
		}
		public enum enumINKMETRIC_FLAGS : int32
		{
			FONT_SELECTED_IN_HDC = 1,
			ITALIC = 2,
			BOLD = 4,
		}
		public enum enumGetCandidateFlags : int32
		{
			ALLOW_RECOGNITION = 1,
			FORCE_RECOGNITION = 2,
		}
		public enum InkSelectionConstants : int32
		{
			FirstElement = 0,
			AllElements = -1,
		}
		public enum InkBoundingBoxMode : int32
		{
			Default = 0,
			NoCurveFit = 1,
			CurveFit = 2,
			PointsOnly = 3,
			Union = 4,
		}
		[AllowDuplicates]
		public enum InkExtractFlags : int32
		{
			CopyFromOriginal = 0,
			RemoveFromOriginal = 1,
			Default = 1,
		}
		public enum InkPersistenceFormat : int32
		{
			InkSerializedFormat = 0,
			Base64InkSerializedFormat = 1,
			GIF = 2,
			Base64GIF = 3,
		}
		public enum InkPersistenceCompressionMode : int32
		{
			Default = 0,
			MaximumCompression = 1,
			NoCompression = 2,
		}
		public enum InkPenTip : int32
		{
			Ball = 0,
			Rectangle = 1,
		}
		public enum InkRasterOperation : int32
		{
			Black = 1,
			NotMergePen = 2,
			MaskNotPen = 3,
			NotCopyPen = 4,
			MaskPenNot = 5,
			Not = 6,
			XOrPen = 7,
			NotMaskPen = 8,
			MaskPen = 9,
			NotXOrPen = 10,
			NoOperation = 11,
			MergeNotPen = 12,
			CopyPen = 13,
			MergePenNot = 14,
			MergePen = 15,
			White = 16,
		}
		public enum InkMousePointer : int32
		{
			Default = 0,
			Arrow = 1,
			Crosshair = 2,
			Ibeam = 3,
			SizeNESW = 4,
			SizeNS = 5,
			SizeNWSE = 6,
			SizeWE = 7,
			UpArrow = 8,
			Hourglass = 9,
			NoDrop = 10,
			ArrowHourglass = 11,
			ArrowQuestion = 12,
			SizeAll = 13,
			Hand = 14,
			Custom = 99,
		}
		[AllowDuplicates]
		public enum InkClipboardModes : int32
		{
			Copy = 0,
			Cut = 1,
			ExtractOnly = 48,
			DelayedCopy = 32,
			Default = 0,
		}
		[AllowDuplicates]
		public enum InkClipboardFormats : int32
		{
			None = 0,
			InkSerializedFormat = 1,
			SketchInk = 2,
			TextInk = 6,
			EnhancedMetafile = 8,
			Metafile = 32,
			Bitmap = 64,
			PasteMask = 7,
			CopyMask = 127,
			Default = 127,
		}
		public enum SelectionHitResult : int32
		{
			None = 0,
			NW = 1,
			SE = 2,
			NE = 3,
			SW = 4,
			E = 5,
			W = 6,
			N = 7,
			S = 8,
			Selection = 9,
		}
		public enum InkRecognitionStatus : int32
		{
			NoError = 0,
			Interrupted = 1,
			ProcessFailed = 2,
			InkAddedFailed = 4,
			SetAutoCompletionModeFailed = 8,
			SetStrokesFailed = 16,
			SetGuideFailed = 32,
			SetFlagsFailed = 64,
			SetFactoidFailed = 128,
			SetPrefixSuffixFailed = 256,
			SetWordListFailed = 512,
		}
		public enum DISPID_InkRectangle : int32
		{
			IRTop = 1,
			IRLeft = 2,
			IRBottom = 3,
			IRRight = 4,
			IRGetRectangle = 5,
			IRSetRectangle = 6,
			IRData = 7,
		}
		public enum DISPID_InkExtendedProperty : int32
		{
			IEPGuid = 1,
			IEPData = 2,
		}
		public enum DISPID_InkExtendedProperties : int32
		{
			IEPs_NewEnum = -4,
			IEPsItem = 0,
			IEPsCount = 1,
			IEPsAdd = 2,
			IEPsRemove = 3,
			IEPsClear = 4,
			IEPsDoesPropertyExist = 5,
		}
		public enum DISPID_InkDrawingAttributes : int32
		{
			DAHeight = 1,
			DAColor = 2,
			DAWidth = 3,
			DAFitToCurve = 4,
			DAIgnorePressure = 5,
			DAAntiAliased = 6,
			DATransparency = 7,
			DARasterOperation = 8,
			DAPenTip = 9,
			DAClone = 10,
			DAExtendedProperties = 11,
		}
		public enum DISPID_InkTransform : int32
		{
			ITReset = 1,
			ITTranslate = 2,
			ITRotate = 3,
			ITReflect = 4,
			ITShear = 5,
			ITScale = 6,
			ITeM11 = 7,
			ITeM12 = 8,
			ITeM21 = 9,
			ITeM22 = 10,
			ITeDx = 11,
			ITeDy = 12,
			ITGetTransform = 13,
			ITSetTransform = 14,
			ITData = 15,
		}
		public enum InkApplicationGesture : int32
		{
			AllGestures = 0,
			NoGesture = 61440,
			Scratchout = 61441,
			Triangle = 61442,
			Square = 61443,
			Star = 61444,
			Check = 61445,
			Curlicue = 61456,
			DoubleCurlicue = 61457,
			Circle = 61472,
			DoubleCircle = 61473,
			SemiCircleLeft = 61480,
			SemiCircleRight = 61481,
			ChevronUp = 61488,
			ChevronDown = 61489,
			ChevronLeft = 61490,
			ChevronRight = 61491,
			ArrowUp = 61496,
			ArrowDown = 61497,
			ArrowLeft = 61498,
			ArrowRight = 61499,
			Up = 61528,
			Down = 61529,
			Left = 61530,
			Right = 61531,
			UpDown = 61536,
			DownUp = 61537,
			LeftRight = 61538,
			RightLeft = 61539,
			UpLeftLong = 61540,
			UpRightLong = 61541,
			DownLeftLong = 61542,
			DownRightLong = 61543,
			UpLeft = 61544,
			UpRight = 61545,
			DownLeft = 61546,
			DownRight = 61547,
			LeftUp = 61548,
			LeftDown = 61549,
			RightUp = 61550,
			RightDown = 61551,
			Exclamation = 61604,
			Tap = 61680,
			DoubleTap = 61681,
		}
		public enum InkSystemGesture : int32
		{
			Tap = 16,
			DoubleTap = 17,
			RightTap = 18,
			Drag = 19,
			RightDrag = 20,
			HoldEnter = 21,
			HoldLeave = 22,
			HoverEnter = 23,
			HoverLeave = 24,
			Flick = 31,
		}
		public enum InkRecognitionConfidence : int32
		{
			Strong = 0,
			Intermediate = 1,
			Poor = 2,
		}
		public enum DISPID_InkGesture : int32
		{
			IGId = 0,
			IGGetHotPoint = 1,
			IGConfidence = 2,
		}
		public enum DISPID_InkCursor : int32
		{
			Name = 0,
			Id = 1,
			DrawingAttributes = 2,
			Buttons = 3,
			Inverted = 4,
			Tablet = 5,
		}
		public enum DISPID_InkCursors : int32
		{
			ICs_NewEnum = -4,
			ICsItem = 0,
			ICsCount = 1,
		}
		public enum InkCursorButtonState : int32
		{
			Unavailable = 0,
			Up = 1,
			Down = 2,
		}
		public enum DISPID_InkCursorButton : int32
		{
			ICBName = 0,
			ICBId = 1,
			ICBState = 2,
		}
		public enum DISPID_InkCursorButtons : int32
		{
			ICBs_NewEnum = -4,
			ICBsItem = 0,
			ICBsCount = 1,
		}
		public enum TabletHardwareCapabilities : int32
		{
			Integrated = 1,
			CursorMustTouch = 2,
			HardProximity = 4,
			CursorsHavePhysicalIds = 8,
		}
		public enum TabletPropertyMetricUnit : int32
		{
			Default = 0,
			Inches = 1,
			Centimeters = 2,
			Degrees = 3,
			Radians = 4,
			Seconds = 5,
			Pounds = 6,
			Grams = 7,
		}
		public enum DISPID_InkTablet : int32
		{
			ITName = 0,
			ITPlugAndPlayId = 1,
			ITPropertyMetrics = 2,
			ITIsPacketPropertySupported = 3,
			ITMaximumInputRectangle = 4,
			ITHardwareCapabilities = 5,
		}
		public enum TabletDeviceKind : int32
		{
			Mouse = 0,
			Pen = 1,
			Touch = 2,
		}
		public enum DISPID_InkTablet2 : int32
		{
			IT2DeviceKind = 0,
		}
		public enum DISPID_InkTablet3 : int32
		{
			IT3IsMultiTouch = 0,
			IT3MaximumCursors = 1,
		}
		public enum DISPID_InkTablets : int32
		{
			ITs_NewEnum = -4,
			ITsItem = 0,
			ITsDefaultTablet = 1,
			ITsCount = 2,
			ITsIsPacketPropertySupported = 3,
		}
		public enum DISPID_InkStrokeDisp : int32
		{
			ISDInkIndex = 1,
			ISDID = 2,
			ISDGetBoundingBox = 3,
			ISDDrawingAttributes = 4,
			ISDFindIntersections = 5,
			ISDGetRectangleIntersections = 6,
			ISDClip = 7,
			ISDHitTestCircle = 8,
			ISDNearestPoint = 9,
			ISDSplit = 10,
			ISDExtendedProperties = 11,
			ISDInk = 12,
			ISDBezierPoints = 13,
			ISDPolylineCusps = 14,
			ISDBezierCusps = 15,
			ISDSelfIntersections = 16,
			ISDPacketCount = 17,
			ISDPacketSize = 18,
			ISDPacketDescription = 19,
			ISDDeleted = 20,
			ISDGetPacketDescriptionPropertyMetrics = 21,
			ISDGetPoints = 22,
			ISDSetPoints = 23,
			ISDGetPacketData = 24,
			ISDGetPacketValuesByProperty = 25,
			ISDSetPacketValuesByProperty = 26,
			ISDGetFlattenedBezierPoints = 27,
			ISDScaleToRectangle = 28,
			ISDTransform = 29,
			ISDMove = 30,
			ISDRotate = 31,
			ISDShear = 32,
			ISDScale = 33,
		}
		public enum DISPID_InkStrokes : int32
		{
			ISs_NewEnum = -4,
			ISsItem = 0,
			ISsCount = 1,
			ISsValid = 2,
			ISsInk = 3,
			ISsAdd = 4,
			ISsAddStrokes = 5,
			ISsRemove = 6,
			ISsRemoveStrokes = 7,
			ISsToString = 8,
			ISsModifyDrawingAttributes = 9,
			ISsGetBoundingBox = 10,
			ISsScaleToRectangle = 11,
			ISsTransform = 12,
			ISsMove = 13,
			ISsRotate = 14,
			ISsShear = 15,
			ISsScale = 16,
			ISsClip = 17,
			ISsRecognitionResult = 18,
			ISsRemoveRecognitionResult = 19,
		}
		public enum DISPID_InkCustomStrokes : int32
		{
			ICSs_NewEnum = -4,
			ICSsItem = 0,
			ICSsCount = 1,
			ICSsAdd = 2,
			ICSsRemove = 3,
			ICSsClear = 4,
		}
		public enum DISPID_StrokeEvent : int32
		{
			Added = 1,
			Removed = 2,
		}
		public enum DISPID_Ink : int32
		{
			IStrokes = 1,
			IExtendedProperties = 2,
			IGetBoundingBox = 3,
			IDeleteStrokes = 4,
			IDeleteStroke = 5,
			IExtractStrokes = 6,
			IExtractWithRectangle = 7,
			IDirty = 8,
			ICustomStrokes = 9,
			IClone = 10,
			IHitTestCircle = 11,
			IHitTestWithRectangle = 12,
			IHitTestWithLasso = 13,
			INearestPoint = 14,
			ICreateStrokes = 15,
			ICreateStroke = 16,
			IAddStrokesAtRectangle = 17,
			IClip = 18,
			ISave = 19,
			ILoad = 20,
			ICreateStrokeFromPoints = 21,
			IClipboardCopyWithRectangle = 22,
			IClipboardCopy = 23,
			ICanPaste = 24,
			IClipboardPaste = 25,
		}
		public enum DISPID_InkEvent : int32
		{
			Added = 1,
			Deleted = 2,
		}
		public enum DISPID_InkRenderer : int32
		{
			IRGetViewTransform = 1,
			IRSetViewTransform = 2,
			IRGetObjectTransform = 3,
			IRSetObjectTransform = 4,
			IRDraw = 5,
			IRDrawStroke = 6,
			IRPixelToInkSpace = 7,
			IRInkSpaceToPixel = 8,
			IRPixelToInkSpaceFromPoints = 9,
			IRInkSpaceToPixelFromPoints = 10,
			IRMeasure = 11,
			IRMeasureStroke = 12,
			IRMove = 13,
			IRRotate = 14,
			IRScale = 15,
		}
		public enum InkCollectorEventInterest : int32
		{
			DefaultEvents = -1,
			CursorDown = 0,
			Stroke = 1,
			NewPackets = 2,
			NewInAirPackets = 3,
			CursorButtonDown = 4,
			CursorButtonUp = 5,
			CursorInRange = 6,
			CursorOutOfRange = 7,
			SystemGesture = 8,
			TabletAdded = 9,
			TabletRemoved = 10,
			MouseDown = 11,
			MouseMove = 12,
			MouseUp = 13,
			MouseWheel = 14,
			DblClick = 15,
			AllEvents = 16,
		}
		public enum InkMouseButton : int32
		{
			Left = 1,
			Right = 2,
			Middle = 4,
		}
		public enum InkShiftKeyModifierFlags : int32
		{
			Shift = 1,
			Control = 2,
			Alt = 4,
		}
		public enum DISPID_InkCollectorEvent : int32
		{
			ICEStroke = 1,
			ICECursorDown = 2,
			ICENewPackets = 3,
			ICENewInAirPackets = 4,
			ICECursorButtonDown = 5,
			ICECursorButtonUp = 6,
			ICECursorInRange = 7,
			ICECursorOutOfRange = 8,
			ICESystemGesture = 9,
			ICEGesture = 10,
			ICETabletAdded = 11,
			ICETabletRemoved = 12,
			IOEPainting = 13,
			IOEPainted = 14,
			IOESelectionChanging = 15,
			IOESelectionChanged = 16,
			IOESelectionMoving = 17,
			IOESelectionMoved = 18,
			IOESelectionResizing = 19,
			IOESelectionResized = 20,
			IOEStrokesDeleting = 21,
			IOEStrokesDeleted = 22,
			IPEChangeUICues = 23,
			IPEClick = 24,
			IPEDblClick = 25,
			IPEInvalidated = 26,
			IPEMouseDown = 27,
			IPEMouseEnter = 28,
			IPEMouseHover = 29,
			IPEMouseLeave = 30,
			IPEMouseMove = 31,
			IPEMouseUp = 32,
			IPEMouseWheel = 33,
			IPESizeModeChanged = 34,
			IPEStyleChanged = 35,
			IPESystemColorsChanged = 36,
			IPEKeyDown = 37,
			IPEKeyPress = 38,
			IPEKeyUp = 39,
			IPEResize = 40,
			IPESizeChanged = 41,
		}
		public enum InkOverlayEditingMode : int32
		{
			Ink = 0,
			Delete = 1,
			Select = 2,
		}
		public enum InkOverlayAttachMode : int32
		{
			Behind = 0,
			InFront = 1,
		}
		public enum InkPictureSizeMode : int32
		{
			AutoSize = 0,
			CenterImage = 1,
			Normal = 2,
			StretchImage = 3,
		}
		public enum InkOverlayEraserMode : int32
		{
			StrokeErase = 0,
			PointErase = 1,
		}
		public enum InkCollectionMode : int32
		{
			InkOnly = 0,
			GestureOnly = 1,
			InkAndGesture = 2,
		}
		public enum DISPID_InkCollector : int32
		{
			ICEnabled = 1,
			ICHwnd = 2,
			ICPaint = 3,
			ICText = 4,
			ICDefaultDrawingAttributes = 5,
			ICRenderer = 6,
			ICInk = 7,
			ICAutoRedraw = 8,
			ICCollectingInk = 9,
			ICSetEventInterest = 10,
			ICGetEventInterest = 11,
			IOEditingMode = 12,
			IOSelection = 13,
			IOAttachMode = 14,
			IOHitTestSelection = 15,
			IODraw = 16,
			IPPicture = 17,
			IPSizeMode = 18,
			IPBackColor = 19,
			ICCursors = 20,
			ICMarginX = 21,
			ICMarginY = 22,
			ICSetWindowInputRectangle = 23,
			ICGetWindowInputRectangle = 24,
			ICTablet = 25,
			ICSetAllTabletsMode = 26,
			ICSetSingleTabletIntegratedMode = 27,
			ICCollectionMode = 28,
			ICSetGestureStatus = 29,
			ICGetGestureStatus = 30,
			ICDynamicRendering = 31,
			ICDesiredPacketDescription = 32,
			IOEraserMode = 33,
			IOEraserWidth = 34,
			ICMouseIcon = 35,
			ICMousePointer = 36,
			IPInkEnabled = 37,
			ICSupportHighContrastInk = 38,
			IOSupportHighContrastSelectionUI = 39,
		}
		public enum DISPID_InkRecognizer : int32
		{
			Clsid = 1,
			Name = 2,
			Vendor = 3,
			Capabilities = 4,
			LanguageID = 5,
			PreferredPacketDescription = 6,
			CreateRecognizerContext = 7,
			SupportedProperties = 8,
		}
		public enum InkRecognizerCapabilities : int32
		{
			DontCare = 1,
			Object = 2,
			FreeInput = 4,
			LinedInput = 8,
			BoxedInput = 16,
			CharacterAutoCompletionInput = 32,
			RightAndDown = 64,
			LeftAndDown = 128,
			DownAndLeft = 256,
			DownAndRight = 512,
			ArbitraryAngle = 1024,
			Lattice = 2048,
			AdviseInkChange = 4096,
			StrokeReorder = 8192,
			Personalizable = 16384,
			PrefersArbitraryAngle = 32768,
			PrefersParagraphBreaking = 65536,
			PrefersSegmentation = 131072,
			Cursive = 262144,
			TextPrediction = 524288,
			Alpha = 1048576,
			Beta = 2097152,
		}
		public enum DISPID_InkRecognizer2 : int32
		{
			Id = 0,
			UnicodeRanges = 1,
		}
		public enum DISPID_InkRecognizers : int32
		{
			IRecos_NewEnum = -4,
			IRecosItem = 0,
			IRecosCount = 1,
			IRecosGetDefaultRecognizer = 2,
		}
		public enum InkRecognizerCharacterAutoCompletionMode : int32
		{
			Full = 0,
			Prefix = 1,
			Random = 2,
		}
		public enum InkRecognitionModes : int32
		{
			None = 0,
			WordModeOnly = 1,
			Coerce = 2,
			TopInkBreaksOnly = 4,
			PrefixOk = 8,
			LineMode = 16,
			DisablePersonalization = 32,
			AutoSpace = 64,
			Max = 128,
		}
		public enum DISPID_InkRecognitionEvent : int32
		{
			IRERecognitionWithAlternates = 1,
			IRERecognition = 2,
		}
		public enum DISPID_InkRecoContext : int32
		{
			Strokes = 1,
			CharacterAutoCompletionMode = 2,
			Factoid = 3,
			WordList = 4,
			Recognizer = 5,
			Guide = 6,
			Flags = 7,
			PrefixText = 8,
			SuffixText = 9,
			StopRecognition = 10,
			Clone = 11,
			Recognize = 12,
			StopBackgroundRecognition = 13,
			EndInkInput = 14,
			BackgroundRecognize = 15,
			BackgroundRecognizeWithAlternates = 16,
			IsStringSupported = 17,
		}
		public enum DISPID_InkRecoContext2 : int32
		{
			IRecoCtx2_EnabledUnicodeRanges = 0,
		}
		public enum InkRecognitionAlternatesSelection : int32
		{
			Start = 0,
			DefaultCount = 10,
			All = -1,
		}
		public enum DISPID_InkRecognitionResult : int32
		{
			TopString = 1,
			TopAlternate = 2,
			Strokes = 3,
			TopConfidence = 4,
			AlternatesFromSelection = 5,
			ModifyTopAlternate = 6,
			SetResultOnStrokes = 7,
		}
		public enum DISPID_InkRecoAlternate : int32
		{
			String = 1,
			LineNumber = 2,
			Baseline = 3,
			Midline = 4,
			Ascender = 5,
			Descender = 6,
			Confidence = 7,
			Strokes = 8,
			GetStrokesFromStrokeRanges = 9,
			GetStrokesFromTextRange = 10,
			GetTextRangeFromStrokes = 11,
			GetPropertyValue = 12,
			LineAlternates = 13,
			ConfidenceAlternates = 14,
			AlternatesWithConstantPropertyValues = 15,
		}
		public enum DISPID_InkRecognitionAlternates : int32
		{
			NewEnum = -4,
			Item = 0,
			Count = 1,
			Strokes = 2,
		}
		public enum DISPID_InkRecognizerGuide : int32
		{
			IRGWritingBox = 1,
			IRGDrawnBox = 2,
			IRGRows = 3,
			IRGColumns = 4,
			IRGMidline = 5,
			IRGGuideData = 6,
		}
		public enum DISPID_InkWordList : int32
		{
			AddWord = 0,
			RemoveWord = 1,
			Merge = 2,
		}
		public enum DISPID_InkWordList2 : int32
		{
			List2_AddWords = 3,
		}
		public enum InkDivisionType : int32
		{
			Segment = 0,
			Line = 1,
			Paragraph = 2,
			Drawing = 3,
		}
		public enum DISPID_InkDivider : int32
		{
			Strokes = 1,
			RecognizerContext = 2,
			LineHeight = 3,
			Divide = 4,
		}
		public enum DISPID_InkDivisionResult : int32
		{
			Strokes = 1,
			ResultByType = 2,
		}
		public enum DISPID_InkDivisionUnit : int32
		{
			Strokes = 1,
			DivisionType = 2,
			RecognizedString = 3,
			RotationTransform = 4,
		}
		public enum DISPID_InkDivisionUnits : int32
		{
			NewEnum = -4,
			Item = 0,
			Count = 1,
		}
		public enum DISPID_PenInputPanel : int32
		{
			PIPAttachedEditWindow = 0,
			PIPFactoid = 1,
			PIPCurrentPanel = 2,
			PIPDefaultPanel = 3,
			PIPVisible = 4,
			PIPTop = 5,
			PIPLeft = 6,
			PIPWidth = 7,
			PIPHeight = 8,
			PIPMoveTo = 9,
			PIPCommitPendingInput = 10,
			PIPRefresh = 11,
			PIPBusy = 12,
			PIPVerticalOffset = 13,
			PIPHorizontalOffset = 14,
			PIPEnableTsf = 15,
			PIPAutoShow = 16,
		}
		public enum DISPID_PenInputPanelEvents : int32
		{
			PIPEVisibleChanged = 0,
			PIPEPanelChanged = 1,
			PIPEInputFailed = 2,
			PIPEPanelMoving = 3,
		}
		public enum VisualState : int32
		{
			InPlace = 0,
			Floating = 1,
			DockedTop = 2,
			DockedBottom = 3,
			Closed = 4,
		}
		public enum InteractionMode : int32
		{
			InPlace = 0,
			Floating = 1,
			DockedTop = 2,
			DockedBottom = 3,
		}
		public enum InPlaceState : int32
		{
			Auto = 0,
			HoverTarget = 1,
			Expanded = 2,
		}
		public enum PanelInputArea : int32
		{
			Auto = 0,
			Keyboard = 1,
			WritingPad = 2,
			CharacterPad = 3,
		}
		public enum CorrectionMode : int32
		{
			NotVisible = 0,
			PreInsertion = 1,
			PostInsertionCollapsed = 2,
			PostInsertionExpanded = 3,
		}
		public enum CorrectionPosition : int32
		{
			Auto = 0,
			Bottom = 1,
			Top = 2,
		}
		public enum InPlaceDirection : int32
		{
			Auto = 0,
			Bottom = 1,
			Top = 2,
		}
		public enum EventMask : int32
		{
			InPlaceStateChanging = 1,
			InPlaceStateChanged = 2,
			InPlaceSizeChanging = 4,
			InPlaceSizeChanged = 8,
			InputAreaChanging = 16,
			InputAreaChanged = 32,
			CorrectionModeChanging = 64,
			CorrectionModeChanged = 128,
			InPlaceVisibilityChanging = 256,
			InPlaceVisibilityChanged = 512,
			TextInserting = 1024,
			TextInserted = 2048,
			All = 4095,
		}
		public enum PanelType : int32
		{
			Default = 0,
			Inactive = 1,
			Handwriting = 2,
			Keyboard = 3,
		}
		[AllowDuplicates]
		public enum FLICKDIRECTION : int32
		{
			MIN = 0,
			RIGHT = 0,
			UPRIGHT = 1,
			UP = 2,
			UPLEFT = 3,
			LEFT = 4,
			DOWNLEFT = 5,
			DOWN = 6,
			DOWNRIGHT = 7,
			INVALID = 8,
		}
		[AllowDuplicates]
		public enum FLICKMODE : int32
		{
			MIN = 0,
			OFF = 0,
			ON = 1,
			LEARNING = 2,
			MAX = 2,
			DEFAULT = 1,
		}
		public enum FLICKACTION_COMMANDCODE : int32
		{
			NULL = 0,
			SCROLL = 1,
			APPCOMMAND = 2,
			CUSTOMKEY = 3,
			KEYMODIFIER = 4,
		}
		public enum SCROLLDIRECTION : int32
		{
			UP = 0,
			DOWN = 1,
		}
		public enum KEYMODIFIER : int32
		{
			CONTROL = 1,
			MENU = 2,
			SHIFT = 4,
			WIN = 8,
			ALTGR = 16,
			EXT = 32,
		}
		public enum MouseButton : int32
		{
			NO_BUTTON = 0,
			LEFT_BUTTON = 1,
			RIGHT_BUTTON = 2,
			MIDDLE_BUTTON = 4,
		}
		public enum SelAlignmentConstants : int32
		{
			Left = 0,
			Right = 1,
			Center = 2,
		}
		public enum DISPID_InkEdit : int32
		{
			Text = 0,
			TextRTF = 1,
			Hwnd = 2,
			DisableNoScroll = 3,
			Locked = 4,
			Enabled = 5,
			MaxLength = 6,
			MultiLine = 7,
			ScrollBars = 8,
			RTSelStart = 9,
			RTSelLength = 10,
			RTSelText = 11,
			SelAlignment = 12,
			SelBold = 13,
			SelCharOffset = 14,
			SelColor = 15,
			SelFontName = 16,
			SelFontSize = 17,
			SelItalic = 18,
			SelRTF = 19,
			SelUnderline = 20,
			DragIcon = 21,
			Status = 22,
			UseMouseForInput = 23,
			InkMode = 24,
			InkInsertMode = 25,
			RecoTimeout = 26,
			DrawAttr = 27,
			Recognizer = 28,
			Factoid = 29,
			SelInk = 30,
			SelInksDisplayMode = 31,
			Recognize = 32,
			GetGestStatus = 33,
			SetGestStatus = 34,
			Refresh = 35,
		}
		public enum DISPID_InkEditEvents : int32
		{
			Change = 1,
			SelChange = 2,
			KeyDown = 3,
			KeyUp = 4,
			MouseUp = 5,
			MouseDown = 6,
			KeyPress = 7,
			DblClick = 8,
			Click = 9,
			MouseMove = 10,
			CursorDown = 21,
			Stroke = 22,
			Gesture = 23,
			RecognitionResult = 24,
		}
		public enum InkMode : int32
		{
			Disabled = 0,
			Ink = 1,
			InkAndGesture = 2,
		}
		public enum InkInsertMode : int32
		{
			Text = 0,
			Ink = 1,
		}
		public enum InkEditStatus : int32
		{
			Idle = 0,
			Collecting = 1,
			Recognizing = 2,
		}
		public enum InkDisplayMode : int32
		{
			Ink = 0,
			Text = 1,
		}
		public enum AppearanceConstants : int32
		{
			Flat = 0,
			ThreeD = 1,
		}
		public enum BorderStyleConstants : int32
		{
			NoBorder = 0,
			FixedSingle = 1,
		}
		public enum ScrollBarsConstants : int32
		{
			None = 0,
			Horizontal = 1,
			Vertical = 2,
			Both = 3,
		}
		public enum MICUIELEMENT : int32
		{
			BUTTON_WRITE = 1,
			BUTTON_ERASE = 2,
			BUTTON_CORRECT = 4,
			BUTTON_CLEAR = 8,
			BUTTON_UNDO = 16,
			BUTTON_REDO = 32,
			BUTTON_INSERT = 64,
			BUTTON_CANCEL = 128,
			INKPANEL_BACKGROUND = 256,
			RESULTPANEL_BACKGROUND = 512,
		}
		public enum MICUIELEMENTSTATE : int32
		{
			NORMAL = 1,
			HOT = 2,
			PRESSED = 3,
			DISABLED = 4,
		}
		public enum DISPID_MathInputControlEvents : int32
		{
			MICInsert = 0,
			MICClose = 1,
			MICPaint = 2,
			MICClear = 3,
		}
		public enum RealTimeStylusDataInterest : int32
		{
			AllData = -1,
			None = 0,
			Error = 1,
			RealTimeStylusEnabled = 2,
			RealTimeStylusDisabled = 4,
			StylusNew = 8,
			StylusInRange = 16,
			InAirPackets = 32,
			StylusOutOfRange = 64,
			StylusDown = 128,
			Packets = 256,
			StylusUp = 512,
			StylusButtonUp = 1024,
			StylusButtonDown = 2048,
			SystemEvents = 4096,
			TabletAdded = 8192,
			TabletRemoved = 16384,
			CustomStylusDataAdded = 32768,
			UpdateMapping = 65536,
			DefaultEvents = 37766,
		}
		public enum StylusQueue : int32
		{
			SyncStylusQueue = 1,
			AsyncStylusQueueImmediate = 2,
			AsyncStylusQueue = 3,
		}
		public enum RealTimeStylusLockType : int32
		{
			ObjLock = 1,
			SyncEventLock = 2,
			AsyncEventLock = 4,
			ExcludeCallback = 8,
			SyncObjLock = 11,
			AsyncObjLock = 13,
		}
		public enum LINE_METRICS : int32
		{
			BASELINE = 0,
			MIDLINE = 1,
			ASCENDER = 2,
			DESCENDER = 3,
		}
		public enum CONFIDENCE_LEVEL : int32
		{
			STRONG = 0,
			INTERMEDIATE = 1,
			POOR = 2,
		}
		public enum ALT_BREAKS : int32
		{
			SAME = 0,
			UNIQUE = 1,
			FULL = 2,
		}
		public enum enumRECO_TYPE : int32
		{
			WSTRING = 0,
			WCHAR = 1,
		}
		
		// --- Function Pointers ---
		
		public function HResult PfnRecoCallback(uint32 param0, out uint8 param1, HRECOCONTEXT param2);
		
		// --- Structs ---
		
		[CRepr]
		public struct SYSTEM_EVENT_DATA
		{
			public uint8 bModifier;
			public char16 wKey;
			public int32 xPos;
			public int32 yPos;
			public uint8 bCursorMode;
			public uint32 dwButtonState;
		}
		[CRepr]
		public struct STROKE_RANGE
		{
			public uint32 iStrokeBegin;
			public uint32 iStrokeEnd;
		}
		[CRepr]
		public struct PROPERTY_METRICS
		{
			public int32 nLogicalMin;
			public int32 nLogicalMax;
			public PROPERTY_UNITS Units;
			public float fResolution;
		}
		[CRepr]
		public struct PACKET_PROPERTY
		{
			public Guid guid;
			public PROPERTY_METRICS PropertyMetrics;
		}
		[CRepr]
		public struct PACKET_DESCRIPTION
		{
			public uint32 cbPacketSize;
			public uint32 cPacketProperties;
			public PACKET_PROPERTY* pPacketProperties;
			public uint32 cButtons;
			public Guid* pguidButtons;
		}
		[CRepr]
		public struct INKMETRIC
		{
			public int32 iHeight;
			public int32 iFontAscent;
			public int32 iFontDescent;
			public uint32 dwFlags;
			public uint32 color;
		}
		[CRepr]
		public struct InkRecoGuide
		{
			public RectI rectWritingBox;
			public RectI rectDrawnBox;
			public int32 cRows;
			public int32 cColumns;
			public int32 midline;
		}
		[CRepr]
		public struct FLICK_POINT
		{
			public int32 _bitfield;
		}
		[CRepr]
		public struct FLICK_DATA
		{
			public int32 _bitfield;
		}
		[CRepr]
		public struct IEC_STROKEINFO
		{
			public NMHDR nmhdr;
			public IInkCursor* Cursor;
			public IInkStrokeDisp* Stroke;
		}
		[CRepr]
		public struct IEC_GESTUREINFO
		{
			public NMHDR nmhdr;
			public IInkCursor* Cursor;
			public IInkStrokes* Strokes;
			public VARIANT Gestures;
		}
		[CRepr]
		public struct IEC_RECOGNITIONRESULTINFO
		{
			public NMHDR nmhdr;
			public IInkRecognitionResult* RecognitionResult;
		}
		[CRepr]
		public struct StylusInfo
		{
			public uint32 tcid;
			public uint32 cid;
			public IntBool bIsInvertedCursor;
		}
		[CRepr]
		public struct GESTURE_DATA
		{
			public int32 gestureId;
			public int32 recoConfidence;
			public int32 strokeCount;
		}
		[CRepr]
		public struct DYNAMIC_RENDERER_CACHED_DATA
		{
			public int32 strokeId;
			public IDynamicRenderer* dynamicRenderer;
		}
		[CRepr]
		public struct RECO_GUIDE
		{
			public int32 xOrigin;
			public int32 yOrigin;
			public int32 cxBox;
			public int32 cyBox;
			public int32 cxBase;
			public int32 cyBase;
			public int32 cHorzBox;
			public int32 cVertBox;
			public int32 cyMid;
		}
		[CRepr]
		public struct RECO_ATTRS
		{
			public uint32 dwRecoCapabilityFlags;
			public char16[32] awcVendorName;
			public char16[64] awcFriendlyName;
			public uint16[64] awLanguageId;
		}
		[CRepr]
		public struct RECO_RANGE
		{
			public uint32 iwcBegin;
			public uint32 cCount;
		}
		[CRepr]
		public struct LINE_SEGMENT
		{
			public POINT PtA;
			public POINT PtB;
		}
		[CRepr]
		public struct LATTICE_METRICS
		{
			public LINE_SEGMENT lsBaseline;
			public int16 iMidlineOffset;
		}
		[CRepr]
		public struct RECO_LATTICE_PROPERTY
		{
			public Guid guidProperty;
			public uint16 cbPropertyValue;
			public uint8* pPropertyValue;
		}
		[CRepr]
		public struct RECO_LATTICE_PROPERTIES
		{
			public uint32 cProperties;
			public RECO_LATTICE_PROPERTY** apProps;
		}
		[CRepr]
		public struct RECO_LATTICE_ELEMENT
		{
			public int32 score;
			public uint16 type;
			public uint8* pData;
			public uint32 ulNextColumn;
			public uint32 ulStrokeNumber;
			public RECO_LATTICE_PROPERTIES epProp;
		}
		[CRepr]
		public struct RECO_LATTICE_COLUMN
		{
			public uint32 key;
			public RECO_LATTICE_PROPERTIES cpProp;
			public uint32 cStrokes;
			public uint32* pStrokes;
			public uint32 cLatticeElements;
			public RECO_LATTICE_ELEMENT* pLatticeElements;
		}
		[CRepr]
		public struct RECO_LATTICE
		{
			public uint32 ulColumnCount;
			public RECO_LATTICE_COLUMN* pLatticeColumns;
			public uint32 ulPropertyCount;
			public Guid* pGuidProperties;
			public uint32 ulBestResultColumnCount;
			public uint32* pulBestResultColumns;
			public uint32* pulBestResultIndexes;
		}
		[CRepr]
		public struct CHARACTER_RANGE
		{
			public char16 wcLow;
			public uint16 cChars;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_InkDisp = .(0x937c1a34, 0x151d, 0x4610, 0x9c, 0xa6, 0xa8, 0xcc, 0x9b, 0xdb, 0x5d, 0x83);
		public const Guid CLSID_InkOverlay = .(0x65d00646, 0xcde3, 0x4a88, 0x91, 0x63, 0x67, 0x69, 0xf0, 0xf1, 0xa9, 0x7d);
		public const Guid CLSID_InkPicture = .(0x04a1e553, 0xfe36, 0x4fde, 0x86, 0x5e, 0x34, 0x41, 0x94, 0xe6, 0x94, 0x24);
		public const Guid CLSID_InkCollector = .(0x43fb1553, 0xad74, 0x4ee8, 0x88, 0xe4, 0x3e, 0x6d, 0xaa, 0xc9, 0x15, 0xdb);
		public const Guid CLSID_InkDrawingAttributes = .(0xd8bf32a2, 0x05a5, 0x44c3, 0xb3, 0xaa, 0x5e, 0x80, 0xac, 0x7d, 0x25, 0x76);
		public const Guid CLSID_InkRectangle = .(0x43b07326, 0xaae0, 0x4b62, 0xa8, 0x3d, 0x5f, 0xd7, 0x68, 0xb7, 0x35, 0x3c);
		public const Guid CLSID_InkRenderer = .(0x9c1cc6e4, 0xd7eb, 0x4eeb, 0x90, 0x91, 0x15, 0xa7, 0xc8, 0x79, 0x1e, 0xd9);
		public const Guid CLSID_InkTransform = .(0xe3d5d93c, 0x1663, 0x4a78, 0xa1, 0xa7, 0x22, 0x37, 0x5d, 0xfe, 0xba, 0xee);
		public const Guid CLSID_InkRecognizers = .(0x9fd4e808, 0xf6e6, 0x4e65, 0x98, 0xd3, 0xaa, 0x39, 0x05, 0x4c, 0x12, 0x55);
		public const Guid CLSID_InkRecognizerContext = .(0xaac46a37, 0x9229, 0x4fc0, 0x8c, 0xce, 0x44, 0x97, 0x56, 0x9b, 0xf4, 0xd1);
		public const Guid CLSID_InkRecognizerGuide = .(0x8770d941, 0xa63a, 0x4671, 0xa3, 0x75, 0x28, 0x55, 0xa1, 0x8e, 0xba, 0x73);
		public const Guid CLSID_InkTablets = .(0x6e4fcb12, 0x510a, 0x4d40, 0x93, 0x04, 0x1d, 0xa1, 0x0a, 0xe9, 0x14, 0x7c);
		public const Guid CLSID_InkWordList = .(0x9de85094, 0xf71f, 0x44f1, 0x84, 0x71, 0x15, 0xa2, 0xfa, 0x76, 0xfc, 0xf3);
		public const Guid CLSID_InkStrokes = .(0x48f491bc, 0x240e, 0x4860, 0xb0, 0x79, 0xa1, 0xe9, 0x4d, 0x3d, 0x2c, 0x86);
		public const Guid CLSID_Ink = .(0x13de4a42, 0x8d21, 0x4c8e, 0xbf, 0x9c, 0x8f, 0x69, 0xcb, 0x06, 0x8f, 0xca);
		public const Guid CLSID_SketchInk = .(0xf0291081, 0xe87c, 0x4e07, 0x97, 0xda, 0xa0, 0xa0, 0x37, 0x61, 0xe5, 0x86);
		public const Guid CLSID_InkDivider = .(0x8854f6a0, 0x4683, 0x4ae7, 0x91, 0x91, 0x75, 0x2f, 0xe6, 0x46, 0x12, 0xc3);
		public const Guid CLSID_HandwrittenTextInsertion = .(0x9f074ee2, 0xe6e9, 0x4d8a, 0xa0, 0x47, 0xeb, 0x5b, 0x5c, 0x3c, 0x55, 0xda);
		public const Guid CLSID_PenInputPanel = .(0xf744e496, 0x1b5a, 0x489e, 0x81, 0xdc, 0xfb, 0xd7, 0xac, 0x62, 0x98, 0xa8);
		public const Guid CLSID_TextInputPanel = .(0xf9b189d7, 0x228b, 0x4f2b, 0x86, 0x50, 0xb9, 0x7f, 0x59, 0xe0, 0x2c, 0x8c);
		public const Guid CLSID_PenInputPanel_Internal = .(0x802b1fb9, 0x056b, 0x4720, 0xb0, 0xcc, 0x80, 0xd2, 0x3b, 0x71, 0x17, 0x1e);
		public const Guid CLSID_InkEdit = .(0xe5ca59f5, 0x57c4, 0x4dd8, 0x9b, 0xd6, 0x1d, 0xee, 0xed, 0xd2, 0x7a, 0xf4);
		public const Guid CLSID_MathInputControl = .(0xc561816c, 0x14d8, 0x4090, 0x83, 0x0c, 0x98, 0xd9, 0x94, 0xb2, 0x1c, 0x7b);
		public const Guid CLSID_RealTimeStylus = .(0xe26b366d, 0xf998, 0x43ce, 0x83, 0x6f, 0xcb, 0x6d, 0x90, 0x44, 0x32, 0xb0);
		public const Guid CLSID_DynamicRenderer = .(0xecd32aea, 0x746f, 0x4dcb, 0xbf, 0x68, 0x08, 0x27, 0x57, 0xfa, 0xff, 0x18);
		public const Guid CLSID_GestureRecognizer = .(0xea30c654, 0xc62c, 0x441f, 0xac, 0x00, 0x95, 0xf9, 0xa1, 0x96, 0x78, 0x2c);
		public const Guid CLSID_StrokeBuilder = .(0xe810cee7, 0x6e51, 0x4cb0, 0xaa, 0x3a, 0x0b, 0x98, 0x5b, 0x70, 0xda, 0xf7);
		public const Guid CLSID_TipAutoCompleteClient = .(0x807c1e6c, 0x1d00, 0x453f, 0xb9, 0x20, 0xb6, 0x1b, 0xb7, 0xcd, 0xd9, 0x97);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IInkRectangle : IDispatch
		{
			public const new Guid IID = .(0x9794ff82, 0x6071, 0x4717, 0x8a, 0x8b, 0x6a, 0xc7, 0xc6, 0x4a, 0x68, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Top(out int32 Units) mut => VT.get_Top(ref this, out Units);
			public HResult put_Top(int32 Units) mut => VT.put_Top(ref this, Units);
			public HResult get_Left(out int32 Units) mut => VT.get_Left(ref this, out Units);
			public HResult put_Left(int32 Units) mut => VT.put_Left(ref this, Units);
			public HResult get_Bottom(out int32 Units) mut => VT.get_Bottom(ref this, out Units);
			public HResult put_Bottom(int32 Units) mut => VT.put_Bottom(ref this, Units);
			public HResult get_Right(out int32 Units) mut => VT.get_Right(ref this, out Units);
			public HResult put_Right(int32 Units) mut => VT.put_Right(ref this, Units);
			public HResult get_Data(out RectI Rect) mut => VT.get_Data(ref this, out Rect);
			public HResult put_Data(RectI Rect) mut => VT.put_Data(ref this, Rect);
			public HResult GetRectangle(out int32 Top, out int32 Left, out int32 Bottom, out int32 Right) mut => VT.GetRectangle(ref this, out Top, out Left, out Bottom, out Right);
			public HResult SetRectangle(int32 Top, int32 Left, int32 Bottom, int32 Right) mut => VT.SetRectangle(ref this, Top, Left, Bottom, Right);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRectangle self, out int32 Units) get_Top;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRectangle self, int32 Units) put_Top;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRectangle self, out int32 Units) get_Left;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRectangle self, int32 Units) put_Left;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRectangle self, out int32 Units) get_Bottom;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRectangle self, int32 Units) put_Bottom;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRectangle self, out int32 Units) get_Right;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRectangle self, int32 Units) put_Right;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRectangle self, out RectI Rect) get_Data;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRectangle self, RectI Rect) put_Data;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRectangle self, out int32 Top, out int32 Left, out int32 Bottom, out int32 Right) GetRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRectangle self, int32 Top, int32 Left, int32 Bottom, int32 Right) SetRectangle;
			}
		}
		[CRepr]
		public struct IInkExtendedProperty : IDispatch
		{
			public const new Guid IID = .(0xdb489209, 0xb7c3, 0x411d, 0x90, 0xf6, 0x15, 0x48, 0xcf, 0xff, 0x27, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Guid(BSTR* Guid) mut => VT.get_Guid(ref this, Guid);
			public HResult get_Data(out VARIANT Data) mut => VT.get_Data(ref this, out Data);
			public HResult put_Data(VARIANT Data) mut => VT.put_Data(ref this, Data);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkExtendedProperty self, BSTR* Guid) get_Guid;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkExtendedProperty self, out VARIANT Data) get_Data;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkExtendedProperty self, VARIANT Data) put_Data;
			}
		}
		[CRepr]
		public struct IInkExtendedProperties : IDispatch
		{
			public const new Guid IID = .(0x89f2a8be, 0x95a9, 0x4530, 0x8b, 0x8f, 0x88, 0xe9, 0x71, 0xe3, 0xe2, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HResult get__NewEnum(IUnknown** _NewEnum) mut => VT.get__NewEnum(ref this, _NewEnum);
			public HResult Item(VARIANT Identifier, IInkExtendedProperty** Item) mut => VT.Item(ref this, Identifier, Item);
			public HResult Add(BSTR Guid, VARIANT Data, IInkExtendedProperty** InkExtendedProperty) mut => VT.Add(ref this, Guid, Data, InkExtendedProperty);
			public HResult Remove(VARIANT Identifier) mut => VT.Remove(ref this, Identifier);
			public HResult Clear() mut => VT.Clear(ref this);
			public HResult DoesPropertyExist(BSTR Guid, out int16 DoesPropertyExist) mut => VT.DoesPropertyExist(ref this, Guid, out DoesPropertyExist);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkExtendedProperties self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkExtendedProperties self, IUnknown** _NewEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkExtendedProperties self, VARIANT Identifier, IInkExtendedProperty** Item) Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkExtendedProperties self, BSTR Guid, VARIANT Data, IInkExtendedProperty** InkExtendedProperty) Add;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkExtendedProperties self, VARIANT Identifier) Remove;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkExtendedProperties self) Clear;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkExtendedProperties self, BSTR Guid, out int16 DoesPropertyExist) DoesPropertyExist;
			}
		}
		[CRepr]
		public struct IInkDrawingAttributes : IDispatch
		{
			public const new Guid IID = .(0xbf519b75, 0x0a15, 0x4623, 0xad, 0xc9, 0xc0, 0x0d, 0x43, 0x6a, 0x80, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Color(out int32 CurrentColor) mut => VT.get_Color(ref this, out CurrentColor);
			public HResult put_Color(int32 NewColor) mut => VT.put_Color(ref this, NewColor);
			public HResult get_Width(out float CurrentWidth) mut => VT.get_Width(ref this, out CurrentWidth);
			public HResult put_Width(float NewWidth) mut => VT.put_Width(ref this, NewWidth);
			public HResult get_Height(out float CurrentHeight) mut => VT.get_Height(ref this, out CurrentHeight);
			public HResult put_Height(float NewHeight) mut => VT.put_Height(ref this, NewHeight);
			public HResult get_FitToCurve(out int16 Flag) mut => VT.get_FitToCurve(ref this, out Flag);
			public HResult put_FitToCurve(int16 Flag) mut => VT.put_FitToCurve(ref this, Flag);
			public HResult get_IgnorePressure(out int16 Flag) mut => VT.get_IgnorePressure(ref this, out Flag);
			public HResult put_IgnorePressure(int16 Flag) mut => VT.put_IgnorePressure(ref this, Flag);
			public HResult get_AntiAliased(out int16 Flag) mut => VT.get_AntiAliased(ref this, out Flag);
			public HResult put_AntiAliased(int16 Flag) mut => VT.put_AntiAliased(ref this, Flag);
			public HResult get_Transparency(out int32 CurrentTransparency) mut => VT.get_Transparency(ref this, out CurrentTransparency);
			public HResult put_Transparency(int32 NewTransparency) mut => VT.put_Transparency(ref this, NewTransparency);
			public HResult get_RasterOperation(out InkRasterOperation CurrentRasterOperation) mut => VT.get_RasterOperation(ref this, out CurrentRasterOperation);
			public HResult put_RasterOperation(InkRasterOperation NewRasterOperation) mut => VT.put_RasterOperation(ref this, NewRasterOperation);
			public HResult get_PenTip(out InkPenTip CurrentPenTip) mut => VT.get_PenTip(ref this, out CurrentPenTip);
			public HResult put_PenTip(InkPenTip NewPenTip) mut => VT.put_PenTip(ref this, NewPenTip);
			public HResult get_ExtendedProperties(IInkExtendedProperties** Properties) mut => VT.get_ExtendedProperties(ref this, Properties);
			public HResult Clone(IInkDrawingAttributes** DrawingAttributes) mut => VT.Clone(ref this, DrawingAttributes);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, out int32 CurrentColor) get_Color;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, int32 NewColor) put_Color;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, out float CurrentWidth) get_Width;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, float NewWidth) put_Width;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, out float CurrentHeight) get_Height;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, float NewHeight) put_Height;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, out int16 Flag) get_FitToCurve;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, int16 Flag) put_FitToCurve;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, out int16 Flag) get_IgnorePressure;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, int16 Flag) put_IgnorePressure;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, out int16 Flag) get_AntiAliased;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, int16 Flag) put_AntiAliased;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, out int32 CurrentTransparency) get_Transparency;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, int32 NewTransparency) put_Transparency;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, out InkRasterOperation CurrentRasterOperation) get_RasterOperation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, InkRasterOperation NewRasterOperation) put_RasterOperation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, out InkPenTip CurrentPenTip) get_PenTip;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, InkPenTip NewPenTip) put_PenTip;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, IInkExtendedProperties** Properties) get_ExtendedProperties;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDrawingAttributes self, IInkDrawingAttributes** DrawingAttributes) Clone;
			}
		}
		[CRepr]
		public struct IInkTransform : IDispatch
		{
			public const new Guid IID = .(0x615f1d43, 0x8703, 0x4565, 0x88, 0xe2, 0x82, 0x01, 0xd2, 0xec, 0xd7, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Reset() mut => VT.Reset(ref this);
			public HResult Translate(float HorizontalComponent, float VerticalComponent) mut => VT.Translate(ref this, HorizontalComponent, VerticalComponent);
			public HResult Rotate(float Degrees, float x, float y) mut => VT.Rotate(ref this, Degrees, x, y);
			public HResult Reflect(int16 Horizontally, int16 Vertically) mut => VT.Reflect(ref this, Horizontally, Vertically);
			public HResult Shear(float HorizontalComponent, float VerticalComponent) mut => VT.Shear(ref this, HorizontalComponent, VerticalComponent);
			public HResult ScaleTransform(float HorizontalMultiplier, float VerticalMultiplier) mut => VT.ScaleTransform(ref this, HorizontalMultiplier, VerticalMultiplier);
			public HResult GetTransform(out float eM11, out float eM12, out float eM21, out float eM22, out float eDx, out float eDy) mut => VT.GetTransform(ref this, out eM11, out eM12, out eM21, out eM22, out eDx, out eDy);
			public HResult SetTransform(float eM11, float eM12, float eM21, float eM22, float eDx, float eDy) mut => VT.SetTransform(ref this, eM11, eM12, eM21, eM22, eDx, eDy);
			public HResult get_eM11(out float Value) mut => VT.get_eM11(ref this, out Value);
			public HResult put_eM11(float Value) mut => VT.put_eM11(ref this, Value);
			public HResult get_eM12(out float Value) mut => VT.get_eM12(ref this, out Value);
			public HResult put_eM12(float Value) mut => VT.put_eM12(ref this, Value);
			public HResult get_eM21(out float Value) mut => VT.get_eM21(ref this, out Value);
			public HResult put_eM21(float Value) mut => VT.put_eM21(ref this, Value);
			public HResult get_eM22(out float Value) mut => VT.get_eM22(ref this, out Value);
			public HResult put_eM22(float Value) mut => VT.put_eM22(ref this, Value);
			public HResult get_eDx(out float Value) mut => VT.get_eDx(ref this, out Value);
			public HResult put_eDx(float Value) mut => VT.put_eDx(ref this, Value);
			public HResult get_eDy(out float Value) mut => VT.get_eDy(ref this, out Value);
			public HResult put_eDy(float Value) mut => VT.put_eDy(ref this, Value);
			public HResult get_Data(out XFORM XForm) mut => VT.get_Data(ref this, out XForm);
			public HResult put_Data(XFORM XForm) mut => VT.put_Data(ref this, XForm);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self) Reset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, float HorizontalComponent, float VerticalComponent) Translate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, float Degrees, float x, float y) Rotate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, int16 Horizontally, int16 Vertically) Reflect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, float HorizontalComponent, float VerticalComponent) Shear;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, float HorizontalMultiplier, float VerticalMultiplier) ScaleTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, out float eM11, out float eM12, out float eM21, out float eM22, out float eDx, out float eDy) GetTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, float eM11, float eM12, float eM21, float eM22, float eDx, float eDy) SetTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, out float Value) get_eM11;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, float Value) put_eM11;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, out float Value) get_eM12;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, float Value) put_eM12;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, out float Value) get_eM21;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, float Value) put_eM21;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, out float Value) get_eM22;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, float Value) put_eM22;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, out float Value) get_eDx;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, float Value) put_eDx;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, out float Value) get_eDy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, float Value) put_eDy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, out XFORM XForm) get_Data;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTransform self, XFORM XForm) put_Data;
			}
		}
		[CRepr]
		public struct IInkGesture : IDispatch
		{
			public const new Guid IID = .(0x3bdc0a97, 0x04e5, 0x4e26, 0xb8, 0x13, 0x18, 0xf0, 0x52, 0xd4, 0x1d, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Confidence(out InkRecognitionConfidence Confidence) mut => VT.get_Confidence(ref this, out Confidence);
			public HResult get_Id(out InkApplicationGesture Id) mut => VT.get_Id(ref this, out Id);
			public HResult GetHotPoint(out int32 X, out int32 Y) mut => VT.GetHotPoint(ref this, out X, out Y);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkGesture self, out InkRecognitionConfidence Confidence) get_Confidence;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkGesture self, out InkApplicationGesture Id) get_Id;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkGesture self, out int32 X, out int32 Y) GetHotPoint;
			}
		}
		[CRepr]
		public struct IInkCursor : IDispatch
		{
			public const new Guid IID = .(0xad30c630, 0x40c5, 0x4350, 0x84, 0x05, 0x9c, 0x71, 0x01, 0x2f, 0xc5, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Name(BSTR* Name) mut => VT.get_Name(ref this, Name);
			public HResult get_Id(out int32 Id) mut => VT.get_Id(ref this, out Id);
			public HResult get_Inverted(out int16 Status) mut => VT.get_Inverted(ref this, out Status);
			public HResult get_DrawingAttributes(IInkDrawingAttributes** Attributes) mut => VT.get_DrawingAttributes(ref this, Attributes);
			public HResult putref_DrawingAttributes(IInkDrawingAttributes* Attributes) mut => VT.putref_DrawingAttributes(ref this, Attributes);
			public HResult get_Tablet(IInkTablet** Tablet) mut => VT.get_Tablet(ref this, Tablet);
			public HResult get_Buttons(IInkCursorButtons** Buttons) mut => VT.get_Buttons(ref this, Buttons);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursor self, BSTR* Name) get_Name;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursor self, out int32 Id) get_Id;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursor self, out int16 Status) get_Inverted;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursor self, IInkDrawingAttributes** Attributes) get_DrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursor self, IInkDrawingAttributes* Attributes) putref_DrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursor self, IInkTablet** Tablet) get_Tablet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursor self, IInkCursorButtons** Buttons) get_Buttons;
			}
		}
		[CRepr]
		public struct IInkCursors : IDispatch
		{
			public const new Guid IID = .(0xa248c1ac, 0xc698, 0x4e06, 0x9e, 0x5c, 0xd5, 0x7f, 0x77, 0xc7, 0xe6, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HResult get__NewEnum(IUnknown** _NewEnum) mut => VT.get__NewEnum(ref this, _NewEnum);
			public HResult Item(int32 Index, IInkCursor** Cursor) mut => VT.Item(ref this, Index, Cursor);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursors self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursors self, IUnknown** _NewEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursors self, int32 Index, IInkCursor** Cursor) Item;
			}
		}
		[CRepr]
		public struct IInkCursorButton : IDispatch
		{
			public const new Guid IID = .(0x85ef9417, 0x1d59, 0x49b2, 0xa1, 0x3c, 0x70, 0x2c, 0x85, 0x43, 0x08, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Name(BSTR* Name) mut => VT.get_Name(ref this, Name);
			public HResult get_Id(BSTR* Id) mut => VT.get_Id(ref this, Id);
			public HResult get_State(out InkCursorButtonState CurrentState) mut => VT.get_State(ref this, out CurrentState);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursorButton self, BSTR* Name) get_Name;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursorButton self, BSTR* Id) get_Id;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursorButton self, out InkCursorButtonState CurrentState) get_State;
			}
		}
		[CRepr]
		public struct IInkCursorButtons : IDispatch
		{
			public const new Guid IID = .(0x3671cc40, 0xb624, 0x4671, 0x9f, 0xa0, 0xdb, 0x11, 0x9d, 0x95, 0x2d, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HResult get__NewEnum(IUnknown** _NewEnum) mut => VT.get__NewEnum(ref this, _NewEnum);
			public HResult Item(VARIANT Identifier, IInkCursorButton** Button) mut => VT.Item(ref this, Identifier, Button);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursorButtons self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursorButtons self, IUnknown** _NewEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCursorButtons self, VARIANT Identifier, IInkCursorButton** Button) Item;
			}
		}
		[CRepr]
		public struct IInkTablet : IDispatch
		{
			public const new Guid IID = .(0x2de25eaa, 0x6ef8, 0x42d5, 0xae, 0xe9, 0x18, 0x5b, 0xc8, 0x1b, 0x91, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Name(BSTR* Name) mut => VT.get_Name(ref this, Name);
			public HResult get_PlugAndPlayId(BSTR* Id) mut => VT.get_PlugAndPlayId(ref this, Id);
			public HResult get_MaximumInputRectangle(IInkRectangle** Rectangle) mut => VT.get_MaximumInputRectangle(ref this, Rectangle);
			public HResult get_HardwareCapabilities(out TabletHardwareCapabilities Capabilities) mut => VT.get_HardwareCapabilities(ref this, out Capabilities);
			public HResult IsPacketPropertySupported(BSTR packetPropertyName, out int16 Supported) mut => VT.IsPacketPropertySupported(ref this, packetPropertyName, out Supported);
			public HResult GetPropertyMetrics(BSTR propertyName, out int32 Minimum, out int32 Maximum, out TabletPropertyMetricUnit Units, out float Resolution) mut => VT.GetPropertyMetrics(ref this, propertyName, out Minimum, out Maximum, out Units, out Resolution);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablet self, BSTR* Name) get_Name;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablet self, BSTR* Id) get_PlugAndPlayId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablet self, IInkRectangle** Rectangle) get_MaximumInputRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablet self, out TabletHardwareCapabilities Capabilities) get_HardwareCapabilities;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablet self, BSTR packetPropertyName, out int16 Supported) IsPacketPropertySupported;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablet self, BSTR propertyName, out int32 Minimum, out int32 Maximum, out TabletPropertyMetricUnit Units, out float Resolution) GetPropertyMetrics;
			}
		}
		[CRepr]
		public struct IInkTablet2 : IDispatch
		{
			public const new Guid IID = .(0x90c91ad2, 0xfa36, 0x49d6, 0x95, 0x16, 0xce, 0x8d, 0x57, 0x0f, 0x6f, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_DeviceKind(out TabletDeviceKind Kind) mut => VT.get_DeviceKind(ref this, out Kind);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablet2 self, out TabletDeviceKind Kind) get_DeviceKind;
			}
		}
		[CRepr]
		public struct IInkTablet3 : IDispatch
		{
			public const new Guid IID = .(0x7e313997, 0x1327, 0x41dd, 0x8c, 0xa9, 0x79, 0xf2, 0x4b, 0xe1, 0x72, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_IsMultiTouch(out int16 pIsMultiTouch) mut => VT.get_IsMultiTouch(ref this, out pIsMultiTouch);
			public HResult get_MaximumCursors(out uint32 pMaximumCursors) mut => VT.get_MaximumCursors(ref this, out pMaximumCursors);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablet3 self, out int16 pIsMultiTouch) get_IsMultiTouch;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablet3 self, out uint32 pMaximumCursors) get_MaximumCursors;
			}
		}
		[CRepr]
		public struct IInkTablets : IDispatch
		{
			public const new Guid IID = .(0x112086d9, 0x7779, 0x4535, 0xa6, 0x99, 0x86, 0x2b, 0x43, 0xac, 0x18, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HResult get__NewEnum(IUnknown** _NewEnum) mut => VT.get__NewEnum(ref this, _NewEnum);
			public HResult get_DefaultTablet(IInkTablet** DefaultTablet) mut => VT.get_DefaultTablet(ref this, DefaultTablet);
			public HResult Item(int32 Index, IInkTablet** Tablet) mut => VT.Item(ref this, Index, Tablet);
			public HResult IsPacketPropertySupported(BSTR packetPropertyName, out int16 Supported) mut => VT.IsPacketPropertySupported(ref this, packetPropertyName, out Supported);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablets self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablets self, IUnknown** _NewEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablets self, IInkTablet** DefaultTablet) get_DefaultTablet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablets self, int32 Index, IInkTablet** Tablet) Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkTablets self, BSTR packetPropertyName, out int16 Supported) IsPacketPropertySupported;
			}
		}
		[CRepr]
		public struct IInkStrokeDisp : IDispatch
		{
			public const new Guid IID = .(0x43242fea, 0x91d1, 0x4a72, 0x96, 0x3e, 0xfb, 0xb9, 0x18, 0x29, 0xcf, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_ID(out int32 ID) mut => VT.get_ID(ref this, out ID);
			public HResult get_BezierPoints(out VARIANT Points) mut => VT.get_BezierPoints(ref this, out Points);
			public HResult get_DrawingAttributes(IInkDrawingAttributes** DrawAttrs) mut => VT.get_DrawingAttributes(ref this, DrawAttrs);
			public HResult putref_DrawingAttributes(IInkDrawingAttributes* DrawAttrs) mut => VT.putref_DrawingAttributes(ref this, DrawAttrs);
			public HResult get_Ink(IInkDisp** Ink) mut => VT.get_Ink(ref this, Ink);
			public HResult get_ExtendedProperties(IInkExtendedProperties** Properties) mut => VT.get_ExtendedProperties(ref this, Properties);
			public HResult get_PolylineCusps(out VARIANT Cusps) mut => VT.get_PolylineCusps(ref this, out Cusps);
			public HResult get_BezierCusps(out VARIANT Cusps) mut => VT.get_BezierCusps(ref this, out Cusps);
			public HResult get_SelfIntersections(out VARIANT Intersections) mut => VT.get_SelfIntersections(ref this, out Intersections);
			public HResult get_PacketCount(out int32 plCount) mut => VT.get_PacketCount(ref this, out plCount);
			public HResult get_PacketSize(out int32 plSize) mut => VT.get_PacketSize(ref this, out plSize);
			public HResult get_PacketDescription(out VARIANT PacketDescription) mut => VT.get_PacketDescription(ref this, out PacketDescription);
			public HResult get_Deleted(out int16 Deleted) mut => VT.get_Deleted(ref this, out Deleted);
			public HResult GetBoundingBox(InkBoundingBoxMode BoundingBoxMode, IInkRectangle** Rectangle) mut => VT.GetBoundingBox(ref this, BoundingBoxMode, Rectangle);
			public HResult FindIntersections(IInkStrokes* Strokes, out VARIANT Intersections) mut => VT.FindIntersections(ref this, Strokes, out Intersections);
			public HResult GetRectangleIntersections(IInkRectangle* Rectangle, out VARIANT Intersections) mut => VT.GetRectangleIntersections(ref this, Rectangle, out Intersections);
			public HResult Clip(IInkRectangle* Rectangle) mut => VT.Clip(ref this, Rectangle);
			public HResult HitTestCircle(int32 X, int32 Y, float Radius, out int16 Intersects) mut => VT.HitTestCircle(ref this, X, Y, Radius, out Intersects);
			public HResult NearestPoint(int32 X, int32 Y, out float Distance, out float Point) mut => VT.NearestPoint(ref this, X, Y, out Distance, out Point);
			public HResult Split(float SplitAt, IInkStrokeDisp** NewStroke) mut => VT.Split(ref this, SplitAt, NewStroke);
			public HResult GetPacketDescriptionPropertyMetrics(BSTR PropertyName, out int32 Minimum, out int32 Maximum, out TabletPropertyMetricUnit Units, out float Resolution) mut => VT.GetPacketDescriptionPropertyMetrics(ref this, PropertyName, out Minimum, out Maximum, out Units, out Resolution);
			public HResult GetPoints(int32 Index, int32 Count, out VARIANT Points) mut => VT.GetPoints(ref this, Index, Count, out Points);
			public HResult SetPoints(VARIANT Points, int32 Index, int32 Count, out int32 NumberOfPointsSet) mut => VT.SetPoints(ref this, Points, Index, Count, out NumberOfPointsSet);
			public HResult GetPacketData(int32 Index, int32 Count, out VARIANT PacketData) mut => VT.GetPacketData(ref this, Index, Count, out PacketData);
			public HResult GetPacketValuesByProperty(BSTR PropertyName, int32 Index, int32 Count, out VARIANT PacketValues) mut => VT.GetPacketValuesByProperty(ref this, PropertyName, Index, Count, out PacketValues);
			public HResult SetPacketValuesByProperty(BSTR bstrPropertyName, VARIANT PacketValues, int32 Index, int32 Count, out int32 NumberOfPacketsSet) mut => VT.SetPacketValuesByProperty(ref this, bstrPropertyName, PacketValues, Index, Count, out NumberOfPacketsSet);
			public HResult GetFlattenedBezierPoints(int32 FittingError, out VARIANT FlattenedBezierPoints) mut => VT.GetFlattenedBezierPoints(ref this, FittingError, out FlattenedBezierPoints);
			public HResult Transform(IInkTransform* Transform, int16 ApplyOnPenWidth) mut => VT.Transform(ref this, Transform, ApplyOnPenWidth);
			public HResult ScaleToRectangle(IInkRectangle* Rectangle) mut => VT.ScaleToRectangle(ref this, Rectangle);
			public HResult Move(float HorizontalComponent, float VerticalComponent) mut => VT.Move(ref this, HorizontalComponent, VerticalComponent);
			public HResult Rotate(float Degrees, float x, float y) mut => VT.Rotate(ref this, Degrees, x, y);
			public HResult Shear(float HorizontalMultiplier, float VerticalMultiplier) mut => VT.Shear(ref this, HorizontalMultiplier, VerticalMultiplier);
			public HResult ScaleTransform(float HorizontalMultiplier, float VerticalMultiplier) mut => VT.ScaleTransform(ref this, HorizontalMultiplier, VerticalMultiplier);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, out int32 ID) get_ID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, out VARIANT Points) get_BezierPoints;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, IInkDrawingAttributes** DrawAttrs) get_DrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, IInkDrawingAttributes* DrawAttrs) putref_DrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, IInkDisp** Ink) get_Ink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, IInkExtendedProperties** Properties) get_ExtendedProperties;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, out VARIANT Cusps) get_PolylineCusps;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, out VARIANT Cusps) get_BezierCusps;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, out VARIANT Intersections) get_SelfIntersections;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, out int32 plCount) get_PacketCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, out int32 plSize) get_PacketSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, out VARIANT PacketDescription) get_PacketDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, out int16 Deleted) get_Deleted;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, InkBoundingBoxMode BoundingBoxMode, IInkRectangle** Rectangle) GetBoundingBox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, IInkStrokes* Strokes, out VARIANT Intersections) FindIntersections;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, IInkRectangle* Rectangle, out VARIANT Intersections) GetRectangleIntersections;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, IInkRectangle* Rectangle) Clip;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, int32 X, int32 Y, float Radius, out int16 Intersects) HitTestCircle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, int32 X, int32 Y, out float Distance, out float Point) NearestPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, float SplitAt, IInkStrokeDisp** NewStroke) Split;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, BSTR PropertyName, out int32 Minimum, out int32 Maximum, out TabletPropertyMetricUnit Units, out float Resolution) GetPacketDescriptionPropertyMetrics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, int32 Index, int32 Count, out VARIANT Points) GetPoints;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, VARIANT Points, int32 Index, int32 Count, out int32 NumberOfPointsSet) SetPoints;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, int32 Index, int32 Count, out VARIANT PacketData) GetPacketData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, BSTR PropertyName, int32 Index, int32 Count, out VARIANT PacketValues) GetPacketValuesByProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, BSTR bstrPropertyName, VARIANT PacketValues, int32 Index, int32 Count, out int32 NumberOfPacketsSet) SetPacketValuesByProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, int32 FittingError, out VARIANT FlattenedBezierPoints) GetFlattenedBezierPoints;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, IInkTransform* Transform, int16 ApplyOnPenWidth) Transform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, IInkRectangle* Rectangle) ScaleToRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, float HorizontalComponent, float VerticalComponent) Move;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, float Degrees, float x, float y) Rotate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, float HorizontalMultiplier, float VerticalMultiplier) Shear;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokeDisp self, float HorizontalMultiplier, float VerticalMultiplier) ScaleTransform;
			}
		}
		[CRepr]
		public struct IInkStrokes : IDispatch
		{
			public const new Guid IID = .(0xf1f4c9d8, 0x590a, 0x4963, 0xb3, 0xae, 0x19, 0x35, 0x67, 0x1b, 0xb6, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HResult get__NewEnum(IUnknown** _NewEnum) mut => VT.get__NewEnum(ref this, _NewEnum);
			public HResult get_Ink(IInkDisp** Ink) mut => VT.get_Ink(ref this, Ink);
			public HResult get_RecognitionResult(IInkRecognitionResult** RecognitionResult) mut => VT.get_RecognitionResult(ref this, RecognitionResult);
			public HResult ComToString(BSTR* ToString) mut => VT.ComToString(ref this, ToString);
			public HResult Item(int32 Index, IInkStrokeDisp** Stroke) mut => VT.Item(ref this, Index, Stroke);
			public HResult Add(IInkStrokeDisp* InkStroke) mut => VT.Add(ref this, InkStroke);
			public HResult AddStrokes(IInkStrokes* InkStrokes) mut => VT.AddStrokes(ref this, InkStrokes);
			public HResult Remove(IInkStrokeDisp* InkStroke) mut => VT.Remove(ref this, InkStroke);
			public HResult RemoveStrokes(IInkStrokes* InkStrokes) mut => VT.RemoveStrokes(ref this, InkStrokes);
			public HResult ModifyDrawingAttributes(IInkDrawingAttributes* DrawAttrs) mut => VT.ModifyDrawingAttributes(ref this, DrawAttrs);
			public HResult GetBoundingBox(InkBoundingBoxMode BoundingBoxMode, IInkRectangle** BoundingBox) mut => VT.GetBoundingBox(ref this, BoundingBoxMode, BoundingBox);
			public HResult Transform(IInkTransform* Transform, int16 ApplyOnPenWidth) mut => VT.Transform(ref this, Transform, ApplyOnPenWidth);
			public HResult ScaleToRectangle(IInkRectangle* Rectangle) mut => VT.ScaleToRectangle(ref this, Rectangle);
			public HResult Move(float HorizontalComponent, float VerticalComponent) mut => VT.Move(ref this, HorizontalComponent, VerticalComponent);
			public HResult Rotate(float Degrees, float x, float y) mut => VT.Rotate(ref this, Degrees, x, y);
			public HResult Shear(float HorizontalMultiplier, float VerticalMultiplier) mut => VT.Shear(ref this, HorizontalMultiplier, VerticalMultiplier);
			public HResult ScaleTransform(float HorizontalMultiplier, float VerticalMultiplier) mut => VT.ScaleTransform(ref this, HorizontalMultiplier, VerticalMultiplier);
			public HResult Clip(IInkRectangle* Rectangle) mut => VT.Clip(ref this, Rectangle);
			public HResult RemoveRecognitionResult() mut => VT.RemoveRecognitionResult(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, IUnknown** _NewEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, IInkDisp** Ink) get_Ink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, IInkRecognitionResult** RecognitionResult) get_RecognitionResult;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, BSTR* ToString) ComToString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, int32 Index, IInkStrokeDisp** Stroke) Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, IInkStrokeDisp* InkStroke) Add;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, IInkStrokes* InkStrokes) AddStrokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, IInkStrokeDisp* InkStroke) Remove;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, IInkStrokes* InkStrokes) RemoveStrokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, IInkDrawingAttributes* DrawAttrs) ModifyDrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, InkBoundingBoxMode BoundingBoxMode, IInkRectangle** BoundingBox) GetBoundingBox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, IInkTransform* Transform, int16 ApplyOnPenWidth) Transform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, IInkRectangle* Rectangle) ScaleToRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, float HorizontalComponent, float VerticalComponent) Move;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, float Degrees, float x, float y) Rotate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, float HorizontalMultiplier, float VerticalMultiplier) Shear;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, float HorizontalMultiplier, float VerticalMultiplier) ScaleTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self, IInkRectangle* Rectangle) Clip;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkStrokes self) RemoveRecognitionResult;
			}
		}
		[CRepr]
		public struct IInkCustomStrokes : IDispatch
		{
			public const new Guid IID = .(0x7e23a88f, 0xc30e, 0x420f, 0x9b, 0xdb, 0x28, 0x90, 0x25, 0x43, 0xf0, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HResult get__NewEnum(IUnknown** _NewEnum) mut => VT.get__NewEnum(ref this, _NewEnum);
			public HResult Item(VARIANT Identifier, IInkStrokes** Strokes) mut => VT.Item(ref this, Identifier, Strokes);
			public HResult Add(BSTR Name, IInkStrokes* Strokes) mut => VT.Add(ref this, Name, Strokes);
			public HResult Remove(VARIANT Identifier) mut => VT.Remove(ref this, Identifier);
			public HResult Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCustomStrokes self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCustomStrokes self, IUnknown** _NewEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCustomStrokes self, VARIANT Identifier, IInkStrokes** Strokes) Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCustomStrokes self, BSTR Name, IInkStrokes* Strokes) Add;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCustomStrokes self, VARIANT Identifier) Remove;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCustomStrokes self) Clear;
			}
		}
		[CRepr]
		public struct _IInkStrokesEvents : IDispatch
		{
			public const new Guid IID = .(0xf33053ec, 0x5d25, 0x430a, 0x92, 0x8f, 0x76, 0xa6, 0x49, 0x1d, 0xde, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IInkDisp : IDispatch
		{
			public const new Guid IID = .(0x9d398fa0, 0xc4e2, 0x4fcd, 0x99, 0x73, 0x97, 0x5c, 0xaa, 0xf4, 0x7e, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Strokes(IInkStrokes** Strokes) mut => VT.get_Strokes(ref this, Strokes);
			public HResult get_ExtendedProperties(IInkExtendedProperties** Properties) mut => VT.get_ExtendedProperties(ref this, Properties);
			public HResult get_Dirty(out int16 Dirty) mut => VT.get_Dirty(ref this, out Dirty);
			public HResult put_Dirty(int16 Dirty) mut => VT.put_Dirty(ref this, Dirty);
			public HResult get_CustomStrokes(IInkCustomStrokes** ppunkInkCustomStrokes) mut => VT.get_CustomStrokes(ref this, ppunkInkCustomStrokes);
			public HResult GetBoundingBox(InkBoundingBoxMode BoundingBoxMode, IInkRectangle** Rectangle) mut => VT.GetBoundingBox(ref this, BoundingBoxMode, Rectangle);
			public HResult DeleteStrokes(IInkStrokes* Strokes) mut => VT.DeleteStrokes(ref this, Strokes);
			public HResult DeleteStroke(IInkStrokeDisp* Stroke) mut => VT.DeleteStroke(ref this, Stroke);
			public HResult ExtractStrokes(IInkStrokes* Strokes, InkExtractFlags ExtractFlags, IInkDisp** ExtractedInk) mut => VT.ExtractStrokes(ref this, Strokes, ExtractFlags, ExtractedInk);
			public HResult ExtractWithRectangle(IInkRectangle* Rectangle, InkExtractFlags extractFlags, IInkDisp** ExtractedInk) mut => VT.ExtractWithRectangle(ref this, Rectangle, extractFlags, ExtractedInk);
			public HResult Clip(IInkRectangle* Rectangle) mut => VT.Clip(ref this, Rectangle);
			public HResult Clone(IInkDisp** NewInk) mut => VT.Clone(ref this, NewInk);
			public HResult HitTestCircle(int32 X, int32 Y, float radius, IInkStrokes** Strokes) mut => VT.HitTestCircle(ref this, X, Y, radius, Strokes);
			public HResult HitTestWithRectangle(IInkRectangle* SelectionRectangle, float IntersectPercent, IInkStrokes** Strokes) mut => VT.HitTestWithRectangle(ref this, SelectionRectangle, IntersectPercent, Strokes);
			public HResult HitTestWithLasso(VARIANT Points, float IntersectPercent, VARIANT* LassoPoints, IInkStrokes** Strokes) mut => VT.HitTestWithLasso(ref this, Points, IntersectPercent, LassoPoints, Strokes);
			public HResult NearestPoint(int32 X, int32 Y, out float PointOnStroke, out float DistanceFromPacket, IInkStrokeDisp** Stroke) mut => VT.NearestPoint(ref this, X, Y, out PointOnStroke, out DistanceFromPacket, Stroke);
			public HResult CreateStrokes(VARIANT StrokeIds, IInkStrokes** Strokes) mut => VT.CreateStrokes(ref this, StrokeIds, Strokes);
			public HResult AddStrokesAtRectangle(IInkStrokes* SourceStrokes, IInkRectangle* TargetRectangle) mut => VT.AddStrokesAtRectangle(ref this, SourceStrokes, TargetRectangle);
			public HResult Save(InkPersistenceFormat PersistenceFormat, InkPersistenceCompressionMode CompressionMode, out VARIANT Data) mut => VT.Save(ref this, PersistenceFormat, CompressionMode, out Data);
			public HResult Load(VARIANT Data) mut => VT.Load(ref this, Data);
			public HResult CreateStroke(VARIANT PacketData, VARIANT PacketDescription, IInkStrokeDisp** Stroke) mut => VT.CreateStroke(ref this, PacketData, PacketDescription, Stroke);
			public HResult ClipboardCopyWithRectangle(IInkRectangle* Rectangle, InkClipboardFormats ClipboardFormats, InkClipboardModes ClipboardModes, IDataObject** DataObject) mut => VT.ClipboardCopyWithRectangle(ref this, Rectangle, ClipboardFormats, ClipboardModes, DataObject);
			public HResult ClipboardCopy(IInkStrokes* strokes, InkClipboardFormats ClipboardFormats, InkClipboardModes ClipboardModes, IDataObject** DataObject) mut => VT.ClipboardCopy(ref this, strokes, ClipboardFormats, ClipboardModes, DataObject);
			public HResult CanPaste(IDataObject* DataObject, out int16 CanPaste) mut => VT.CanPaste(ref this, DataObject, out CanPaste);
			public HResult ClipboardPaste(int32 x, int32 y, IDataObject* DataObject, IInkStrokes** Strokes) mut => VT.ClipboardPaste(ref this, x, y, DataObject, Strokes);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IInkStrokes** Strokes) get_Strokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IInkExtendedProperties** Properties) get_ExtendedProperties;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, out int16 Dirty) get_Dirty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, int16 Dirty) put_Dirty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IInkCustomStrokes** ppunkInkCustomStrokes) get_CustomStrokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, InkBoundingBoxMode BoundingBoxMode, IInkRectangle** Rectangle) GetBoundingBox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IInkStrokes* Strokes) DeleteStrokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IInkStrokeDisp* Stroke) DeleteStroke;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IInkStrokes* Strokes, InkExtractFlags ExtractFlags, IInkDisp** ExtractedInk) ExtractStrokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IInkRectangle* Rectangle, InkExtractFlags extractFlags, IInkDisp** ExtractedInk) ExtractWithRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IInkRectangle* Rectangle) Clip;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IInkDisp** NewInk) Clone;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, int32 X, int32 Y, float radius, IInkStrokes** Strokes) HitTestCircle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IInkRectangle* SelectionRectangle, float IntersectPercent, IInkStrokes** Strokes) HitTestWithRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, VARIANT Points, float IntersectPercent, VARIANT* LassoPoints, IInkStrokes** Strokes) HitTestWithLasso;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, int32 X, int32 Y, out float PointOnStroke, out float DistanceFromPacket, IInkStrokeDisp** Stroke) NearestPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, VARIANT StrokeIds, IInkStrokes** Strokes) CreateStrokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IInkStrokes* SourceStrokes, IInkRectangle* TargetRectangle) AddStrokesAtRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, InkPersistenceFormat PersistenceFormat, InkPersistenceCompressionMode CompressionMode, out VARIANT Data) Save;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, VARIANT Data) Load;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, VARIANT PacketData, VARIANT PacketDescription, IInkStrokeDisp** Stroke) CreateStroke;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IInkRectangle* Rectangle, InkClipboardFormats ClipboardFormats, InkClipboardModes ClipboardModes, IDataObject** DataObject) ClipboardCopyWithRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IInkStrokes* strokes, InkClipboardFormats ClipboardFormats, InkClipboardModes ClipboardModes, IDataObject** DataObject) ClipboardCopy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, IDataObject* DataObject, out int16 CanPaste) CanPaste;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDisp self, int32 x, int32 y, IDataObject* DataObject, IInkStrokes** Strokes) ClipboardPaste;
			}
		}
		[CRepr]
		public struct _IInkEvents : IDispatch
		{
			public const new Guid IID = .(0x427b1865, 0xca3f, 0x479a, 0x83, 0xa9, 0x0f, 0x42, 0x0f, 0x2a, 0x00, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IInkRenderer : IDispatch
		{
			public const new Guid IID = .(0xe6257a9c, 0xb511, 0x4f4c, 0xa8, 0xb0, 0xa7, 0xdb, 0xc9, 0x50, 0x6b, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetViewTransform(IInkTransform* ViewTransform) mut => VT.GetViewTransform(ref this, ViewTransform);
			public HResult SetViewTransform(IInkTransform* ViewTransform) mut => VT.SetViewTransform(ref this, ViewTransform);
			public HResult GetObjectTransform(IInkTransform* ObjectTransform) mut => VT.GetObjectTransform(ref this, ObjectTransform);
			public HResult SetObjectTransform(IInkTransform* ObjectTransform) mut => VT.SetObjectTransform(ref this, ObjectTransform);
			public HResult Draw(int hDC, IInkStrokes* Strokes) mut => VT.Draw(ref this, hDC, Strokes);
			public HResult DrawStroke(int hDC, IInkStrokeDisp* Stroke, IInkDrawingAttributes* DrawingAttributes) mut => VT.DrawStroke(ref this, hDC, Stroke, DrawingAttributes);
			public HResult PixelToInkSpace(int hDC, out int32 x, out int32 y) mut => VT.PixelToInkSpace(ref this, hDC, out x, out y);
			public HResult InkSpaceToPixel(int hdcDisplay, out int32 x, out int32 y) mut => VT.InkSpaceToPixel(ref this, hdcDisplay, out x, out y);
			public HResult PixelToInkSpaceFromPoints(int hDC, out VARIANT Points) mut => VT.PixelToInkSpaceFromPoints(ref this, hDC, out Points);
			public HResult InkSpaceToPixelFromPoints(int hDC, out VARIANT Points) mut => VT.InkSpaceToPixelFromPoints(ref this, hDC, out Points);
			public HResult Measure(IInkStrokes* Strokes, IInkRectangle** Rectangle) mut => VT.Measure(ref this, Strokes, Rectangle);
			public HResult MeasureStroke(IInkStrokeDisp* Stroke, IInkDrawingAttributes* DrawingAttributes, IInkRectangle** Rectangle) mut => VT.MeasureStroke(ref this, Stroke, DrawingAttributes, Rectangle);
			public HResult Move(float HorizontalComponent, float VerticalComponent) mut => VT.Move(ref this, HorizontalComponent, VerticalComponent);
			public HResult Rotate(float Degrees, float x, float y) mut => VT.Rotate(ref this, Degrees, x, y);
			public HResult ScaleTransform(float HorizontalMultiplier, float VerticalMultiplier, int16 ApplyOnPenWidth) mut => VT.ScaleTransform(ref this, HorizontalMultiplier, VerticalMultiplier, ApplyOnPenWidth);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, IInkTransform* ViewTransform) GetViewTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, IInkTransform* ViewTransform) SetViewTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, IInkTransform* ObjectTransform) GetObjectTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, IInkTransform* ObjectTransform) SetObjectTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, int hDC, IInkStrokes* Strokes) Draw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, int hDC, IInkStrokeDisp* Stroke, IInkDrawingAttributes* DrawingAttributes) DrawStroke;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, int hDC, out int32 x, out int32 y) PixelToInkSpace;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, int hdcDisplay, out int32 x, out int32 y) InkSpaceToPixel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, int hDC, out VARIANT Points) PixelToInkSpaceFromPoints;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, int hDC, out VARIANT Points) InkSpaceToPixelFromPoints;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, IInkStrokes* Strokes, IInkRectangle** Rectangle) Measure;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, IInkStrokeDisp* Stroke, IInkDrawingAttributes* DrawingAttributes, IInkRectangle** Rectangle) MeasureStroke;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, float HorizontalComponent, float VerticalComponent) Move;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, float Degrees, float x, float y) Rotate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRenderer self, float HorizontalMultiplier, float VerticalMultiplier, int16 ApplyOnPenWidth) ScaleTransform;
			}
		}
		[CRepr]
		public struct IInkCollector : IDispatch
		{
			public const new Guid IID = .(0xf0f060b5, 0x8b1f, 0x4a7c, 0x89, 0xec, 0x88, 0x06, 0x92, 0x58, 0x8a, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_hWnd(out int CurrentWindow) mut => VT.get_hWnd(ref this, out CurrentWindow);
			public HResult put_hWnd(int NewWindow) mut => VT.put_hWnd(ref this, NewWindow);
			public HResult get_Enabled(out int16 Collecting) mut => VT.get_Enabled(ref this, out Collecting);
			public HResult put_Enabled(int16 Collecting) mut => VT.put_Enabled(ref this, Collecting);
			public HResult get_DefaultDrawingAttributes(IInkDrawingAttributes** CurrentAttributes) mut => VT.get_DefaultDrawingAttributes(ref this, CurrentAttributes);
			public HResult putref_DefaultDrawingAttributes(IInkDrawingAttributes* NewAttributes) mut => VT.putref_DefaultDrawingAttributes(ref this, NewAttributes);
			public HResult get_Renderer(IInkRenderer** CurrentInkRenderer) mut => VT.get_Renderer(ref this, CurrentInkRenderer);
			public HResult putref_Renderer(IInkRenderer* NewInkRenderer) mut => VT.putref_Renderer(ref this, NewInkRenderer);
			public HResult get_Ink(IInkDisp** Ink) mut => VT.get_Ink(ref this, Ink);
			public HResult putref_Ink(IInkDisp* NewInk) mut => VT.putref_Ink(ref this, NewInk);
			public HResult get_AutoRedraw(out int16 AutoRedraw) mut => VT.get_AutoRedraw(ref this, out AutoRedraw);
			public HResult put_AutoRedraw(int16 AutoRedraw) mut => VT.put_AutoRedraw(ref this, AutoRedraw);
			public HResult get_CollectingInk(out int16 Collecting) mut => VT.get_CollectingInk(ref this, out Collecting);
			public HResult get_CollectionMode(out InkCollectionMode Mode) mut => VT.get_CollectionMode(ref this, out Mode);
			public HResult put_CollectionMode(InkCollectionMode Mode) mut => VT.put_CollectionMode(ref this, Mode);
			public HResult get_DynamicRendering(out int16 Enabled) mut => VT.get_DynamicRendering(ref this, out Enabled);
			public HResult put_DynamicRendering(int16 Enabled) mut => VT.put_DynamicRendering(ref this, Enabled);
			public HResult get_DesiredPacketDescription(out VARIANT PacketGuids) mut => VT.get_DesiredPacketDescription(ref this, out PacketGuids);
			public HResult put_DesiredPacketDescription(VARIANT PacketGuids) mut => VT.put_DesiredPacketDescription(ref this, PacketGuids);
			public HResult get_MouseIcon(IPictureDisp** MouseIcon) mut => VT.get_MouseIcon(ref this, MouseIcon);
			public HResult put_MouseIcon(IPictureDisp* MouseIcon) mut => VT.put_MouseIcon(ref this, MouseIcon);
			public HResult putref_MouseIcon(IPictureDisp* MouseIcon) mut => VT.putref_MouseIcon(ref this, MouseIcon);
			public HResult get_MousePointer(out InkMousePointer MousePointer) mut => VT.get_MousePointer(ref this, out MousePointer);
			public HResult put_MousePointer(InkMousePointer MousePointer) mut => VT.put_MousePointer(ref this, MousePointer);
			public HResult get_Cursors(IInkCursors** Cursors) mut => VT.get_Cursors(ref this, Cursors);
			public HResult get_MarginX(out int32 MarginX) mut => VT.get_MarginX(ref this, out MarginX);
			public HResult put_MarginX(int32 MarginX) mut => VT.put_MarginX(ref this, MarginX);
			public HResult get_MarginY(out int32 MarginY) mut => VT.get_MarginY(ref this, out MarginY);
			public HResult put_MarginY(int32 MarginY) mut => VT.put_MarginY(ref this, MarginY);
			public HResult get_Tablet(IInkTablet** SingleTablet) mut => VT.get_Tablet(ref this, SingleTablet);
			public HResult get_SupportHighContrastInk(out int16 Support) mut => VT.get_SupportHighContrastInk(ref this, out Support);
			public HResult put_SupportHighContrastInk(int16 Support) mut => VT.put_SupportHighContrastInk(ref this, Support);
			public HResult SetGestureStatus(InkApplicationGesture Gesture, int16 Listen) mut => VT.SetGestureStatus(ref this, Gesture, Listen);
			public HResult GetGestureStatus(InkApplicationGesture Gesture, out int16 Listening) mut => VT.GetGestureStatus(ref this, Gesture, out Listening);
			public HResult GetWindowInputRectangle(IInkRectangle** WindowInputRectangle) mut => VT.GetWindowInputRectangle(ref this, WindowInputRectangle);
			public HResult SetWindowInputRectangle(IInkRectangle* WindowInputRectangle) mut => VT.SetWindowInputRectangle(ref this, WindowInputRectangle);
			public HResult SetAllTabletsMode(int16 UseMouseForInput) mut => VT.SetAllTabletsMode(ref this, UseMouseForInput);
			public HResult SetSingleTabletIntegratedMode(IInkTablet* Tablet) mut => VT.SetSingleTabletIntegratedMode(ref this, Tablet);
			public HResult GetEventInterest(InkCollectorEventInterest EventId, out int16 Listen) mut => VT.GetEventInterest(ref this, EventId, out Listen);
			public HResult SetEventInterest(InkCollectorEventInterest EventId, int16 Listen) mut => VT.SetEventInterest(ref this, EventId, Listen);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, out int CurrentWindow) get_hWnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, int NewWindow) put_hWnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, out int16 Collecting) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, int16 Collecting) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IInkDrawingAttributes** CurrentAttributes) get_DefaultDrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IInkDrawingAttributes* NewAttributes) putref_DefaultDrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IInkRenderer** CurrentInkRenderer) get_Renderer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IInkRenderer* NewInkRenderer) putref_Renderer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IInkDisp** Ink) get_Ink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IInkDisp* NewInk) putref_Ink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, out int16 AutoRedraw) get_AutoRedraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, int16 AutoRedraw) put_AutoRedraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, out int16 Collecting) get_CollectingInk;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, out InkCollectionMode Mode) get_CollectionMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, InkCollectionMode Mode) put_CollectionMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, out int16 Enabled) get_DynamicRendering;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, int16 Enabled) put_DynamicRendering;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, out VARIANT PacketGuids) get_DesiredPacketDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, VARIANT PacketGuids) put_DesiredPacketDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IPictureDisp** MouseIcon) get_MouseIcon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IPictureDisp* MouseIcon) put_MouseIcon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IPictureDisp* MouseIcon) putref_MouseIcon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, out InkMousePointer MousePointer) get_MousePointer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, InkMousePointer MousePointer) put_MousePointer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IInkCursors** Cursors) get_Cursors;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, out int32 MarginX) get_MarginX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, int32 MarginX) put_MarginX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, out int32 MarginY) get_MarginY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, int32 MarginY) put_MarginY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IInkTablet** SingleTablet) get_Tablet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, out int16 Support) get_SupportHighContrastInk;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, int16 Support) put_SupportHighContrastInk;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, InkApplicationGesture Gesture, int16 Listen) SetGestureStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, InkApplicationGesture Gesture, out int16 Listening) GetGestureStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IInkRectangle** WindowInputRectangle) GetWindowInputRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IInkRectangle* WindowInputRectangle) SetWindowInputRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, int16 UseMouseForInput) SetAllTabletsMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, IInkTablet* Tablet) SetSingleTabletIntegratedMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, InkCollectorEventInterest EventId, out int16 Listen) GetEventInterest;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkCollector self, InkCollectorEventInterest EventId, int16 Listen) SetEventInterest;
			}
		}
		[CRepr]
		public struct _IInkCollectorEvents : IDispatch
		{
			public const new Guid IID = .(0x11a583f2, 0x712d, 0x4fea, 0xab, 0xcf, 0xab, 0x4a, 0xf3, 0x8e, 0xa0, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IInkOverlay : IDispatch
		{
			public const new Guid IID = .(0xb82a463b, 0xc1c5, 0x45a3, 0x99, 0x7c, 0xde, 0xab, 0x56, 0x51, 0xb6, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_hWnd(out int CurrentWindow) mut => VT.get_hWnd(ref this, out CurrentWindow);
			public HResult put_hWnd(int NewWindow) mut => VT.put_hWnd(ref this, NewWindow);
			public HResult get_Enabled(out int16 Collecting) mut => VT.get_Enabled(ref this, out Collecting);
			public HResult put_Enabled(int16 Collecting) mut => VT.put_Enabled(ref this, Collecting);
			public HResult get_DefaultDrawingAttributes(IInkDrawingAttributes** CurrentAttributes) mut => VT.get_DefaultDrawingAttributes(ref this, CurrentAttributes);
			public HResult putref_DefaultDrawingAttributes(IInkDrawingAttributes* NewAttributes) mut => VT.putref_DefaultDrawingAttributes(ref this, NewAttributes);
			public HResult get_Renderer(IInkRenderer** CurrentInkRenderer) mut => VT.get_Renderer(ref this, CurrentInkRenderer);
			public HResult putref_Renderer(IInkRenderer* NewInkRenderer) mut => VT.putref_Renderer(ref this, NewInkRenderer);
			public HResult get_Ink(IInkDisp** Ink) mut => VT.get_Ink(ref this, Ink);
			public HResult putref_Ink(IInkDisp* NewInk) mut => VT.putref_Ink(ref this, NewInk);
			public HResult get_AutoRedraw(out int16 AutoRedraw) mut => VT.get_AutoRedraw(ref this, out AutoRedraw);
			public HResult put_AutoRedraw(int16 AutoRedraw) mut => VT.put_AutoRedraw(ref this, AutoRedraw);
			public HResult get_CollectingInk(out int16 Collecting) mut => VT.get_CollectingInk(ref this, out Collecting);
			public HResult get_CollectionMode(out InkCollectionMode Mode) mut => VT.get_CollectionMode(ref this, out Mode);
			public HResult put_CollectionMode(InkCollectionMode Mode) mut => VT.put_CollectionMode(ref this, Mode);
			public HResult get_DynamicRendering(out int16 Enabled) mut => VT.get_DynamicRendering(ref this, out Enabled);
			public HResult put_DynamicRendering(int16 Enabled) mut => VT.put_DynamicRendering(ref this, Enabled);
			public HResult get_DesiredPacketDescription(out VARIANT PacketGuids) mut => VT.get_DesiredPacketDescription(ref this, out PacketGuids);
			public HResult put_DesiredPacketDescription(VARIANT PacketGuids) mut => VT.put_DesiredPacketDescription(ref this, PacketGuids);
			public HResult get_MouseIcon(IPictureDisp** MouseIcon) mut => VT.get_MouseIcon(ref this, MouseIcon);
			public HResult put_MouseIcon(IPictureDisp* MouseIcon) mut => VT.put_MouseIcon(ref this, MouseIcon);
			public HResult putref_MouseIcon(IPictureDisp* MouseIcon) mut => VT.putref_MouseIcon(ref this, MouseIcon);
			public HResult get_MousePointer(out InkMousePointer MousePointer) mut => VT.get_MousePointer(ref this, out MousePointer);
			public HResult put_MousePointer(InkMousePointer MousePointer) mut => VT.put_MousePointer(ref this, MousePointer);
			public HResult get_EditingMode(out InkOverlayEditingMode EditingMode) mut => VT.get_EditingMode(ref this, out EditingMode);
			public HResult put_EditingMode(InkOverlayEditingMode EditingMode) mut => VT.put_EditingMode(ref this, EditingMode);
			public HResult get_Selection(IInkStrokes** Selection) mut => VT.get_Selection(ref this, Selection);
			public HResult put_Selection(IInkStrokes* Selection) mut => VT.put_Selection(ref this, Selection);
			public HResult get_EraserMode(out InkOverlayEraserMode EraserMode) mut => VT.get_EraserMode(ref this, out EraserMode);
			public HResult put_EraserMode(InkOverlayEraserMode EraserMode) mut => VT.put_EraserMode(ref this, EraserMode);
			public HResult get_EraserWidth(out int32 EraserWidth) mut => VT.get_EraserWidth(ref this, out EraserWidth);
			public HResult put_EraserWidth(int32 newEraserWidth) mut => VT.put_EraserWidth(ref this, newEraserWidth);
			public HResult get_AttachMode(out InkOverlayAttachMode AttachMode) mut => VT.get_AttachMode(ref this, out AttachMode);
			public HResult put_AttachMode(InkOverlayAttachMode AttachMode) mut => VT.put_AttachMode(ref this, AttachMode);
			public HResult get_Cursors(IInkCursors** Cursors) mut => VT.get_Cursors(ref this, Cursors);
			public HResult get_MarginX(out int32 MarginX) mut => VT.get_MarginX(ref this, out MarginX);
			public HResult put_MarginX(int32 MarginX) mut => VT.put_MarginX(ref this, MarginX);
			public HResult get_MarginY(out int32 MarginY) mut => VT.get_MarginY(ref this, out MarginY);
			public HResult put_MarginY(int32 MarginY) mut => VT.put_MarginY(ref this, MarginY);
			public HResult get_Tablet(IInkTablet** SingleTablet) mut => VT.get_Tablet(ref this, SingleTablet);
			public HResult get_SupportHighContrastInk(out int16 Support) mut => VT.get_SupportHighContrastInk(ref this, out Support);
			public HResult put_SupportHighContrastInk(int16 Support) mut => VT.put_SupportHighContrastInk(ref this, Support);
			public HResult get_SupportHighContrastSelectionUI(out int16 Support) mut => VT.get_SupportHighContrastSelectionUI(ref this, out Support);
			public HResult put_SupportHighContrastSelectionUI(int16 Support) mut => VT.put_SupportHighContrastSelectionUI(ref this, Support);
			public HResult HitTestSelection(int32 x, int32 y, out SelectionHitResult SelArea) mut => VT.HitTestSelection(ref this, x, y, out SelArea);
			public HResult Draw(IInkRectangle* Rect) mut => VT.Draw(ref this, Rect);
			public HResult SetGestureStatus(InkApplicationGesture Gesture, int16 Listen) mut => VT.SetGestureStatus(ref this, Gesture, Listen);
			public HResult GetGestureStatus(InkApplicationGesture Gesture, out int16 Listening) mut => VT.GetGestureStatus(ref this, Gesture, out Listening);
			public HResult GetWindowInputRectangle(IInkRectangle** WindowInputRectangle) mut => VT.GetWindowInputRectangle(ref this, WindowInputRectangle);
			public HResult SetWindowInputRectangle(IInkRectangle* WindowInputRectangle) mut => VT.SetWindowInputRectangle(ref this, WindowInputRectangle);
			public HResult SetAllTabletsMode(int16 UseMouseForInput) mut => VT.SetAllTabletsMode(ref this, UseMouseForInput);
			public HResult SetSingleTabletIntegratedMode(IInkTablet* Tablet) mut => VT.SetSingleTabletIntegratedMode(ref this, Tablet);
			public HResult GetEventInterest(InkCollectorEventInterest EventId, out int16 Listen) mut => VT.GetEventInterest(ref this, EventId, out Listen);
			public HResult SetEventInterest(InkCollectorEventInterest EventId, int16 Listen) mut => VT.SetEventInterest(ref this, EventId, Listen);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out int CurrentWindow) get_hWnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, int NewWindow) put_hWnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out int16 Collecting) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, int16 Collecting) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkDrawingAttributes** CurrentAttributes) get_DefaultDrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkDrawingAttributes* NewAttributes) putref_DefaultDrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkRenderer** CurrentInkRenderer) get_Renderer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkRenderer* NewInkRenderer) putref_Renderer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkDisp** Ink) get_Ink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkDisp* NewInk) putref_Ink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out int16 AutoRedraw) get_AutoRedraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, int16 AutoRedraw) put_AutoRedraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out int16 Collecting) get_CollectingInk;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out InkCollectionMode Mode) get_CollectionMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, InkCollectionMode Mode) put_CollectionMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out int16 Enabled) get_DynamicRendering;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, int16 Enabled) put_DynamicRendering;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out VARIANT PacketGuids) get_DesiredPacketDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, VARIANT PacketGuids) put_DesiredPacketDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IPictureDisp** MouseIcon) get_MouseIcon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IPictureDisp* MouseIcon) put_MouseIcon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IPictureDisp* MouseIcon) putref_MouseIcon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out InkMousePointer MousePointer) get_MousePointer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, InkMousePointer MousePointer) put_MousePointer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out InkOverlayEditingMode EditingMode) get_EditingMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, InkOverlayEditingMode EditingMode) put_EditingMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkStrokes** Selection) get_Selection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkStrokes* Selection) put_Selection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out InkOverlayEraserMode EraserMode) get_EraserMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, InkOverlayEraserMode EraserMode) put_EraserMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out int32 EraserWidth) get_EraserWidth;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, int32 newEraserWidth) put_EraserWidth;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out InkOverlayAttachMode AttachMode) get_AttachMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, InkOverlayAttachMode AttachMode) put_AttachMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkCursors** Cursors) get_Cursors;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out int32 MarginX) get_MarginX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, int32 MarginX) put_MarginX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out int32 MarginY) get_MarginY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, int32 MarginY) put_MarginY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkTablet** SingleTablet) get_Tablet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out int16 Support) get_SupportHighContrastInk;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, int16 Support) put_SupportHighContrastInk;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, out int16 Support) get_SupportHighContrastSelectionUI;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, int16 Support) put_SupportHighContrastSelectionUI;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, int32 x, int32 y, out SelectionHitResult SelArea) HitTestSelection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkRectangle* Rect) Draw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, InkApplicationGesture Gesture, int16 Listen) SetGestureStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, InkApplicationGesture Gesture, out int16 Listening) GetGestureStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkRectangle** WindowInputRectangle) GetWindowInputRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkRectangle* WindowInputRectangle) SetWindowInputRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, int16 UseMouseForInput) SetAllTabletsMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, IInkTablet* Tablet) SetSingleTabletIntegratedMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, InkCollectorEventInterest EventId, out int16 Listen) GetEventInterest;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkOverlay self, InkCollectorEventInterest EventId, int16 Listen) SetEventInterest;
			}
		}
		[CRepr]
		public struct _IInkOverlayEvents : IDispatch
		{
			public const new Guid IID = .(0x31179b69, 0xe563, 0x489e, 0xb1, 0x6f, 0x71, 0x2f, 0x1e, 0x8a, 0x06, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IInkPicture : IDispatch
		{
			public const new Guid IID = .(0xe85662e0, 0x379a, 0x40d7, 0x9b, 0x5c, 0x75, 0x7d, 0x23, 0x3f, 0x99, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_hWnd(out int CurrentWindow) mut => VT.get_hWnd(ref this, out CurrentWindow);
			public HResult get_DefaultDrawingAttributes(IInkDrawingAttributes** CurrentAttributes) mut => VT.get_DefaultDrawingAttributes(ref this, CurrentAttributes);
			public HResult putref_DefaultDrawingAttributes(IInkDrawingAttributes* NewAttributes) mut => VT.putref_DefaultDrawingAttributes(ref this, NewAttributes);
			public HResult get_Renderer(IInkRenderer** CurrentInkRenderer) mut => VT.get_Renderer(ref this, CurrentInkRenderer);
			public HResult putref_Renderer(IInkRenderer* NewInkRenderer) mut => VT.putref_Renderer(ref this, NewInkRenderer);
			public HResult get_Ink(IInkDisp** Ink) mut => VT.get_Ink(ref this, Ink);
			public HResult putref_Ink(IInkDisp* NewInk) mut => VT.putref_Ink(ref this, NewInk);
			public HResult get_AutoRedraw(out int16 AutoRedraw) mut => VT.get_AutoRedraw(ref this, out AutoRedraw);
			public HResult put_AutoRedraw(int16 AutoRedraw) mut => VT.put_AutoRedraw(ref this, AutoRedraw);
			public HResult get_CollectingInk(out int16 Collecting) mut => VT.get_CollectingInk(ref this, out Collecting);
			public HResult get_CollectionMode(out InkCollectionMode Mode) mut => VT.get_CollectionMode(ref this, out Mode);
			public HResult put_CollectionMode(InkCollectionMode Mode) mut => VT.put_CollectionMode(ref this, Mode);
			public HResult get_DynamicRendering(out int16 Enabled) mut => VT.get_DynamicRendering(ref this, out Enabled);
			public HResult put_DynamicRendering(int16 Enabled) mut => VT.put_DynamicRendering(ref this, Enabled);
			public HResult get_DesiredPacketDescription(out VARIANT PacketGuids) mut => VT.get_DesiredPacketDescription(ref this, out PacketGuids);
			public HResult put_DesiredPacketDescription(VARIANT PacketGuids) mut => VT.put_DesiredPacketDescription(ref this, PacketGuids);
			public HResult get_MouseIcon(IPictureDisp** MouseIcon) mut => VT.get_MouseIcon(ref this, MouseIcon);
			public HResult put_MouseIcon(IPictureDisp* MouseIcon) mut => VT.put_MouseIcon(ref this, MouseIcon);
			public HResult putref_MouseIcon(IPictureDisp* MouseIcon) mut => VT.putref_MouseIcon(ref this, MouseIcon);
			public HResult get_MousePointer(out InkMousePointer MousePointer) mut => VT.get_MousePointer(ref this, out MousePointer);
			public HResult put_MousePointer(InkMousePointer MousePointer) mut => VT.put_MousePointer(ref this, MousePointer);
			public HResult get_EditingMode(out InkOverlayEditingMode EditingMode) mut => VT.get_EditingMode(ref this, out EditingMode);
			public HResult put_EditingMode(InkOverlayEditingMode EditingMode) mut => VT.put_EditingMode(ref this, EditingMode);
			public HResult get_Selection(IInkStrokes** Selection) mut => VT.get_Selection(ref this, Selection);
			public HResult put_Selection(IInkStrokes* Selection) mut => VT.put_Selection(ref this, Selection);
			public HResult get_EraserMode(out InkOverlayEraserMode EraserMode) mut => VT.get_EraserMode(ref this, out EraserMode);
			public HResult put_EraserMode(InkOverlayEraserMode EraserMode) mut => VT.put_EraserMode(ref this, EraserMode);
			public HResult get_EraserWidth(out int32 EraserWidth) mut => VT.get_EraserWidth(ref this, out EraserWidth);
			public HResult put_EraserWidth(int32 newEraserWidth) mut => VT.put_EraserWidth(ref this, newEraserWidth);
			public HResult putref_Picture(IPictureDisp* pPicture) mut => VT.putref_Picture(ref this, pPicture);
			public HResult put_Picture(IPictureDisp* pPicture) mut => VT.put_Picture(ref this, pPicture);
			public HResult get_Picture(IPictureDisp** ppPicture) mut => VT.get_Picture(ref this, ppPicture);
			public HResult put_SizeMode(InkPictureSizeMode smNewSizeMode) mut => VT.put_SizeMode(ref this, smNewSizeMode);
			public HResult get_SizeMode(out InkPictureSizeMode smSizeMode) mut => VT.get_SizeMode(ref this, out smSizeMode);
			public HResult put_BackColor(uint32 newColor) mut => VT.put_BackColor(ref this, newColor);
			public HResult get_BackColor(out uint32 pColor) mut => VT.get_BackColor(ref this, out pColor);
			public HResult get_Cursors(IInkCursors** Cursors) mut => VT.get_Cursors(ref this, Cursors);
			public HResult get_MarginX(out int32 MarginX) mut => VT.get_MarginX(ref this, out MarginX);
			public HResult put_MarginX(int32 MarginX) mut => VT.put_MarginX(ref this, MarginX);
			public HResult get_MarginY(out int32 MarginY) mut => VT.get_MarginY(ref this, out MarginY);
			public HResult put_MarginY(int32 MarginY) mut => VT.put_MarginY(ref this, MarginY);
			public HResult get_Tablet(IInkTablet** SingleTablet) mut => VT.get_Tablet(ref this, SingleTablet);
			public HResult get_SupportHighContrastInk(out int16 Support) mut => VT.get_SupportHighContrastInk(ref this, out Support);
			public HResult put_SupportHighContrastInk(int16 Support) mut => VT.put_SupportHighContrastInk(ref this, Support);
			public HResult get_SupportHighContrastSelectionUI(out int16 Support) mut => VT.get_SupportHighContrastSelectionUI(ref this, out Support);
			public HResult put_SupportHighContrastSelectionUI(int16 Support) mut => VT.put_SupportHighContrastSelectionUI(ref this, Support);
			public HResult HitTestSelection(int32 x, int32 y, out SelectionHitResult SelArea) mut => VT.HitTestSelection(ref this, x, y, out SelArea);
			public HResult SetGestureStatus(InkApplicationGesture Gesture, int16 Listen) mut => VT.SetGestureStatus(ref this, Gesture, Listen);
			public HResult GetGestureStatus(InkApplicationGesture Gesture, out int16 Listening) mut => VT.GetGestureStatus(ref this, Gesture, out Listening);
			public HResult GetWindowInputRectangle(IInkRectangle** WindowInputRectangle) mut => VT.GetWindowInputRectangle(ref this, WindowInputRectangle);
			public HResult SetWindowInputRectangle(IInkRectangle* WindowInputRectangle) mut => VT.SetWindowInputRectangle(ref this, WindowInputRectangle);
			public HResult SetAllTabletsMode(int16 UseMouseForInput) mut => VT.SetAllTabletsMode(ref this, UseMouseForInput);
			public HResult SetSingleTabletIntegratedMode(IInkTablet* Tablet) mut => VT.SetSingleTabletIntegratedMode(ref this, Tablet);
			public HResult GetEventInterest(InkCollectorEventInterest EventId, out int16 Listen) mut => VT.GetEventInterest(ref this, EventId, out Listen);
			public HResult SetEventInterest(InkCollectorEventInterest EventId, int16 Listen) mut => VT.SetEventInterest(ref this, EventId, Listen);
			public HResult get_InkEnabled(out int16 Collecting) mut => VT.get_InkEnabled(ref this, out Collecting);
			public HResult put_InkEnabled(int16 Collecting) mut => VT.put_InkEnabled(ref this, Collecting);
			public HResult get_Enabled(out int16 pbool) mut => VT.get_Enabled(ref this, out pbool);
			public HResult put_Enabled(int16 vbool) mut => VT.put_Enabled(ref this, vbool);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out int CurrentWindow) get_hWnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IInkDrawingAttributes** CurrentAttributes) get_DefaultDrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IInkDrawingAttributes* NewAttributes) putref_DefaultDrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IInkRenderer** CurrentInkRenderer) get_Renderer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IInkRenderer* NewInkRenderer) putref_Renderer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IInkDisp** Ink) get_Ink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IInkDisp* NewInk) putref_Ink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out int16 AutoRedraw) get_AutoRedraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, int16 AutoRedraw) put_AutoRedraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out int16 Collecting) get_CollectingInk;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out InkCollectionMode Mode) get_CollectionMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, InkCollectionMode Mode) put_CollectionMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out int16 Enabled) get_DynamicRendering;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, int16 Enabled) put_DynamicRendering;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out VARIANT PacketGuids) get_DesiredPacketDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, VARIANT PacketGuids) put_DesiredPacketDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IPictureDisp** MouseIcon) get_MouseIcon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IPictureDisp* MouseIcon) put_MouseIcon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IPictureDisp* MouseIcon) putref_MouseIcon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out InkMousePointer MousePointer) get_MousePointer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, InkMousePointer MousePointer) put_MousePointer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out InkOverlayEditingMode EditingMode) get_EditingMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, InkOverlayEditingMode EditingMode) put_EditingMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IInkStrokes** Selection) get_Selection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IInkStrokes* Selection) put_Selection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out InkOverlayEraserMode EraserMode) get_EraserMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, InkOverlayEraserMode EraserMode) put_EraserMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out int32 EraserWidth) get_EraserWidth;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, int32 newEraserWidth) put_EraserWidth;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IPictureDisp* pPicture) putref_Picture;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IPictureDisp* pPicture) put_Picture;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IPictureDisp** ppPicture) get_Picture;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, InkPictureSizeMode smNewSizeMode) put_SizeMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out InkPictureSizeMode smSizeMode) get_SizeMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, uint32 newColor) put_BackColor;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out uint32 pColor) get_BackColor;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IInkCursors** Cursors) get_Cursors;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out int32 MarginX) get_MarginX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, int32 MarginX) put_MarginX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out int32 MarginY) get_MarginY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, int32 MarginY) put_MarginY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IInkTablet** SingleTablet) get_Tablet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out int16 Support) get_SupportHighContrastInk;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, int16 Support) put_SupportHighContrastInk;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out int16 Support) get_SupportHighContrastSelectionUI;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, int16 Support) put_SupportHighContrastSelectionUI;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, int32 x, int32 y, out SelectionHitResult SelArea) HitTestSelection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, InkApplicationGesture Gesture, int16 Listen) SetGestureStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, InkApplicationGesture Gesture, out int16 Listening) GetGestureStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IInkRectangle** WindowInputRectangle) GetWindowInputRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IInkRectangle* WindowInputRectangle) SetWindowInputRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, int16 UseMouseForInput) SetAllTabletsMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, IInkTablet* Tablet) SetSingleTabletIntegratedMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, InkCollectorEventInterest EventId, out int16 Listen) GetEventInterest;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, InkCollectorEventInterest EventId, int16 Listen) SetEventInterest;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out int16 Collecting) get_InkEnabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, int16 Collecting) put_InkEnabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, out int16 pbool) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkPicture self, int16 vbool) put_Enabled;
			}
		}
		[CRepr]
		public struct _IInkPictureEvents : IDispatch
		{
			public const new Guid IID = .(0x60ff4fee, 0x22ff, 0x4484, 0xac, 0xc1, 0xd3, 0x08, 0xd9, 0xcd, 0x7e, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IInkRecognizer : IDispatch
		{
			public const new Guid IID = .(0x782bf7cf, 0x034b, 0x4396, 0x8a, 0x32, 0x3a, 0x18, 0x33, 0xcf, 0x6b, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Name(BSTR* Name) mut => VT.get_Name(ref this, Name);
			public HResult get_Vendor(BSTR* Vendor) mut => VT.get_Vendor(ref this, Vendor);
			public HResult get_Capabilities(out InkRecognizerCapabilities CapabilitiesFlags) mut => VT.get_Capabilities(ref this, out CapabilitiesFlags);
			public HResult get_Languages(out VARIANT Languages) mut => VT.get_Languages(ref this, out Languages);
			public HResult get_SupportedProperties(out VARIANT SupportedProperties) mut => VT.get_SupportedProperties(ref this, out SupportedProperties);
			public HResult get_PreferredPacketDescription(out VARIANT PreferredPacketDescription) mut => VT.get_PreferredPacketDescription(ref this, out PreferredPacketDescription);
			public HResult CreateRecognizerContext(IInkRecognizerContext** Context) mut => VT.CreateRecognizerContext(ref this, Context);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizer self, BSTR* Name) get_Name;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizer self, BSTR* Vendor) get_Vendor;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizer self, out InkRecognizerCapabilities CapabilitiesFlags) get_Capabilities;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizer self, out VARIANT Languages) get_Languages;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizer self, out VARIANT SupportedProperties) get_SupportedProperties;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizer self, out VARIANT PreferredPacketDescription) get_PreferredPacketDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizer self, IInkRecognizerContext** Context) CreateRecognizerContext;
			}
		}
		[CRepr]
		public struct IInkRecognizer2 : IDispatch
		{
			public const new Guid IID = .(0x6110118a, 0x3a75, 0x4ad6, 0xb2, 0xaa, 0x04, 0xb2, 0xb7, 0x2b, 0xbe, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Id(BSTR* pbstrId) mut => VT.get_Id(ref this, pbstrId);
			public HResult get_UnicodeRanges(out VARIANT UnicodeRanges) mut => VT.get_UnicodeRanges(ref this, out UnicodeRanges);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizer2 self, BSTR* pbstrId) get_Id;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizer2 self, out VARIANT UnicodeRanges) get_UnicodeRanges;
			}
		}
		[CRepr]
		public struct IInkRecognizers : IDispatch
		{
			public const new Guid IID = .(0x9ccc4f12, 0xb0b7, 0x4a8b, 0xbf, 0x58, 0x4a, 0xec, 0xa4, 0xe8, 0xce, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HResult get__NewEnum(IUnknown** _NewEnum) mut => VT.get__NewEnum(ref this, _NewEnum);
			public HResult GetDefaultRecognizer(int32 lcid, IInkRecognizer** DefaultRecognizer) mut => VT.GetDefaultRecognizer(ref this, lcid, DefaultRecognizer);
			public HResult Item(int32 Index, IInkRecognizer** InkRecognizer) mut => VT.Item(ref this, Index, InkRecognizer);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizers self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizers self, IUnknown** _NewEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizers self, int32 lcid, IInkRecognizer** DefaultRecognizer) GetDefaultRecognizer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizers self, int32 Index, IInkRecognizer** InkRecognizer) Item;
			}
		}
		[CRepr]
		public struct _IInkRecognitionEvents : IDispatch
		{
			public const new Guid IID = .(0x17bce92f, 0x2e21, 0x47fd, 0x9d, 0x33, 0x3c, 0x6a, 0xfb, 0xfd, 0x8c, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IInkRecognizerContext : IDispatch
		{
			public const new Guid IID = .(0xc68f52f9, 0x32a3, 0x4625, 0x90, 0x6c, 0x44, 0xfc, 0x23, 0xb4, 0x09, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Strokes(IInkStrokes** Strokes) mut => VT.get_Strokes(ref this, Strokes);
			public HResult putref_Strokes(IInkStrokes* Strokes) mut => VT.putref_Strokes(ref this, Strokes);
			public HResult get_CharacterAutoCompletionMode(out InkRecognizerCharacterAutoCompletionMode Mode) mut => VT.get_CharacterAutoCompletionMode(ref this, out Mode);
			public HResult put_CharacterAutoCompletionMode(InkRecognizerCharacterAutoCompletionMode Mode) mut => VT.put_CharacterAutoCompletionMode(ref this, Mode);
			public HResult get_Factoid(BSTR* Factoid) mut => VT.get_Factoid(ref this, Factoid);
			public HResult put_Factoid(BSTR factoid) mut => VT.put_Factoid(ref this, factoid);
			public HResult get_Guide(IInkRecognizerGuide** RecognizerGuide) mut => VT.get_Guide(ref this, RecognizerGuide);
			public HResult putref_Guide(IInkRecognizerGuide* RecognizerGuide) mut => VT.putref_Guide(ref this, RecognizerGuide);
			public HResult get_PrefixText(BSTR* Prefix) mut => VT.get_PrefixText(ref this, Prefix);
			public HResult put_PrefixText(BSTR Prefix) mut => VT.put_PrefixText(ref this, Prefix);
			public HResult get_SuffixText(BSTR* Suffix) mut => VT.get_SuffixText(ref this, Suffix);
			public HResult put_SuffixText(BSTR Suffix) mut => VT.put_SuffixText(ref this, Suffix);
			public HResult get_RecognitionFlags(out InkRecognitionModes Modes) mut => VT.get_RecognitionFlags(ref this, out Modes);
			public HResult put_RecognitionFlags(InkRecognitionModes Modes) mut => VT.put_RecognitionFlags(ref this, Modes);
			public HResult get_WordList(IInkWordList** WordList) mut => VT.get_WordList(ref this, WordList);
			public HResult putref_WordList(IInkWordList* WordList) mut => VT.putref_WordList(ref this, WordList);
			public HResult get_Recognizer(IInkRecognizer** Recognizer) mut => VT.get_Recognizer(ref this, Recognizer);
			public HResult Recognize(out InkRecognitionStatus RecognitionStatus, IInkRecognitionResult** RecognitionResult) mut => VT.Recognize(ref this, out RecognitionStatus, RecognitionResult);
			public HResult StopBackgroundRecognition() mut => VT.StopBackgroundRecognition(ref this);
			public HResult EndInkInput() mut => VT.EndInkInput(ref this);
			public HResult BackgroundRecognize(VARIANT CustomData) mut => VT.BackgroundRecognize(ref this, CustomData);
			public HResult BackgroundRecognizeWithAlternates(VARIANT CustomData) mut => VT.BackgroundRecognizeWithAlternates(ref this, CustomData);
			public HResult Clone(IInkRecognizerContext** RecoContext) mut => VT.Clone(ref this, RecoContext);
			public HResult IsStringSupported(BSTR String, out int16 Supported) mut => VT.IsStringSupported(ref this, String, out Supported);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, IInkStrokes** Strokes) get_Strokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, IInkStrokes* Strokes) putref_Strokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, out InkRecognizerCharacterAutoCompletionMode Mode) get_CharacterAutoCompletionMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, InkRecognizerCharacterAutoCompletionMode Mode) put_CharacterAutoCompletionMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, BSTR* Factoid) get_Factoid;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, BSTR factoid) put_Factoid;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, IInkRecognizerGuide** RecognizerGuide) get_Guide;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, IInkRecognizerGuide* RecognizerGuide) putref_Guide;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, BSTR* Prefix) get_PrefixText;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, BSTR Prefix) put_PrefixText;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, BSTR* Suffix) get_SuffixText;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, BSTR Suffix) put_SuffixText;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, out InkRecognitionModes Modes) get_RecognitionFlags;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, InkRecognitionModes Modes) put_RecognitionFlags;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, IInkWordList** WordList) get_WordList;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, IInkWordList* WordList) putref_WordList;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, IInkRecognizer** Recognizer) get_Recognizer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, out InkRecognitionStatus RecognitionStatus, IInkRecognitionResult** RecognitionResult) Recognize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self) StopBackgroundRecognition;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self) EndInkInput;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, VARIANT CustomData) BackgroundRecognize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, VARIANT CustomData) BackgroundRecognizeWithAlternates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, IInkRecognizerContext** RecoContext) Clone;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext self, BSTR String, out int16 Supported) IsStringSupported;
			}
		}
		[CRepr]
		public struct IInkRecognizerContext2 : IDispatch
		{
			public const new Guid IID = .(0xd6f0e32f, 0x73d8, 0x408e, 0x8e, 0x9f, 0x5f, 0xea, 0x59, 0x2c, 0x36, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_EnabledUnicodeRanges(out VARIANT UnicodeRanges) mut => VT.get_EnabledUnicodeRanges(ref this, out UnicodeRanges);
			public HResult put_EnabledUnicodeRanges(VARIANT UnicodeRanges) mut => VT.put_EnabledUnicodeRanges(ref this, UnicodeRanges);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext2 self, out VARIANT UnicodeRanges) get_EnabledUnicodeRanges;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerContext2 self, VARIANT UnicodeRanges) put_EnabledUnicodeRanges;
			}
		}
		[CRepr]
		public struct IInkRecognitionResult : IDispatch
		{
			public const new Guid IID = .(0x3bc129a8, 0x86cd, 0x45ad, 0xbd, 0xe8, 0xe0, 0xd3, 0x2d, 0x61, 0xc1, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_TopString(BSTR* TopString) mut => VT.get_TopString(ref this, TopString);
			public HResult get_TopAlternate(IInkRecognitionAlternate** TopAlternate) mut => VT.get_TopAlternate(ref this, TopAlternate);
			public HResult get_TopConfidence(out InkRecognitionConfidence TopConfidence) mut => VT.get_TopConfidence(ref this, out TopConfidence);
			public HResult get_Strokes(IInkStrokes** Strokes) mut => VT.get_Strokes(ref this, Strokes);
			public HResult AlternatesFromSelection(int32 selectionStart, int32 selectionLength, int32 maximumAlternates, IInkRecognitionAlternates** AlternatesFromSelection) mut => VT.AlternatesFromSelection(ref this, selectionStart, selectionLength, maximumAlternates, AlternatesFromSelection);
			public HResult ModifyTopAlternate(IInkRecognitionAlternate* Alternate) mut => VT.ModifyTopAlternate(ref this, Alternate);
			public HResult SetResultOnStrokes() mut => VT.SetResultOnStrokes(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionResult self, BSTR* TopString) get_TopString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionResult self, IInkRecognitionAlternate** TopAlternate) get_TopAlternate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionResult self, out InkRecognitionConfidence TopConfidence) get_TopConfidence;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionResult self, IInkStrokes** Strokes) get_Strokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionResult self, int32 selectionStart, int32 selectionLength, int32 maximumAlternates, IInkRecognitionAlternates** AlternatesFromSelection) AlternatesFromSelection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionResult self, IInkRecognitionAlternate* Alternate) ModifyTopAlternate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionResult self) SetResultOnStrokes;
			}
		}
		[CRepr]
		public struct IInkRecognitionAlternate : IDispatch
		{
			public const new Guid IID = .(0xb7e660ad, 0x77e4, 0x429b, 0xad, 0xda, 0x87, 0x37, 0x80, 0xd1, 0xfc, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_String(BSTR* RecoString) mut => VT.get_String(ref this, RecoString);
			public HResult get_Confidence(out InkRecognitionConfidence Confidence) mut => VT.get_Confidence(ref this, out Confidence);
			public HResult get_Baseline(out VARIANT Baseline) mut => VT.get_Baseline(ref this, out Baseline);
			public HResult get_Midline(out VARIANT Midline) mut => VT.get_Midline(ref this, out Midline);
			public HResult get_Ascender(out VARIANT Ascender) mut => VT.get_Ascender(ref this, out Ascender);
			public HResult get_Descender(out VARIANT Descender) mut => VT.get_Descender(ref this, out Descender);
			public HResult get_LineNumber(out int32 LineNumber) mut => VT.get_LineNumber(ref this, out LineNumber);
			public HResult get_Strokes(IInkStrokes** Strokes) mut => VT.get_Strokes(ref this, Strokes);
			public HResult get_LineAlternates(IInkRecognitionAlternates** LineAlternates) mut => VT.get_LineAlternates(ref this, LineAlternates);
			public HResult get_ConfidenceAlternates(IInkRecognitionAlternates** ConfidenceAlternates) mut => VT.get_ConfidenceAlternates(ref this, ConfidenceAlternates);
			public HResult GetStrokesFromStrokeRanges(IInkStrokes* Strokes, IInkStrokes** GetStrokesFromStrokeRanges) mut => VT.GetStrokesFromStrokeRanges(ref this, Strokes, GetStrokesFromStrokeRanges);
			public HResult GetStrokesFromTextRange(out int32 selectionStart, out int32 selectionLength, IInkStrokes** GetStrokesFromTextRange) mut => VT.GetStrokesFromTextRange(ref this, out selectionStart, out selectionLength, GetStrokesFromTextRange);
			public HResult GetTextRangeFromStrokes(IInkStrokes* Strokes, out int32 selectionStart, out int32 selectionLength) mut => VT.GetTextRangeFromStrokes(ref this, Strokes, out selectionStart, out selectionLength);
			public HResult AlternatesWithConstantPropertyValues(BSTR PropertyType, IInkRecognitionAlternates** AlternatesWithConstantPropertyValues) mut => VT.AlternatesWithConstantPropertyValues(ref this, PropertyType, AlternatesWithConstantPropertyValues);
			public HResult GetPropertyValue(BSTR PropertyType, out VARIANT PropertyValue) mut => VT.GetPropertyValue(ref this, PropertyType, out PropertyValue);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, BSTR* RecoString) get_String;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, out InkRecognitionConfidence Confidence) get_Confidence;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, out VARIANT Baseline) get_Baseline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, out VARIANT Midline) get_Midline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, out VARIANT Ascender) get_Ascender;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, out VARIANT Descender) get_Descender;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, out int32 LineNumber) get_LineNumber;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, IInkStrokes** Strokes) get_Strokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, IInkRecognitionAlternates** LineAlternates) get_LineAlternates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, IInkRecognitionAlternates** ConfidenceAlternates) get_ConfidenceAlternates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, IInkStrokes* Strokes, IInkStrokes** GetStrokesFromStrokeRanges) GetStrokesFromStrokeRanges;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, out int32 selectionStart, out int32 selectionLength, IInkStrokes** GetStrokesFromTextRange) GetStrokesFromTextRange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, IInkStrokes* Strokes, out int32 selectionStart, out int32 selectionLength) GetTextRangeFromStrokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, BSTR PropertyType, IInkRecognitionAlternates** AlternatesWithConstantPropertyValues) AlternatesWithConstantPropertyValues;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternate self, BSTR PropertyType, out VARIANT PropertyValue) GetPropertyValue;
			}
		}
		[CRepr]
		public struct IInkRecognitionAlternates : IDispatch
		{
			public const new Guid IID = .(0x286a167f, 0x9f19, 0x4c61, 0x9d, 0x53, 0x4f, 0x07, 0xbe, 0x62, 0x2b, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HResult get__NewEnum(IUnknown** _NewEnum) mut => VT.get__NewEnum(ref this, _NewEnum);
			public HResult get_Strokes(IInkStrokes** Strokes) mut => VT.get_Strokes(ref this, Strokes);
			public HResult Item(int32 Index, IInkRecognitionAlternate** InkRecoAlternate) mut => VT.Item(ref this, Index, InkRecoAlternate);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternates self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternates self, IUnknown** _NewEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternates self, IInkStrokes** Strokes) get_Strokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognitionAlternates self, int32 Index, IInkRecognitionAlternate** InkRecoAlternate) Item;
			}
		}
		[CRepr]
		public struct IInkRecognizerGuide : IDispatch
		{
			public const new Guid IID = .(0xd934be07, 0x7b84, 0x4208, 0x91, 0x36, 0x83, 0xc2, 0x09, 0x94, 0xe9, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_WritingBox(IInkRectangle** Rectangle) mut => VT.get_WritingBox(ref this, Rectangle);
			public HResult put_WritingBox(IInkRectangle* Rectangle) mut => VT.put_WritingBox(ref this, Rectangle);
			public HResult get_DrawnBox(IInkRectangle** Rectangle) mut => VT.get_DrawnBox(ref this, Rectangle);
			public HResult put_DrawnBox(IInkRectangle* Rectangle) mut => VT.put_DrawnBox(ref this, Rectangle);
			public HResult get_Rows(out int32 Units) mut => VT.get_Rows(ref this, out Units);
			public HResult put_Rows(int32 Units) mut => VT.put_Rows(ref this, Units);
			public HResult get_Columns(out int32 Units) mut => VT.get_Columns(ref this, out Units);
			public HResult put_Columns(int32 Units) mut => VT.put_Columns(ref this, Units);
			public HResult get_Midline(out int32 Units) mut => VT.get_Midline(ref this, out Units);
			public HResult put_Midline(int32 Units) mut => VT.put_Midline(ref this, Units);
			public HResult get_GuideData(out InkRecoGuide pRecoGuide) mut => VT.get_GuideData(ref this, out pRecoGuide);
			public HResult put_GuideData(InkRecoGuide recoGuide) mut => VT.put_GuideData(ref this, recoGuide);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerGuide self, IInkRectangle** Rectangle) get_WritingBox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerGuide self, IInkRectangle* Rectangle) put_WritingBox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerGuide self, IInkRectangle** Rectangle) get_DrawnBox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerGuide self, IInkRectangle* Rectangle) put_DrawnBox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerGuide self, out int32 Units) get_Rows;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerGuide self, int32 Units) put_Rows;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerGuide self, out int32 Units) get_Columns;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerGuide self, int32 Units) put_Columns;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerGuide self, out int32 Units) get_Midline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerGuide self, int32 Units) put_Midline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerGuide self, out InkRecoGuide pRecoGuide) get_GuideData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkRecognizerGuide self, InkRecoGuide recoGuide) put_GuideData;
			}
		}
		[CRepr]
		public struct IInkWordList : IDispatch
		{
			public const new Guid IID = .(0x76ba3491, 0xcb2f, 0x406b, 0x99, 0x61, 0x0e, 0x0c, 0x4c, 0xda, 0xae, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddWord(BSTR NewWord) mut => VT.AddWord(ref this, NewWord);
			public HResult RemoveWord(BSTR RemoveWord) mut => VT.RemoveWord(ref this, RemoveWord);
			public HResult Merge(IInkWordList* MergeWordList) mut => VT.Merge(ref this, MergeWordList);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkWordList self, BSTR NewWord) AddWord;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkWordList self, BSTR RemoveWord) RemoveWord;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkWordList self, IInkWordList* MergeWordList) Merge;
			}
		}
		[CRepr]
		public struct IInkWordList2 : IDispatch
		{
			public const new Guid IID = .(0x14542586, 0x11bf, 0x4f5f, 0xb6, 0xe7, 0x49, 0xd0, 0x74, 0x4a, 0xab, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddWords(BSTR NewWords) mut => VT.AddWords(ref this, NewWords);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkWordList2 self, BSTR NewWords) AddWords;
			}
		}
		[CRepr]
		public struct IInk : IDispatch
		{
			public const new Guid IID = .(0x03f8e511, 0x43a1, 0x11d3, 0x8b, 0xb6, 0x00, 0x80, 0xc7, 0xd6, 0xba, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IInkLineInfo : IUnknown
		{
			public const new Guid IID = .(0x9c1c5ad6, 0xf22f, 0x4de4, 0xb4, 0x53, 0xa2, 0xcc, 0x48, 0x2e, 0x7c, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetFormat(ref INKMETRIC pim) mut => VT.SetFormat(ref this, ref pim);
			public HResult GetFormat(ref INKMETRIC pim) mut => VT.GetFormat(ref this, ref pim);
			public HResult GetInkExtent(ref INKMETRIC pim, ref uint32 pnWidth) mut => VT.GetInkExtent(ref this, ref pim, ref pnWidth);
			public HResult GetCandidate(uint32 nCandidateNum, char16* pwcRecogWord, ref uint32 pcwcRecogWord, uint32 dwFlags) mut => VT.GetCandidate(ref this, nCandidateNum, pwcRecogWord, ref pcwcRecogWord, dwFlags);
			public HResult SetCandidate(uint32 nCandidateNum, char16* strRecogWord) mut => VT.SetCandidate(ref this, nCandidateNum, strRecogWord);
			public HResult Recognize() mut => VT.Recognize(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkLineInfo self, ref INKMETRIC pim) SetFormat;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkLineInfo self, ref INKMETRIC pim) GetFormat;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkLineInfo self, ref INKMETRIC pim, ref uint32 pnWidth) GetInkExtent;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkLineInfo self, uint32 nCandidateNum, char16* pwcRecogWord, ref uint32 pcwcRecogWord, uint32 dwFlags) GetCandidate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkLineInfo self, uint32 nCandidateNum, char16* strRecogWord) SetCandidate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkLineInfo self) Recognize;
			}
		}
		[CRepr]
		public struct ISketchInk : IDispatch
		{
			public const new Guid IID = .(0xb4563688, 0x98eb, 0x4646, 0xb2, 0x79, 0x44, 0xda, 0x14, 0xd4, 0x57, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IInkDivider : IDispatch
		{
			public const new Guid IID = .(0x5de00405, 0xf9a4, 0x4651, 0xb0, 0xc5, 0xc3, 0x17, 0xde, 0xfd, 0x58, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Strokes(IInkStrokes** Strokes) mut => VT.get_Strokes(ref this, Strokes);
			public HResult putref_Strokes(IInkStrokes* Strokes) mut => VT.putref_Strokes(ref this, Strokes);
			public HResult get_RecognizerContext(IInkRecognizerContext** RecognizerContext) mut => VT.get_RecognizerContext(ref this, RecognizerContext);
			public HResult putref_RecognizerContext(IInkRecognizerContext* RecognizerContext) mut => VT.putref_RecognizerContext(ref this, RecognizerContext);
			public HResult get_LineHeight(out int32 LineHeight) mut => VT.get_LineHeight(ref this, out LineHeight);
			public HResult put_LineHeight(int32 LineHeight) mut => VT.put_LineHeight(ref this, LineHeight);
			public HResult Divide(IInkDivisionResult** InkDivisionResult) mut => VT.Divide(ref this, InkDivisionResult);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivider self, IInkStrokes** Strokes) get_Strokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivider self, IInkStrokes* Strokes) putref_Strokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivider self, IInkRecognizerContext** RecognizerContext) get_RecognizerContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivider self, IInkRecognizerContext* RecognizerContext) putref_RecognizerContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivider self, out int32 LineHeight) get_LineHeight;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivider self, int32 LineHeight) put_LineHeight;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivider self, IInkDivisionResult** InkDivisionResult) Divide;
			}
		}
		[CRepr]
		public struct IInkDivisionResult : IDispatch
		{
			public const new Guid IID = .(0x2dbec0a7, 0x74c7, 0x4b38, 0x81, 0xeb, 0xaa, 0x8e, 0xf0, 0xc2, 0x49, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Strokes(IInkStrokes** Strokes) mut => VT.get_Strokes(ref this, Strokes);
			public HResult ResultByType(InkDivisionType divisionType, IInkDivisionUnits** InkDivisionUnits) mut => VT.ResultByType(ref this, divisionType, InkDivisionUnits);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivisionResult self, IInkStrokes** Strokes) get_Strokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivisionResult self, InkDivisionType divisionType, IInkDivisionUnits** InkDivisionUnits) ResultByType;
			}
		}
		[CRepr]
		public struct IInkDivisionUnit : IDispatch
		{
			public const new Guid IID = .(0x85aee342, 0x48b0, 0x4244, 0x9d, 0xd5, 0x1e, 0xd4, 0x35, 0x41, 0x0f, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Strokes(IInkStrokes** Strokes) mut => VT.get_Strokes(ref this, Strokes);
			public HResult get_DivisionType(out InkDivisionType divisionType) mut => VT.get_DivisionType(ref this, out divisionType);
			public HResult get_RecognizedString(BSTR* RecoString) mut => VT.get_RecognizedString(ref this, RecoString);
			public HResult get_RotationTransform(IInkTransform** RotationTransform) mut => VT.get_RotationTransform(ref this, RotationTransform);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivisionUnit self, IInkStrokes** Strokes) get_Strokes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivisionUnit self, out InkDivisionType divisionType) get_DivisionType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivisionUnit self, BSTR* RecoString) get_RecognizedString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivisionUnit self, IInkTransform** RotationTransform) get_RotationTransform;
			}
		}
		[CRepr]
		public struct IInkDivisionUnits : IDispatch
		{
			public const new Guid IID = .(0x1bb5ddc2, 0x31cc, 0x4135, 0xab, 0x82, 0x2c, 0x66, 0xc9, 0xf0, 0x0c, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HResult get__NewEnum(IUnknown** _NewEnum) mut => VT.get__NewEnum(ref this, _NewEnum);
			public HResult Item(int32 Index, IInkDivisionUnit** InkDivisionUnit) mut => VT.Item(ref this, Index, InkDivisionUnit);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivisionUnits self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivisionUnits self, IUnknown** _NewEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkDivisionUnits self, int32 Index, IInkDivisionUnit** InkDivisionUnit) Item;
			}
		}
		[CRepr]
		public struct IPenInputPanel : IDispatch
		{
			public const new Guid IID = .(0xfa7a4083, 0x5747, 0x4040, 0xa1, 0x82, 0x0b, 0x0e, 0x9f, 0xd4, 0xfa, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Busy(out int16 Busy) mut => VT.get_Busy(ref this, out Busy);
			public HResult get_Factoid(BSTR* Factoid) mut => VT.get_Factoid(ref this, Factoid);
			public HResult put_Factoid(BSTR Factoid) mut => VT.put_Factoid(ref this, Factoid);
			public HResult get_AttachedEditWindow(out int32 AttachedEditWindow) mut => VT.get_AttachedEditWindow(ref this, out AttachedEditWindow);
			public HResult put_AttachedEditWindow(int32 AttachedEditWindow) mut => VT.put_AttachedEditWindow(ref this, AttachedEditWindow);
			public HResult get_CurrentPanel(out PanelType CurrentPanel) mut => VT.get_CurrentPanel(ref this, out CurrentPanel);
			public HResult put_CurrentPanel(PanelType CurrentPanel) mut => VT.put_CurrentPanel(ref this, CurrentPanel);
			public HResult get_DefaultPanel(out PanelType pDefaultPanel) mut => VT.get_DefaultPanel(ref this, out pDefaultPanel);
			public HResult put_DefaultPanel(PanelType DefaultPanel) mut => VT.put_DefaultPanel(ref this, DefaultPanel);
			public HResult get_Visible(out int16 Visible) mut => VT.get_Visible(ref this, out Visible);
			public HResult put_Visible(int16 Visible) mut => VT.put_Visible(ref this, Visible);
			public HResult get_Top(out int32 Top) mut => VT.get_Top(ref this, out Top);
			public HResult get_Left(out int32 Left) mut => VT.get_Left(ref this, out Left);
			public HResult get_Width(out int32 Width) mut => VT.get_Width(ref this, out Width);
			public HResult get_Height(out int32 Height) mut => VT.get_Height(ref this, out Height);
			public HResult get_VerticalOffset(out int32 VerticalOffset) mut => VT.get_VerticalOffset(ref this, out VerticalOffset);
			public HResult put_VerticalOffset(int32 VerticalOffset) mut => VT.put_VerticalOffset(ref this, VerticalOffset);
			public HResult get_HorizontalOffset(out int32 HorizontalOffset) mut => VT.get_HorizontalOffset(ref this, out HorizontalOffset);
			public HResult put_HorizontalOffset(int32 HorizontalOffset) mut => VT.put_HorizontalOffset(ref this, HorizontalOffset);
			public HResult get_AutoShow(out int16 pAutoShow) mut => VT.get_AutoShow(ref this, out pAutoShow);
			public HResult put_AutoShow(int16 AutoShow) mut => VT.put_AutoShow(ref this, AutoShow);
			public HResult MoveTo(int32 Left, int32 Top) mut => VT.MoveTo(ref this, Left, Top);
			public HResult CommitPendingInput() mut => VT.CommitPendingInput(ref this);
			public HResult Refresh() mut => VT.Refresh(ref this);
			public HResult EnableTsf(int16 Enable) mut => VT.EnableTsf(ref this, Enable);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, out int16 Busy) get_Busy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, BSTR* Factoid) get_Factoid;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, BSTR Factoid) put_Factoid;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, out int32 AttachedEditWindow) get_AttachedEditWindow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, int32 AttachedEditWindow) put_AttachedEditWindow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, out PanelType CurrentPanel) get_CurrentPanel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, PanelType CurrentPanel) put_CurrentPanel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, out PanelType pDefaultPanel) get_DefaultPanel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, PanelType DefaultPanel) put_DefaultPanel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, out int16 Visible) get_Visible;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, int16 Visible) put_Visible;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, out int32 Top) get_Top;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, out int32 Left) get_Left;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, out int32 Width) get_Width;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, out int32 Height) get_Height;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, out int32 VerticalOffset) get_VerticalOffset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, int32 VerticalOffset) put_VerticalOffset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, out int32 HorizontalOffset) get_HorizontalOffset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, int32 HorizontalOffset) put_HorizontalOffset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, out int16 pAutoShow) get_AutoShow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, int16 AutoShow) put_AutoShow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, int32 Left, int32 Top) MoveTo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self) CommitPendingInput;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self) Refresh;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPenInputPanel self, int16 Enable) EnableTsf;
			}
		}
		[CRepr]
		public struct _IPenInputPanelEvents : IDispatch
		{
			public const new Guid IID = .(0xb7e489da, 0x3719, 0x439f, 0x84, 0x8f, 0xe7, 0xac, 0xbd, 0x82, 0x0f, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IHandwrittenTextInsertion : IUnknown
		{
			public const new Guid IID = .(0x56fdea97, 0xecd6, 0x43e7, 0xaa, 0x3a, 0x81, 0x6b, 0xe7, 0x78, 0x58, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult InsertRecognitionResultsArray(ref SAFEARRAY psaAlternates, uint32 locale, IntBool fAlternateContainsAutoSpacingInformation) mut => VT.InsertRecognitionResultsArray(ref this, ref psaAlternates, locale, fAlternateContainsAutoSpacingInformation);
			public HResult InsertInkRecognitionResult(IInkRecognitionResult* pIInkRecoResult, uint32 locale, IntBool fAlternateContainsAutoSpacingInformation) mut => VT.InsertInkRecognitionResult(ref this, pIInkRecoResult, locale, fAlternateContainsAutoSpacingInformation);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IHandwrittenTextInsertion self, ref SAFEARRAY psaAlternates, uint32 locale, IntBool fAlternateContainsAutoSpacingInformation) InsertRecognitionResultsArray;
				public new function [CallingConvention(.Stdcall)] HResult(ref IHandwrittenTextInsertion self, IInkRecognitionResult* pIInkRecoResult, uint32 locale, IntBool fAlternateContainsAutoSpacingInformation) InsertInkRecognitionResult;
			}
		}
		[CRepr]
		public struct ITextInputPanelEventSink : IUnknown
		{
			public const new Guid IID = .(0x27560408, 0x8e64, 0x4fe1, 0x80, 0x4e, 0x42, 0x12, 0x01, 0x58, 0x4b, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult InPlaceStateChanging(InPlaceState oldInPlaceState, InPlaceState newInPlaceState) mut => VT.InPlaceStateChanging(ref this, oldInPlaceState, newInPlaceState);
			public HResult InPlaceStateChanged(InPlaceState oldInPlaceState, InPlaceState newInPlaceState) mut => VT.InPlaceStateChanged(ref this, oldInPlaceState, newInPlaceState);
			public HResult InPlaceSizeChanging(RectI oldBoundingRectangle, RectI newBoundingRectangle) mut => VT.InPlaceSizeChanging(ref this, oldBoundingRectangle, newBoundingRectangle);
			public HResult InPlaceSizeChanged(RectI oldBoundingRectangle, RectI newBoundingRectangle) mut => VT.InPlaceSizeChanged(ref this, oldBoundingRectangle, newBoundingRectangle);
			public HResult InputAreaChanging(PanelInputArea oldInputArea, PanelInputArea newInputArea) mut => VT.InputAreaChanging(ref this, oldInputArea, newInputArea);
			public HResult InputAreaChanged(PanelInputArea oldInputArea, PanelInputArea newInputArea) mut => VT.InputAreaChanged(ref this, oldInputArea, newInputArea);
			public HResult CorrectionModeChanging(CorrectionMode oldCorrectionMode, CorrectionMode newCorrectionMode) mut => VT.CorrectionModeChanging(ref this, oldCorrectionMode, newCorrectionMode);
			public HResult CorrectionModeChanged(CorrectionMode oldCorrectionMode, CorrectionMode newCorrectionMode) mut => VT.CorrectionModeChanged(ref this, oldCorrectionMode, newCorrectionMode);
			public HResult InPlaceVisibilityChanging(IntBool oldVisible, IntBool newVisible) mut => VT.InPlaceVisibilityChanging(ref this, oldVisible, newVisible);
			public HResult InPlaceVisibilityChanged(IntBool oldVisible, IntBool newVisible) mut => VT.InPlaceVisibilityChanged(ref this, oldVisible, newVisible);
			public HResult TextInserting(ref SAFEARRAY Ink) mut => VT.TextInserting(ref this, ref Ink);
			public HResult TextInserted(ref SAFEARRAY Ink) mut => VT.TextInserted(ref this, ref Ink);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanelEventSink self, InPlaceState oldInPlaceState, InPlaceState newInPlaceState) InPlaceStateChanging;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanelEventSink self, InPlaceState oldInPlaceState, InPlaceState newInPlaceState) InPlaceStateChanged;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanelEventSink self, RectI oldBoundingRectangle, RectI newBoundingRectangle) InPlaceSizeChanging;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanelEventSink self, RectI oldBoundingRectangle, RectI newBoundingRectangle) InPlaceSizeChanged;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanelEventSink self, PanelInputArea oldInputArea, PanelInputArea newInputArea) InputAreaChanging;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanelEventSink self, PanelInputArea oldInputArea, PanelInputArea newInputArea) InputAreaChanged;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanelEventSink self, CorrectionMode oldCorrectionMode, CorrectionMode newCorrectionMode) CorrectionModeChanging;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanelEventSink self, CorrectionMode oldCorrectionMode, CorrectionMode newCorrectionMode) CorrectionModeChanged;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanelEventSink self, IntBool oldVisible, IntBool newVisible) InPlaceVisibilityChanging;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanelEventSink self, IntBool oldVisible, IntBool newVisible) InPlaceVisibilityChanged;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanelEventSink self, ref SAFEARRAY Ink) TextInserting;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanelEventSink self, ref SAFEARRAY Ink) TextInserted;
			}
		}
		[CRepr]
		public struct ITextInputPanel : IUnknown
		{
			public const new Guid IID = .(0x6b6a65a5, 0x6af3, 0x46c2, 0xb6, 0xea, 0x56, 0xcd, 0x1f, 0x80, 0xdf, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_AttachedEditWindow(HWND* AttachedEditWindow) mut => VT.get_AttachedEditWindow(ref this, AttachedEditWindow);
			public HResult put_AttachedEditWindow(HWnd AttachedEditWindow) mut => VT.put_AttachedEditWindow(ref this, AttachedEditWindow);
			public HResult get_CurrentInteractionMode(out InteractionMode CurrentInteractionMode) mut => VT.get_CurrentInteractionMode(ref this, out CurrentInteractionMode);
			public HResult get_DefaultInPlaceState(out InPlaceState State) mut => VT.get_DefaultInPlaceState(ref this, out State);
			public HResult put_DefaultInPlaceState(InPlaceState State) mut => VT.put_DefaultInPlaceState(ref this, State);
			public HResult get_CurrentInPlaceState(out InPlaceState State) mut => VT.get_CurrentInPlaceState(ref this, out State);
			public HResult get_DefaultInputArea(out PanelInputArea Area) mut => VT.get_DefaultInputArea(ref this, out Area);
			public HResult put_DefaultInputArea(PanelInputArea Area) mut => VT.put_DefaultInputArea(ref this, Area);
			public HResult get_CurrentInputArea(out PanelInputArea Area) mut => VT.get_CurrentInputArea(ref this, out Area);
			public HResult get_CurrentCorrectionMode(out CorrectionMode Mode) mut => VT.get_CurrentCorrectionMode(ref this, out Mode);
			public HResult get_PreferredInPlaceDirection(out InPlaceDirection Direction) mut => VT.get_PreferredInPlaceDirection(ref this, out Direction);
			public HResult put_PreferredInPlaceDirection(InPlaceDirection Direction) mut => VT.put_PreferredInPlaceDirection(ref this, Direction);
			public HResult get_ExpandPostInsertionCorrection(out IntBool Expand) mut => VT.get_ExpandPostInsertionCorrection(ref this, out Expand);
			public HResult put_ExpandPostInsertionCorrection(IntBool Expand) mut => VT.put_ExpandPostInsertionCorrection(ref this, Expand);
			public HResult get_InPlaceVisibleOnFocus(out IntBool Visible) mut => VT.get_InPlaceVisibleOnFocus(ref this, out Visible);
			public HResult put_InPlaceVisibleOnFocus(IntBool Visible) mut => VT.put_InPlaceVisibleOnFocus(ref this, Visible);
			public HResult get_InPlaceBoundingRectangle(out RectI BoundingRectangle) mut => VT.get_InPlaceBoundingRectangle(ref this, out BoundingRectangle);
			public HResult get_PopUpCorrectionHeight(out int32 Height) mut => VT.get_PopUpCorrectionHeight(ref this, out Height);
			public HResult get_PopDownCorrectionHeight(out int32 Height) mut => VT.get_PopDownCorrectionHeight(ref this, out Height);
			public HResult CommitPendingInput() mut => VT.CommitPendingInput(ref this);
			public HResult SetInPlaceVisibility(IntBool Visible) mut => VT.SetInPlaceVisibility(ref this, Visible);
			public HResult SetInPlacePosition(int32 xPosition, int32 yPosition, CorrectionPosition position) mut => VT.SetInPlacePosition(ref this, xPosition, yPosition, position);
			public HResult SetInPlaceHoverTargetPosition(int32 xPosition, int32 yPosition) mut => VT.SetInPlaceHoverTargetPosition(ref this, xPosition, yPosition);
			public HResult Advise(ITextInputPanelEventSink* EventSink, uint32 EventMask) mut => VT.Advise(ref this, EventSink, EventMask);
			public HResult Unadvise(ITextInputPanelEventSink* EventSink) mut => VT.Unadvise(ref this, EventSink);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, HWND* AttachedEditWindow) get_AttachedEditWindow;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, HWnd AttachedEditWindow) put_AttachedEditWindow;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, out InteractionMode CurrentInteractionMode) get_CurrentInteractionMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, out InPlaceState State) get_DefaultInPlaceState;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, InPlaceState State) put_DefaultInPlaceState;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, out InPlaceState State) get_CurrentInPlaceState;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, out PanelInputArea Area) get_DefaultInputArea;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, PanelInputArea Area) put_DefaultInputArea;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, out PanelInputArea Area) get_CurrentInputArea;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, out CorrectionMode Mode) get_CurrentCorrectionMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, out InPlaceDirection Direction) get_PreferredInPlaceDirection;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, InPlaceDirection Direction) put_PreferredInPlaceDirection;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, out IntBool Expand) get_ExpandPostInsertionCorrection;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, IntBool Expand) put_ExpandPostInsertionCorrection;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, out IntBool Visible) get_InPlaceVisibleOnFocus;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, IntBool Visible) put_InPlaceVisibleOnFocus;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, out RectI BoundingRectangle) get_InPlaceBoundingRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, out int32 Height) get_PopUpCorrectionHeight;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, out int32 Height) get_PopDownCorrectionHeight;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self) CommitPendingInput;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, IntBool Visible) SetInPlaceVisibility;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, int32 xPosition, int32 yPosition, CorrectionPosition position) SetInPlacePosition;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, int32 xPosition, int32 yPosition) SetInPlaceHoverTargetPosition;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, ITextInputPanelEventSink* EventSink, uint32 EventMask) Advise;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanel self, ITextInputPanelEventSink* EventSink) Unadvise;
			}
		}
		[CRepr]
		public struct IInputPanelWindowHandle : IUnknown
		{
			public const new Guid IID = .(0x4af81847, 0xfdc4, 0x4fc3, 0xad, 0x0b, 0x42, 0x24, 0x79, 0xc1, 0xb9, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_AttachedEditWindow32(out int32 AttachedEditWindow) mut => VT.get_AttachedEditWindow32(ref this, out AttachedEditWindow);
			public HResult put_AttachedEditWindow32(int32 AttachedEditWindow) mut => VT.put_AttachedEditWindow32(ref this, AttachedEditWindow);
			public HResult get_AttachedEditWindow64(out int64 AttachedEditWindow) mut => VT.get_AttachedEditWindow64(ref this, out AttachedEditWindow);
			public HResult put_AttachedEditWindow64(int64 AttachedEditWindow) mut => VT.put_AttachedEditWindow64(ref this, AttachedEditWindow);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInputPanelWindowHandle self, out int32 AttachedEditWindow) get_AttachedEditWindow32;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInputPanelWindowHandle self, int32 AttachedEditWindow) put_AttachedEditWindow32;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInputPanelWindowHandle self, out int64 AttachedEditWindow) get_AttachedEditWindow64;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInputPanelWindowHandle self, int64 AttachedEditWindow) put_AttachedEditWindow64;
			}
		}
		[CRepr]
		public struct ITextInputPanelRunInfo : IUnknown
		{
			public const new Guid IID = .(0x9f424568, 0x1920, 0x48cc, 0x98, 0x11, 0xa9, 0x93, 0xcb, 0xf5, 0xad, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult IsTipRunning(out IntBool pfRunning) mut => VT.IsTipRunning(ref this, out pfRunning);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITextInputPanelRunInfo self, out IntBool pfRunning) IsTipRunning;
			}
		}
		[CRepr]
		public struct IInkEdit : IDispatch
		{
			public const new Guid IID = .(0xf2127a19, 0xfbfb, 0x4aed, 0x84, 0x64, 0x3f, 0x36, 0xd7, 0x8c, 0xfe, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Status(out InkEditStatus pStatus) mut => VT.get_Status(ref this, out pStatus);
			public HResult get_UseMouseForInput(out int16 pVal) mut => VT.get_UseMouseForInput(ref this, out pVal);
			public HResult put_UseMouseForInput(int16 newVal) mut => VT.put_UseMouseForInput(ref this, newVal);
			public HResult get_InkMode(out InkMode pVal) mut => VT.get_InkMode(ref this, out pVal);
			public HResult put_InkMode(InkMode newVal) mut => VT.put_InkMode(ref this, newVal);
			public HResult get_InkInsertMode(out InkInsertMode pVal) mut => VT.get_InkInsertMode(ref this, out pVal);
			public HResult put_InkInsertMode(InkInsertMode newVal) mut => VT.put_InkInsertMode(ref this, newVal);
			public HResult get_DrawingAttributes(IInkDrawingAttributes** pVal) mut => VT.get_DrawingAttributes(ref this, pVal);
			public HResult putref_DrawingAttributes(IInkDrawingAttributes* newVal) mut => VT.putref_DrawingAttributes(ref this, newVal);
			public HResult get_RecognitionTimeout(out int32 pVal) mut => VT.get_RecognitionTimeout(ref this, out pVal);
			public HResult put_RecognitionTimeout(int32 newVal) mut => VT.put_RecognitionTimeout(ref this, newVal);
			public HResult get_Recognizer(IInkRecognizer** pVal) mut => VT.get_Recognizer(ref this, pVal);
			public HResult putref_Recognizer(IInkRecognizer* newVal) mut => VT.putref_Recognizer(ref this, newVal);
			public HResult get_Factoid(BSTR* pVal) mut => VT.get_Factoid(ref this, pVal);
			public HResult put_Factoid(BSTR newVal) mut => VT.put_Factoid(ref this, newVal);
			public HResult get_SelInks(out VARIANT pSelInk) mut => VT.get_SelInks(ref this, out pSelInk);
			public HResult put_SelInks(VARIANT SelInk) mut => VT.put_SelInks(ref this, SelInk);
			public HResult get_SelInksDisplayMode(out InkDisplayMode pInkDisplayMode) mut => VT.get_SelInksDisplayMode(ref this, out pInkDisplayMode);
			public HResult put_SelInksDisplayMode(InkDisplayMode InkDisplayMode) mut => VT.put_SelInksDisplayMode(ref this, InkDisplayMode);
			public HResult Recognize() mut => VT.Recognize(ref this);
			public HResult GetGestureStatus(InkApplicationGesture Gesture, out int16 pListen) mut => VT.GetGestureStatus(ref this, Gesture, out pListen);
			public HResult SetGestureStatus(InkApplicationGesture Gesture, int16 Listen) mut => VT.SetGestureStatus(ref this, Gesture, Listen);
			public HResult put_BackColor(uint32 clr) mut => VT.put_BackColor(ref this, clr);
			public HResult get_BackColor(out uint32 pclr) mut => VT.get_BackColor(ref this, out pclr);
			public HResult get_Appearance(out AppearanceConstants pAppearance) mut => VT.get_Appearance(ref this, out pAppearance);
			public HResult put_Appearance(AppearanceConstants pAppearance) mut => VT.put_Appearance(ref this, pAppearance);
			public HResult get_BorderStyle(out BorderStyleConstants pBorderStyle) mut => VT.get_BorderStyle(ref this, out pBorderStyle);
			public HResult put_BorderStyle(BorderStyleConstants pBorderStyle) mut => VT.put_BorderStyle(ref this, pBorderStyle);
			public HResult get_Hwnd(out uint32 pohHwnd) mut => VT.get_Hwnd(ref this, out pohHwnd);
			public HResult get_Font(IFontDisp** ppFont) mut => VT.get_Font(ref this, ppFont);
			public HResult putref_Font(IFontDisp* ppFont) mut => VT.putref_Font(ref this, ppFont);
			public HResult get_Text(BSTR* pbstrText) mut => VT.get_Text(ref this, pbstrText);
			public HResult put_Text(BSTR pbstrText) mut => VT.put_Text(ref this, pbstrText);
			public HResult get_MouseIcon(IPictureDisp** MouseIcon) mut => VT.get_MouseIcon(ref this, MouseIcon);
			public HResult put_MouseIcon(IPictureDisp* MouseIcon) mut => VT.put_MouseIcon(ref this, MouseIcon);
			public HResult putref_MouseIcon(IPictureDisp* MouseIcon) mut => VT.putref_MouseIcon(ref this, MouseIcon);
			public HResult get_MousePointer(out InkMousePointer MousePointer) mut => VT.get_MousePointer(ref this, out MousePointer);
			public HResult put_MousePointer(InkMousePointer MousePointer) mut => VT.put_MousePointer(ref this, MousePointer);
			public HResult get_Locked(out int16 pVal) mut => VT.get_Locked(ref this, out pVal);
			public HResult put_Locked(int16 newVal) mut => VT.put_Locked(ref this, newVal);
			public HResult get_Enabled(out int16 pVal) mut => VT.get_Enabled(ref this, out pVal);
			public HResult put_Enabled(int16 newVal) mut => VT.put_Enabled(ref this, newVal);
			public HResult get_MaxLength(out int32 plMaxLength) mut => VT.get_MaxLength(ref this, out plMaxLength);
			public HResult put_MaxLength(int32 lMaxLength) mut => VT.put_MaxLength(ref this, lMaxLength);
			public HResult get_MultiLine(out int16 pVal) mut => VT.get_MultiLine(ref this, out pVal);
			public HResult put_MultiLine(int16 newVal) mut => VT.put_MultiLine(ref this, newVal);
			public HResult get_ScrollBars(out ScrollBarsConstants pVal) mut => VT.get_ScrollBars(ref this, out pVal);
			public HResult put_ScrollBars(ScrollBarsConstants newVal) mut => VT.put_ScrollBars(ref this, newVal);
			public HResult get_DisableNoScroll(out int16 pVal) mut => VT.get_DisableNoScroll(ref this, out pVal);
			public HResult put_DisableNoScroll(int16 newVal) mut => VT.put_DisableNoScroll(ref this, newVal);
			public HResult get_SelAlignment(out VARIANT pvarSelAlignment) mut => VT.get_SelAlignment(ref this, out pvarSelAlignment);
			public HResult put_SelAlignment(VARIANT pvarSelAlignment) mut => VT.put_SelAlignment(ref this, pvarSelAlignment);
			public HResult get_SelBold(out VARIANT pvarSelBold) mut => VT.get_SelBold(ref this, out pvarSelBold);
			public HResult put_SelBold(VARIANT pvarSelBold) mut => VT.put_SelBold(ref this, pvarSelBold);
			public HResult get_SelItalic(out VARIANT pvarSelItalic) mut => VT.get_SelItalic(ref this, out pvarSelItalic);
			public HResult put_SelItalic(VARIANT pvarSelItalic) mut => VT.put_SelItalic(ref this, pvarSelItalic);
			public HResult get_SelUnderline(out VARIANT pvarSelUnderline) mut => VT.get_SelUnderline(ref this, out pvarSelUnderline);
			public HResult put_SelUnderline(VARIANT pvarSelUnderline) mut => VT.put_SelUnderline(ref this, pvarSelUnderline);
			public HResult get_SelColor(out VARIANT pvarSelColor) mut => VT.get_SelColor(ref this, out pvarSelColor);
			public HResult put_SelColor(VARIANT pvarSelColor) mut => VT.put_SelColor(ref this, pvarSelColor);
			public HResult get_SelFontName(out VARIANT pvarSelFontName) mut => VT.get_SelFontName(ref this, out pvarSelFontName);
			public HResult put_SelFontName(VARIANT pvarSelFontName) mut => VT.put_SelFontName(ref this, pvarSelFontName);
			public HResult get_SelFontSize(out VARIANT pvarSelFontSize) mut => VT.get_SelFontSize(ref this, out pvarSelFontSize);
			public HResult put_SelFontSize(VARIANT pvarSelFontSize) mut => VT.put_SelFontSize(ref this, pvarSelFontSize);
			public HResult get_SelCharOffset(out VARIANT pvarSelCharOffset) mut => VT.get_SelCharOffset(ref this, out pvarSelCharOffset);
			public HResult put_SelCharOffset(VARIANT pvarSelCharOffset) mut => VT.put_SelCharOffset(ref this, pvarSelCharOffset);
			public HResult get_TextRTF(BSTR* pbstrTextRTF) mut => VT.get_TextRTF(ref this, pbstrTextRTF);
			public HResult put_TextRTF(BSTR pbstrTextRTF) mut => VT.put_TextRTF(ref this, pbstrTextRTF);
			public HResult get_SelStart(out int32 plSelStart) mut => VT.get_SelStart(ref this, out plSelStart);
			public HResult put_SelStart(int32 plSelStart) mut => VT.put_SelStart(ref this, plSelStart);
			public HResult get_SelLength(out int32 plSelLength) mut => VT.get_SelLength(ref this, out plSelLength);
			public HResult put_SelLength(int32 plSelLength) mut => VT.put_SelLength(ref this, plSelLength);
			public HResult get_SelText(BSTR* pbstrSelText) mut => VT.get_SelText(ref this, pbstrSelText);
			public HResult put_SelText(BSTR pbstrSelText) mut => VT.put_SelText(ref this, pbstrSelText);
			public HResult get_SelRTF(BSTR* pbstrSelRTF) mut => VT.get_SelRTF(ref this, pbstrSelRTF);
			public HResult put_SelRTF(BSTR pbstrSelRTF) mut => VT.put_SelRTF(ref this, pbstrSelRTF);
			public HResult Refresh() mut => VT.Refresh(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out InkEditStatus pStatus) get_Status;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out int16 pVal) get_UseMouseForInput;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, int16 newVal) put_UseMouseForInput;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out InkMode pVal) get_InkMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, InkMode newVal) put_InkMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out InkInsertMode pVal) get_InkInsertMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, InkInsertMode newVal) put_InkInsertMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, IInkDrawingAttributes** pVal) get_DrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, IInkDrawingAttributes* newVal) putref_DrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out int32 pVal) get_RecognitionTimeout;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, int32 newVal) put_RecognitionTimeout;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, IInkRecognizer** pVal) get_Recognizer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, IInkRecognizer* newVal) putref_Recognizer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, BSTR* pVal) get_Factoid;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, BSTR newVal) put_Factoid;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out VARIANT pSelInk) get_SelInks;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, VARIANT SelInk) put_SelInks;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out InkDisplayMode pInkDisplayMode) get_SelInksDisplayMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, InkDisplayMode InkDisplayMode) put_SelInksDisplayMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self) Recognize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, InkApplicationGesture Gesture, out int16 pListen) GetGestureStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, InkApplicationGesture Gesture, int16 Listen) SetGestureStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, uint32 clr) put_BackColor;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out uint32 pclr) get_BackColor;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out AppearanceConstants pAppearance) get_Appearance;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, AppearanceConstants pAppearance) put_Appearance;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out BorderStyleConstants pBorderStyle) get_BorderStyle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, BorderStyleConstants pBorderStyle) put_BorderStyle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out uint32 pohHwnd) get_Hwnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, IFontDisp** ppFont) get_Font;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, IFontDisp* ppFont) putref_Font;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, BSTR* pbstrText) get_Text;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, BSTR pbstrText) put_Text;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, IPictureDisp** MouseIcon) get_MouseIcon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, IPictureDisp* MouseIcon) put_MouseIcon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, IPictureDisp* MouseIcon) putref_MouseIcon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out InkMousePointer MousePointer) get_MousePointer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, InkMousePointer MousePointer) put_MousePointer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out int16 pVal) get_Locked;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, int16 newVal) put_Locked;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out int16 pVal) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, int16 newVal) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out int32 plMaxLength) get_MaxLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, int32 lMaxLength) put_MaxLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out int16 pVal) get_MultiLine;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, int16 newVal) put_MultiLine;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out ScrollBarsConstants pVal) get_ScrollBars;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, ScrollBarsConstants newVal) put_ScrollBars;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out int16 pVal) get_DisableNoScroll;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, int16 newVal) put_DisableNoScroll;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out VARIANT pvarSelAlignment) get_SelAlignment;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, VARIANT pvarSelAlignment) put_SelAlignment;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out VARIANT pvarSelBold) get_SelBold;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, VARIANT pvarSelBold) put_SelBold;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out VARIANT pvarSelItalic) get_SelItalic;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, VARIANT pvarSelItalic) put_SelItalic;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out VARIANT pvarSelUnderline) get_SelUnderline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, VARIANT pvarSelUnderline) put_SelUnderline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out VARIANT pvarSelColor) get_SelColor;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, VARIANT pvarSelColor) put_SelColor;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out VARIANT pvarSelFontName) get_SelFontName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, VARIANT pvarSelFontName) put_SelFontName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out VARIANT pvarSelFontSize) get_SelFontSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, VARIANT pvarSelFontSize) put_SelFontSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out VARIANT pvarSelCharOffset) get_SelCharOffset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, VARIANT pvarSelCharOffset) put_SelCharOffset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, BSTR* pbstrTextRTF) get_TextRTF;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, BSTR pbstrTextRTF) put_TextRTF;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out int32 plSelStart) get_SelStart;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, int32 plSelStart) put_SelStart;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, out int32 plSelLength) get_SelLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, int32 plSelLength) put_SelLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, BSTR* pbstrSelText) get_SelText;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, BSTR pbstrSelText) put_SelText;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, BSTR* pbstrSelRTF) get_SelRTF;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self, BSTR pbstrSelRTF) put_SelRTF;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInkEdit self) Refresh;
			}
		}
		[CRepr]
		public struct _IInkEditEvents : IDispatch
		{
			public const new Guid IID = .(0xe3b0b797, 0xa72e, 0x46db, 0xa0, 0xd7, 0x6c, 0x9e, 0xba, 0x8e, 0x9b, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IMathInputControl : IDispatch
		{
			public const new Guid IID = .(0xeba615aa, 0xfac6, 0x4738, 0xba, 0x5f, 0xff, 0x09, 0xe9, 0xfe, 0x47, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Show() mut => VT.Show(ref this);
			public HResult Hide() mut => VT.Hide(ref this);
			public HResult IsVisible(out int16 pvbShown) mut => VT.IsVisible(ref this, out pvbShown);
			public HResult GetPosition(out int32 Left, out int32 Top, out int32 Right, out int32 Bottom) mut => VT.GetPosition(ref this, out Left, out Top, out Right, out Bottom);
			public HResult SetPosition(int32 Left, int32 Top, int32 Right, int32 Bottom) mut => VT.SetPosition(ref this, Left, Top, Right, Bottom);
			public HResult Clear() mut => VT.Clear(ref this);
			public HResult SetCustomPaint(int32 Element, int16 Paint) mut => VT.SetCustomPaint(ref this, Element, Paint);
			public HResult SetCaptionText(BSTR CaptionText) mut => VT.SetCaptionText(ref this, CaptionText);
			public HResult LoadInk(IInkDisp* Ink) mut => VT.LoadInk(ref this, Ink);
			public HResult SetOwnerWindow(int OwnerWindow) mut => VT.SetOwnerWindow(ref this, OwnerWindow);
			public HResult EnableExtendedButtons(int16 Extended) mut => VT.EnableExtendedButtons(ref this, Extended);
			public HResult GetPreviewHeight(out int32 Height) mut => VT.GetPreviewHeight(ref this, out Height);
			public HResult SetPreviewHeight(int32 Height) mut => VT.SetPreviewHeight(ref this, Height);
			public HResult EnableAutoGrow(int16 AutoGrow) mut => VT.EnableAutoGrow(ref this, AutoGrow);
			public HResult AddFunctionName(BSTR FunctionName) mut => VT.AddFunctionName(ref this, FunctionName);
			public HResult RemoveFunctionName(BSTR FunctionName) mut => VT.RemoveFunctionName(ref this, FunctionName);
			public HResult GetHoverIcon(IPictureDisp** HoverImage) mut => VT.GetHoverIcon(ref this, HoverImage);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self) Show;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self) Hide;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, out int16 pvbShown) IsVisible;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, out int32 Left, out int32 Top, out int32 Right, out int32 Bottom) GetPosition;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, int32 Left, int32 Top, int32 Right, int32 Bottom) SetPosition;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self) Clear;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, int32 Element, int16 Paint) SetCustomPaint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, BSTR CaptionText) SetCaptionText;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, IInkDisp* Ink) LoadInk;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, int OwnerWindow) SetOwnerWindow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, int16 Extended) EnableExtendedButtons;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, out int32 Height) GetPreviewHeight;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, int32 Height) SetPreviewHeight;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, int16 AutoGrow) EnableAutoGrow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, BSTR FunctionName) AddFunctionName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, BSTR FunctionName) RemoveFunctionName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMathInputControl self, IPictureDisp** HoverImage) GetHoverIcon;
			}
		}
		[CRepr]
		public struct _IMathInputControlEvents : IDispatch
		{
			public const new Guid IID = .(0x683336b5, 0xa47d, 0x4358, 0x96, 0xf9, 0x87, 0x5a, 0x47, 0x2a, 0xe7, 0x0a);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IRealTimeStylus : IUnknown
		{
			public const new Guid IID = .(0xa8bb5d22, 0x3144, 0x4a7b, 0x93, 0xcd, 0xf3, 0x4a, 0x16, 0xbe, 0x51, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Enabled(out IntBool pfEnable) mut => VT.get_Enabled(ref this, out pfEnable);
			public HResult put_Enabled(IntBool fEnable) mut => VT.put_Enabled(ref this, fEnable);
			public HResult get_HWND(out HANDLE_PTR phwnd) mut => VT.get_HWND(ref this, out phwnd);
			public HResult put_HWND(HANDLE_PTR hwnd) mut => VT.put_HWND(ref this, hwnd);
			public HResult get_WindowInputRectangle(out RectI prcWndInputRect) mut => VT.get_WindowInputRectangle(ref this, out prcWndInputRect);
			public HResult put_WindowInputRectangle(in RectI prcWndInputRect) mut => VT.put_WindowInputRectangle(ref this, prcWndInputRect);
			public HResult AddStylusSyncPlugin(uint32 iIndex, IStylusSyncPlugin* piPlugin) mut => VT.AddStylusSyncPlugin(ref this, iIndex, piPlugin);
			public HResult RemoveStylusSyncPlugin(uint32 iIndex, IStylusSyncPlugin** ppiPlugin) mut => VT.RemoveStylusSyncPlugin(ref this, iIndex, ppiPlugin);
			public HResult RemoveAllStylusSyncPlugins() mut => VT.RemoveAllStylusSyncPlugins(ref this);
			public HResult GetStylusSyncPlugin(uint32 iIndex, IStylusSyncPlugin** ppiPlugin) mut => VT.GetStylusSyncPlugin(ref this, iIndex, ppiPlugin);
			public HResult GetStylusSyncPluginCount(out uint32 pcPlugins) mut => VT.GetStylusSyncPluginCount(ref this, out pcPlugins);
			public HResult AddStylusAsyncPlugin(uint32 iIndex, IStylusAsyncPlugin* piPlugin) mut => VT.AddStylusAsyncPlugin(ref this, iIndex, piPlugin);
			public HResult RemoveStylusAsyncPlugin(uint32 iIndex, IStylusAsyncPlugin** ppiPlugin) mut => VT.RemoveStylusAsyncPlugin(ref this, iIndex, ppiPlugin);
			public HResult RemoveAllStylusAsyncPlugins() mut => VT.RemoveAllStylusAsyncPlugins(ref this);
			public HResult GetStylusAsyncPlugin(uint32 iIndex, IStylusAsyncPlugin** ppiPlugin) mut => VT.GetStylusAsyncPlugin(ref this, iIndex, ppiPlugin);
			public HResult GetStylusAsyncPluginCount(out uint32 pcPlugins) mut => VT.GetStylusAsyncPluginCount(ref this, out pcPlugins);
			public HResult get_ChildRealTimeStylusPlugin(IRealTimeStylus** ppiRTS) mut => VT.get_ChildRealTimeStylusPlugin(ref this, ppiRTS);
			public HResult putref_ChildRealTimeStylusPlugin(IRealTimeStylus* piRTS) mut => VT.putref_ChildRealTimeStylusPlugin(ref this, piRTS);
			public HResult AddCustomStylusDataToQueue(StylusQueue sq, in Guid pGuidId, uint32 cbData, uint8* pbData) mut => VT.AddCustomStylusDataToQueue(ref this, sq, pGuidId, cbData, pbData);
			public HResult ClearStylusQueues() mut => VT.ClearStylusQueues(ref this);
			public HResult SetAllTabletsMode(IntBool fUseMouseForInput) mut => VT.SetAllTabletsMode(ref this, fUseMouseForInput);
			public HResult SetSingleTabletMode(IInkTablet* piTablet) mut => VT.SetSingleTabletMode(ref this, piTablet);
			public HResult GetTablet(IInkTablet** ppiSingleTablet) mut => VT.GetTablet(ref this, ppiSingleTablet);
			public HResult GetTabletContextIdFromTablet(IInkTablet* piTablet, out uint32 ptcid) mut => VT.GetTabletContextIdFromTablet(ref this, piTablet, out ptcid);
			public HResult GetTabletFromTabletContextId(uint32 tcid, IInkTablet** ppiTablet) mut => VT.GetTabletFromTabletContextId(ref this, tcid, ppiTablet);
			public HResult GetAllTabletContextIds(out uint32 pcTcidCount, uint32** ppTcids) mut => VT.GetAllTabletContextIds(ref this, out pcTcidCount, ppTcids);
			public HResult GetStyluses(IInkCursors** ppiInkCursors) mut => VT.GetStyluses(ref this, ppiInkCursors);
			public HResult GetStylusForId(uint32 sid, IInkCursor** ppiInkCursor) mut => VT.GetStylusForId(ref this, sid, ppiInkCursor);
			public HResult SetDesiredPacketDescription(uint32 cProperties, Guid* pPropertyGuids) mut => VT.SetDesiredPacketDescription(ref this, cProperties, pPropertyGuids);
			public HResult GetDesiredPacketDescription(out uint32 pcProperties, Guid** ppPropertyGuids) mut => VT.GetDesiredPacketDescription(ref this, out pcProperties, ppPropertyGuids);
			public HResult GetPacketDescriptionData(uint32 tcid, float* pfInkToDeviceScaleX, float* pfInkToDeviceScaleY, out uint32 pcPacketProperties, PACKET_PROPERTY** ppPacketProperties) mut => VT.GetPacketDescriptionData(ref this, tcid, pfInkToDeviceScaleX, pfInkToDeviceScaleY, out pcPacketProperties, ppPacketProperties);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, out IntBool pfEnable) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, IntBool fEnable) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, out HANDLE_PTR phwnd) get_HWND;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, HANDLE_PTR hwnd) put_HWND;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, out RectI prcWndInputRect) get_WindowInputRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, in RectI prcWndInputRect) put_WindowInputRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, uint32 iIndex, IStylusSyncPlugin* piPlugin) AddStylusSyncPlugin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, uint32 iIndex, IStylusSyncPlugin** ppiPlugin) RemoveStylusSyncPlugin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self) RemoveAllStylusSyncPlugins;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, uint32 iIndex, IStylusSyncPlugin** ppiPlugin) GetStylusSyncPlugin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, out uint32 pcPlugins) GetStylusSyncPluginCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, uint32 iIndex, IStylusAsyncPlugin* piPlugin) AddStylusAsyncPlugin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, uint32 iIndex, IStylusAsyncPlugin** ppiPlugin) RemoveStylusAsyncPlugin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self) RemoveAllStylusAsyncPlugins;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, uint32 iIndex, IStylusAsyncPlugin** ppiPlugin) GetStylusAsyncPlugin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, out uint32 pcPlugins) GetStylusAsyncPluginCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, IRealTimeStylus** ppiRTS) get_ChildRealTimeStylusPlugin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, IRealTimeStylus* piRTS) putref_ChildRealTimeStylusPlugin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, StylusQueue sq, in Guid pGuidId, uint32 cbData, uint8* pbData) AddCustomStylusDataToQueue;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self) ClearStylusQueues;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, IntBool fUseMouseForInput) SetAllTabletsMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, IInkTablet* piTablet) SetSingleTabletMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, IInkTablet** ppiSingleTablet) GetTablet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, IInkTablet* piTablet, out uint32 ptcid) GetTabletContextIdFromTablet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, uint32 tcid, IInkTablet** ppiTablet) GetTabletFromTabletContextId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, out uint32 pcTcidCount, uint32** ppTcids) GetAllTabletContextIds;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, IInkCursors** ppiInkCursors) GetStyluses;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, uint32 sid, IInkCursor** ppiInkCursor) GetStylusForId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, uint32 cProperties, Guid* pPropertyGuids) SetDesiredPacketDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, out uint32 pcProperties, Guid** ppPropertyGuids) GetDesiredPacketDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus self, uint32 tcid, float* pfInkToDeviceScaleX, float* pfInkToDeviceScaleY, out uint32 pcPacketProperties, PACKET_PROPERTY** ppPacketProperties) GetPacketDescriptionData;
			}
		}
		[CRepr]
		public struct IRealTimeStylus2 : IUnknown
		{
			public const new Guid IID = .(0xb5f2a6cd, 0x3179, 0x4a3e, 0xb9, 0xc4, 0xbb, 0x58, 0x65, 0x96, 0x2b, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_FlicksEnabled(out IntBool pfEnable) mut => VT.get_FlicksEnabled(ref this, out pfEnable);
			public HResult put_FlicksEnabled(IntBool fEnable) mut => VT.put_FlicksEnabled(ref this, fEnable);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus2 self, out IntBool pfEnable) get_FlicksEnabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus2 self, IntBool fEnable) put_FlicksEnabled;
			}
		}
		[CRepr]
		public struct IRealTimeStylus3 : IUnknown
		{
			public const new Guid IID = .(0xd70230a3, 0x6986, 0x4051, 0xb5, 0x7a, 0x1c, 0xf6, 0x9f, 0x4d, 0x9d, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_MultiTouchEnabled(out IntBool pfEnable) mut => VT.get_MultiTouchEnabled(ref this, out pfEnable);
			public HResult put_MultiTouchEnabled(IntBool fEnable) mut => VT.put_MultiTouchEnabled(ref this, fEnable);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus3 self, out IntBool pfEnable) get_MultiTouchEnabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylus3 self, IntBool fEnable) put_MultiTouchEnabled;
			}
		}
		[CRepr]
		public struct IRealTimeStylusSynchronization : IUnknown
		{
			public const new Guid IID = .(0xaa87eab8, 0xab4a, 0x4cea, 0xb5, 0xcb, 0x46, 0xd8, 0x4c, 0x6a, 0x25, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AcquireLock(RealTimeStylusLockType lock) mut => VT.AcquireLock(ref this, lock);
			public HResult ReleaseLock(RealTimeStylusLockType lock) mut => VT.ReleaseLock(ref this, lock);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylusSynchronization self, RealTimeStylusLockType lock) AcquireLock;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRealTimeStylusSynchronization self, RealTimeStylusLockType lock) ReleaseLock;
			}
		}
		[CRepr]
		public struct IStrokeBuilder : IUnknown
		{
			public const new Guid IID = .(0xa5fd4e2d, 0xc44b, 0x4092, 0x91, 0x77, 0x26, 0x09, 0x05, 0xeb, 0x67, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateStroke(uint32 cPktBuffLength, int32* pPackets, uint32 cPacketProperties, PACKET_PROPERTY* pPacketProperties, float fInkToDeviceScaleX, float fInkToDeviceScaleY, IInkStrokeDisp** ppIInkStroke) mut => VT.CreateStroke(ref this, cPktBuffLength, pPackets, cPacketProperties, pPacketProperties, fInkToDeviceScaleX, fInkToDeviceScaleY, ppIInkStroke);
			public HResult BeginStroke(uint32 tcid, uint32 sid, in int32 pPacket, uint32 cPacketProperties, PACKET_PROPERTY* pPacketProperties, float fInkToDeviceScaleX, float fInkToDeviceScaleY, IInkStrokeDisp** ppIInkStroke) mut => VT.BeginStroke(ref this, tcid, sid, pPacket, cPacketProperties, pPacketProperties, fInkToDeviceScaleX, fInkToDeviceScaleY, ppIInkStroke);
			public HResult AppendPackets(uint32 tcid, uint32 sid, uint32 cPktBuffLength, int32* pPackets) mut => VT.AppendPackets(ref this, tcid, sid, cPktBuffLength, pPackets);
			public HResult EndStroke(uint32 tcid, uint32 sid, IInkStrokeDisp** ppIInkStroke, out RectI pDirtyRect) mut => VT.EndStroke(ref this, tcid, sid, ppIInkStroke, out pDirtyRect);
			public HResult get_Ink(IInkDisp** ppiInkObj) mut => VT.get_Ink(ref this, ppiInkObj);
			public HResult putref_Ink(IInkDisp* piInkObj) mut => VT.putref_Ink(ref this, piInkObj);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IStrokeBuilder self, uint32 cPktBuffLength, int32* pPackets, uint32 cPacketProperties, PACKET_PROPERTY* pPacketProperties, float fInkToDeviceScaleX, float fInkToDeviceScaleY, IInkStrokeDisp** ppIInkStroke) CreateStroke;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStrokeBuilder self, uint32 tcid, uint32 sid, in int32 pPacket, uint32 cPacketProperties, PACKET_PROPERTY* pPacketProperties, float fInkToDeviceScaleX, float fInkToDeviceScaleY, IInkStrokeDisp** ppIInkStroke) BeginStroke;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStrokeBuilder self, uint32 tcid, uint32 sid, uint32 cPktBuffLength, int32* pPackets) AppendPackets;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStrokeBuilder self, uint32 tcid, uint32 sid, IInkStrokeDisp** ppIInkStroke, out RectI pDirtyRect) EndStroke;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStrokeBuilder self, IInkDisp** ppiInkObj) get_Ink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStrokeBuilder self, IInkDisp* piInkObj) putref_Ink;
			}
		}
		[CRepr]
		public struct IStylusPlugin : IUnknown
		{
			public const new Guid IID = .(0xa81436d8, 0x4757, 0x4fd1, 0xa1, 0x85, 0x13, 0x3f, 0x97, 0xc6, 0xc5, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RealTimeStylusEnabled(IRealTimeStylus* piRtsSrc, uint32 cTcidCount, uint32* pTcids) mut => VT.RealTimeStylusEnabled(ref this, piRtsSrc, cTcidCount, pTcids);
			public HResult RealTimeStylusDisabled(IRealTimeStylus* piRtsSrc, uint32 cTcidCount, uint32* pTcids) mut => VT.RealTimeStylusDisabled(ref this, piRtsSrc, cTcidCount, pTcids);
			public HResult StylusInRange(IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid) mut => VT.StylusInRange(ref this, piRtsSrc, tcid, sid);
			public HResult StylusOutOfRange(IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid) mut => VT.StylusOutOfRange(ref this, piRtsSrc, tcid, sid);
			public HResult StylusDown(IRealTimeStylus* piRtsSrc, in StylusInfo pStylusInfo, uint32 cPropCountPerPkt, int32* pPacket, int32** ppInOutPkt) mut => VT.StylusDown(ref this, piRtsSrc, pStylusInfo, cPropCountPerPkt, pPacket, ppInOutPkt);
			public HResult StylusUp(IRealTimeStylus* piRtsSrc, in StylusInfo pStylusInfo, uint32 cPropCountPerPkt, int32* pPacket, int32** ppInOutPkt) mut => VT.StylusUp(ref this, piRtsSrc, pStylusInfo, cPropCountPerPkt, pPacket, ppInOutPkt);
			public HResult StylusButtonDown(IRealTimeStylus* piRtsSrc, uint32 sid, in Guid pGuidStylusButton, out POINT pStylusPos) mut => VT.StylusButtonDown(ref this, piRtsSrc, sid, pGuidStylusButton, out pStylusPos);
			public HResult StylusButtonUp(IRealTimeStylus* piRtsSrc, uint32 sid, in Guid pGuidStylusButton, out POINT pStylusPos) mut => VT.StylusButtonUp(ref this, piRtsSrc, sid, pGuidStylusButton, out pStylusPos);
			public HResult InAirPackets(IRealTimeStylus* piRtsSrc, in StylusInfo pStylusInfo, uint32 cPktCount, uint32 cPktBuffLength, int32* pPackets, out uint32 pcInOutPkts, int32** ppInOutPkts) mut => VT.InAirPackets(ref this, piRtsSrc, pStylusInfo, cPktCount, cPktBuffLength, pPackets, out pcInOutPkts, ppInOutPkts);
			public HResult Packets(IRealTimeStylus* piRtsSrc, in StylusInfo pStylusInfo, uint32 cPktCount, uint32 cPktBuffLength, int32* pPackets, out uint32 pcInOutPkts, int32** ppInOutPkts) mut => VT.Packets(ref this, piRtsSrc, pStylusInfo, cPktCount, cPktBuffLength, pPackets, out pcInOutPkts, ppInOutPkts);
			public HResult CustomStylusDataAdded(IRealTimeStylus* piRtsSrc, in Guid pGuidId, uint32 cbData, uint8* pbData) mut => VT.CustomStylusDataAdded(ref this, piRtsSrc, pGuidId, cbData, pbData);
			public HResult SystemEvent(IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid, uint16 event, SYSTEM_EVENT_DATA eventdata) mut => VT.SystemEvent(ref this, piRtsSrc, tcid, sid, event, eventdata);
			public HResult TabletAdded(IRealTimeStylus* piRtsSrc, IInkTablet* piTablet) mut => VT.TabletAdded(ref this, piRtsSrc, piTablet);
			public HResult TabletRemoved(IRealTimeStylus* piRtsSrc, int32 iTabletIndex) mut => VT.TabletRemoved(ref this, piRtsSrc, iTabletIndex);
			public HResult Error(IRealTimeStylus* piRtsSrc, IStylusPlugin* piPlugin, RealTimeStylusDataInterest dataInterest, HResult hrErrorCode, out int lptrKey) mut => VT.Error(ref this, piRtsSrc, piPlugin, dataInterest, hrErrorCode, out lptrKey);
			public HResult UpdateMapping(IRealTimeStylus* piRtsSrc) mut => VT.UpdateMapping(ref this, piRtsSrc);
			public HResult DataInterest(out RealTimeStylusDataInterest pDataInterest) mut => VT.DataInterest(ref this, out pDataInterest);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, uint32 cTcidCount, uint32* pTcids) RealTimeStylusEnabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, uint32 cTcidCount, uint32* pTcids) RealTimeStylusDisabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid) StylusInRange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid) StylusOutOfRange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, in StylusInfo pStylusInfo, uint32 cPropCountPerPkt, int32* pPacket, int32** ppInOutPkt) StylusDown;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, in StylusInfo pStylusInfo, uint32 cPropCountPerPkt, int32* pPacket, int32** ppInOutPkt) StylusUp;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, uint32 sid, in Guid pGuidStylusButton, out POINT pStylusPos) StylusButtonDown;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, uint32 sid, in Guid pGuidStylusButton, out POINT pStylusPos) StylusButtonUp;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, in StylusInfo pStylusInfo, uint32 cPktCount, uint32 cPktBuffLength, int32* pPackets, out uint32 pcInOutPkts, int32** ppInOutPkts) InAirPackets;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, in StylusInfo pStylusInfo, uint32 cPktCount, uint32 cPktBuffLength, int32* pPackets, out uint32 pcInOutPkts, int32** ppInOutPkts) Packets;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, in Guid pGuidId, uint32 cbData, uint8* pbData) CustomStylusDataAdded;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid, uint16 event, SYSTEM_EVENT_DATA eventdata) SystemEvent;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, IInkTablet* piTablet) TabletAdded;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, int32 iTabletIndex) TabletRemoved;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc, IStylusPlugin* piPlugin, RealTimeStylusDataInterest dataInterest, HResult hrErrorCode, out int lptrKey) Error;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, IRealTimeStylus* piRtsSrc) UpdateMapping;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStylusPlugin self, out RealTimeStylusDataInterest pDataInterest) DataInterest;
			}
		}
		[CRepr]
		public struct IStylusSyncPlugin : IStylusPlugin
		{
			public const new Guid IID = .(0xa157b174, 0x482f, 0x4d71, 0xa3, 0xf6, 0x3a, 0x41, 0xdd, 0xd1, 0x1b, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IStylusPlugin.VTable {}
		}
		[CRepr]
		public struct IStylusAsyncPlugin : IStylusPlugin
		{
			public const new Guid IID = .(0xa7cca85a, 0x31bc, 0x4cd2, 0xaa, 0xdc, 0x32, 0x89, 0xa3, 0xaf, 0x11, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IStylusPlugin.VTable {}
		}
		[CRepr]
		public struct IDynamicRenderer : IUnknown
		{
			public const new Guid IID = .(0xa079468e, 0x7165, 0x46f9, 0xb7, 0xaf, 0x98, 0xad, 0x01, 0xa9, 0x30, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Enabled(out IntBool bEnabled) mut => VT.get_Enabled(ref this, out bEnabled);
			public HResult put_Enabled(IntBool bEnabled) mut => VT.put_Enabled(ref this, bEnabled);
			public HResult get_HWND(out HANDLE_PTR hwnd) mut => VT.get_HWND(ref this, out hwnd);
			public HResult put_HWND(HANDLE_PTR hwnd) mut => VT.put_HWND(ref this, hwnd);
			public HResult get_ClipRectangle(out RectI prcClipRect) mut => VT.get_ClipRectangle(ref this, out prcClipRect);
			public HResult put_ClipRectangle(in RectI prcClipRect) mut => VT.put_ClipRectangle(ref this, prcClipRect);
			public HResult get_ClipRegion(out HANDLE_PTR phClipRgn) mut => VT.get_ClipRegion(ref this, out phClipRgn);
			public HResult put_ClipRegion(HANDLE_PTR hClipRgn) mut => VT.put_ClipRegion(ref this, hClipRgn);
			public HResult get_DrawingAttributes(IInkDrawingAttributes** ppiDA) mut => VT.get_DrawingAttributes(ref this, ppiDA);
			public HResult putref_DrawingAttributes(IInkDrawingAttributes* piDA) mut => VT.putref_DrawingAttributes(ref this, piDA);
			public HResult get_DataCacheEnabled(out IntBool pfCacheData) mut => VT.get_DataCacheEnabled(ref this, out pfCacheData);
			public HResult put_DataCacheEnabled(IntBool fCacheData) mut => VT.put_DataCacheEnabled(ref this, fCacheData);
			public HResult ReleaseCachedData(uint32 strokeId) mut => VT.ReleaseCachedData(ref this, strokeId);
			public HResult Refresh() mut => VT.Refresh(ref this);
			public HResult Draw(HANDLE_PTR hDC) mut => VT.Draw(ref this, hDC);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, out IntBool bEnabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, IntBool bEnabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, out HANDLE_PTR hwnd) get_HWND;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, HANDLE_PTR hwnd) put_HWND;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, out RectI prcClipRect) get_ClipRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, in RectI prcClipRect) put_ClipRectangle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, out HANDLE_PTR phClipRgn) get_ClipRegion;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, HANDLE_PTR hClipRgn) put_ClipRegion;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, IInkDrawingAttributes** ppiDA) get_DrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, IInkDrawingAttributes* piDA) putref_DrawingAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, out IntBool pfCacheData) get_DataCacheEnabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, IntBool fCacheData) put_DataCacheEnabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, uint32 strokeId) ReleaseCachedData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self) Refresh;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDynamicRenderer self, HANDLE_PTR hDC) Draw;
			}
		}
		[CRepr]
		public struct IGestureRecognizer : IUnknown
		{
			public const new Guid IID = .(0xae9ef86b, 0x7054, 0x45e3, 0xae, 0x22, 0x31, 0x74, 0xdc, 0x88, 0x11, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Enabled(out IntBool pfEnabled) mut => VT.get_Enabled(ref this, out pfEnabled);
			public HResult put_Enabled(IntBool fEnabled) mut => VT.put_Enabled(ref this, fEnabled);
			public HResult get_MaxStrokeCount(out int32 pcStrokes) mut => VT.get_MaxStrokeCount(ref this, out pcStrokes);
			public HResult put_MaxStrokeCount(int32 cStrokes) mut => VT.put_MaxStrokeCount(ref this, cStrokes);
			public HResult EnableGestures(uint32 cGestures, int32* pGestures) mut => VT.EnableGestures(ref this, cGestures, pGestures);
			public HResult Reset() mut => VT.Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IGestureRecognizer self, out IntBool pfEnabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IGestureRecognizer self, IntBool fEnabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IGestureRecognizer self, out int32 pcStrokes) get_MaxStrokeCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IGestureRecognizer self, int32 cStrokes) put_MaxStrokeCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IGestureRecognizer self, uint32 cGestures, int32* pGestures) EnableGestures;
				public new function [CallingConvention(.Stdcall)] HResult(ref IGestureRecognizer self) Reset;
			}
		}
		[CRepr]
		public struct ITipAutoCompleteProvider : IUnknown
		{
			public const new Guid IID = .(0x7c6cf46d, 0x8404, 0x46b9, 0xad, 0x33, 0xf5, 0xb6, 0x03, 0x6d, 0x40, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult UpdatePendingText(BSTR bstrPendingText) mut => VT.UpdatePendingText(ref this, bstrPendingText);
			public HResult Show(IntBool fShow) mut => VT.Show(ref this, fShow);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITipAutoCompleteProvider self, BSTR bstrPendingText) UpdatePendingText;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITipAutoCompleteProvider self, IntBool fShow) Show;
			}
		}
		[CRepr]
		public struct ITipAutoCompleteClient : IUnknown
		{
			public const new Guid IID = .(0x5e078e03, 0x8265, 0x4bbe, 0x94, 0x87, 0xd2, 0x42, 0xed, 0xbe, 0xf9, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AdviseProvider(HWnd hWndField, ITipAutoCompleteProvider* pIProvider) mut => VT.AdviseProvider(ref this, hWndField, pIProvider);
			public HResult UnadviseProvider(HWnd hWndField, ITipAutoCompleteProvider* pIProvider) mut => VT.UnadviseProvider(ref this, hWndField, pIProvider);
			public HResult UserSelection() mut => VT.UserSelection(ref this);
			public HResult PreferredRects(ref RectI prcACList, ref RectI prcField, out RectI prcModifiedACList, out IntBool pfShownAboveTip) mut => VT.PreferredRects(ref this, ref prcACList, ref prcField, out prcModifiedACList, out pfShownAboveTip);
			public HResult RequestShowUI(HWnd hWndList, out IntBool pfAllowShowing) mut => VT.RequestShowUI(ref this, hWndList, out pfAllowShowing);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITipAutoCompleteClient self, HWnd hWndField, ITipAutoCompleteProvider* pIProvider) AdviseProvider;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITipAutoCompleteClient self, HWnd hWndField, ITipAutoCompleteProvider* pIProvider) UnadviseProvider;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITipAutoCompleteClient self) UserSelection;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITipAutoCompleteClient self, ref RectI prcACList, ref RectI prcField, out RectI prcModifiedACList, out IntBool pfShownAboveTip) PreferredRects;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITipAutoCompleteClient self, HWnd hWndList, out IntBool pfAllowShowing) RequestShowUI;
			}
		}
		
		// --- Functions ---
		
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateRecognizer(out Guid pCLSID, out HRECOGNIZER phrec);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DestroyRecognizer(HRECOGNIZER hrec);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetRecoAttributes(HRECOGNIZER hrec, out RECO_ATTRS pRecoAttrs);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateContext(HRECOGNIZER hrec, out HRECOCONTEXT phrc);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DestroyContext(HRECOCONTEXT hrc);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetResultPropertyList(HRECOGNIZER hrec, out uint32 pPropertyCount, out Guid pPropertyGuid);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetUnicodeRanges(HRECOGNIZER hrec, out uint32 pcRanges, out CHARACTER_RANGE pcr);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult AddStroke(HRECOCONTEXT hrc, in PACKET_DESCRIPTION pPacketDesc, uint32 cbPacket, in uint8 pPacket, in XFORM pXForm);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetBestResultString(HRECOCONTEXT hrc, out uint32 pcSize, char16* pwcBestResult);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult SetGuide(HRECOCONTEXT hrc, in RECO_GUIDE pGuide, uint32 iIndex);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult AdviseInkChange(HRECOCONTEXT hrc, IntBool bNewStroke);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult EndInkInput(HRECOCONTEXT hrc);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult Process(HRECOCONTEXT hrc, out IntBool pbPartialProcessing);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult SetFactoid(HRECOCONTEXT hrc, uint32 cwcFactoid, char16* pwcFactoid);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult SetFlags(HRECOCONTEXT hrc, uint32 dwFlags);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetLatticePtr(HRECOCONTEXT hrc, out RECO_LATTICE* ppLattice);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult SetTextContext(HRECOCONTEXT hrc, uint32 cwcBefore, char16* pwcBefore, uint32 cwcAfter, char16* pwcAfter);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult SetEnabledUnicodeRanges(HRECOCONTEXT hrc, uint32 cRanges, out CHARACTER_RANGE pcr);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult IsStringSupported(HRECOCONTEXT hrc, uint32 wcString, char16* pwcString);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult SetWordList(HRECOCONTEXT hrc, HRECOWORDLIST hwl);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetRightSeparator(HRECOCONTEXT hrc, out uint32 pcSize, char16* pwcRightSeparator);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetLeftSeparator(HRECOCONTEXT hrc, out uint32 pcSize, char16* pwcLeftSeparator);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DestroyWordList(HRECOWORDLIST hwl);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult AddWordsToWordList(HRECOWORDLIST hwl, char16* pwcWords);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult MakeWordList(HRECOGNIZER hrec, char16* pBuffer, out HRECOWORDLIST phwl);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetAllRecognizers(out Guid* recognizerClsids, out uint32 count);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult LoadCachedAttributes(Guid clsid, out RECO_ATTRS pRecoAttributes);
	}
}
