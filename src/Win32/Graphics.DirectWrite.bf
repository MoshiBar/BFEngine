using System;
using BfEngine;
using static Win32.Graphics.Gdi;
using static Win32.Globalization;
using static Win32.System.Com;
using static Win32.Graphics.Direct2D;
using static System.Windows;
using static System.Windows.COM_IUnknown;

// namespace Graphics.DirectWrite
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DWRITE_ALPHA_MAX = 255;
		public const uint32 FACILITY_DWRITE = 2200;
		public const uint32 DWRITE_ERR_BASE = 20480;
		public const HResult DWRITE_E_REMOTEFONT = (.)-2003283955;
		public const HResult DWRITE_E_DOWNLOADCANCELLED = (.)-2003283954;
		public const HResult DWRITE_E_DOWNLOADFAILED = (.)-2003283953;
		public const HResult DWRITE_E_TOOMANYDOWNLOADS = (.)-2003283952;
		
		// --- Enums ---
		
		public enum FontAxisTag : uint32
		{
			Weight = 1952999287,
			Width = 1752458359,
			Slant = 1953393779,
			OpticalSize = 2054385775,
			Italic = 1818326121,
		}
		public enum DWRITE_MEASURING_MODE : int32
		{
			Natural = 0,
			GDIClassic = 1,
			GDINatural = 2,
		}
		public enum DWRITE_GLYPH_IMAGE_FORMATS : uint32
		{
			None = 0,
			Truetype = 1,
			CFF = 2,
			COLR = 4,
			SVG = 8,
			PNG = 16,
			JPEG = 32,
			TIFF = 64,
			PremultipliedB8G8R8A8 = 128,
		}
		[AllowDuplicates]
		public enum FontFileType : int32
		{
			Unknown = 0,
			CFF = 1,
			Truetype = 2,
			OpentypeCollection = 3,
			TYPE1_PFM = 4,
			TYPE1_PFB = 5,
			Vector = 6,
			Bitmap = 7,
			TruetypeCollection = 3,
		}
		[AllowDuplicates]
		public enum FontFaceType : int32
		{
			CFF = 0,
			Truetype = 1,
			OpentypeCollection = 2,
			TYPE1 = 3,
			Vector = 4,
			Bitmap = 5,
			Unknown = 6,
			RAW_CFF = 7,
			TruetypeCollection = 2,
		}
		public enum FontSimulations : uint32
		{
			None = 0,
			Bold = 1,
			Oblique = 2,
		}
		[AllowDuplicates]
		public enum FontWeight : int32
		{
			Thin = 100,
			ExtraLight = 200,
			UltraLight = 200,
			Light = 300,
			SemiLight = 350,
			Normal = 400,
			Regular = 400,
			Medium = 500,
			DemiBold = 600,
			SemiBold = 600,
			Bold = 700,
			ExtraBold = 800,
			UltraBold = 800,
			Black = 900,
			Heavy = 900,
			ExtraBlack = 950,
			UltraBlack = 950,
		}
		[AllowDuplicates]
		public enum FontStretch : int32
		{
			Undefined = 0,
			UltraCondensed = 1,
			ExtraCondensed = 2,
			Condensed = 3,
			SemiCondensed = 4,
			Normal = 5,
			Medium = 5,
			SemiExpanded = 6,
			Expanded = 7,
			ExtraExpanded = 8,
			UltraExpanded = 9,
		}
		public enum FontStyle : int32
		{
			Normal = 0,
			Oblique = 1,
			Italic = 2,
		}
		[AllowDuplicates]
		public enum DWRITE_INFORMATIONAL_STRING_ID : int32
		{
			None = 0,
			CopyrightNotice = 1,
			VersionStrings = 2,
			Trademark = 3,
			Manufacturer = 4,
			Designer = 5,
			DesignerUrl = 6,
			Description = 7,
			FontVendorUrl = 8,
			LicenseDescription = 9,
			LicenseInfoUrl = 10,
			Win32FamilyNames = 11,
			Win32SubfamilyNames = 12,
			TypographicFamilyNames = 13,
			TypographicSubfamilyNames = 14,
			SampleText = 15,
			FullName = 16,
			PostscriptName = 17,
			PostscriptCidName = 18,
			WeightStretchStyleFamilyName = 19,
			DesignScriptLanguageTag = 20,
			SupportedScriptLanguageTag = 21,
			PreferredFamilyNames = 13,
			PreferredSubfamilyNames = 14,
			WWSFamilyName = 19,
		}
		public enum DWRITE_FACTORY_TYPE : int32
		{
			Shared = 0,
			Isolated = 1,
		}
		public enum DWRITE_PIXEL_GEOMETRY : int32
		{
			Flat = 0,
			RGB = 1,
			BGR = 2,
		}
		[AllowDuplicates]
		public enum DWRITE_RENDERING_MODE : int32
		{
			Default = 0,
			Aliased = 1,
			GDIClassic = 2,
			GDINatural = 3,
			Natural = 4,
			NaturalSymmetric = 5,
			Outline = 6,
			CleartypeGDIClassic = 2,
			CleartypeGDINatural = 3,
			CleartypeNatural = 4,
			CleartypeNaturalSymmetric = 5,
		}
		public enum DWRITE_READING_DIRECTION : int32
		{
			LeftToRight = 0,
			RightToLeft = 1,
			TopToBottom = 2,
			BottomToTop = 3,
		}
		public enum DWRITE_FLOW_DIRECTION : int32
		{
			TopToBottom = 0,
			BottomToTop = 1,
			LeftToRight = 2,
			RightToLeft = 3,
		}
		public enum TextAlignment : int32
		{
			Leading = 0,
			Trailing = 1,
			Center = 2,
			Justified = 3,
		}
		public enum ParagraphAlignment : int32
		{
			Near = 0,
			Far = 1,
			Center = 2,
		}
		public enum WordWrapping : int32
		{
			Wrap = 0,
			NoWrap = 1,
			EmergencyBreak = 2,
			WholeWord = 3,
			Character = 4,
		}
		public enum LineSpacingMethod : int32
		{
			Default = 0,
			Uniform = 1,
			Proportional = 2,
		}
		public enum TrimmingGranularity : int32
		{
			None = 0,
			Character = 1,
			Word = 2,
		}
		public enum FontFeatureTag : uint32
		{
			AlternativeFractions = 1668441697,
			PetiteCapitalsFromCapitals = 1668297315,
			SmallCapitalsFromCapitals = 1668493923,
			ContextualAlternates = 1953259875,
			CaseSensitiveForms = 1702060387,
			GlyphCompositionDecomposition = 1886217059,
			ContextualLigatures = 1734962275,
			CapitalSpacing = 1886613603,
			ContextualSwash = 1752658787,
			CursivePositioning = 1936880995,
			Default = 1953261156,
			DiscretionaryLigatures = 1734962276,
			ExpertForms = 1953527909,
			Fractions = 1667330662,
			FullWidth = 1684633446,
			HalfForms = 1718378856,
			HalantForms = 1852596584,
			AlternateHalfWidth = 1953259880,
			HistoricalForms = 1953720680,
			HorizontalKanaAlternates = 1634626408,
			HistoricalLigatures = 1734962280,
			HalfWidth = 1684633448,
			HojoKanjiForms = 1869246312,
			JIS04Forms = 875589738,
			JIS78Forms = 943157354,
			JIS83Forms = 859336810,
			JIS90Forms = 809070698,
			Kerning = 1852990827,
			StandardLigatures = 1634167148,
			LiningFigures = 1836412524,
			LocalizedForms = 1818455916,
			MarkPositioning = 1802658157,
			MathematicalGreek = 1802659693,
			MarkToMarkPositioning = 1802333037,
			AlternateAnnotationForms = 1953259886,
			NLCKanjiForms = 1801677934,
			OldStyleFigures = 1836412527,
			Ordinals = 1852076655,
			ProportionalAlternateWidth = 1953259888,
			PetiteCapitals = 1885430640,
			ProportionalFigures = 1836412528,
			ProportionalWidths = 1684633456,
			QuarterWidths = 1684633457,
			RequiredLigatures = 1734962290,
			RubyNotationForms = 2036495730,
			StylisticAlternates = 1953259891,
			ScientificInferiors = 1718511987,
			SmallCapitals = 1885564275,
			SimplifiedForms = 1819307379,
			STYLISTIC_SET_1 = 825258867,
			STYLISTIC_SET_2 = 842036083,
			STYLISTIC_SET_3 = 858813299,
			STYLISTIC_SET_4 = 875590515,
			STYLISTIC_SET_5 = 892367731,
			STYLISTIC_SET_6 = 909144947,
			STYLISTIC_SET_7 = 925922163,
			STYLISTIC_SET_8 = 942699379,
			STYLISTIC_SET_9 = 959476595,
			STYLISTIC_SET_10 = 808547187,
			STYLISTIC_SET_11 = 825324403,
			STYLISTIC_SET_12 = 842101619,
			STYLISTIC_SET_13 = 858878835,
			STYLISTIC_SET_14 = 875656051,
			STYLISTIC_SET_15 = 892433267,
			STYLISTIC_SET_16 = 909210483,
			STYLISTIC_SET_17 = 925987699,
			STYLISTIC_SET_18 = 942764915,
			STYLISTIC_SET_19 = 959542131,
			STYLISTIC_SET_20 = 808612723,
			Subscript = 1935832435,
			Superscript = 1936749939,
			Swash = 1752397683,
			Titling = 1819568500,
			TraditionalNameForms = 1835101812,
			TabularFigures = 1836412532,
			TraditionalForms = 1684107892,
			ThirdWidths = 1684633460,
			Unicase = 1667853941,
			VerticalWriting = 1953654134,
			VerticalAlternatesAndRotation = 846492278,
			SlashedZero = 1869768058,
		}
		public enum DWRITE_SCRIPT_SHAPES : uint32
		{
			Default = 0,
			NoVisual = 1,
		}
		public enum DWRITE_BREAK_CONDITION : int32
		{
			Neutral = 0,
			CanBreak = 1,
			MayNotBreak = 2,
			MustBreak = 3,
		}
		public enum DWRITE_NUMBER_SUBSTITUTION_METHOD : int32
		{
			FromCulture = 0,
			Contextual = 1,
			None = 2,
			National = 3,
			Traditional = 4,
		}
		public enum DWRITE_TEXTURE_TYPE : int32
		{
			Aliased1x1 = 0,
			Cleartype3x1 = 1,
		}
		[AllowDuplicates]
		public enum DWRITE_PANOSE_FAMILY : int32
		{
			Any = 0,
			NoFit = 1,
			TextDisplay = 2,
			Script = 3,
			Decorative = 4,
			Symbol = 5,
			Pictorial = 5,
		}
		[AllowDuplicates]
		public enum DWRITE_PANOSE_SERIF_STYLE : int32
		{
			Any = 0,
			NoFit = 1,
			Cove = 2,
			ObtuseCove = 3,
			SquareCove = 4,
			ObtuseSquareCove = 5,
			Square = 6,
			Thin = 7,
			Oval = 8,
			Exaggerated = 9,
			Triangle = 10,
			NormalSans = 11,
			ObtuseSans = 12,
			PerpendicularSans = 13,
			Flared = 14,
			Rounded = 15,
			Script = 16,
			PerpSans = 13,
			Bone = 8,
		}
		[AllowDuplicates]
		public enum DWRITE_PANOSE_WEIGHT : int32
		{
			Any = 0,
			NoFit = 1,
			VeryLight = 2,
			Light = 3,
			Thin = 4,
			Book = 5,
			Medium = 6,
			Demi = 7,
			Bold = 8,
			Heavy = 9,
			Black = 10,
			ExtraBlack = 11,
			Nord = 11,
		}
		public enum DWRITE_PANOSE_PROPORTION : int32
		{
			Any = 0,
			NoFit = 1,
			OldStyle = 2,
			Modern = 3,
			EvenWidth = 4,
			Expanded = 5,
			Condensed = 6,
			VeryExpanded = 7,
			VeryCondensed = 8,
			Monospaced = 9,
		}
		public enum DWRITE_PANOSE_CONTRAST : int32
		{
			Any = 0,
			NoFit = 1,
			None = 2,
			VeryLow = 3,
			Low = 4,
			MediumLow = 5,
			Medium = 6,
			MediumHigh = 7,
			High = 8,
			VeryHigh = 9,
			HorizontalLow = 10,
			HorizontalMedium = 11,
			HorizontalHigh = 12,
			Broken = 13,
		}
		public enum DWRITE_PANOSE_STROKE_VARIATION : int32
		{
			Any = 0,
			NoFit = 1,
			NoVariation = 2,
			GradualDiagonal = 3,
			GradualTransitional = 4,
			GradualVertical = 5,
			GradualHorizontal = 6,
			RapidVertical = 7,
			RapidHorizontal = 8,
			InstantVertical = 9,
			InstantHorizontal = 10,
		}
		[AllowDuplicates]
		public enum DWRITE_PANOSE_ARM_STYLE : int32
		{
			Any = 0,
			NoFit = 1,
			StraightArmsHorizontal = 2,
			StraightArmsWedge = 3,
			StraightArmsVertical = 4,
			StraightArmsSingleSerif = 5,
			StraightArmsDoubleSerif = 6,
			NonstraightArmsHorizontal = 7,
			NonstraightArmsWedge = 8,
			NonstraightArmsVertical = 9,
			NonstraightArmsSingleSerif = 10,
			NonstraightArmsDoubleSerif = 11,
			StraightArmsHorz = 2,
			StraightArmsVert = 4,
			BentArmsHorz = 7,
			BentArmsWedge = 8,
			BentArmsVert = 9,
			BentArmsSingleSerif = 10,
			BentArmsDoubleSerif = 11,
		}
		public enum DWRITE_PANOSE_LETTERFORM : int32
		{
			Any = 0,
			NoFit = 1,
			NormalContact = 2,
			NormalWeighted = 3,
			NormalBoxed = 4,
			NormalFlattened = 5,
			NormalRounded = 6,
			NormalOffCenter = 7,
			NormalSquare = 8,
			ObliqueContact = 9,
			ObliqueWeighted = 10,
			ObliqueBoxed = 11,
			ObliqueFlattened = 12,
			ObliqueRounded = 13,
			ObliqueOffCenter = 14,
			ObliqueSquare = 15,
		}
		public enum DWRITE_PANOSE_MIDLINE : int32
		{
			Any = 0,
			NoFit = 1,
			StandardTrimmed = 2,
			StandardPointed = 3,
			StandardSerifed = 4,
			HighTrimmed = 5,
			HighPointed = 6,
			HighSerifed = 7,
			ConstantTrimmed = 8,
			ConstantPointed = 9,
			ConstantSerifed = 10,
			LowTrimmed = 11,
			LowPointed = 12,
			LowSerifed = 13,
		}
		[AllowDuplicates]
		public enum DWRITE_PANOSE_XHEIGHT : int32
		{
			Any = 0,
			NoFit = 1,
			ConstantSmall = 2,
			ConstantStandard = 3,
			ConstantLarge = 4,
			DuckingSmall = 5,
			DuckingStandard = 6,
			DuckingLarge = 7,
			ConstantStd = 3,
			DuckingStd = 6,
		}
		public enum DWRITE_PANOSE_TOOL_KIND : int32
		{
			Any = 0,
			NoFit = 1,
			FlatNib = 2,
			PressurePoint = 3,
			Engraved = 4,
			Ball = 5,
			Brush = 6,
			Rough = 7,
			FeltPenBrushTip = 8,
			WildBrush = 9,
		}
		public enum DWRITE_PANOSE_SPACING : int32
		{
			Any = 0,
			NoFit = 1,
			ProportionalSpaced = 2,
			Monospaced = 3,
		}
		public enum DWRITE_PANOSE_ASPECT_RATIO : int32
		{
			Any = 0,
			NoFit = 1,
			VeryCondensed = 2,
			Condensed = 3,
			Normal = 4,
			Expanded = 5,
			VeryExpanded = 6,
		}
		public enum DWRITE_PANOSE_SCRIPT_TOPOLOGY : int32
		{
			Any = 0,
			NoFit = 1,
			RomanDisconnected = 2,
			RomanTrailing = 3,
			RomanConnected = 4,
			CursiveDisconnected = 5,
			CursiveTrailing = 6,
			CursiveConnected = 7,
			BlackletterDisconnected = 8,
			BlackletterTrailing = 9,
			BlackletterConnected = 10,
		}
		public enum DWRITE_PANOSE_SCRIPT_FORM : int32
		{
			Any = 0,
			NoFit = 1,
			UprightNoWrapping = 2,
			UprightSomeWrapping = 3,
			UprightMoreWrapping = 4,
			UprightExtremeWrapping = 5,
			ObliqueNoWrapping = 6,
			ObliqueSomeWrapping = 7,
			ObliqueMoreWrapping = 8,
			ObliqueExtremeWrapping = 9,
			ExaggeratedNoWrapping = 10,
			ExaggeratedSomeWrapping = 11,
			ExaggeratedMoreWrapping = 12,
			ExaggeratedExtremeWrapping = 13,
		}
		public enum DWRITE_PANOSE_FINIALS : int32
		{
			Any = 0,
			NoFit = 1,
			NoneNoLoops = 2,
			NoneClosedLoops = 3,
			NoneOpenLoops = 4,
			SharpNoLoops = 5,
			SharpClosedLoops = 6,
			SharpOpenLoops = 7,
			TaperedNoLoops = 8,
			TaperedClosedLoops = 9,
			TaperedOpenLoops = 10,
			RoundNoLoops = 11,
			RoundClosedLoops = 12,
			RoundOpenLoops = 13,
		}
		public enum DWRITE_PANOSE_XASCENT : int32
		{
			Any = 0,
			NoFit = 1,
			VeryLow = 2,
			Low = 3,
			Medium = 4,
			High = 5,
			VeryHigh = 6,
		}
		public enum DWRITE_PANOSE_DECORATIVE_CLASS : int32
		{
			Any = 0,
			NoFit = 1,
			Derivative = 2,
			NonstandardTopology = 3,
			NonstandardElements = 4,
			NonstandardAspect = 5,
			Initials = 6,
			Cartoon = 7,
			PictureStems = 8,
			Ornamented = 9,
			TextAndBackground = 10,
			Collage = 11,
			Montage = 12,
		}
		public enum DWRITE_PANOSE_ASPECT : int32
		{
			Any = 0,
			NoFit = 1,
			SuperCondensed = 2,
			VeryCondensed = 3,
			Condensed = 4,
			Normal = 5,
			Extended = 6,
			VeryExtended = 7,
			SuperExtended = 8,
			Monospaced = 9,
		}
		public enum DWRITE_PANOSE_FILL : int32
		{
			Any = 0,
			NoFit = 1,
			StandardSolidFill = 2,
			NoFill = 3,
			PatternedFill = 4,
			ComplexFill = 5,
			ShapedFill = 6,
			DrawnDistressed = 7,
		}
		public enum DWRITE_PANOSE_LINING : int32
		{
			Any = 0,
			NoFit = 1,
			None = 2,
			Inline = 3,
			Outline = 4,
			Engraved = 5,
			Shadow = 6,
			Relief = 7,
			Backdrop = 8,
		}
		public enum DWRITE_PANOSE_DECORATIVE_TOPOLOGY : int32
		{
			Any = 0,
			NoFit = 1,
			Standard = 2,
			Square = 3,
			MultipleSegment = 4,
			ArtDeco = 5,
			UnevenWeighting = 6,
			DiverseArms = 7,
			DiverseForms = 8,
			LombardicForms = 9,
			UpperCaseInLowerCase = 10,
			ImpliedTopology = 11,
			HorseshoeEAndA = 12,
			Cursive = 13,
			Blackletter = 14,
			SwashVariance = 15,
		}
		public enum DWRITE_PANOSE_CHARACTER_RANGES : int32
		{
			Any = 0,
			NoFit = 1,
			ExtendedCollection = 2,
			Literals = 3,
			NoLowerCase = 4,
			SmallCaps = 5,
		}
		public enum DWRITE_PANOSE_SYMBOL_KIND : int32
		{
			Any = 0,
			NoFit = 1,
			Montages = 2,
			Pictures = 3,
			Shapes = 4,
			Scientific = 5,
			Music = 6,
			Expert = 7,
			Patterns = 8,
			Boarders = 9,
			Icons = 10,
			Logos = 11,
			IndustrySpecific = 12,
		}
		public enum DWRITE_PANOSE_SYMBOL_ASPECT_RATIO : int32
		{
			Any = 0,
			NoFit = 1,
			NoWidth = 2,
			ExceptionallyWide = 3,
			SuperWide = 4,
			VeryWide = 5,
			Wide = 6,
			Normal = 7,
			Narrow = 8,
			VeryNarrow = 9,
		}
		public enum DWRITE_OUTLINE_THRESHOLD : int32
		{
			Antialiased = 0,
			Aliased = 1,
		}
		public enum DWRITE_BASELINE : int32
		{
			Default = 0,
			Roman = 1,
			Central = 2,
			Math = 3,
			Hanging = 4,
			IdeographicBottom = 5,
			IdeographicTop = 6,
			Minimum = 7,
			Maximum = 8,
		}
		public enum DWRITE_VERTICAL_GLYPH_ORIENTATION : int32
		{
			Default = 0,
			Stacked = 1,
		}
		public enum DWRITE_GLYPH_ORIENTATION_ANGLE : int32
		{
			_0Degrees = 0,
			_90Degrees = 1,
			_180Degrees = 2,
			_270Degrees = 3,
		}
		public enum DWRITE_TEXT_ANTIALIAS_MODE : int32
		{
			Cleartype = 0,
			Grayscale = 1,
		}
		public enum DWRITE_OPTICAL_ALIGNMENT : int32
		{
			None = 0,
			NoSideBearings = 1,
		}
		public enum DWRITE_GRID_FIT_MODE : int32
		{
			Default = 0,
			Disabled = 1,
			Enabled = 2,
		}
		[AllowDuplicates]
		public enum FontPropertyID : int32
		{
			None = 0,
			WeightStretchStyleFamilyName = 1,
			TypographicFamilyName = 2,
			WeightStretchStyleFaceName = 3,
			FullName = 4,
			Win32FamilyName = 5,
			PostscriptName = 6,
			DesignScriptLanguageTag = 7,
			SupportedScriptLanguageTag = 8,
			SemanticTag = 9,
			Weight = 10,
			Stretch = 11,
			Style = 12,
			TypographicFaceName = 13,
			Total = 13,
			TotalRS3 = 14,
			PreferredFamilyName = 2,
			FamilyName = 1,
			FaceName = 3,
		}
		public enum Locality : int32
		{
			Remote = 0,
			Partial = 1,
			Local = 2,
		}
		public enum RenderingMode1 : int32
		{
			Default = 0,
			Aliased = 1,
			GDIClassic = 2,
			GDINatural = 3,
			Natural = 4,
			NaturalSymmetric = 5,
			Outline = 6,
			NaturalSymmetricDownsampled = 7,
		}
		public enum FontLineGapUsage : int32
		{
			Default = 0,
			Disabled = 1,
			Enabled = 2,
		}
		public enum ContainerType : int32
		{
			Unknown = 0,
			WOFF = 1,
			WOFF2 = 2,
		}
		public enum FontFamilyModel : int32
		{
			Typographic = 0,
			WeightStretchStyle = 1,
		}
		public enum AutomaticFontAxes : uint32
		{
			None = 0,
			OpticalSize = 1,
		}
		public enum FontAxisAttributes : uint32
		{
			None = 0,
			Variable = 1,
			Hidden = 2,
		}
		public enum FontSourceType : int32
		{
			Unknown = 0,
			PerMachine = 1,
			PerUser = 2,
			AppXPackage = 3,
			RemoteFontProvider = 4,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct ColorF : this(
			float r,
			float g,
			float b,
			float a
		){}
		[CRepr]
		public struct FontMetrics
		{
			public uint16 designUnitsPerEm;
			public uint16 ascent;
			public uint16 descent;
			public int16 lineGap;
			public uint16 capHeight;
			public uint16 xHeight;
			public int16 underlinePosition;
			public uint16 underlineThickness;
			public int16 strikethroughPosition;
			public uint16 strikethroughThickness;
		}
		[CRepr]
		public struct GlyphMetrics
		{
			public int32 leftSideBearing;
			public uint32 advanceWidth;
			public int32 rightSideBearing;
			public int32 topSideBearing;
			public uint32 advanceHeight;
			public int32 bottomSideBearing;
			public int32 verticalOriginY;

			public int32 blackboxheight => (.)advanceHeight - topSideBearing - bottomSideBearing;
			public int32 blackboxwidth => (.)advanceWidth - leftSideBearing - rightSideBearing;


			/*public static Self operator *(Self a, float scale){
				return .(){
				leftSideBearing		= (.)(a.leftSideBearing * scale),
				advanceWidth		= (.)(a.advanceWidth * scale),
				rightSideBearing	= (.)(a.rightSideBearing * scale),
				topSideBearing		= (.)(a.topSideBearing * scale),
				advanceHeight		= (.)(a.advanceHeight * scale),
				bottomSideBearing	= (.)(a.bottomSideBearing * scale),
				verticalOriginY		= (.)(a.verticalOriginY * scale)
				};
			}*/
		}


		[CRepr]
		public struct GlyphOffset
		{
			public float advanceOffset;
			public float ascenderOffset;
			public this(){
				advanceOffset = default;
				ascenderOffset = default;
			}

			public this(float advanceOffset, float ascenderOffset){
				this.advanceOffset = advanceOffset;
				this.ascenderOffset = ascenderOffset;
			}

#unwarn
			public static implicit operator Vector2(Self f) => *(Vector2*)&f;
#unwarn
			public static implicit operator Self(Vector2 f) => *(Self*)&f;

		}
		[CRepr]
		public struct DWriteMatrix
		{
			public float m11;
			public float m12;
			public float m21;
			public float m22;
			public float dx;
			public float dy;
		}
		[CRepr]
		public struct TextRange
		{
			public uint32 startPosition;
			public uint32 length;
		}
		[CRepr]
		public struct FontFeature
		{
			public FontFeatureTag nameTag;
			public uint32 parameter;
		}
		[CRepr]
		public struct DWRITE_TYPOGRAPHIC_FEATURES
		{
			public FontFeature* features;
			public uint32 featureCount;
		}
		[CRepr]
		public struct DWRITE_TRIMMING
		{
			public TrimmingGranularity granularity;
			public uint32 delimiter;
			public uint32 delimiterCount;
		}
		[CRepr]
		public struct DWRITE_SCRIPT_ANALYSIS
		{
			public uint16 script;
			public DWRITE_SCRIPT_SHAPES shapes;
		}
		[CRepr]
		public struct DWRITE_LINE_BREAKPOINT
		{
			public uint8 _bitfield;
		}
		[CRepr]
		public struct DWRITE_SHAPING_TEXT_PROPERTIES
		{
			public uint16 _bitfield;
		}
		[CRepr]
		public struct DWRITE_SHAPING_GLYPH_PROPERTIES
		{
			public uint16 _bitfield;
		}
		[CRepr]
		public struct GlyphRun 
		{
			public IDWriteFontFace* fontFace;
			public float fontEmSize;
			public uint32 glyphCount;
			public uint16* glyphIndices;
			public float* glyphAdvances;
			public GlyphOffset* glyphOffsets;
			public IntBool isSideways;
			public uint32 bidiLevel;
		}
		[CRepr]
		public struct DWRITE_GLYPH_RUN_DESCRIPTION
		{
			public char16* localeName;
			public char16* string;
			public uint32 stringLength;
			public uint16* clusterMap;
			public uint32 textPosition;
		}
		[CRepr]
		public struct DWRITE_UNDERLINE
		{
			public float width;
			public float thickness;
			public float offset;
			public float runHeight;
			public DWRITE_READING_DIRECTION readingDirection;
			public DWRITE_FLOW_DIRECTION flowDirection;
			public char16* localeName;
			public DWRITE_MEASURING_MODE measuringMode;
		}
		[CRepr]
		public struct DWRITE_STRIKETHROUGH
		{
			public float width;
			public float thickness;
			public float offset;
			public DWRITE_READING_DIRECTION readingDirection;
			public DWRITE_FLOW_DIRECTION flowDirection;
			public char16* localeName;
			public DWRITE_MEASURING_MODE measuringMode;
		}
		[CRepr]
		public struct LineMetrics
		{
			public uint32 length;
			public uint32 trailingWhitespaceLength;
			public uint32 newlineLength;
			public float height;
			public float baseline;
			public IntBool isTrimmed;
		}
		[CRepr]
		public struct DWRITE_CLUSTER_METRICS
		{
			public float width;
			public uint16 length;
			public uint16 _bitfield;
		}
		[CRepr]
		public struct DWRITE_TEXT_METRICS
		{
			public float left;
			public float top;
			public float width;
			public float widthIncludingTrailingWhitespace;
			public float height;
			public float layoutWidth;
			public float layoutHeight;
			public uint32 maxBidiReorderingDepth;
			public uint32 lineCount;
		}
		[CRepr]
		public struct DWRITE_INLINE_OBJECT_METRICS
		{
			public float width;
			public float height;
			public float baseline;
			public IntBool supportsSideways;
		}
		[CRepr]
		public struct DWRITE_OVERHANG_METRICS
		{
			public float left;
			public float top;
			public float right;
			public float bottom;
		}
		[CRepr]
		public struct DWRITE_HIT_TEST_METRICS
		{
			public uint32 textPosition;
			public uint32 length;
			public float left;
			public float top;
			public float width;
			public float height;
			public uint32 bidiLevel;
			public IntBool isText;
			public IntBool isTrimmed;
		}
		[CRepr]
		public struct FontMetrics1 : FontMetrics
		{
			//public FontMetrics __AnonymousBase_DWrite_1_L627_C38;
			public int16 glyphBoxLeft;
			public int16 glyphBoxTop;
			public int16 glyphBoxRight;
			public int16 glyphBoxBottom;
			public int16 subscriptPositionX;
			public int16 subscriptPositionY;
			public int16 subscriptSizeX;
			public int16 subscriptSizeY;
			public int16 superscriptPositionX;
			public int16 superscriptPositionY;
			public int16 superscriptSizeX;
			public int16 superscriptSizeY;
			public IntBool hasTypographicMetrics;
		}
		[CRepr]
		public struct DWRITE_CARET_METRICS
		{
			public int16 slopeRise;
			public int16 slopeRun;
			public int16 offset;
		}
		[CRepr, Union]
		public struct DWRITE_PANOSE
		{
			public uint8[10] values;
			public uint8 familyKind;
			public _text_e__Struct text;
			public _script_e__Struct script;
			public _decorative_e__Struct decorative;
			public _symbol_e__Struct symbol;
			
			[CRepr]
			public struct _decorative_e__Struct
			{
				public uint8 familyKind;
				public uint8 decorativeClass;
				public uint8 weight;
				public uint8 aspect;
				public uint8 contrast;
				public uint8 serifVariant;
				public uint8 fill;
				public uint8 lining;
				public uint8 decorativeTopology;
				public uint8 characterRange;
			}
			[CRepr]
			public struct _text_e__Struct
			{
				public uint8 familyKind;
				public uint8 serifStyle;
				public uint8 weight;
				public uint8 proportion;
				public uint8 contrast;
				public uint8 strokeVariation;
				public uint8 armStyle;
				public uint8 letterform;
				public uint8 midline;
				public uint8 xHeight;
			}
			[CRepr]
			public struct _symbol_e__Struct
			{
				public uint8 familyKind;
				public uint8 symbolKind;
				public uint8 weight;
				public uint8 spacing;
				public uint8 aspectRatioAndContrast;
				public uint8 aspectRatio94;
				public uint8 aspectRatio119;
				public uint8 aspectRatio157;
				public uint8 aspectRatio163;
				public uint8 aspectRatio211;
			}
			[CRepr]
			public struct _script_e__Struct
			{
				public uint8 familyKind;
				public uint8 toolKind;
				public uint8 weight;
				public uint8 spacing;
				public uint8 aspectRatio;
				public uint8 contrast;
				public uint8 scriptTopology;
				public uint8 scriptForm;
				public uint8 finials;
				public uint8 xAscent;
			}
		}
		[CRepr]
		public struct DWRITE_UNICODE_RANGE
		{
			public uint32 first;
			public uint32 last;
		}
		[CRepr]
		public struct DWRITE_SCRIPT_PROPERTIES
		{
			public uint32 isoScriptCode;
			public uint32 isoScriptNumber;
			public uint32 clusterLookahead;
			public uint32 justificationCharacter;
			public uint32 _bitfield;
		}
		[CRepr]
		public struct DWRITE_JUSTIFICATION_OPPORTUNITY
		{
			public float expansionMinimum;
			public float expansionMaximum;
			public float compressionMaximum;
			public uint32 _bitfield;
		}
		[CRepr]
		public struct DWRITE_TEXT_METRICS1
		{
			public DWRITE_TEXT_METRICS Base;
			public float heightIncludingTrailingWhitespace;
		}
		[CRepr]
		public struct ColorGlyphRun
		{
			public GlyphRun glyphRun;
			public DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription;
			public float baselineOriginX;
			public float baselineOriginY;
			public ColorF runColor;
			public uint16 paletteIndex;
		}
		[CRepr]
		public struct FontProperty
		{
			public FontPropertyID propertyId;
			public char16* propertyValue;
			public char16* localeName;
		}
		[CRepr]
		public struct LineMetrics1 : LineMetrics
		{
			//public LineMetrics Base;
			public float leadingBefore;
			public float leadingAfter;
		}
		[CRepr]
		public struct LineSpacing
		{
			public LineSpacingMethod method;
			public float height;
			public float baseline;
			public float leadingBefore;
			public FontLineGapUsage fontLineGapUsage;
		}
		[CRepr]
		public struct ColorGlyphRun1 : ColorGlyphRun
		{
			//public ColorGlyphRun Base;
			public DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat;
			public DWRITE_MEASURING_MODE measuringMode;
		}
		[CRepr]
		public struct GlyphImageData
		{
			public void* imageData;
			public uint32 imageDataSize;
			public uint32 uniqueDataId;
			public uint32 pixelsPerEm;
			public SizeU pixelSize;
			public POINT horizontalLeftOrigin;
			public POINT horizontalRightOrigin;
			public POINT verticalTopOrigin;
			public POINT verticalBottomOrigin;
		}
		[CRepr]
		public struct FileFragment
		{
			public uint64 fileOffset;
			public uint64 fragmentSize;
		}
		[CRepr]
		public struct FontAxisValue
		{
			public FontAxisTag axisTag;
			public float value;
		}
		[CRepr]
		public struct FontAxisRange
		{
			public FontAxisTag axisTag;
			public float minValue;
			public float maxValue;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDWriteFontFileLoader : IUnknown
		{
			public const new Guid IID = .(0x727cad4e, 0xd6af, 0x4c9e, 0x8a, 0x08, 0xd6, 0x95, 0xb1, 0x1c, 0xaa, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateStreamFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out IDWriteFontFileStream* fontFileStream) mut => VT.CreateStreamFromKey(ref this, fontFileReferenceKey, fontFileReferenceKeySize, out fontFileStream);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFileLoader self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out IDWriteFontFileStream* fontFileStream) CreateStreamFromKey;
			}
		}
		[CRepr]
		public struct IDWriteLocalFontFileLoader : IDWriteFontFileLoader
		{
			public const new Guid IID = .(0xb2d9f3ec, 0xc9fe, 0x4a11, 0xa2, 0xec, 0xd8, 0x62, 0x08, 0xf7, 0xc0, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFilePathLengthFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out uint32 filePathLength) mut => VT.GetFilePathLengthFromKey(ref this, fontFileReferenceKey, fontFileReferenceKeySize, out filePathLength);
			public HResult GetFilePathFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, char16* filePath, uint32 filePathSize) mut => VT.GetFilePathFromKey(ref this, fontFileReferenceKey, fontFileReferenceKeySize, filePath, filePathSize);
			public HResult GetLastWriteTimeFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out FileTime lastWriteTime) mut => VT.GetLastWriteTimeFromKey(ref this, fontFileReferenceKey, fontFileReferenceKeySize, out lastWriteTime);

			[CRepr]
			public struct VTable : IDWriteFontFileLoader.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteLocalFontFileLoader self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out uint32 filePathLength) GetFilePathLengthFromKey;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteLocalFontFileLoader self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, char16* filePath, uint32 filePathSize) GetFilePathFromKey;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteLocalFontFileLoader self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out FileTime lastWriteTime) GetLastWriteTimeFromKey;
			}
		}
		[CRepr]
		public struct IDWriteFontFileStream : IUnknown
		{
			public const new Guid IID = .(0x6d4865fe, 0x0ab8, 0x4d91, 0x8f, 0x62, 0x5d, 0xd6, 0xbe, 0x34, 0xa3, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ReadFileFragment(void** fragmentStart, uint64 fileOffset, uint64 fragmentSize, void** fragmentContext) mut => VT.ReadFileFragment(ref this, fragmentStart, fileOffset, fragmentSize, fragmentContext);
			public void ReleaseFileFragment(void* fragmentContext) mut => VT.ReleaseFileFragment(ref this, fragmentContext);
			public HResult GetFileSize(out uint64 fileSize) mut => VT._GetFileSize(ref this, out fileSize);
			public HResult GetLastWriteTime(out uint64 lastWriteTime) mut => VT.GetLastWriteTime(ref this, out lastWriteTime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFileStream self, void** fragmentStart, uint64 fileOffset, uint64 fragmentSize, void** fragmentContext) ReadFileFragment;
				public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFileStream self, void* fragmentContext) ReleaseFileFragment;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFileStream self, out uint64 fileSize) _GetFileSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFileStream self, out uint64 lastWriteTime) GetLastWriteTime;
			}
		}
		[CRepr]
		public struct IDWriteFontFile : IUnknown
		{
			public const new Guid IID = .(0x739d886a, 0xcef5, 0x47dc, 0x87, 0x69, 0x1a, 0x8b, 0x41, 0xbe, 0xbb, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetReferenceKey(void** fontFileReferenceKey, out uint32 fontFileReferenceKeySize) mut => VT.GetReferenceKey(ref this, fontFileReferenceKey, out fontFileReferenceKeySize);
			public HResult GetLoader(out IDWriteFontFileLoader* fontFileLoader) mut => VT.GetLoader(ref this, out fontFileLoader);
			public HResult Analyze(out IntBool isSupportedFontType, out FontFileType fontFileType, FontFaceType* fontFaceType, out uint32 numberOfFaces) mut => VT.Analyze(ref this, out isSupportedFontType, out fontFileType, fontFaceType, out numberOfFaces);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFile self, void** fontFileReferenceKey, out uint32 fontFileReferenceKeySize) GetReferenceKey;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFile self, out IDWriteFontFileLoader* fontFileLoader) GetLoader;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFile self, out IntBool isSupportedFontType, out FontFileType fontFileType, FontFaceType* fontFaceType, out uint32 numberOfFaces) Analyze;
			}
		}
		[CRepr]
		public struct IDWriteRenderingParams : IUnknown
		{
			public const new Guid IID = .(0x2f0da53a, 0x2add, 0x47cd, 0x82, 0xee, 0xd9, 0xec, 0x34, 0x68, 0x8e, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public float GetGamma() mut => VT.GetGamma(ref this);
			public float GetEnhancedContrast() mut => VT.GetEnhancedContrast(ref this);
			public float GetClearTypeLevel() mut => VT.GetClearTypeLevel(ref this);
			public DWRITE_PIXEL_GEOMETRY GetPixelGeometry() mut => VT.GetPixelGeometry(ref this);
			public DWRITE_RENDERING_MODE GetRenderingMode() mut => VT.GetRenderingMode(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] float(ref IDWriteRenderingParams self) GetGamma;
				public new function [CallingConvention(.Stdcall)] float(ref IDWriteRenderingParams self) GetEnhancedContrast;
				public new function [CallingConvention(.Stdcall)] float(ref IDWriteRenderingParams self) GetClearTypeLevel;
				public new function [CallingConvention(.Stdcall)] DWRITE_PIXEL_GEOMETRY(ref IDWriteRenderingParams self) GetPixelGeometry;
				public new function [CallingConvention(.Stdcall)] DWRITE_RENDERING_MODE(ref IDWriteRenderingParams self) GetRenderingMode;
			}
		}
		[CRepr]
		public struct IDWriteFontFace : IUnknown
		{
			public const new Guid IID = .(0x5f49804d, 0x7024, 0x4d43, 0xbf, 0xa9, 0xd2, 0x59, 0x84, 0xf5, 0x38, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public FontFaceType ComGetType() mut => VT.ComGetType(ref this);
			public HResult GetFiles(out uint32 numberOfFiles, IDWriteFontFile** fontFiles) mut => VT.GetFiles(ref this, out numberOfFiles, fontFiles);
			public uint32 Index mut => VT.GetIndex(ref this);
			public FontSimulations Simulations mut => VT.GetSimulations(ref this);
			public IntBool IsSymbolFont mut => VT.IsSymbolFont(ref this);
			public FontMetrics Metrics mut => VT.GetMetrics(ref this, ..var fontFaceMetrics);
			public uint16 GlyphCount mut => VT.GetGlyphCount(ref this);
			public HResult GetDesignGlyphMetrics(uint16* glyphIndices, uint32 glyphCount, GlyphMetrics* glyphMetrics, IntBool isSideways = false) mut => VT.GetDesignGlyphMetrics(ref this, glyphIndices, glyphCount, glyphMetrics, isSideways);
			public HResult GetGlyphIndices(uint32* codePoints, uint32 codePointCount, uint16* glyphIndices) mut => VT.GetGlyphIndices(ref this, codePoints, codePointCount, glyphIndices);
			public HResult TryGetFontTable(uint32 openTypeTableTag, void** tableData, out uint32 tableSize, void** tableContext, out IntBool exists) mut => VT.TryGetFontTable(ref this, openTypeTableTag, tableData, out tableSize, tableContext, out exists);
			public void ReleaseFontTable(void* tableContext) mut => VT.ReleaseFontTable(ref this, tableContext);
			public HResult GetGlyphRunOutline(float emSize, uint16* glyphIndices, float* glyphAdvances, GlyphOffset* glyphOffsets, uint32 glyphCount, IntBool isSideways, IntBool isRightToLeft, ID2D1SimplifiedGeometrySink* geometrySink) mut => VT.GetGlyphRunOutline(ref this, emSize, glyphIndices, glyphAdvances, glyphOffsets, glyphCount, isSideways, isRightToLeft, geometrySink);
			public HResult GetRecommendedRenderingMode(float emSize, float pixelsPerDip, DWRITE_MEASURING_MODE measuringMode, ref IDWriteRenderingParams renderingParams, out DWRITE_RENDERING_MODE renderingMode) mut => VT.GetRecommendedRenderingMode(ref this, emSize, pixelsPerDip, measuringMode, ref renderingParams, out renderingMode);
			public HResult GetGdiCompatibleMetrics(float emSize, float pixelsPerDip, DWriteMatrix* transform, out FontMetrics fontFaceMetrics) mut => VT.GetGdiCompatibleMetrics(ref this, emSize, pixelsPerDip, transform, out fontFaceMetrics);
			public HResult GetGdiCompatibleGlyphMetrics(float emSize, float pixelsPerDip, DWriteMatrix* transform, IntBool useGdiNatural, uint16* glyphIndices, uint32 glyphCount, GlyphMetrics* glyphMetrics, IntBool isSideways) mut => VT.GetGdiCompatibleGlyphMetrics(ref this, emSize, pixelsPerDip, transform, useGdiNatural, glyphIndices, glyphCount, glyphMetrics, isSideways);


			public HResult GetDesignGlyphMetrics(Span<uint16> glyphIndices, Span<GlyphMetrics> glyphMetrics, IntBool isSideways = false) mut => VT.GetDesignGlyphMetrics(ref this, glyphIndices.Ptr, (.)Math.Min(glyphIndices.Length, glyphMetrics.Length), glyphMetrics.Ptr, isSideways);
			public HResult GetGlyphIndices(Span<uint32> codePoints, Span<uint16> glyphIndices) mut => VT.GetGlyphIndices(ref this, codePoints.Ptr, (.)Math.Min(codePoints.Length, glyphIndices.Length), glyphIndices.Ptr);


			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] FontFaceType(ref IDWriteFontFace self) ComGetType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace self, out uint32 numberOfFiles, IDWriteFontFile** fontFiles) GetFiles;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontFace self) GetIndex;
				public new function [CallingConvention(.Stdcall)] FontSimulations(ref IDWriteFontFace self) GetSimulations;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFontFace self) IsSymbolFont;
				public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFace self, out FontMetrics fontFaceMetrics) GetMetrics;
				public new function [CallingConvention(.Stdcall)] uint16(ref IDWriteFontFace self) GetGlyphCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace self, uint16* glyphIndices, uint32 glyphCount, GlyphMetrics* glyphMetrics, IntBool isSideways) GetDesignGlyphMetrics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace self, uint32* codePoints, uint32 codePointCount, uint16* glyphIndices) GetGlyphIndices;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace self, uint32 openTypeTableTag, void** tableData, out uint32 tableSize, void** tableContext, out IntBool exists) TryGetFontTable;
				public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFace self, void* tableContext) ReleaseFontTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace self, float emSize, uint16* glyphIndices, float* glyphAdvances, GlyphOffset* glyphOffsets, uint32 glyphCount, IntBool isSideways, IntBool isRightToLeft, ID2D1SimplifiedGeometrySink* geometrySink) GetGlyphRunOutline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace self, float emSize, float pixelsPerDip, DWRITE_MEASURING_MODE measuringMode, ref IDWriteRenderingParams renderingParams, out DWRITE_RENDERING_MODE renderingMode) GetRecommendedRenderingMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace self, float emSize, float pixelsPerDip, DWriteMatrix* transform, out FontMetrics fontFaceMetrics) GetGdiCompatibleMetrics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace self, float emSize, float pixelsPerDip, DWriteMatrix* transform, IntBool useGdiNatural, uint16* glyphIndices, uint32 glyphCount, GlyphMetrics* glyphMetrics, IntBool isSideways) GetGdiCompatibleGlyphMetrics;
			}
		}
		[CRepr]
		public struct IDWriteFontCollectionLoader : IUnknown
		{
			public const new Guid IID = .(0xcca920e4, 0x52f0, 0x492b, 0xbf, 0xa8, 0x29, 0xc7, 0x2e, 0xe0, 0xa4, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateEnumeratorFromKey(ref IDWriteFactory factory, void* collectionKey, uint32 collectionKeySize, out IDWriteFontFileEnumerator* fontFileEnumerator) mut => VT.CreateEnumeratorFromKey(ref this, ref factory, collectionKey, collectionKeySize, out fontFileEnumerator);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontCollectionLoader self, ref IDWriteFactory factory, void* collectionKey, uint32 collectionKeySize, out IDWriteFontFileEnumerator* fontFileEnumerator) CreateEnumeratorFromKey;
			}
		}
		[CRepr]
		public struct IDWriteFontFileEnumerator : IUnknown
		{
			public const new Guid IID = .(0x72755049, 0x5ff7, 0x435d, 0x83, 0x48, 0x4b, 0xe9, 0x7c, 0xfa, 0x6c, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult MoveNext(out IntBool hasCurrentFile) mut => VT.MoveNext(ref this, out hasCurrentFile);
			public HResult GetCurrentFontFile(out IDWriteFontFile* fontFile) mut => VT.GetCurrentFontFile(ref this, out fontFile);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFileEnumerator self, out IntBool hasCurrentFile) MoveNext;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFileEnumerator self, out IDWriteFontFile* fontFile) GetCurrentFontFile;
			}
		}
		[CRepr]
		public struct IDWriteLocalizedStrings : IUnknown
		{
			public const new Guid IID = .(0x08256209, 0x099a, 0x4b34, 0xb8, 0x6d, 0xc2, 0x2b, 0x11, 0x0e, 0x77, 0x71);
			
			public new VTable* VT { get => (.)vt; }

			public uint32 Count mut => GetCount();

			public uint32 GetCount() mut => VT.GetCount(ref this);
			public HResult FindLocaleName(char16* localeName, out uint32 index, out IntBool exists) mut => VT.FindLocaleName(ref this, localeName, out index, out exists);
			public HResult GetLocaleNameLength(uint32 index, out uint32 length) mut => VT.GetLocaleNameLength(ref this, index, out length);
			public HResult GetLocaleName(uint32 index, char16* localeName, uint32 size) mut => VT.GetLocaleName(ref this, index, localeName, size);
			public HResult GetStringLength(uint32 index, out uint32 length) mut => VT.GetStringLength(ref this, index, out length);
			public HResult GetString(uint32 index, char16* stringBuffer, uint32 size) mut => VT.GetString(ref this, index, stringBuffer, size);

			public HResult GetString(uint32 index, String buffer) mut {
				var hr = GetStringLength(index, var length);
				if(hr != .OK) return hr;

				char16[] chars = scope .[length + 1];

				hr = GetString(index, chars.Ptr, (.)chars.Count);
				if(hr != .OK) return hr;

				buffer.Append(chars);
				return .OK;
			}

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteLocalizedStrings self) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteLocalizedStrings self, char16* localeName, out uint32 index, out IntBool exists) FindLocaleName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteLocalizedStrings self, uint32 index, out uint32 length) GetLocaleNameLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteLocalizedStrings self, uint32 index, char16* localeName, uint32 size) GetLocaleName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteLocalizedStrings self, uint32 index, out uint32 length) GetStringLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteLocalizedStrings self, uint32 index, char16* stringBuffer, uint32 size) GetString;
			}
		}
		[CRepr]
		public struct IDWriteFontCollection : IUnknown
		{
			public const new Guid IID = .(0xa84cee02, 0x3eea, 0x4eee, 0xa8, 0x27, 0x87, 0xc1, 0xa0, 0x2a, 0x0f, 0xcc);
			
			public new VTable* VT { get => (.)vt; }

			public uint32 FamilyCount mut => GetFontFamilyCount();

			public uint32 GetFontFamilyCount() mut => VT.GetFontFamilyCount(ref this);
			public HResult GetFontFamily(uint32 index, out IDWriteFontFamily* fontFamily) mut => VT.GetFontFamily(ref this, index, out fontFamily);
			public HResult FindFamilyName(StringView familyName, out uint32 index, out IntBool exists) mut => VT.FindFamilyName(ref this, familyName.ToScopedNativeWChar!(), out index, out exists);
			public HResult GetFontFromFontFace(ref IDWriteFontFace fontFace, out IDWriteFont* font) mut => VT.GetFontFromFontFace(ref this, ref fontFace, out font);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontCollection self) GetFontFamilyCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontCollection self, uint32 index, out IDWriteFontFamily* fontFamily) GetFontFamily;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontCollection self, char16* familyName, out uint32 index, out IntBool exists) FindFamilyName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontCollection self, ref IDWriteFontFace fontFace, out IDWriteFont* font) GetFontFromFontFace;
			}
		}
		[CRepr]
		public struct IDWriteFontList : IUnknown
		{
			public const new Guid IID = .(0x1a0d8438, 0x1d97, 0x4ec1, 0xae, 0xf9, 0xa2, 0xfb, 0x86, 0xed, 0x6a, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFontCollection(out IDWriteFontCollection* fontCollection) mut => VT.GetFontCollection(ref this, out fontCollection);
			public uint32 GetFontCount() mut => VT.GetFontCount(ref this);
			public HResult GetFont(uint32 index, out IDWriteFont* font) mut => VT.GetFont(ref this, index, out font);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontList self, out IDWriteFontCollection* fontCollection) GetFontCollection;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontList self) GetFontCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontList self, uint32 index, out IDWriteFont* font) GetFont;
			}
		}
		[CRepr]
		public struct IDWriteFontFamily : IDWriteFontList
		{
			public const new Guid IID = .(0xda20d8ef, 0x812a, 0x4c43, 0x98, 0x02, 0x62, 0xec, 0x4a, 0xbd, 0x7a, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFamilyNames(out IDWriteLocalizedStrings* names) mut => VT.GetFamilyNames(ref this, out names);
			public HResult GetFirstMatchingFont(FontWeight weight, FontStretch stretch, FontStyle style, out IDWriteFont* matchingFont) mut => VT.GetFirstMatchingFont(ref this, weight, stretch, style, out matchingFont);
			public HResult GetMatchingFonts(FontWeight weight, FontStretch stretch, FontStyle style, out IDWriteFontList* matchingFonts) mut => VT.GetMatchingFonts(ref this, weight, stretch, style, out matchingFonts);

			[CRepr]
			public struct VTable : IDWriteFontList.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFamily self, out IDWriteLocalizedStrings* names) GetFamilyNames;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFamily self, FontWeight weight, FontStretch stretch, FontStyle style, out IDWriteFont* matchingFont) GetFirstMatchingFont;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFamily self, FontWeight weight, FontStretch stretch, FontStyle style, out IDWriteFontList* matchingFonts) GetMatchingFonts;
			}
		}
		[CRepr]
		public struct IDWriteFont : IUnknown
		{
			public const new Guid IID = .(0xacd16696, 0x8c14, 0x4f5d, 0x87, 0x7e, 0xfe, 0x3f, 0xc1, 0xd3, 0x27, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFontFamily(out IDWriteFontFamily* fontFamily) mut => VT.GetFontFamily(ref this, out fontFamily);
			public FontWeight GetWeight() mut => VT.GetWeight(ref this);
			public FontStretch GetStretch() mut => VT.GetStretch(ref this);
			public FontStyle GetStyle() mut => VT.GetStyle(ref this);
			public IntBool IsSymbolFont() mut => VT.IsSymbolFont(ref this);
			public HResult GetFaceNames(out IDWriteLocalizedStrings* names) mut => VT.GetFaceNames(ref this, out names);
			public HResult GetInformationalStrings(DWRITE_INFORMATIONAL_STRING_ID informationalStringID, IDWriteLocalizedStrings** informationalStrings, out IntBool exists) mut => VT.GetInformationalStrings(ref this, informationalStringID, informationalStrings, out exists);
			public FontSimulations GetSimulations() mut => VT.GetSimulations(ref this);
			public void GetMetrics(out FontMetrics fontMetrics) mut => VT.GetMetrics(ref this, out fontMetrics);
			public HResult HasCharacter(uint32 unicodeValue, out IntBool exists) mut => VT.HasCharacter(ref this, unicodeValue, out exists);
			public HResult CreateFontFace(out IDWriteFontFace* fontFace) mut => VT.CreateFontFace(ref this, out fontFace);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFont self, out IDWriteFontFamily* fontFamily) GetFontFamily;
				public new function [CallingConvention(.Stdcall)] FontWeight(ref IDWriteFont self) GetWeight;
				public new function [CallingConvention(.Stdcall)] FontStretch(ref IDWriteFont self) GetStretch;
				public new function [CallingConvention(.Stdcall)] FontStyle(ref IDWriteFont self) GetStyle;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFont self) IsSymbolFont;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFont self, out IDWriteLocalizedStrings* names) GetFaceNames;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFont self, DWRITE_INFORMATIONAL_STRING_ID informationalStringID, IDWriteLocalizedStrings** informationalStrings, out IntBool exists) GetInformationalStrings;
				public new function [CallingConvention(.Stdcall)] FontSimulations(ref IDWriteFont self) GetSimulations;
				public new function [CallingConvention(.Stdcall)] void(ref IDWriteFont self, out FontMetrics fontMetrics) GetMetrics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFont self, uint32 unicodeValue, out IntBool exists) HasCharacter;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFont self, out IDWriteFontFace* fontFace) CreateFontFace;
			}
		}
		[CRepr]
		public struct IDWriteTextFormat : IUnknown
		{
			public const new Guid IID = .(0x9c906818, 0x31d7, 0x4fd3, 0xa1, 0x51, 0x7c, 0x5e, 0x22, 0x5d, 0xb5, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetTextAlignment(TextAlignment textAlignment) mut => VT.SetTextAlignment(ref this, textAlignment);
			public HResult SetParagraphAlignment(ParagraphAlignment paragraphAlignment) mut => VT.SetParagraphAlignment(ref this, paragraphAlignment);
			public HResult SetWordWrapping(WordWrapping wordWrapping) mut => VT.SetWordWrapping(ref this, wordWrapping);
			public HResult SetReadingDirection(DWRITE_READING_DIRECTION readingDirection) mut => VT.SetReadingDirection(ref this, readingDirection);
			public HResult SetFlowDirection(DWRITE_FLOW_DIRECTION flowDirection) mut => VT.SetFlowDirection(ref this, flowDirection);
			public HResult SetIncrementalTabStop(float incrementalTabStop) mut => VT.SetIncrementalTabStop(ref this, incrementalTabStop);
			public HResult SetTrimming(in DWRITE_TRIMMING trimmingOptions, IDWriteInlineObject* trimmingSign) mut => VT.SetTrimming(ref this, trimmingOptions, trimmingSign);
			public HResult SetLineSpacing(LineSpacingMethod lineSpacingMethod, float lineSpacing, float baseline) mut => VT.SetLineSpacing(ref this, lineSpacingMethod, lineSpacing, baseline);
			public TextAlignment GetTextAlignment() mut => VT.GetTextAlignment(ref this);
			public ParagraphAlignment GetParagraphAlignment() mut => VT.GetParagraphAlignment(ref this);
			public WordWrapping GetWordWrapping() mut => VT.GetWordWrapping(ref this);
			public DWRITE_READING_DIRECTION GetReadingDirection() mut => VT.GetReadingDirection(ref this);
			public DWRITE_FLOW_DIRECTION GetFlowDirection() mut => VT.GetFlowDirection(ref this);
			public float GetIncrementalTabStop() mut => VT.GetIncrementalTabStop(ref this);
			public HResult GetTrimming(out DWRITE_TRIMMING trimmingOptions, out IDWriteInlineObject* trimmingSign) mut => VT.GetTrimming(ref this, out trimmingOptions, out trimmingSign);
			public HResult GetLineSpacing(out LineSpacingMethod lineSpacingMethod, out float lineSpacing, out float baseline) mut => VT.GetLineSpacing(ref this, out lineSpacingMethod, out lineSpacing, out baseline);
			public HResult GetFontCollection(out IDWriteFontCollection* fontCollection) mut => VT.GetFontCollection(ref this, out fontCollection);
			public uint32 GetFontFamilyNameLength() mut => VT.GetFontFamilyNameLength(ref this);
			public HResult GetFontFamilyName(char16* fontFamilyName, uint32 nameSize) mut => VT.GetFontFamilyName(ref this, fontFamilyName, nameSize);
			public FontWeight GetFontWeight() mut => VT.GetFontWeight(ref this);
			public FontStyle GetFontStyle() mut => VT.GetFontStyle(ref this);
			public FontStretch GetFontStretch() mut => VT.GetFontStretch(ref this);
			public float GetFontSize() mut => VT.GetFontSize(ref this);
			public uint32 GetLocaleNameLength() mut => VT.GetLocaleNameLength(ref this);
			public HResult GetLocaleName(char16* localeName, uint32 nameSize) mut => VT.GetLocaleName(ref this, localeName, nameSize);

			public HResult GetFontFamilyName(String buffer) mut {
				var length = GetFontFamilyNameLength();

				char16[] chars = scope .[length + 1];

				var hr = GetFontFamilyName(chars.Ptr, (.)chars.Count);
				if(hr != .OK) return hr;

				buffer.Append(chars);
				return .OK;
			}

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat self, TextAlignment textAlignment) SetTextAlignment;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat self, ParagraphAlignment paragraphAlignment) SetParagraphAlignment;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat self, WordWrapping wordWrapping) SetWordWrapping;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat self, DWRITE_READING_DIRECTION readingDirection) SetReadingDirection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat self, DWRITE_FLOW_DIRECTION flowDirection) SetFlowDirection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat self, float incrementalTabStop) SetIncrementalTabStop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat self, in DWRITE_TRIMMING trimmingOptions, IDWriteInlineObject* trimmingSign) SetTrimming;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat self, LineSpacingMethod lineSpacingMethod, float lineSpacing, float baseline) SetLineSpacing;
				public new function [CallingConvention(.Stdcall)] TextAlignment(ref IDWriteTextFormat self) GetTextAlignment;
				public new function [CallingConvention(.Stdcall)] ParagraphAlignment(ref IDWriteTextFormat self) GetParagraphAlignment;
				public new function [CallingConvention(.Stdcall)] WordWrapping(ref IDWriteTextFormat self) GetWordWrapping;
				public new function [CallingConvention(.Stdcall)] DWRITE_READING_DIRECTION(ref IDWriteTextFormat self) GetReadingDirection;
				public new function [CallingConvention(.Stdcall)] DWRITE_FLOW_DIRECTION(ref IDWriteTextFormat self) GetFlowDirection;
				public new function [CallingConvention(.Stdcall)] float(ref IDWriteTextFormat self) GetIncrementalTabStop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat self, out DWRITE_TRIMMING trimmingOptions, out IDWriteInlineObject* trimmingSign) GetTrimming;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat self, out LineSpacingMethod lineSpacingMethod, out float lineSpacing, out float baseline) GetLineSpacing;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat self, out IDWriteFontCollection* fontCollection) GetFontCollection;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteTextFormat self) GetFontFamilyNameLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat self, char16* fontFamilyName, uint32 nameSize) GetFontFamilyName;
				public new function [CallingConvention(.Stdcall)] FontWeight(ref IDWriteTextFormat self) GetFontWeight;
				public new function [CallingConvention(.Stdcall)] FontStyle(ref IDWriteTextFormat self) GetFontStyle;
				public new function [CallingConvention(.Stdcall)] FontStretch(ref IDWriteTextFormat self) GetFontStretch;
				public new function [CallingConvention(.Stdcall)] float(ref IDWriteTextFormat self) GetFontSize;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteTextFormat self) GetLocaleNameLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat self, char16* localeName, uint32 nameSize) GetLocaleName;
			}
		}
		[CRepr]
		public struct IDWriteTypography : IUnknown
		{
			public const new Guid IID = .(0x55f1112b, 0x1dc2, 0x4b3c, 0x95, 0x41, 0xf4, 0x68, 0x94, 0xed, 0x85, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddFontFeature(FontFeature fontFeature) mut => VT.AddFontFeature(ref this, fontFeature);
			public uint32 GetFontFeatureCount() mut => VT.GetFontFeatureCount(ref this);
			public HResult GetFontFeature(uint32 fontFeatureIndex, out FontFeature fontFeature) mut => VT.GetFontFeature(ref this, fontFeatureIndex, out fontFeature);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTypography self, FontFeature fontFeature) AddFontFeature;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteTypography self) GetFontFeatureCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTypography self, uint32 fontFeatureIndex, out FontFeature fontFeature) GetFontFeature;
			}
		}
		[CRepr]
		public struct IDWriteNumberSubstitution : IUnknown
		{
			public const new Guid IID = .(0x14885cc9, 0xbab0, 0x4f90, 0xb6, 0xed, 0x5c, 0x36, 0x6a, 0x2c, 0xd0, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable {}
		}
		[CRepr]
		public struct IDWriteTextAnalysisSource : IUnknown
		{
			public const new Guid IID = .(0x688e1a58, 0x5094, 0x47c8, 0xad, 0xc8, 0xfb, 0xce, 0xa6, 0x0a, 0xe9, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetTextAtPosition(uint32 textPosition, out uint16* textString, out uint32 textLength) mut => VT.GetTextAtPosition(ref this, textPosition, out textString, out textLength);
			public HResult GetTextBeforePosition(uint32 textPosition, out uint16* textString, out uint32 textLength) mut => VT.GetTextBeforePosition(ref this, textPosition, out textString, out textLength);
			public DWRITE_READING_DIRECTION GetParagraphReadingDirection() mut => VT.GetParagraphReadingDirection(ref this);
			public HResult GetLocaleName(uint32 textPosition, out uint32 textLength, out uint16* localeName) mut => VT.GetLocaleName(ref this, textPosition, out textLength, out localeName);
			public HResult GetNumberSubstitution(uint32 textPosition, out uint32 textLength, out IDWriteNumberSubstitution* numberSubstitution) mut => VT.GetNumberSubstitution(ref this, textPosition, out textLength, out numberSubstitution);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalysisSource self, uint32 textPosition, out uint16* textString, out uint32 textLength) GetTextAtPosition;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalysisSource self, uint32 textPosition, out uint16* textString, out uint32 textLength) GetTextBeforePosition;
				public new function [CallingConvention(.Stdcall)] DWRITE_READING_DIRECTION(ref IDWriteTextAnalysisSource self) GetParagraphReadingDirection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalysisSource self, uint32 textPosition, out uint32 textLength, out uint16* localeName) GetLocaleName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalysisSource self, uint32 textPosition, out uint32 textLength, out IDWriteNumberSubstitution* numberSubstitution) GetNumberSubstitution;
			}
		}
		[CRepr]
		public struct IDWriteTextAnalysisSink : IUnknown
		{
			public const new Guid IID = .(0x5810cd44, 0x0ca0, 0x4701, 0xb3, 0xfa, 0xbe, 0xc5, 0x18, 0x2a, 0xe4, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetScriptAnalysis(uint32 textPosition, uint32 textLength, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis) mut => VT.SetScriptAnalysis(ref this, textPosition, textLength, scriptAnalysis);
			public HResult SetLineBreakpoints(uint32 textPosition, uint32 textLength, DWRITE_LINE_BREAKPOINT* lineBreakpoints) mut => VT.SetLineBreakpoints(ref this, textPosition, textLength, lineBreakpoints);
			public HResult SetBidiLevel(uint32 textPosition, uint32 textLength, uint8 explicitLevel, uint8 resolvedLevel) mut => VT.SetBidiLevel(ref this, textPosition, textLength, explicitLevel, resolvedLevel);
			public HResult SetNumberSubstitution(uint32 textPosition, uint32 textLength, ref IDWriteNumberSubstitution numberSubstitution) mut => VT.SetNumberSubstitution(ref this, textPosition, textLength, ref numberSubstitution);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalysisSink self, uint32 textPosition, uint32 textLength, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis) SetScriptAnalysis;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalysisSink self, uint32 textPosition, uint32 textLength, DWRITE_LINE_BREAKPOINT* lineBreakpoints) SetLineBreakpoints;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalysisSink self, uint32 textPosition, uint32 textLength, uint8 explicitLevel, uint8 resolvedLevel) SetBidiLevel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalysisSink self, uint32 textPosition, uint32 textLength, ref IDWriteNumberSubstitution numberSubstitution) SetNumberSubstitution;
			}
		}
		[CRepr]
		public struct IDWriteTextAnalyzer : IUnknown
		{
			public const new Guid IID = .(0xb7e6163e, 0x7f46, 0x43b4, 0x84, 0xb3, 0xe4, 0xe6, 0x24, 0x9c, 0x36, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AnalyzeScript(ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) mut => VT.AnalyzeScript(ref this, ref analysisSource, textPosition, textLength, ref analysisSink);
			public HResult AnalyzeBidi(ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) mut => VT.AnalyzeBidi(ref this, ref analysisSource, textPosition, textLength, ref analysisSink);
			public HResult AnalyzeNumberSubstitution(ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) mut => VT.AnalyzeNumberSubstitution(ref this, ref analysisSource, textPosition, textLength, ref analysisSink);
			public HResult AnalyzeLineBreakpoints(ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) mut => VT.AnalyzeLineBreakpoints(ref this, ref analysisSource, textPosition, textLength, ref analysisSink);
			public HResult GetGlyphs(char16* textString, uint32 textLength, ref IDWriteFontFace fontFace, IntBool isSideways, IntBool isRightToLeft, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis, char16* localeName, IDWriteNumberSubstitution* numberSubstitution, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, uint32 maxGlyphCount, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, out uint32 actualGlyphCount) mut => VT.GetGlyphs(ref this, textString, textLength, ref fontFace, isSideways, isRightToLeft, scriptAnalysis, localeName, numberSubstitution, features, featureRangeLengths, featureRanges, maxGlyphCount, clusterMap, textProps, glyphIndices, glyphProps, out actualGlyphCount);
			public HResult GetGlyphPlacements(char16* textString, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint32 textLength, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32 glyphCount, ref IDWriteFontFace fontFace, float fontEmSize, IntBool isSideways, IntBool isRightToLeft, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis, char16* localeName, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, float* glyphAdvances, GlyphOffset* glyphOffsets) mut => VT.GetGlyphPlacements(ref this, textString, clusterMap, textProps, textLength, glyphIndices, glyphProps, glyphCount, ref fontFace, fontEmSize, isSideways, isRightToLeft, scriptAnalysis, localeName, features, featureRangeLengths, featureRanges, glyphAdvances, glyphOffsets);
			public HResult GetGdiCompatibleGlyphPlacements(char16* textString, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint32 textLength, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32 glyphCount, ref IDWriteFontFace fontFace, float fontEmSize, float pixelsPerDip, DWriteMatrix* transform, IntBool useGdiNatural, IntBool isSideways, IntBool isRightToLeft, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis, char16* localeName, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, float* glyphAdvances, GlyphOffset* glyphOffsets) mut => VT.GetGdiCompatibleGlyphPlacements(ref this, textString, clusterMap, textProps, textLength, glyphIndices, glyphProps, glyphCount, ref fontFace, fontEmSize, pixelsPerDip, transform, useGdiNatural, isSideways, isRightToLeft, scriptAnalysis, localeName, features, featureRangeLengths, featureRanges, glyphAdvances, glyphOffsets);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer self, ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) AnalyzeScript;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer self, ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) AnalyzeBidi;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer self, ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) AnalyzeNumberSubstitution;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer self, ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) AnalyzeLineBreakpoints;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer self, char16* textString, uint32 textLength, ref IDWriteFontFace fontFace, IntBool isSideways, IntBool isRightToLeft, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis, char16* localeName, IDWriteNumberSubstitution* numberSubstitution, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, uint32 maxGlyphCount, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, out uint32 actualGlyphCount) GetGlyphs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer self, char16* textString, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint32 textLength, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32 glyphCount, ref IDWriteFontFace fontFace, float fontEmSize, IntBool isSideways, IntBool isRightToLeft, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis, char16* localeName, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, float* glyphAdvances, GlyphOffset* glyphOffsets) GetGlyphPlacements;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer self, char16* textString, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint32 textLength, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32 glyphCount, ref IDWriteFontFace fontFace, float fontEmSize, float pixelsPerDip, DWriteMatrix* transform, IntBool useGdiNatural, IntBool isSideways, IntBool isRightToLeft, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis, char16* localeName, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, float* glyphAdvances, GlyphOffset* glyphOffsets) GetGdiCompatibleGlyphPlacements;
			}
		}
		[CRepr]
		public struct IDWriteInlineObject : IUnknown
		{
			public const new Guid IID = .(0x8339fde3, 0x106f, 0x47ab, 0x83, 0x73, 0x1c, 0x62, 0x95, 0xeb, 0x10, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Draw(void* clientDrawingContext, ref IDWriteTextRenderer renderer, float originX, float originY, IntBool isSideways, IntBool isRightToLeft, IUnknown* clientDrawingEffect) mut => VT.Draw(ref this, clientDrawingContext, ref renderer, originX, originY, isSideways, isRightToLeft, clientDrawingEffect);
			public HResult GetMetrics(out DWRITE_INLINE_OBJECT_METRICS metrics) mut => VT.GetMetrics(ref this, out metrics);
			public HResult GetOverhangMetrics(out DWRITE_OVERHANG_METRICS overhangs) mut => VT.GetOverhangMetrics(ref this, out overhangs);
			public HResult GetBreakConditions(out DWRITE_BREAK_CONDITION breakConditionBefore, out DWRITE_BREAK_CONDITION breakConditionAfter) mut => VT.GetBreakConditions(ref this, out breakConditionBefore, out breakConditionAfter);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteInlineObject self, void* clientDrawingContext, ref IDWriteTextRenderer renderer, float originX, float originY, IntBool isSideways, IntBool isRightToLeft, IUnknown* clientDrawingEffect) Draw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteInlineObject self, out DWRITE_INLINE_OBJECT_METRICS metrics) GetMetrics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteInlineObject self, out DWRITE_OVERHANG_METRICS overhangs) GetOverhangMetrics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteInlineObject self, out DWRITE_BREAK_CONDITION breakConditionBefore, out DWRITE_BREAK_CONDITION breakConditionAfter) GetBreakConditions;
			}
		}
		[CRepr]
		public struct IDWritePixelSnapping : IUnknown
		{
			public const new Guid IID = .(0xeaf3a2da, 0xecf4, 0x4d24, 0xb6, 0x44, 0xb3, 0x4f, 0x68, 0x42, 0x02, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult IsPixelSnappingDisabled(void* clientDrawingContext, out IntBool isDisabled) mut => VT.IsPixelSnappingDisabled(ref this, clientDrawingContext, out isDisabled);
			public HResult GetCurrentTransform(void* clientDrawingContext, out DWriteMatrix transform) mut => VT.GetCurrentTransform(ref this, clientDrawingContext, out transform);
			public HResult GetPixelsPerDip(void* clientDrawingContext, out float pixelsPerDip) mut => VT.GetPixelsPerDip(ref this, clientDrawingContext, out pixelsPerDip);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWritePixelSnapping self, void* clientDrawingContext, out IntBool isDisabled) IsPixelSnappingDisabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWritePixelSnapping self, void* clientDrawingContext, out DWriteMatrix transform) GetCurrentTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWritePixelSnapping self, void* clientDrawingContext, out float pixelsPerDip) GetPixelsPerDip;
			}
		}
		[CRepr]
		public struct IDWriteTextRenderer : IDWritePixelSnapping
		{
			public const new Guid IID = .(0xef8a8135, 0x5cc6, 0x45fe, 0x88, 0x25, 0xc5, 0xa0, 0x72, 0x4e, 0xb8, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult DrawGlyphRun(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_MEASURING_MODE measuringMode, in GlyphRun glyphRun, in DWRITE_GLYPH_RUN_DESCRIPTION glyphRunDescription, IUnknown* clientDrawingEffect) mut => VT.DrawGlyphRun(ref this, clientDrawingContext, baselineOriginX, baselineOriginY, measuringMode, glyphRun, glyphRunDescription, clientDrawingEffect);
			public HResult DrawUnderline(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, in DWRITE_UNDERLINE underline, IUnknown* clientDrawingEffect) mut => VT.DrawUnderline(ref this, clientDrawingContext, baselineOriginX, baselineOriginY, underline, clientDrawingEffect);
			public HResult DrawStrikethrough(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, in DWRITE_STRIKETHROUGH strikethrough, IUnknown* clientDrawingEffect) mut => VT.DrawStrikethrough(ref this, clientDrawingContext, baselineOriginX, baselineOriginY, strikethrough, clientDrawingEffect);
			public HResult DrawInlineObject(void* clientDrawingContext, float originX, float originY, ref IDWriteInlineObject inlineObject, IntBool isSideways, IntBool isRightToLeft, IUnknown* clientDrawingEffect) mut => VT.DrawInlineObject(ref this, clientDrawingContext, originX, originY, ref inlineObject, isSideways, isRightToLeft, clientDrawingEffect);

			[CRepr]
			public struct VTable : IDWritePixelSnapping.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextRenderer self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_MEASURING_MODE measuringMode, in GlyphRun glyphRun, in DWRITE_GLYPH_RUN_DESCRIPTION glyphRunDescription, IUnknown* clientDrawingEffect) DrawGlyphRun;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextRenderer self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, in DWRITE_UNDERLINE underline, IUnknown* clientDrawingEffect) DrawUnderline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextRenderer self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, in DWRITE_STRIKETHROUGH strikethrough, IUnknown* clientDrawingEffect) DrawStrikethrough;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextRenderer self, void* clientDrawingContext, float originX, float originY, ref IDWriteInlineObject inlineObject, IntBool isSideways, IntBool isRightToLeft, IUnknown* clientDrawingEffect) DrawInlineObject;
			}
		}
		[CRepr]
		public struct IDWriteTextLayout : IDWriteTextFormat
		{
			public const new Guid IID = .(0x53737037, 0x6d14, 0x410b, 0x9b, 0xfe, 0x0b, 0x18, 0x2b, 0xb7, 0x09, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetMaxWidth(float maxWidth) mut => VT.SetMaxWidth(ref this, maxWidth);
			public HResult SetMaxHeight(float maxHeight) mut => VT.SetMaxHeight(ref this, maxHeight);
			public HResult SetFontCollection(ref IDWriteFontCollection fontCollection, TextRange textRange) mut => VT.SetFontCollection(ref this, ref fontCollection, textRange);
			public HResult SetFontFamilyName(char16* fontFamilyName, TextRange textRange) mut => VT.SetFontFamilyName(ref this, fontFamilyName, textRange);
			public HResult SetFontWeight(FontWeight fontWeight, TextRange textRange) mut => VT.SetFontWeight(ref this, fontWeight, textRange);
			public HResult SetFontStyle(FontStyle fontStyle, TextRange textRange) mut => VT.SetFontStyle(ref this, fontStyle, textRange);
			public HResult SetFontStretch(FontStretch fontStretch, TextRange textRange) mut => VT.SetFontStretch(ref this, fontStretch, textRange);
			public HResult SetFontSize(float fontSize, TextRange textRange) mut => VT.SetFontSize(ref this, fontSize, textRange);
			public HResult SetUnderline(IntBool hasUnderline, TextRange textRange) mut => VT.SetUnderline(ref this, hasUnderline, textRange);
			public HResult SetStrikethrough(IntBool hasStrikethrough, TextRange textRange) mut => VT.SetStrikethrough(ref this, hasStrikethrough, textRange);
			public HResult SetDrawingEffect(ref IUnknown drawingEffect, TextRange textRange) mut => VT.SetDrawingEffect(ref this, ref drawingEffect, textRange);
			public HResult SetInlineObject(ref IDWriteInlineObject inlineObject, TextRange textRange) mut => VT.SetInlineObject(ref this, ref inlineObject, textRange);
			public HResult SetTypography(ref IDWriteTypography typography, TextRange textRange) mut => VT.SetTypography(ref this, ref typography, textRange);
			public HResult SetLocaleName(char16* localeName, TextRange textRange) mut => VT.SetLocaleName(ref this, localeName, textRange);
			public float GetMaxWidth() mut => VT.GetMaxWidth(ref this);
			public float GetMaxHeight() mut => VT.GetMaxHeight(ref this);
			public HResult GetFontCollection(uint32 currentPosition, out IDWriteFontCollection* fontCollection, TextRange* textRange) mut => VT.GetFontCollection(ref this, currentPosition, out fontCollection, textRange);
			public HResult GetFontFamilyNameLength(uint32 currentPosition, out uint32 nameLength, TextRange* textRange) mut => VT.GetFontFamilyNameLength(ref this, currentPosition, out nameLength, textRange);
			public HResult GetFontFamilyName(uint32 currentPosition, char16* fontFamilyName, uint32 nameSize, TextRange* textRange) mut => VT.GetFontFamilyName(ref this, currentPosition, fontFamilyName, nameSize, textRange);
			public HResult GetFontWeight(uint32 currentPosition, out FontWeight fontWeight, TextRange* textRange) mut => VT.GetFontWeight(ref this, currentPosition, out fontWeight, textRange);
			public HResult GetFontStyle(uint32 currentPosition, out FontStyle fontStyle, TextRange* textRange) mut => VT.GetFontStyle(ref this, currentPosition, out fontStyle, textRange);
			public HResult GetFontStretch(uint32 currentPosition, out FontStretch fontStretch, TextRange* textRange) mut => VT.GetFontStretch(ref this, currentPosition, out fontStretch, textRange);
			public HResult GetFontSize(uint32 currentPosition, out float fontSize, TextRange* textRange) mut => VT.GetFontSize(ref this, currentPosition, out fontSize, textRange);
			public HResult GetUnderline(uint32 currentPosition, out IntBool hasUnderline, TextRange* textRange) mut => VT.GetUnderline(ref this, currentPosition, out hasUnderline, textRange);
			public HResult GetStrikethrough(uint32 currentPosition, out IntBool hasStrikethrough, TextRange* textRange) mut => VT.GetStrikethrough(ref this, currentPosition, out hasStrikethrough, textRange);
			public HResult GetDrawingEffect(uint32 currentPosition, out IUnknown* drawingEffect, TextRange* textRange) mut => VT.GetDrawingEffect(ref this, currentPosition, out drawingEffect, textRange);
			public HResult GetInlineObject(uint32 currentPosition, out IDWriteInlineObject* inlineObject, TextRange* textRange) mut => VT.GetInlineObject(ref this, currentPosition, out inlineObject, textRange);
			public HResult GetTypography(uint32 currentPosition, out IDWriteTypography* typography, TextRange* textRange) mut => VT.GetTypography(ref this, currentPosition, out typography, textRange);
			public HResult GetLocaleNameLength(uint32 currentPosition, out uint32 nameLength, TextRange* textRange) mut => VT.GetLocaleNameLength(ref this, currentPosition, out nameLength, textRange);
			public HResult GetLocaleName(uint32 currentPosition, char16* localeName, uint32 nameSize, TextRange* textRange) mut => VT.GetLocaleName(ref this, currentPosition, localeName, nameSize, textRange);
			public HResult Draw(void* clientDrawingContext, ref IDWriteTextRenderer renderer, float originX, float originY) mut => VT.Draw(ref this, clientDrawingContext, ref renderer, originX, originY);
			public HResult GetLineMetrics(LineMetrics* lineMetrics, uint32 maxLineCount, out uint32 actualLineCount) mut => VT.GetLineMetrics(ref this, lineMetrics, maxLineCount, out actualLineCount);
			public HResult GetMetrics(out DWRITE_TEXT_METRICS textMetrics) mut => VT.GetMetrics(ref this, out textMetrics);
			public HResult GetOverhangMetrics(out DWRITE_OVERHANG_METRICS overhangs) mut => VT.GetOverhangMetrics(ref this, out overhangs);
			public HResult GetClusterMetrics(DWRITE_CLUSTER_METRICS* clusterMetrics, uint32 maxClusterCount, out uint32 actualClusterCount) mut => VT.GetClusterMetrics(ref this, clusterMetrics, maxClusterCount, out actualClusterCount);
			public HResult DetermineMinWidth(out float minWidth) mut => VT.DetermineMinWidth(ref this, out minWidth);
			public HResult HitTestPoint(float pointX, float pointY, out IntBool isTrailingHit, out IntBool isInside, out DWRITE_HIT_TEST_METRICS hitTestMetrics) mut => VT.HitTestPoint(ref this, pointX, pointY, out isTrailingHit, out isInside, out hitTestMetrics);
			public HResult HitTestTextPosition(uint32 textPosition, IntBool isTrailingHit, out float pointX, out float pointY, out DWRITE_HIT_TEST_METRICS hitTestMetrics) mut => VT.HitTestTextPosition(ref this, textPosition, isTrailingHit, out pointX, out pointY, out hitTestMetrics);
			public HResult HitTestTextRange(uint32 textPosition, uint32 textLength, float originX, float originY, DWRITE_HIT_TEST_METRICS* hitTestMetrics, uint32 maxHitTestMetricsCount, out uint32 actualHitTestMetricsCount) mut => VT.HitTestTextRange(ref this, textPosition, textLength, originX, originY, hitTestMetrics, maxHitTestMetricsCount, out actualHitTestMetricsCount);

			[CRepr]
			public struct VTable : IDWriteTextFormat.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, float maxWidth) SetMaxWidth;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, float maxHeight) SetMaxHeight;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, ref IDWriteFontCollection fontCollection, TextRange textRange) SetFontCollection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, char16* fontFamilyName, TextRange textRange) SetFontFamilyName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, FontWeight fontWeight, TextRange textRange) SetFontWeight;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, FontStyle fontStyle, TextRange textRange) SetFontStyle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, FontStretch fontStretch, TextRange textRange) SetFontStretch;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, float fontSize, TextRange textRange) SetFontSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, IntBool hasUnderline, TextRange textRange) SetUnderline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, IntBool hasStrikethrough, TextRange textRange) SetStrikethrough;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, ref IUnknown drawingEffect, TextRange textRange) SetDrawingEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, ref IDWriteInlineObject inlineObject, TextRange textRange) SetInlineObject;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, ref IDWriteTypography typography, TextRange textRange) SetTypography;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, char16* localeName, TextRange textRange) SetLocaleName;
				public new function [CallingConvention(.Stdcall)] float(ref IDWriteTextLayout self) GetMaxWidth;
				public new function [CallingConvention(.Stdcall)] float(ref IDWriteTextLayout self) GetMaxHeight;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, out IDWriteFontCollection* fontCollection, TextRange* textRange) GetFontCollection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, out uint32 nameLength, TextRange* textRange) GetFontFamilyNameLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, char16* fontFamilyName, uint32 nameSize, TextRange* textRange) GetFontFamilyName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, out FontWeight fontWeight, TextRange* textRange) GetFontWeight;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, out FontStyle fontStyle, TextRange* textRange) GetFontStyle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, out FontStretch fontStretch, TextRange* textRange) GetFontStretch;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, out float fontSize, TextRange* textRange) GetFontSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, out IntBool hasUnderline, TextRange* textRange) GetUnderline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, out IntBool hasStrikethrough, TextRange* textRange) GetStrikethrough;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, out IUnknown* drawingEffect, TextRange* textRange) GetDrawingEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, out IDWriteInlineObject* inlineObject, TextRange* textRange) GetInlineObject;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, out IDWriteTypography* typography, TextRange* textRange) GetTypography;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, out uint32 nameLength, TextRange* textRange) GetLocaleNameLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 currentPosition, char16* localeName, uint32 nameSize, TextRange* textRange) GetLocaleName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, void* clientDrawingContext, ref IDWriteTextRenderer renderer, float originX, float originY) Draw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, LineMetrics* lineMetrics, uint32 maxLineCount, out uint32 actualLineCount) GetLineMetrics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, out DWRITE_TEXT_METRICS textMetrics) GetMetrics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, out DWRITE_OVERHANG_METRICS overhangs) GetOverhangMetrics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, DWRITE_CLUSTER_METRICS* clusterMetrics, uint32 maxClusterCount, out uint32 actualClusterCount) GetClusterMetrics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, out float minWidth) DetermineMinWidth;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, float pointX, float pointY, out IntBool isTrailingHit, out IntBool isInside, out DWRITE_HIT_TEST_METRICS hitTestMetrics) HitTestPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 textPosition, IntBool isTrailingHit, out float pointX, out float pointY, out DWRITE_HIT_TEST_METRICS hitTestMetrics) HitTestTextPosition;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout self, uint32 textPosition, uint32 textLength, float originX, float originY, DWRITE_HIT_TEST_METRICS* hitTestMetrics, uint32 maxHitTestMetricsCount, out uint32 actualHitTestMetricsCount) HitTestTextRange;
			}
		}
		[CRepr]
		public struct IDWriteBitmapRenderTarget : IUnknown
		{
			public const new Guid IID = .(0x5e5a32a3, 0x8dff, 0x4773, 0x9f, 0xf6, 0x06, 0x96, 0xea, 0xb7, 0x72, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult DrawGlyphRun(float baselineOriginX, float baselineOriginY, DWRITE_MEASURING_MODE measuringMode, in GlyphRun glyphRun, ref IDWriteRenderingParams renderingParams, uint32 textColor, RectI* blackBoxRect) mut => VT.DrawGlyphRun(ref this, baselineOriginX, baselineOriginY, measuringMode, glyphRun, ref renderingParams, textColor, blackBoxRect);
			public HDC GetMemoryDC() mut => VT.GetMemoryDC(ref this);
			public float GetPixelsPerDip() mut => VT.GetPixelsPerDip(ref this);
			public HResult SetPixelsPerDip(float pixelsPerDip) mut => VT.SetPixelsPerDip(ref this, pixelsPerDip);
			public HResult GetCurrentTransform(out DWriteMatrix transform) mut => VT.GetCurrentTransform(ref this, out transform);
			public HResult SetCurrentTransform(DWriteMatrix* transform) mut => VT.SetCurrentTransform(ref this, transform);
			public HResult GetSize(out SIZE size) mut => VT.GetSize(ref this, out size);
			public HResult Resize(uint32 width, uint32 height) mut => VT.Resize(ref this, width, height);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteBitmapRenderTarget self, float baselineOriginX, float baselineOriginY, DWRITE_MEASURING_MODE measuringMode, in GlyphRun glyphRun, ref IDWriteRenderingParams renderingParams, uint32 textColor, RectI* blackBoxRect) DrawGlyphRun;
				public new function [CallingConvention(.Stdcall)] HDC(ref IDWriteBitmapRenderTarget self) GetMemoryDC;
				public new function [CallingConvention(.Stdcall)] float(ref IDWriteBitmapRenderTarget self) GetPixelsPerDip;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteBitmapRenderTarget self, float pixelsPerDip) SetPixelsPerDip;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteBitmapRenderTarget self, out DWriteMatrix transform) GetCurrentTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteBitmapRenderTarget self, DWriteMatrix* transform) SetCurrentTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteBitmapRenderTarget self, out SIZE size) GetSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteBitmapRenderTarget self, uint32 width, uint32 height) Resize;
			}
		}
		[CRepr]
		public struct IDWriteGdiInterop : IUnknown
		{
			public const new Guid IID = .(0x1edd9491, 0x9853, 0x4299, 0x89, 0x8f, 0x64, 0x32, 0x98, 0x3b, 0x6f, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateFontFromLOGFONT(in LOGFONTW logFont, out IDWriteFont* font) mut => VT.CreateFontFromLOGFONT(ref this, logFont, out font);
			public HResult ConvertFontToLOGFONT(ref IDWriteFont font, out LOGFONTW logFont, out IntBool isSystemFont) mut => VT.ConvertFontToLOGFONT(ref this, ref font, out logFont, out isSystemFont);
			public HResult ConvertFontFaceToLOGFONT(ref IDWriteFontFace font, out LOGFONTW logFont) mut => VT.ConvertFontFaceToLOGFONT(ref this, ref font, out logFont);
			public HResult CreateFontFaceFromHdc(HDC hdc, out IDWriteFontFace* fontFace) mut => VT.CreateFontFaceFromHdc(ref this, hdc, out fontFace);
			public HResult CreateBitmapRenderTarget(HDC hdc, uint32 width, uint32 height, out IDWriteBitmapRenderTarget* renderTarget) mut => VT.CreateBitmapRenderTarget(ref this, hdc, width, height, out renderTarget);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteGdiInterop self, in LOGFONTW logFont, out IDWriteFont* font) CreateFontFromLOGFONT;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteGdiInterop self, ref IDWriteFont font, out LOGFONTW logFont, out IntBool isSystemFont) ConvertFontToLOGFONT;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteGdiInterop self, ref IDWriteFontFace font, out LOGFONTW logFont) ConvertFontFaceToLOGFONT;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteGdiInterop self, HDC hdc, out IDWriteFontFace* fontFace) CreateFontFaceFromHdc;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteGdiInterop self, HDC hdc, uint32 width, uint32 height, out IDWriteBitmapRenderTarget* renderTarget) CreateBitmapRenderTarget;
			}
		}
		[CRepr]
		public struct IDWriteGlyphRunAnalysis : IUnknown
		{
			public const new Guid IID = .(0x7d97dbf7, 0xe085, 0x42d4, 0x81, 0xe3, 0x6a, 0x88, 0x3b, 0xde, 0xd1, 0x18);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetAlphaTextureBounds(DWRITE_TEXTURE_TYPE textureType, out RectI textureBounds) mut => VT.GetAlphaTextureBounds(ref this, textureType, out textureBounds);
			public HResult CreateAlphaTexture(DWRITE_TEXTURE_TYPE textureType, in RectI textureBounds, out uint8 alphaValues, uint32 bufferSize) mut => VT.CreateAlphaTexture(ref this, textureType, textureBounds, out alphaValues, bufferSize);
			public HResult GetAlphaBlendParams(ref IDWriteRenderingParams renderingParams, out float blendGamma, out float blendEnhancedContrast, out float blendClearTypeLevel) mut => VT.GetAlphaBlendParams(ref this, ref renderingParams, out blendGamma, out blendEnhancedContrast, out blendClearTypeLevel);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteGlyphRunAnalysis self, DWRITE_TEXTURE_TYPE textureType, out RectI textureBounds) GetAlphaTextureBounds;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteGlyphRunAnalysis self, DWRITE_TEXTURE_TYPE textureType, in RectI textureBounds, out uint8 alphaValues, uint32 bufferSize) CreateAlphaTexture;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteGlyphRunAnalysis self, ref IDWriteRenderingParams renderingParams, out float blendGamma, out float blendEnhancedContrast, out float blendClearTypeLevel) GetAlphaBlendParams;
			}
		}
		[CRepr]
		public struct IDWriteFactory : IUnknown
		{
			public const new Guid IID = .(0xb859ee5a, 0xd838, 0x4b5b, 0xa2, 0xe8, 0x1a, 0xdc, 0x7d, 0x93, 0xdb, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetSystemFontCollection(out IDWriteFontCollection* fontCollection, IntBool checkForUpdates) mut => VT.GetSystemFontCollection(ref this, out fontCollection, checkForUpdates);
			public HResult CreateCustomFontCollection(ref IDWriteFontCollectionLoader collectionLoader, void* collectionKey, uint32 collectionKeySize, out IDWriteFontCollection* fontCollection) mut => VT.CreateCustomFontCollection(ref this, ref collectionLoader, collectionKey, collectionKeySize, out fontCollection);
			public HResult RegisterFontCollectionLoader(ref IDWriteFontCollectionLoader fontCollectionLoader) mut => VT.RegisterFontCollectionLoader(ref this, ref fontCollectionLoader);
			public HResult UnregisterFontCollectionLoader(ref IDWriteFontCollectionLoader fontCollectionLoader) mut => VT.UnregisterFontCollectionLoader(ref this, ref fontCollectionLoader);
			public HResult CreateFontFileReference(char16* filePath, FileTime* lastWriteTime, out IDWriteFontFile* fontFile) mut => VT.CreateFontFileReference(ref this, filePath, lastWriteTime, out fontFile);
			public HResult CreateCustomFontFileReference(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, ref IDWriteFontFileLoader fontFileLoader, out IDWriteFontFile* fontFile) mut => VT.CreateCustomFontFileReference(ref this, fontFileReferenceKey, fontFileReferenceKeySize, ref fontFileLoader, out fontFile);
			public HResult CreateFontFace(FontFaceType fontFaceType, uint32 numberOfFiles, IDWriteFontFile** fontFiles, uint32 faceIndex, FontSimulations fontFaceSimulationFlags, out IDWriteFontFace* fontFace) mut => VT.CreateFontFace(ref this, fontFaceType, numberOfFiles, fontFiles, faceIndex, fontFaceSimulationFlags, out fontFace);
			public HResult CreateRenderingParams(out IDWriteRenderingParams* renderingParams) mut => VT.CreateRenderingParams(ref this, out renderingParams);
			public HResult CreateMonitorRenderingParams(HMONITOR monitor, out IDWriteRenderingParams* renderingParams) mut => VT.CreateMonitorRenderingParams(ref this, monitor, out renderingParams);
			public HResult CreateCustomRenderingParams(float gamma, float enhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, out IDWriteRenderingParams* renderingParams) mut => VT.CreateCustomRenderingParams(ref this, gamma, enhancedContrast, clearTypeLevel, pixelGeometry, renderingMode, out renderingParams);
			public HResult RegisterFontFileLoader(ref IDWriteFontFileLoader fontFileLoader) mut => VT.RegisterFontFileLoader(ref this, ref fontFileLoader);
			public HResult UnregisterFontFileLoader(ref IDWriteFontFileLoader fontFileLoader) mut => VT.UnregisterFontFileLoader(ref this, ref fontFileLoader);
			public HResult CreateTextFormat(StringView fontFamilyName, IDWriteFontCollection* fontCollection, FontWeight fontWeight, FontStyle fontStyle, FontStretch fontStretch, float fontSize, StringView localeName, out IDWriteTextFormat* textFormat) mut => VT.CreateTextFormat(ref this, fontFamilyName.ToScopedNativeWChar!(), fontCollection, fontWeight, fontStyle, fontStretch, fontSize, localeName.ToScopedNativeWChar!(), out textFormat);
			public HResult CreateTypography(out IDWriteTypography* typography) mut => VT.CreateTypography(ref this, out typography);
			public HResult GetGdiInterop(out IDWriteGdiInterop* gdiInterop) mut => VT.GetGdiInterop(ref this, out gdiInterop);
			public HResult CreateTextLayout(char16* string, uint32 stringLength, ref IDWriteTextFormat textFormat, float maxWidth, float maxHeight, out IDWriteTextLayout* textLayout) mut => VT.CreateTextLayout(ref this, string, stringLength, ref textFormat, maxWidth, maxHeight, out textLayout);
			public HResult CreateGdiCompatibleTextLayout(char16* string, uint32 stringLength, ref IDWriteTextFormat textFormat, float layoutWidth, float layoutHeight, float pixelsPerDip, DWriteMatrix* transform, IntBool useGdiNatural, out IDWriteTextLayout* textLayout) mut => VT.CreateGdiCompatibleTextLayout(ref this, string, stringLength, ref textFormat, layoutWidth, layoutHeight, pixelsPerDip, transform, useGdiNatural, out textLayout);
			public HResult CreateEllipsisTrimmingSign(ref IDWriteTextFormat textFormat, out IDWriteInlineObject* trimmingSign) mut => VT.CreateEllipsisTrimmingSign(ref this, ref textFormat, out trimmingSign);
			public HResult CreateTextAnalyzer(out IDWriteTextAnalyzer* textAnalyzer) mut => VT.CreateTextAnalyzer(ref this, out textAnalyzer);
			public HResult CreateNumberSubstitution(DWRITE_NUMBER_SUBSTITUTION_METHOD substitutionMethod, char16* localeName, IntBool ignoreUserOverride, out IDWriteNumberSubstitution* numberSubstitution) mut => VT.CreateNumberSubstitution(ref this, substitutionMethod, localeName, ignoreUserOverride, out numberSubstitution);
			public HResult CreateGlyphRunAnalysis(in GlyphRun glyphRun, float pixelsPerDip, DWriteMatrix* transform, DWRITE_RENDERING_MODE renderingMode, DWRITE_MEASURING_MODE measuringMode, float baselineOriginX, float baselineOriginY, out IDWriteGlyphRunAnalysis* glyphRunAnalysis) mut => VT.CreateGlyphRunAnalysis(ref this, glyphRun, pixelsPerDip, transform, renderingMode, measuringMode, baselineOriginX, baselineOriginY, out glyphRunAnalysis);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, out IDWriteFontCollection* fontCollection, IntBool checkForUpdates) GetSystemFontCollection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, ref IDWriteFontCollectionLoader collectionLoader, void* collectionKey, uint32 collectionKeySize, out IDWriteFontCollection* fontCollection) CreateCustomFontCollection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, ref IDWriteFontCollectionLoader fontCollectionLoader) RegisterFontCollectionLoader;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, ref IDWriteFontCollectionLoader fontCollectionLoader) UnregisterFontCollectionLoader;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, char16* filePath, FileTime* lastWriteTime, out IDWriteFontFile* fontFile) CreateFontFileReference;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, ref IDWriteFontFileLoader fontFileLoader, out IDWriteFontFile* fontFile) CreateCustomFontFileReference;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, FontFaceType fontFaceType, uint32 numberOfFiles, IDWriteFontFile** fontFiles, uint32 faceIndex, FontSimulations fontFaceSimulationFlags, out IDWriteFontFace* fontFace) CreateFontFace;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, out IDWriteRenderingParams* renderingParams) CreateRenderingParams;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, HMONITOR monitor, out IDWriteRenderingParams* renderingParams) CreateMonitorRenderingParams;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, float gamma, float enhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, out IDWriteRenderingParams* renderingParams) CreateCustomRenderingParams;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, ref IDWriteFontFileLoader fontFileLoader) RegisterFontFileLoader;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, ref IDWriteFontFileLoader fontFileLoader) UnregisterFontFileLoader;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, char16* fontFamilyName, IDWriteFontCollection* fontCollection, FontWeight fontWeight, FontStyle fontStyle, FontStretch fontStretch, float fontSize, char16* localeName, out IDWriteTextFormat* textFormat) CreateTextFormat;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, out IDWriteTypography* typography) CreateTypography;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, out IDWriteGdiInterop* gdiInterop) GetGdiInterop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, char16* string, uint32 stringLength, ref IDWriteTextFormat textFormat, float maxWidth, float maxHeight, out IDWriteTextLayout* textLayout) CreateTextLayout;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, char16* string, uint32 stringLength, ref IDWriteTextFormat textFormat, float layoutWidth, float layoutHeight, float pixelsPerDip, DWriteMatrix* transform, IntBool useGdiNatural, out IDWriteTextLayout* textLayout) CreateGdiCompatibleTextLayout;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, ref IDWriteTextFormat textFormat, out IDWriteInlineObject* trimmingSign) CreateEllipsisTrimmingSign;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, out IDWriteTextAnalyzer* textAnalyzer) CreateTextAnalyzer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, DWRITE_NUMBER_SUBSTITUTION_METHOD substitutionMethod, char16* localeName, IntBool ignoreUserOverride, out IDWriteNumberSubstitution* numberSubstitution) CreateNumberSubstitution;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory self, in GlyphRun glyphRun, float pixelsPerDip, DWriteMatrix* transform, DWRITE_RENDERING_MODE renderingMode, DWRITE_MEASURING_MODE measuringMode, float baselineOriginX, float baselineOriginY, out IDWriteGlyphRunAnalysis* glyphRunAnalysis) CreateGlyphRunAnalysis;
			}
		}
		[CRepr]
		public struct IDWriteFactory1 : IDWriteFactory
		{
			public const new Guid IID = .(0x30572f99, 0xdac6, 0x41db, 0xa1, 0x6e, 0x04, 0x86, 0x30, 0x7e, 0x60, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetEudcFontCollection(out IDWriteFontCollection* fontCollection, IntBool checkForUpdates) mut => VT.GetEudcFontCollection(ref this, out fontCollection, checkForUpdates);
			public HResult CreateCustomRenderingParams(float gamma, float enhancedContrast, float enhancedContrastGrayscale, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, out IDWriteRenderingParams1* renderingParams) mut => VT.CreateCustomRenderingParams(ref this, gamma, enhancedContrast, enhancedContrastGrayscale, clearTypeLevel, pixelGeometry, renderingMode, out renderingParams);

			[CRepr]
			public struct VTable : IDWriteFactory.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory1 self, out IDWriteFontCollection* fontCollection, IntBool checkForUpdates) GetEudcFontCollection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory1 self, float gamma, float enhancedContrast, float enhancedContrastGrayscale, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, out IDWriteRenderingParams1* renderingParams) CreateCustomRenderingParams;
			}
		}
		[CRepr]
		public struct IDWriteFontFace1 : IDWriteFontFace
		{
			public const new Guid IID = .(0xa71efdb4, 0x9fdb, 0x4838, 0xad, 0x90, 0xcf, 0xc3, 0xbe, 0x8c, 0x3d, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetMetrics(out FontMetrics1 fontMetrics) mut => VT.GetMetrics(ref this, out fontMetrics);
			public HResult GetGdiCompatibleMetrics(float emSize, float pixelsPerDip, DWriteMatrix* transform, out FontMetrics1 fontMetrics) mut => VT.GetGdiCompatibleMetrics(ref this, emSize, pixelsPerDip, transform, out fontMetrics);
			public void GetCaretMetrics(out DWRITE_CARET_METRICS caretMetrics) mut => VT.GetCaretMetrics(ref this, out caretMetrics);
			public HResult GetUnicodeRanges(uint32 maxRangeCount, DWRITE_UNICODE_RANGE* unicodeRanges, out uint32 actualRangeCount) mut => VT.GetUnicodeRanges(ref this, maxRangeCount, unicodeRanges, out actualRangeCount);
			public IntBool IsMonospacedFont() mut => VT.IsMonospacedFont(ref this);
			public HResult GetDesignGlyphAdvances(uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvances, IntBool isSideways) mut => VT.GetDesignGlyphAdvances(ref this, glyphCount, glyphIndices, glyphAdvances, isSideways);
			public HResult GetGdiCompatibleGlyphAdvances(float emSize, float pixelsPerDip, DWriteMatrix* transform, IntBool useGdiNatural, IntBool isSideways, uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvances) mut => VT.GetGdiCompatibleGlyphAdvances(ref this, emSize, pixelsPerDip, transform, useGdiNatural, isSideways, glyphCount, glyphIndices, glyphAdvances);
			public HResult GetKerningPairAdjustments(uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvanceAdjustments) mut => VT.GetKerningPairAdjustments(ref this, glyphCount, glyphIndices, glyphAdvanceAdjustments);
			public IntBool HasKerningPairs() mut => VT.HasKerningPairs(ref this);
			public HResult GetRecommendedRenderingMode(float fontEmSize, float dpiX, float dpiY, DWriteMatrix* transform, IntBool isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, out DWRITE_RENDERING_MODE renderingMode) mut => VT.GetRecommendedRenderingMode(ref this, fontEmSize, dpiX, dpiY, transform, isSideways, outlineThreshold, measuringMode, out renderingMode);
			public HResult GetVerticalGlyphVariants(uint32 glyphCount, uint16* nominalGlyphIndices, uint16* verticalGlyphIndices) mut => VT.GetVerticalGlyphVariants(ref this, glyphCount, nominalGlyphIndices, verticalGlyphIndices);
			public IntBool HasVerticalGlyphVariants() mut => VT.HasVerticalGlyphVariants(ref this);

			[CRepr]
			public struct VTable : IDWriteFontFace.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFace1 self, out FontMetrics1 fontMetrics) GetMetrics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace1 self, float emSize, float pixelsPerDip, DWriteMatrix* transform, out FontMetrics1 fontMetrics) GetGdiCompatibleMetrics;
				public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFace1 self, out DWRITE_CARET_METRICS caretMetrics) GetCaretMetrics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace1 self, uint32 maxRangeCount, DWRITE_UNICODE_RANGE* unicodeRanges, out uint32 actualRangeCount) GetUnicodeRanges;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFontFace1 self) IsMonospacedFont;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace1 self, uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvances, IntBool isSideways) GetDesignGlyphAdvances;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace1 self, float emSize, float pixelsPerDip, DWriteMatrix* transform, IntBool useGdiNatural, IntBool isSideways, uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvances) GetGdiCompatibleGlyphAdvances;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace1 self, uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvanceAdjustments) GetKerningPairAdjustments;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFontFace1 self) HasKerningPairs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace1 self, float fontEmSize, float dpiX, float dpiY, DWriteMatrix* transform, IntBool isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, out DWRITE_RENDERING_MODE renderingMode) GetRecommendedRenderingMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace1 self, uint32 glyphCount, uint16* nominalGlyphIndices, uint16* verticalGlyphIndices) GetVerticalGlyphVariants;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFontFace1 self) HasVerticalGlyphVariants;
			}
		}
		[CRepr]
		public struct IDWriteFont1 : IDWriteFont
		{
			public const new Guid IID = .(0xacd16696, 0x8c14, 0x4f5d, 0x87, 0x7e, 0xfe, 0x3f, 0xc1, 0xd3, 0x27, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetMetrics(out FontMetrics1 fontMetrics) mut => VT.GetMetrics(ref this, out fontMetrics);
			public void GetPanose(out DWRITE_PANOSE panose) mut => VT.GetPanose(ref this, out panose);
			public HResult GetUnicodeRanges(uint32 maxRangeCount, DWRITE_UNICODE_RANGE* unicodeRanges, out uint32 actualRangeCount) mut => VT.GetUnicodeRanges(ref this, maxRangeCount, unicodeRanges, out actualRangeCount);
			public IntBool IsMonospacedFont() mut => VT.IsMonospacedFont(ref this);

			[CRepr]
			public struct VTable : IDWriteFont.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IDWriteFont1 self, out FontMetrics1 fontMetrics) GetMetrics;
				public new function [CallingConvention(.Stdcall)] void(ref IDWriteFont1 self, out DWRITE_PANOSE panose) GetPanose;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFont1 self, uint32 maxRangeCount, DWRITE_UNICODE_RANGE* unicodeRanges, out uint32 actualRangeCount) GetUnicodeRanges;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFont1 self) IsMonospacedFont;
			}
		}
		[CRepr]
		public struct IDWriteRenderingParams1 : IDWriteRenderingParams
		{
			public const new Guid IID = .(0x94413cf4, 0xa6fc, 0x4248, 0x8b, 0x50, 0x66, 0x74, 0x34, 0x8f, 0xca, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public float GetGrayscaleEnhancedContrast() mut => VT.GetGrayscaleEnhancedContrast(ref this);

			[CRepr]
			public struct VTable : IDWriteRenderingParams.VTable
			{
				public new function [CallingConvention(.Stdcall)] float(ref IDWriteRenderingParams1 self) GetGrayscaleEnhancedContrast;
			}
		}
		[CRepr]
		public struct IDWriteTextAnalyzer1 : IDWriteTextAnalyzer
		{
			public const new Guid IID = .(0x80dad800, 0xe21f, 0x4e83, 0x96, 0xce, 0xbf, 0xcc, 0xe5, 0x00, 0xdb, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ApplyCharacterSpacing(float leadingSpacing, float trailingSpacing, float minimumAdvanceWidth, uint32 textLength, uint32 glyphCount, uint16* clusterMap, float* glyphAdvances, GlyphOffset* glyphOffsets, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, float* modifiedGlyphAdvances, GlyphOffset* modifiedGlyphOffsets) mut => VT.ApplyCharacterSpacing(ref this, leadingSpacing, trailingSpacing, minimumAdvanceWidth, textLength, glyphCount, clusterMap, glyphAdvances, glyphOffsets, glyphProperties, modifiedGlyphAdvances, modifiedGlyphOffsets);
			public HResult GetBaseline(ref IDWriteFontFace fontFace, DWRITE_BASELINE baseline, IntBool isVertical, IntBool isSimulationAllowed, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, char16* localeName, out int32 baselineCoordinate, out IntBool exists) mut => VT.GetBaseline(ref this, ref fontFace, baseline, isVertical, isSimulationAllowed, scriptAnalysis, localeName, out baselineCoordinate, out exists);
			public HResult AnalyzeVerticalGlyphOrientation(ref IDWriteTextAnalysisSource1 analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink1 analysisSink) mut => VT.AnalyzeVerticalGlyphOrientation(ref this, ref analysisSource, textPosition, textLength, ref analysisSink);
			public HResult GetGlyphOrientationTransform(DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, IntBool isSideways, out DWriteMatrix transform) mut => VT.GetGlyphOrientationTransform(ref this, glyphOrientationAngle, isSideways, out transform);
			public HResult GetScriptProperties(DWRITE_SCRIPT_ANALYSIS scriptAnalysis, out DWRITE_SCRIPT_PROPERTIES scriptProperties) mut => VT.GetScriptProperties(ref this, scriptAnalysis, out scriptProperties);
			public HResult GetTextComplexity(char16* textString, uint32 textLength, ref IDWriteFontFace fontFace, out IntBool isTextSimple, out uint32 textLengthRead, uint16* glyphIndices) mut => VT.GetTextComplexity(ref this, textString, textLength, ref fontFace, out isTextSimple, out textLengthRead, glyphIndices);
			public HResult GetJustificationOpportunities(IDWriteFontFace* fontFace, float fontEmSize, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, uint32 textLength, uint32 glyphCount, char16* textString, uint16* clusterMap, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, DWRITE_JUSTIFICATION_OPPORTUNITY* justificationOpportunities) mut => VT.GetJustificationOpportunities(ref this, fontFace, fontEmSize, scriptAnalysis, textLength, glyphCount, textString, clusterMap, glyphProperties, justificationOpportunities);
			public HResult JustifyGlyphAdvances(float lineWidth, uint32 glyphCount, DWRITE_JUSTIFICATION_OPPORTUNITY* justificationOpportunities, float* glyphAdvances, GlyphOffset* glyphOffsets, float* justifiedGlyphAdvances, GlyphOffset* justifiedGlyphOffsets) mut => VT.JustifyGlyphAdvances(ref this, lineWidth, glyphCount, justificationOpportunities, glyphAdvances, glyphOffsets, justifiedGlyphAdvances, justifiedGlyphOffsets);
			public HResult GetJustifiedGlyphs(IDWriteFontFace* fontFace, float fontEmSize, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, uint32 textLength, uint32 glyphCount, uint32 maxGlyphCount, uint16* clusterMap, uint16* glyphIndices, float* glyphAdvances, float* justifiedGlyphAdvances, GlyphOffset* justifiedGlyphOffsets, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, out uint32 actualGlyphCount, uint16* modifiedClusterMap, uint16* modifiedGlyphIndices, float* modifiedGlyphAdvances, GlyphOffset* modifiedGlyphOffsets) mut => VT.GetJustifiedGlyphs(ref this, fontFace, fontEmSize, scriptAnalysis, textLength, glyphCount, maxGlyphCount, clusterMap, glyphIndices, glyphAdvances, justifiedGlyphAdvances, justifiedGlyphOffsets, glyphProperties, out actualGlyphCount, modifiedClusterMap, modifiedGlyphIndices, modifiedGlyphAdvances, modifiedGlyphOffsets);

			[CRepr]
			public struct VTable : IDWriteTextAnalyzer.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer1 self, float leadingSpacing, float trailingSpacing, float minimumAdvanceWidth, uint32 textLength, uint32 glyphCount, uint16* clusterMap, float* glyphAdvances, GlyphOffset* glyphOffsets, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, float* modifiedGlyphAdvances, GlyphOffset* modifiedGlyphOffsets) ApplyCharacterSpacing;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer1 self, ref IDWriteFontFace fontFace, DWRITE_BASELINE baseline, IntBool isVertical, IntBool isSimulationAllowed, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, char16* localeName, out int32 baselineCoordinate, out IntBool exists) GetBaseline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer1 self, ref IDWriteTextAnalysisSource1 analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink1 analysisSink) AnalyzeVerticalGlyphOrientation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer1 self, DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, IntBool isSideways, out DWriteMatrix transform) GetGlyphOrientationTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer1 self, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, out DWRITE_SCRIPT_PROPERTIES scriptProperties) GetScriptProperties;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer1 self, char16* textString, uint32 textLength, ref IDWriteFontFace fontFace, out IntBool isTextSimple, out uint32 textLengthRead, uint16* glyphIndices) GetTextComplexity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer1 self, IDWriteFontFace* fontFace, float fontEmSize, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, uint32 textLength, uint32 glyphCount, char16* textString, uint16* clusterMap, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, DWRITE_JUSTIFICATION_OPPORTUNITY* justificationOpportunities) GetJustificationOpportunities;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer1 self, float lineWidth, uint32 glyphCount, DWRITE_JUSTIFICATION_OPPORTUNITY* justificationOpportunities, float* glyphAdvances, GlyphOffset* glyphOffsets, float* justifiedGlyphAdvances, GlyphOffset* justifiedGlyphOffsets) JustifyGlyphAdvances;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer1 self, IDWriteFontFace* fontFace, float fontEmSize, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, uint32 textLength, uint32 glyphCount, uint32 maxGlyphCount, uint16* clusterMap, uint16* glyphIndices, float* glyphAdvances, float* justifiedGlyphAdvances, GlyphOffset* justifiedGlyphOffsets, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, out uint32 actualGlyphCount, uint16* modifiedClusterMap, uint16* modifiedGlyphIndices, float* modifiedGlyphAdvances, GlyphOffset* modifiedGlyphOffsets) GetJustifiedGlyphs;
			}
		}
		[CRepr]
		public struct IDWriteTextAnalysisSource1 : IDWriteTextAnalysisSource
		{
			public const new Guid IID = .(0x639cfad8, 0x0fb4, 0x4b21, 0xa5, 0x8a, 0x06, 0x79, 0x20, 0x12, 0x00, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetVerticalGlyphOrientation(uint32 textPosition, out uint32 textLength, out DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation, out uint8 bidiLevel) mut => VT.GetVerticalGlyphOrientation(ref this, textPosition, out textLength, out glyphOrientation, out bidiLevel);

			[CRepr]
			public struct VTable : IDWriteTextAnalysisSource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalysisSource1 self, uint32 textPosition, out uint32 textLength, out DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation, out uint8 bidiLevel) GetVerticalGlyphOrientation;
			}
		}
		[CRepr]
		public struct IDWriteTextAnalysisSink1 : IDWriteTextAnalysisSink
		{
			public const new Guid IID = .(0xb0d941a0, 0x85e7, 0x4d8b, 0x9f, 0xd3, 0x5c, 0xed, 0x99, 0x34, 0x48, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetGlyphOrientation(uint32 textPosition, uint32 textLength, DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, uint8 adjustedBidiLevel, IntBool isSideways, IntBool isRightToLeft) mut => VT.SetGlyphOrientation(ref this, textPosition, textLength, glyphOrientationAngle, adjustedBidiLevel, isSideways, isRightToLeft);

			[CRepr]
			public struct VTable : IDWriteTextAnalysisSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalysisSink1 self, uint32 textPosition, uint32 textLength, DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, uint8 adjustedBidiLevel, IntBool isSideways, IntBool isRightToLeft) SetGlyphOrientation;
			}
		}
		[CRepr]
		public struct IDWriteTextLayout1 : IDWriteTextLayout
		{
			public const new Guid IID = .(0x9064d822, 0x80a7, 0x465c, 0xa9, 0x86, 0xdf, 0x65, 0xf7, 0x8b, 0x8f, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetPairKerning(IntBool isPairKerningEnabled, TextRange textRange) mut => VT.SetPairKerning(ref this, isPairKerningEnabled, textRange);
			public HResult GetPairKerning(uint32 currentPosition, out IntBool isPairKerningEnabled, TextRange* textRange) mut => VT.GetPairKerning(ref this, currentPosition, out isPairKerningEnabled, textRange);
			public HResult SetCharacterSpacing(float leadingSpacing, float trailingSpacing, float minimumAdvanceWidth, TextRange textRange) mut => VT.SetCharacterSpacing(ref this, leadingSpacing, trailingSpacing, minimumAdvanceWidth, textRange);
			public HResult GetCharacterSpacing(uint32 currentPosition, out float leadingSpacing, out float trailingSpacing, out float minimumAdvanceWidth, TextRange* textRange) mut => VT.GetCharacterSpacing(ref this, currentPosition, out leadingSpacing, out trailingSpacing, out minimumAdvanceWidth, textRange);

			[CRepr]
			public struct VTable : IDWriteTextLayout.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout1 self, IntBool isPairKerningEnabled, TextRange textRange) SetPairKerning;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout1 self, uint32 currentPosition, out IntBool isPairKerningEnabled, TextRange* textRange) GetPairKerning;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout1 self, float leadingSpacing, float trailingSpacing, float minimumAdvanceWidth, TextRange textRange) SetCharacterSpacing;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout1 self, uint32 currentPosition, out float leadingSpacing, out float trailingSpacing, out float minimumAdvanceWidth, TextRange* textRange) GetCharacterSpacing;
			}
		}
		[CRepr]
		public struct IDWriteBitmapRenderTarget1 : IDWriteBitmapRenderTarget
		{
			public const new Guid IID = .(0x791e8298, 0x3ef3, 0x4230, 0x98, 0x80, 0xc9, 0xbd, 0xec, 0xc4, 0x20, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public DWRITE_TEXT_ANTIALIAS_MODE GetTextAntialiasMode() mut => VT.GetTextAntialiasMode(ref this);
			public HResult SetTextAntialiasMode(DWRITE_TEXT_ANTIALIAS_MODE antialiasMode) mut => VT.SetTextAntialiasMode(ref this, antialiasMode);

			[CRepr]
			public struct VTable : IDWriteBitmapRenderTarget.VTable
			{
				public new function [CallingConvention(.Stdcall)] DWRITE_TEXT_ANTIALIAS_MODE(ref IDWriteBitmapRenderTarget1 self) GetTextAntialiasMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteBitmapRenderTarget1 self, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode) SetTextAntialiasMode;
			}
		}
		[CRepr]
		public struct IDWriteTextRenderer1 : IDWriteTextRenderer
		{
			public const new Guid IID = .(0xd3e0e934, 0x22a0, 0x427e, 0xaa, 0xe4, 0x7d, 0x95, 0x74, 0xb5, 0x9d, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult DrawGlyphRun(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, DWRITE_MEASURING_MODE measuringMode, in GlyphRun glyphRun, in DWRITE_GLYPH_RUN_DESCRIPTION glyphRunDescription, IUnknown* clientDrawingEffect) mut => VT.DrawGlyphRun(ref this, clientDrawingContext, baselineOriginX, baselineOriginY, orientationAngle, measuringMode, glyphRun, glyphRunDescription, clientDrawingEffect);
			public HResult DrawUnderline(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, in DWRITE_UNDERLINE underline, IUnknown* clientDrawingEffect) mut => VT.DrawUnderline(ref this, clientDrawingContext, baselineOriginX, baselineOriginY, orientationAngle, underline, clientDrawingEffect);
			public HResult DrawStrikethrough(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, in DWRITE_STRIKETHROUGH strikethrough, IUnknown* clientDrawingEffect) mut => VT.DrawStrikethrough(ref this, clientDrawingContext, baselineOriginX, baselineOriginY, orientationAngle, strikethrough, clientDrawingEffect);
			public HResult DrawInlineObject(void* clientDrawingContext, float originX, float originY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, ref IDWriteInlineObject inlineObject, IntBool isSideways, IntBool isRightToLeft, IUnknown* clientDrawingEffect) mut => VT.DrawInlineObject(ref this, clientDrawingContext, originX, originY, orientationAngle, ref inlineObject, isSideways, isRightToLeft, clientDrawingEffect);

			[CRepr]
			public struct VTable : IDWriteTextRenderer.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextRenderer1 self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, DWRITE_MEASURING_MODE measuringMode, in GlyphRun glyphRun, in DWRITE_GLYPH_RUN_DESCRIPTION glyphRunDescription, IUnknown* clientDrawingEffect) DrawGlyphRun;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextRenderer1 self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, in DWRITE_UNDERLINE underline, IUnknown* clientDrawingEffect) DrawUnderline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextRenderer1 self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, in DWRITE_STRIKETHROUGH strikethrough, IUnknown* clientDrawingEffect) DrawStrikethrough;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextRenderer1 self, void* clientDrawingContext, float originX, float originY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, ref IDWriteInlineObject inlineObject, IntBool isSideways, IntBool isRightToLeft, IUnknown* clientDrawingEffect) DrawInlineObject;
			}
		}
		[CRepr]
		public struct IDWriteTextFormat1 : IDWriteTextFormat
		{
			public const new Guid IID = .(0x5f174b49, 0x0d8b, 0x4cfb, 0x8b, 0xca, 0xf1, 0xcc, 0xe9, 0xd0, 0x6c, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetVerticalGlyphOrientation(DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation) mut => VT.SetVerticalGlyphOrientation(ref this, glyphOrientation);
			public DWRITE_VERTICAL_GLYPH_ORIENTATION GetVerticalGlyphOrientation() mut => VT.GetVerticalGlyphOrientation(ref this);
			public HResult SetLastLineWrapping(IntBool isLastLineWrappingEnabled) mut => VT.SetLastLineWrapping(ref this, isLastLineWrappingEnabled);
			public IntBool GetLastLineWrapping() mut => VT.GetLastLineWrapping(ref this);
			public HResult SetOpticalAlignment(DWRITE_OPTICAL_ALIGNMENT opticalAlignment) mut => VT.SetOpticalAlignment(ref this, opticalAlignment);
			public DWRITE_OPTICAL_ALIGNMENT GetOpticalAlignment() mut => VT.GetOpticalAlignment(ref this);
			public HResult SetFontFallback(ref IDWriteFontFallback fontFallback) mut => VT.SetFontFallback(ref this, ref fontFallback);
			public HResult GetFontFallback(out IDWriteFontFallback* fontFallback) mut => VT.GetFontFallback(ref this, out fontFallback);

			[CRepr]
			public struct VTable : IDWriteTextFormat.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat1 self, DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation) SetVerticalGlyphOrientation;
				public new function [CallingConvention(.Stdcall)] DWRITE_VERTICAL_GLYPH_ORIENTATION(ref IDWriteTextFormat1 self) GetVerticalGlyphOrientation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat1 self, IntBool isLastLineWrappingEnabled) SetLastLineWrapping;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteTextFormat1 self) GetLastLineWrapping;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat1 self, DWRITE_OPTICAL_ALIGNMENT opticalAlignment) SetOpticalAlignment;
				public new function [CallingConvention(.Stdcall)] DWRITE_OPTICAL_ALIGNMENT(ref IDWriteTextFormat1 self) GetOpticalAlignment;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat1 self, ref IDWriteFontFallback fontFallback) SetFontFallback;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat1 self, out IDWriteFontFallback* fontFallback) GetFontFallback;
			}
		}
		[CRepr]
		public struct IDWriteTextLayout2 : IDWriteTextLayout1
		{
			public const new Guid IID = .(0x1093c18f, 0x8d5e, 0x43f0, 0xb0, 0x64, 0x09, 0x17, 0x31, 0x1b, 0x52, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetMetrics(out DWRITE_TEXT_METRICS1 textMetrics) mut => VT.GetMetrics(ref this, out textMetrics);
			public HResult SetVerticalGlyphOrientation(DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation) mut => VT.SetVerticalGlyphOrientation(ref this, glyphOrientation);
			public DWRITE_VERTICAL_GLYPH_ORIENTATION GetVerticalGlyphOrientation() mut => VT.GetVerticalGlyphOrientation(ref this);
			public HResult SetLastLineWrapping(IntBool isLastLineWrappingEnabled) mut => VT.SetLastLineWrapping(ref this, isLastLineWrappingEnabled);
			public IntBool GetLastLineWrapping() mut => VT.GetLastLineWrapping(ref this);
			public HResult SetOpticalAlignment(DWRITE_OPTICAL_ALIGNMENT opticalAlignment) mut => VT.SetOpticalAlignment(ref this, opticalAlignment);
			public DWRITE_OPTICAL_ALIGNMENT GetOpticalAlignment() mut => VT.GetOpticalAlignment(ref this);
			public HResult SetFontFallback(ref IDWriteFontFallback fontFallback) mut => VT.SetFontFallback(ref this, ref fontFallback);
			public HResult GetFontFallback(out IDWriteFontFallback* fontFallback) mut => VT.GetFontFallback(ref this, out fontFallback);

			[CRepr]
			public struct VTable : IDWriteTextLayout1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout2 self, out DWRITE_TEXT_METRICS1 textMetrics) GetMetrics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout2 self, DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation) SetVerticalGlyphOrientation;
				public new function [CallingConvention(.Stdcall)] DWRITE_VERTICAL_GLYPH_ORIENTATION(ref IDWriteTextLayout2 self) GetVerticalGlyphOrientation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout2 self, IntBool isLastLineWrappingEnabled) SetLastLineWrapping;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteTextLayout2 self) GetLastLineWrapping;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout2 self, DWRITE_OPTICAL_ALIGNMENT opticalAlignment) SetOpticalAlignment;
				public new function [CallingConvention(.Stdcall)] DWRITE_OPTICAL_ALIGNMENT(ref IDWriteTextLayout2 self) GetOpticalAlignment;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout2 self, ref IDWriteFontFallback fontFallback) SetFontFallback;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout2 self, out IDWriteFontFallback* fontFallback) GetFontFallback;
			}
		}
		[CRepr]
		public struct IDWriteTextAnalyzer2 : IDWriteTextAnalyzer1
		{
			public const new Guid IID = .(0x553a9ff3, 0x5693, 0x4df7, 0xb5, 0x2b, 0x74, 0x80, 0x6f, 0x7f, 0x2e, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetGlyphOrientationTransform(DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, IntBool isSideways, float originX, float originY, out DWriteMatrix transform) mut => VT.GetGlyphOrientationTransform(ref this, glyphOrientationAngle, isSideways, originX, originY, out transform);
			public HResult GetTypographicFeatures(ref IDWriteFontFace fontFace, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, char16* localeName, uint32 maxTagCount, out uint32 actualTagCount, FontFeatureTag* tags) mut => VT.GetTypographicFeatures(ref this, ref fontFace, scriptAnalysis, localeName, maxTagCount, out actualTagCount, tags);
			public HResult CheckTypographicFeature(ref IDWriteFontFace fontFace, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, char16* localeName, FontFeatureTag featureTag, uint32 glyphCount, uint16* glyphIndices, uint8* featureApplies) mut => VT.CheckTypographicFeature(ref this, ref fontFace, scriptAnalysis, localeName, featureTag, glyphCount, glyphIndices, featureApplies);

			[CRepr]
			public struct VTable : IDWriteTextAnalyzer1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer2 self, DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, IntBool isSideways, float originX, float originY, out DWriteMatrix transform) GetGlyphOrientationTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer2 self, ref IDWriteFontFace fontFace, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, char16* localeName, uint32 maxTagCount, out uint32 actualTagCount, FontFeatureTag* tags) GetTypographicFeatures;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextAnalyzer2 self, ref IDWriteFontFace fontFace, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, char16* localeName, FontFeatureTag featureTag, uint32 glyphCount, uint16* glyphIndices, uint8* featureApplies) CheckTypographicFeature;
			}
		}
		[CRepr]
		public struct IDWriteFontFallback : IUnknown
		{
			public const new Guid IID = .(0xefa008f9, 0xf7a1, 0x48bf, 0xb0, 0x5c, 0xf2, 0x24, 0x71, 0x3c, 0xc0, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult MapCharacters(ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, IDWriteFontCollection* baseFontCollection, char16* baseFamilyName, FontWeight baseWeight, FontStyle baseStyle, FontStretch baseStretch, out uint32 mappedLength, IDWriteFont** mappedFont, out float scale) mut => VT.MapCharacters(ref this, ref analysisSource, textPosition, textLength, baseFontCollection, baseFamilyName, baseWeight, baseStyle, baseStretch, out mappedLength, mappedFont, out scale);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFallback self, ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, IDWriteFontCollection* baseFontCollection, char16* baseFamilyName, FontWeight baseWeight, FontStyle baseStyle, FontStretch baseStretch, out uint32 mappedLength, IDWriteFont** mappedFont, out float scale) MapCharacters;
			}
		}
		[CRepr]
		public struct IDWriteFontFallbackBuilder : IUnknown
		{
			public const new Guid IID = .(0xfd882d06, 0x8aba, 0x4fb8, 0xb8, 0x49, 0x8b, 0xe8, 0xb7, 0x3e, 0x14, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddMapping(DWRITE_UNICODE_RANGE* ranges, uint32 rangesCount, uint16** targetFamilyNames, uint32 targetFamilyNamesCount, IDWriteFontCollection* fontCollection, char16* localeName, char16* baseFamilyName, float scale) mut => VT.AddMapping(ref this, ranges, rangesCount, targetFamilyNames, targetFamilyNamesCount, fontCollection, localeName, baseFamilyName, scale);
			public HResult AddMappings(ref IDWriteFontFallback fontFallback) mut => VT.AddMappings(ref this, ref fontFallback);
			public HResult CreateFontFallback(out IDWriteFontFallback* fontFallback) mut => VT.CreateFontFallback(ref this, out fontFallback);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFallbackBuilder self, DWRITE_UNICODE_RANGE* ranges, uint32 rangesCount, uint16** targetFamilyNames, uint32 targetFamilyNamesCount, IDWriteFontCollection* fontCollection, char16* localeName, char16* baseFamilyName, float scale) AddMapping;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFallbackBuilder self, ref IDWriteFontFallback fontFallback) AddMappings;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFallbackBuilder self, out IDWriteFontFallback* fontFallback) CreateFontFallback;
			}
		}
		[CRepr]
		public struct IDWriteFont2 : IDWriteFont1
		{
			public const new Guid IID = .(0x29748ed6, 0x8c9c, 0x4a6a, 0xbe, 0x0b, 0xd9, 0x12, 0xe8, 0x53, 0x89, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public IntBool IsColorFont() mut => VT.IsColorFont(ref this);

			[CRepr]
			public struct VTable : IDWriteFont1.VTable
			{
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFont2 self) IsColorFont;
			}
		}
		[CRepr]
		public struct IDWriteFontFace2 : IDWriteFontFace1
		{
			public const new Guid IID = .(0xd8b768ff, 0x64bc, 0x4e66, 0x98, 0x2b, 0xec, 0x8e, 0x87, 0xf6, 0x93, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public IntBool IsColorFont() mut => VT.IsColorFont(ref this);
			public uint32 GetColorPaletteCount() mut => VT.GetColorPaletteCount(ref this);
			public uint32 GetPaletteEntryCount() mut => VT.GetPaletteEntryCount(ref this);
			public HResult GetPaletteEntries(uint32 colorPaletteIndex, uint32 firstEntryIndex, uint32 entryCount, ColorF* paletteEntries) mut => VT._GetPaletteEntries(ref this, colorPaletteIndex, firstEntryIndex, entryCount, paletteEntries);
			public HResult GetRecommendedRenderingMode(float fontEmSize, float dpiX, float dpiY, DWriteMatrix* transform, IntBool isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, out DWRITE_RENDERING_MODE renderingMode, out DWRITE_GRID_FIT_MODE gridFitMode) mut => VT.GetRecommendedRenderingMode(ref this, fontEmSize, dpiX, dpiY, transform, isSideways, outlineThreshold, measuringMode, renderingParams, out renderingMode, out gridFitMode);

			[CRepr]
			public struct VTable : IDWriteFontFace1.VTable
			{
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFontFace2 self) IsColorFont;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontFace2 self) GetColorPaletteCount;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontFace2 self) GetPaletteEntryCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace2 self, uint32 colorPaletteIndex, uint32 firstEntryIndex, uint32 entryCount, ColorF* paletteEntries) _GetPaletteEntries;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace2 self, float fontEmSize, float dpiX, float dpiY, DWriteMatrix* transform, IntBool isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, out DWRITE_RENDERING_MODE renderingMode, out DWRITE_GRID_FIT_MODE gridFitMode) GetRecommendedRenderingMode;
			}
		}
		[CRepr]
		public struct IDWriteColorGlyphRunEnumerator : IUnknown
		{
			public const new Guid IID = .(0xd31fbe17, 0xf157, 0x41a2, 0x8d, 0x24, 0xcb, 0x77, 0x9e, 0x05, 0x60, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult MoveNext(out IntBool hasRun) mut => VT.MoveNext(ref this, out hasRun);
			public HResult GetCurrentRun(out ColorGlyphRun* colorGlyphRun) mut => VT.GetCurrentRun(ref this, out colorGlyphRun);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteColorGlyphRunEnumerator self, out IntBool hasRun) MoveNext;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteColorGlyphRunEnumerator self, out ColorGlyphRun* colorGlyphRun) GetCurrentRun;
			}
		}
		[CRepr]
		public struct IDWriteRenderingParams2 : IDWriteRenderingParams1
		{
			public const new Guid IID = .(0xf9d711c3, 0x9777, 0x40ae, 0x87, 0xe8, 0x3e, 0x5a, 0xf9, 0xbf, 0x09, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public DWRITE_GRID_FIT_MODE GetGridFitMode() mut => VT.GetGridFitMode(ref this);

			[CRepr]
			public struct VTable : IDWriteRenderingParams1.VTable
			{
				public new function [CallingConvention(.Stdcall)] DWRITE_GRID_FIT_MODE(ref IDWriteRenderingParams2 self) GetGridFitMode;
			}
		}
		[CRepr]
		public struct IDWriteFactory2 : IDWriteFactory1
		{
			public const new Guid IID = .(0x0439fc60, 0xca44, 0x4994, 0x8d, 0xee, 0x3a, 0x9a, 0xf7, 0xb7, 0x32, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetSystemFontFallback(out IDWriteFontFallback* fontFallback) mut => VT.GetSystemFontFallback(ref this, out fontFallback);
			public HResult CreateFontFallbackBuilder(out IDWriteFontFallbackBuilder* fontFallbackBuilder) mut => VT.CreateFontFallbackBuilder(ref this, out fontFallbackBuilder);
			public HResult TranslateColorGlyphRun(float baselineOriginX, float baselineOriginY, in GlyphRun glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, DWRITE_MEASURING_MODE measuringMode, DWriteMatrix* worldToDeviceTransform, uint32 colorPaletteIndex, out IDWriteColorGlyphRunEnumerator* colorLayers) mut => VT.TranslateColorGlyphRun(ref this, baselineOriginX, baselineOriginY, glyphRun, glyphRunDescription, measuringMode, worldToDeviceTransform, colorPaletteIndex, out colorLayers);
			public HResult CreateCustomRenderingParams(float gamma, float enhancedContrast, float grayscaleEnhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, DWRITE_GRID_FIT_MODE gridFitMode, out IDWriteRenderingParams2* renderingParams) mut => VT.CreateCustomRenderingParams(ref this, gamma, enhancedContrast, grayscaleEnhancedContrast, clearTypeLevel, pixelGeometry, renderingMode, gridFitMode, out renderingParams);
			public HResult CreateGlyphRunAnalysis(in GlyphRun glyphRun, DWriteMatrix* transform, DWRITE_RENDERING_MODE renderingMode, DWRITE_MEASURING_MODE measuringMode, DWRITE_GRID_FIT_MODE gridFitMode, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode, float baselineOriginX, float baselineOriginY, out IDWriteGlyphRunAnalysis* glyphRunAnalysis) mut => VT.CreateGlyphRunAnalysis(ref this, glyphRun, transform, renderingMode, measuringMode, gridFitMode, antialiasMode, baselineOriginX, baselineOriginY, out glyphRunAnalysis);

			[CRepr]
			public struct VTable : IDWriteFactory1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory2 self, out IDWriteFontFallback* fontFallback) GetSystemFontFallback;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory2 self, out IDWriteFontFallbackBuilder* fontFallbackBuilder) CreateFontFallbackBuilder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory2 self, float baselineOriginX, float baselineOriginY, in GlyphRun glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, DWRITE_MEASURING_MODE measuringMode, DWriteMatrix* worldToDeviceTransform, uint32 colorPaletteIndex, out IDWriteColorGlyphRunEnumerator* colorLayers) TranslateColorGlyphRun;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory2 self, float gamma, float enhancedContrast, float grayscaleEnhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, DWRITE_GRID_FIT_MODE gridFitMode, out IDWriteRenderingParams2* renderingParams) CreateCustomRenderingParams;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory2 self, in GlyphRun glyphRun, DWriteMatrix* transform, DWRITE_RENDERING_MODE renderingMode, DWRITE_MEASURING_MODE measuringMode, DWRITE_GRID_FIT_MODE gridFitMode, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode, float baselineOriginX, float baselineOriginY, out IDWriteGlyphRunAnalysis* glyphRunAnalysis) CreateGlyphRunAnalysis;
			}
		}
		[CRepr]
		public struct IDWriteRenderingParams3 : IDWriteRenderingParams2
		{
			public const new Guid IID = .(0xb7924baa, 0x391b, 0x412a, 0x8c, 0x5c, 0xe4, 0x4c, 0xc2, 0xd8, 0x67, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public RenderingMode1 GetRenderingMode1() mut => VT.GetRenderingMode1(ref this);

			[CRepr]
			public struct VTable : IDWriteRenderingParams2.VTable
			{
				public new function [CallingConvention(.Stdcall)] RenderingMode1(ref IDWriteRenderingParams3 self) GetRenderingMode1;
			}
		}
		[CRepr]
		public struct IDWriteFactory3 : IDWriteFactory2
		{
			public const new Guid IID = .(0x9a1b41c3, 0xd3bb, 0x466a, 0x87, 0xfc, 0xfe, 0x67, 0x55, 0x6a, 0x3b, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateGlyphRunAnalysis(in GlyphRun glyphRun, DWriteMatrix* transform, RenderingMode1 renderingMode, DWRITE_MEASURING_MODE measuringMode, DWRITE_GRID_FIT_MODE gridFitMode, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode, float baselineOriginX, float baselineOriginY, out IDWriteGlyphRunAnalysis* glyphRunAnalysis) mut => VT.CreateGlyphRunAnalysis(ref this, glyphRun, transform, renderingMode, measuringMode, gridFitMode, antialiasMode, baselineOriginX, baselineOriginY, out glyphRunAnalysis);
			public HResult CreateCustomRenderingParams(float gamma, float enhancedContrast, float grayscaleEnhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, RenderingMode1 renderingMode, DWRITE_GRID_FIT_MODE gridFitMode, out IDWriteRenderingParams3* renderingParams) mut => VT.CreateCustomRenderingParams(ref this, gamma, enhancedContrast, grayscaleEnhancedContrast, clearTypeLevel, pixelGeometry, renderingMode, gridFitMode, out renderingParams);
			public HResult CreateFontFaceReference(ref IDWriteFontFile fontFile, uint32 faceIndex, FontSimulations fontSimulations, out IDWriteFontFaceReference* fontFaceReference) mut => VT.CreateFontFaceReference(ref this, ref fontFile, faceIndex, fontSimulations, out fontFaceReference);
			public HResult CreateFontFaceReference(char16* filePath, FileTime* lastWriteTime, uint32 faceIndex, FontSimulations fontSimulations, out IDWriteFontFaceReference* fontFaceReference) mut => VT.CreateFontFaceReference2(ref this, filePath, lastWriteTime, faceIndex, fontSimulations, out fontFaceReference);
			public HResult GetSystemFontSet(out IDWriteFontSet* fontSet) mut => VT.GetSystemFontSet(ref this, out fontSet);
			public HResult CreateFontSetBuilder(out IDWriteFontSetBuilder* fontSetBuilder) mut => VT.CreateFontSetBuilder(ref this, out fontSetBuilder);
			public HResult CreateFontCollectionFromFontSet(ref IDWriteFontSet fontSet, out IDWriteFontCollection1* fontCollection) mut => VT.CreateFontCollectionFromFontSet(ref this, ref fontSet, out fontCollection);
			public HResult GetSystemFontCollection(IntBool includeDownloadableFonts, out IDWriteFontCollection1* fontCollection, IntBool checkForUpdates) mut => VT.GetSystemFontCollection(ref this, includeDownloadableFonts, out fontCollection, checkForUpdates);
			public HResult GetFontDownloadQueue(out IDWriteFontDownloadQueue* fontDownloadQueue) mut => VT.GetFontDownloadQueue(ref this, out fontDownloadQueue);

			[CRepr]
			public struct VTable : IDWriteFactory2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory3 self, in GlyphRun glyphRun, DWriteMatrix* transform, RenderingMode1 renderingMode, DWRITE_MEASURING_MODE measuringMode, DWRITE_GRID_FIT_MODE gridFitMode, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode, float baselineOriginX, float baselineOriginY, out IDWriteGlyphRunAnalysis* glyphRunAnalysis) CreateGlyphRunAnalysis;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory3 self, float gamma, float enhancedContrast, float grayscaleEnhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, RenderingMode1 renderingMode, DWRITE_GRID_FIT_MODE gridFitMode, out IDWriteRenderingParams3* renderingParams) CreateCustomRenderingParams;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory3 self, ref IDWriteFontFile fontFile, uint32 faceIndex, FontSimulations fontSimulations, out IDWriteFontFaceReference* fontFaceReference) CreateFontFaceReference;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory3 self, char16* filePath, FileTime* lastWriteTime, uint32 faceIndex, FontSimulations fontSimulations, out IDWriteFontFaceReference* fontFaceReference) CreateFontFaceReference2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory3 self, out IDWriteFontSet* fontSet) GetSystemFontSet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory3 self, out IDWriteFontSetBuilder* fontSetBuilder) CreateFontSetBuilder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory3 self, ref IDWriteFontSet fontSet, out IDWriteFontCollection1* fontCollection) CreateFontCollectionFromFontSet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory3 self, IntBool includeDownloadableFonts, out IDWriteFontCollection1* fontCollection, IntBool checkForUpdates) GetSystemFontCollection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory3 self, out IDWriteFontDownloadQueue* fontDownloadQueue) GetFontDownloadQueue;
			}
		}
		[CRepr]
		public struct IDWriteFontSet : IUnknown
		{
			public const new Guid IID = .(0x53585141, 0xd9f8, 0x4095, 0x83, 0x21, 0xd7, 0x3c, 0xf6, 0xbd, 0x11, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetFontCount() mut => VT.GetFontCount(ref this);
			public HResult GetFontFaceReference(uint32 listIndex, out IDWriteFontFaceReference* fontFaceReference) mut => VT.GetFontFaceReference(ref this, listIndex, out fontFaceReference);
			public HResult FindFontFaceReference(ref IDWriteFontFaceReference fontFaceReference, out uint32 listIndex, out IntBool exists) mut => VT.FindFontFaceReference(ref this, ref fontFaceReference, out listIndex, out exists);
			public HResult FindFontFace(ref IDWriteFontFace fontFace, out uint32 listIndex, out IntBool exists) mut => VT.FindFontFace(ref this, ref fontFace, out listIndex, out exists);
			public HResult GetPropertyValues(FontPropertyID propertyID, out IDWriteStringList* values) mut => VT.GetPropertyValues(ref this, propertyID, out values);
			public HResult GetPropertyValues(FontPropertyID propertyID, char16* preferredLocaleNames, out IDWriteStringList* values) mut => VT.GetPropertyValues2(ref this, propertyID, preferredLocaleNames, out values);
			public HResult GetPropertyValues(uint32 listIndex, FontPropertyID propertyId, out IntBool exists, IDWriteLocalizedStrings** values) mut => VT.GetPropertyValues3(ref this, listIndex, propertyId, out exists, values);
			public HResult GetPropertyOccurrenceCount(in FontProperty property, out uint32 propertyOccurrenceCount) mut => VT.GetPropertyOccurrenceCount(ref this, property, out propertyOccurrenceCount);
			public HResult GetMatchingFonts(char16* familyName, FontWeight fontWeight, FontStretch fontStretch, FontStyle fontStyle, out IDWriteFontSet* filteredSet) mut => VT.GetMatchingFonts(ref this, familyName, fontWeight, fontStretch, fontStyle, out filteredSet);
			public HResult GetMatchingFonts(FontProperty* properties, uint32 propertyCount, out IDWriteFontSet* filteredSet) mut => VT.GetMatchingFonts2(ref this, properties, propertyCount, out filteredSet);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontSet self) GetFontCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet self, uint32 listIndex, out IDWriteFontFaceReference* fontFaceReference) GetFontFaceReference;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet self, ref IDWriteFontFaceReference fontFaceReference, out uint32 listIndex, out IntBool exists) FindFontFaceReference;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet self, ref IDWriteFontFace fontFace, out uint32 listIndex, out IntBool exists) FindFontFace;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet self, FontPropertyID propertyID, out IDWriteStringList* values) GetPropertyValues;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet self, FontPropertyID propertyID, char16* preferredLocaleNames, out IDWriteStringList* values) GetPropertyValues2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet self, uint32 listIndex, FontPropertyID propertyId, out IntBool exists, IDWriteLocalizedStrings** values) GetPropertyValues3;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet self, in FontProperty property, out uint32 propertyOccurrenceCount) GetPropertyOccurrenceCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet self, char16* familyName, FontWeight fontWeight, FontStretch fontStretch, FontStyle fontStyle, out IDWriteFontSet* filteredSet) GetMatchingFonts;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet self, FontProperty* properties, uint32 propertyCount, out IDWriteFontSet* filteredSet) GetMatchingFonts2;
			}
		}
		[CRepr]
		public struct IDWriteFontSetBuilder : IUnknown
		{
			public const new Guid IID = .(0x2f642afe, 0x9c68, 0x4f40, 0xb8, 0xbe, 0x45, 0x74, 0x01, 0xaf, 0xcb, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddFontFaceReference(ref IDWriteFontFaceReference fontFaceReference, FontProperty* properties, uint32 propertyCount) mut => VT.AddFontFaceReference(ref this, ref fontFaceReference, properties, propertyCount);
			public HResult AddFontFaceReference(ref IDWriteFontFaceReference fontFaceReference) mut => VT.AddFontFaceReference2(ref this, ref fontFaceReference);
			public HResult AddFontSet(ref IDWriteFontSet fontSet) mut => VT.AddFontSet(ref this, ref fontSet);
			public HResult CreateFontSet(out IDWriteFontSet* fontSet) mut => VT.CreateFontSet(ref this, out fontSet);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSetBuilder self, ref IDWriteFontFaceReference fontFaceReference, FontProperty* properties, uint32 propertyCount) AddFontFaceReference;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSetBuilder self, ref IDWriteFontFaceReference fontFaceReference) AddFontFaceReference2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSetBuilder self, ref IDWriteFontSet fontSet) AddFontSet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSetBuilder self, out IDWriteFontSet* fontSet) CreateFontSet;
			}
		}
		[CRepr]
		public struct IDWriteFontCollection1 : IDWriteFontCollection
		{
			public const new Guid IID = .(0x53585141, 0xd9f8, 0x4095, 0x83, 0x21, 0xd7, 0x3c, 0xf6, 0xbd, 0x11, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFontSet(out IDWriteFontSet* fontSet) mut => VT.GetFontSet(ref this, out fontSet);
			public HResult GetFontFamily(uint32 index, out IDWriteFontFamily1* fontFamily) mut => VT.GetFontFamily(ref this, index, out fontFamily);

			[CRepr]
			public struct VTable : IDWriteFontCollection.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontCollection1 self, out IDWriteFontSet* fontSet) GetFontSet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontCollection1 self, uint32 index, out IDWriteFontFamily1* fontFamily) GetFontFamily;
			}
		}
		[CRepr]
		public struct IDWriteFontFamily1 : IDWriteFontFamily
		{
			public const new Guid IID = .(0xda20d8ef, 0x812a, 0x4c43, 0x98, 0x02, 0x62, 0xec, 0x4a, 0xbd, 0x7a, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public Locality GetFontLocality(uint32 listIndex) mut => VT.GetFontLocality(ref this, listIndex);
			public HResult GetFont(uint32 listIndex, out IDWriteFont3* font) mut => VT.GetFont(ref this, listIndex, out font);
			public HResult GetFontFaceReference(uint32 listIndex, out IDWriteFontFaceReference* fontFaceReference) mut => VT.GetFontFaceReference(ref this, listIndex, out fontFaceReference);

			[CRepr]
			public struct VTable : IDWriteFontFamily.VTable
			{
				public new function [CallingConvention(.Stdcall)] Locality(ref IDWriteFontFamily1 self, uint32 listIndex) GetFontLocality;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFamily1 self, uint32 listIndex, out IDWriteFont3* font) GetFont;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFamily1 self, uint32 listIndex, out IDWriteFontFaceReference* fontFaceReference) GetFontFaceReference;
			}
		}
		[CRepr]
		public struct IDWriteFontList1 : IDWriteFontList
		{
			public const new Guid IID = .(0xda20d8ef, 0x812a, 0x4c43, 0x98, 0x02, 0x62, 0xec, 0x4a, 0xbd, 0x7a, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public Locality GetFontLocality(uint32 listIndex) mut => VT.GetFontLocality(ref this, listIndex);
			public HResult GetFont(uint32 listIndex, out IDWriteFont3* font) mut => VT.GetFont(ref this, listIndex, out font);
			public HResult GetFontFaceReference(uint32 listIndex, out IDWriteFontFaceReference* fontFaceReference) mut => VT.GetFontFaceReference(ref this, listIndex, out fontFaceReference);

			[CRepr]
			public struct VTable : IDWriteFontList.VTable
			{
				public new function [CallingConvention(.Stdcall)] Locality(ref IDWriteFontList1 self, uint32 listIndex) GetFontLocality;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontList1 self, uint32 listIndex, out IDWriteFont3* font) GetFont;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontList1 self, uint32 listIndex, out IDWriteFontFaceReference* fontFaceReference) GetFontFaceReference;
			}
		}
		[CRepr]
		public struct IDWriteFontFaceReference : IUnknown
		{
			public const new Guid IID = .(0x5e7fa7ca, 0xdde3, 0x424c, 0x89, 0xf0, 0x9f, 0xcd, 0x6f, 0xed, 0x58, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateFontFace(out IDWriteFontFace3* fontFace) mut => VT.CreateFontFace(ref this, out fontFace);
			public HResult CreateFontFaceWithSimulations(FontSimulations fontFaceSimulationFlags, out IDWriteFontFace3* fontFace) mut => VT.CreateFontFaceWithSimulations(ref this, fontFaceSimulationFlags, out fontFace);
			public IntBool ComEquals(ref IDWriteFontFaceReference fontFaceReference) mut => VT.ComEquals(ref this, ref fontFaceReference);
			public uint32 GetFontFaceIndex() mut => VT.GetFontFaceIndex(ref this);
			public FontSimulations GetSimulations() mut => VT.GetSimulations(ref this);
			public HResult GetFontFile(out IDWriteFontFile* fontFile) mut => VT.GetFontFile(ref this, out fontFile);
			public uint64 GetLocalFileSize() mut => VT.GetLocalFileSize(ref this);
			public uint64 GetFileSize() mut => VT._GetFileSize(ref this);
			public HResult GetFileTime(out FileTime lastWriteTime) mut => VT.GetFileTime(ref this, out lastWriteTime);
			public Locality GetLocality() mut => VT.GetLocality(ref this);
			public HResult EnqueueFontDownloadRequest() mut => VT.EnqueueFontDownloadRequest(ref this);
			public HResult EnqueueCharacterDownloadRequest(char16* characters, uint32 characterCount) mut => VT.EnqueueCharacterDownloadRequest(ref this, characters, characterCount);
			public HResult EnqueueGlyphDownloadRequest(uint16* glyphIndices, uint32 glyphCount) mut => VT.EnqueueGlyphDownloadRequest(ref this, glyphIndices, glyphCount);
			public HResult EnqueueFileFragmentDownloadRequest(uint64 fileOffset, uint64 fragmentSize) mut => VT.EnqueueFileFragmentDownloadRequest(ref this, fileOffset, fragmentSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFaceReference self, out IDWriteFontFace3* fontFace) CreateFontFace;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFaceReference self, FontSimulations fontFaceSimulationFlags, out IDWriteFontFace3* fontFace) CreateFontFaceWithSimulations;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFontFaceReference self, ref IDWriteFontFaceReference fontFaceReference) ComEquals;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontFaceReference self) GetFontFaceIndex;
				public new function [CallingConvention(.Stdcall)] FontSimulations(ref IDWriteFontFaceReference self) GetSimulations;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFaceReference self, out IDWriteFontFile* fontFile) GetFontFile;
				public new function [CallingConvention(.Stdcall)] uint64(ref IDWriteFontFaceReference self) GetLocalFileSize;
				public new function [CallingConvention(.Stdcall)] uint64(ref IDWriteFontFaceReference self) _GetFileSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFaceReference self, out FileTime lastWriteTime) GetFileTime;
				public new function [CallingConvention(.Stdcall)] Locality(ref IDWriteFontFaceReference self) GetLocality;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFaceReference self) EnqueueFontDownloadRequest;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFaceReference self, char16* characters, uint32 characterCount) EnqueueCharacterDownloadRequest;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFaceReference self, uint16* glyphIndices, uint32 glyphCount) EnqueueGlyphDownloadRequest;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFaceReference self, uint64 fileOffset, uint64 fragmentSize) EnqueueFileFragmentDownloadRequest;
			}
		}
		[CRepr]
		public struct IDWriteFont3 : IDWriteFont2
		{
			public const new Guid IID = .(0x29748ed6, 0x8c9c, 0x4a6a, 0xbe, 0x0b, 0xd9, 0x12, 0xe8, 0x53, 0x89, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateFontFace(out IDWriteFontFace3* fontFace) mut => VT.CreateFontFace(ref this, out fontFace);
			public IntBool ComEquals(ref IDWriteFont font) mut => VT.ComEquals(ref this, ref font);
			public HResult GetFontFaceReference(out IDWriteFontFaceReference* fontFaceReference) mut => VT.GetFontFaceReference(ref this, out fontFaceReference);
			public IntBool HasCharacter(uint32 unicodeValue) mut => VT.HasCharacter(ref this, unicodeValue);
			public Locality GetLocality() mut => VT.GetLocality(ref this);

			[CRepr]
			public struct VTable : IDWriteFont2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFont3 self, out IDWriteFontFace3* fontFace) CreateFontFace;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFont3 self, ref IDWriteFont font) ComEquals;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFont3 self, out IDWriteFontFaceReference* fontFaceReference) GetFontFaceReference;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFont3 self, uint32 unicodeValue) HasCharacter;
				public new function [CallingConvention(.Stdcall)] Locality(ref IDWriteFont3 self) GetLocality;
			}
		}
		[CRepr]
		public struct IDWriteFontFace3 : IDWriteFontFace2
		{
			public const new Guid IID = .(0xd37d7598, 0x09be, 0x4222, 0xa2, 0x36, 0x20, 0x81, 0x34, 0x1c, 0xc1, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFontFaceReference(out IDWriteFontFaceReference* fontFaceReference) mut => VT.GetFontFaceReference(ref this, out fontFaceReference);
			public void GetPanose(out DWRITE_PANOSE panose) mut => VT.GetPanose(ref this, out panose);
			public FontWeight GetWeight() mut => VT.GetWeight(ref this);
			public FontStretch GetStretch() mut => VT.GetStretch(ref this);
			public FontStyle GetStyle() mut => VT.GetStyle(ref this);
			public HResult GetFamilyNames(out IDWriteLocalizedStrings* names) mut => VT.GetFamilyNames(ref this, out names);
			public HResult GetFaceNames(out IDWriteLocalizedStrings* names) mut => VT.GetFaceNames(ref this, out names);
			public HResult GetInformationalStrings(DWRITE_INFORMATIONAL_STRING_ID informationalStringID, IDWriteLocalizedStrings** informationalStrings, out IntBool exists) mut => VT.GetInformationalStrings(ref this, informationalStringID, informationalStrings, out exists);
			public IntBool HasCharacter(uint32 unicodeValue) mut => VT.HasCharacter(ref this, unicodeValue);
			public HResult GetRecommendedRenderingMode(float fontEmSize, float dpiX, float dpiY, DWriteMatrix* transform, IntBool isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, out RenderingMode1 renderingMode, out DWRITE_GRID_FIT_MODE gridFitMode) mut => VT.GetRecommendedRenderingMode(ref this, fontEmSize, dpiX, dpiY, transform, isSideways, outlineThreshold, measuringMode, renderingParams, out renderingMode, out gridFitMode);
			public IntBool IsCharacterLocal(uint32 unicodeValue) mut => VT.IsCharacterLocal(ref this, unicodeValue);
			public IntBool IsGlyphLocal(uint16 glyphId) mut => VT.IsGlyphLocal(ref this, glyphId);
			public HResult AreCharactersLocal(char16* characters, uint32 characterCount, IntBool enqueueIfNotLocal, out IntBool isLocal) mut => VT.AreCharactersLocal(ref this, characters, characterCount, enqueueIfNotLocal, out isLocal);
			public HResult AreGlyphsLocal(uint16* glyphIndices, uint32 glyphCount, IntBool enqueueIfNotLocal, out IntBool isLocal) mut => VT.AreGlyphsLocal(ref this, glyphIndices, glyphCount, enqueueIfNotLocal, out isLocal);

			[CRepr]
			public struct VTable : IDWriteFontFace2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace3 self, out IDWriteFontFaceReference* fontFaceReference) GetFontFaceReference;
				public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFace3 self, out DWRITE_PANOSE panose) GetPanose;
				public new function [CallingConvention(.Stdcall)] FontWeight(ref IDWriteFontFace3 self) GetWeight;
				public new function [CallingConvention(.Stdcall)] FontStretch(ref IDWriteFontFace3 self) GetStretch;
				public new function [CallingConvention(.Stdcall)] FontStyle(ref IDWriteFontFace3 self) GetStyle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace3 self, out IDWriteLocalizedStrings* names) GetFamilyNames;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace3 self, out IDWriteLocalizedStrings* names) GetFaceNames;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace3 self, DWRITE_INFORMATIONAL_STRING_ID informationalStringID, IDWriteLocalizedStrings** informationalStrings, out IntBool exists) GetInformationalStrings;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFontFace3 self, uint32 unicodeValue) HasCharacter;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace3 self, float fontEmSize, float dpiX, float dpiY, DWriteMatrix* transform, IntBool isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, out RenderingMode1 renderingMode, out DWRITE_GRID_FIT_MODE gridFitMode) GetRecommendedRenderingMode;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFontFace3 self, uint32 unicodeValue) IsCharacterLocal;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFontFace3 self, uint16 glyphId) IsGlyphLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace3 self, char16* characters, uint32 characterCount, IntBool enqueueIfNotLocal, out IntBool isLocal) AreCharactersLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace3 self, uint16* glyphIndices, uint32 glyphCount, IntBool enqueueIfNotLocal, out IntBool isLocal) AreGlyphsLocal;
			}
		}
		[CRepr]
		public struct IDWriteStringList : IUnknown
		{
			public const new Guid IID = .(0xcfee3140, 0x1157, 0x47ca, 0x8b, 0x85, 0x31, 0xbf, 0xcf, 0x3f, 0x2d, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetCount() mut => VT.GetCount(ref this);
			public HResult GetLocaleNameLength(uint32 listIndex, out uint32 length) mut => VT.GetLocaleNameLength(ref this, listIndex, out length);
			public HResult GetLocaleName(uint32 listIndex, char16* localeName, uint32 size) mut => VT.GetLocaleName(ref this, listIndex, localeName, size);
			public HResult GetStringLength(uint32 listIndex, out uint32 length) mut => VT.GetStringLength(ref this, listIndex, out length);
			public HResult GetString(uint32 listIndex, char16* stringBuffer, uint32 stringBufferSize) mut => VT.GetString(ref this, listIndex, stringBuffer, stringBufferSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteStringList self) GetCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteStringList self, uint32 listIndex, out uint32 length) GetLocaleNameLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteStringList self, uint32 listIndex, char16* localeName, uint32 size) GetLocaleName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteStringList self, uint32 listIndex, out uint32 length) GetStringLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteStringList self, uint32 listIndex, char16* stringBuffer, uint32 stringBufferSize) GetString;
			}
		}
		[CRepr]
		public struct IDWriteFontDownloadListener : IUnknown
		{
			public const new Guid IID = .(0xb06fe5b9, 0x43ec, 0x4393, 0x88, 0x1b, 0xdb, 0xe4, 0xdc, 0x72, 0xfd, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public void DownloadCompleted(ref IDWriteFontDownloadQueue downloadQueue, IUnknown* context, HResult downloadResult) mut => VT.DownloadCompleted(ref this, ref downloadQueue, context, downloadResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontDownloadListener self, ref IDWriteFontDownloadQueue downloadQueue, IUnknown* context, HResult downloadResult) DownloadCompleted;
			}
		}
		[CRepr]
		public struct IDWriteFontDownloadQueue : IUnknown
		{
			public const new Guid IID = .(0xb71e6052, 0x5aea, 0x4fa3, 0x83, 0x2e, 0xf6, 0x0d, 0x43, 0x1f, 0x7e, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddListener(ref IDWriteFontDownloadListener listener, out uint32 token) mut => VT.AddListener(ref this, ref listener, out token);
			public HResult RemoveListener(uint32 token) mut => VT.RemoveListener(ref this, token);
			public IntBool IsEmpty() mut => VT.IsEmpty(ref this);
			public HResult BeginDownload(IUnknown* context) mut => VT.BeginDownload(ref this, context);
			public HResult CancelDownload() mut => VT.CancelDownload(ref this);
			public uint64 GetGenerationCount() mut => VT.GetGenerationCount(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontDownloadQueue self, ref IDWriteFontDownloadListener listener, out uint32 token) AddListener;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontDownloadQueue self, uint32 token) RemoveListener;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFontDownloadQueue self) IsEmpty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontDownloadQueue self, IUnknown* context) BeginDownload;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontDownloadQueue self) CancelDownload;
				public new function [CallingConvention(.Stdcall)] uint64(ref IDWriteFontDownloadQueue self) GetGenerationCount;
			}
		}
		[CRepr]
		public struct IDWriteGdiInterop1 : IDWriteGdiInterop
		{
			public const new Guid IID = .(0x4556be70, 0x3abd, 0x4f70, 0x90, 0xbe, 0x42, 0x17, 0x80, 0xa6, 0xf5, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateFontFromLOGFONT(in LOGFONTW logFont, IDWriteFontCollection* fontCollection, out IDWriteFont* font) mut => VT.CreateFontFromLOGFONT(ref this, logFont, fontCollection, out font);
			public HResult GetFontSignature(ref IDWriteFontFace fontFace, out FONTSIGNATURE fontSignature) mut => VT.GetFontSignature(ref this, ref fontFace, out fontSignature);
			public HResult GetFontSignature(ref IDWriteFont font, out FONTSIGNATURE fontSignature) mut => VT.GetFontSignature2(ref this, ref font, out fontSignature);
			public HResult GetMatchingFontsByLOGFONT(in LOGFONTA logFont, ref IDWriteFontSet fontSet, out IDWriteFontSet* filteredSet) mut => VT.GetMatchingFontsByLOGFONT(ref this, logFont, ref fontSet, out filteredSet);

			[CRepr]
			public struct VTable : IDWriteGdiInterop.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteGdiInterop1 self, in LOGFONTW logFont, IDWriteFontCollection* fontCollection, out IDWriteFont* font) CreateFontFromLOGFONT;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteGdiInterop1 self, ref IDWriteFontFace fontFace, out FONTSIGNATURE fontSignature) GetFontSignature;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteGdiInterop1 self, ref IDWriteFont font, out FONTSIGNATURE fontSignature) GetFontSignature2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteGdiInterop1 self, in LOGFONTA logFont, ref IDWriteFontSet fontSet, out IDWriteFontSet* filteredSet) GetMatchingFontsByLOGFONT;
			}
		}
		[CRepr]
		public struct IDWriteTextFormat2 : IDWriteTextFormat1
		{
			public const new Guid IID = .(0xf67e0edd, 0x9e3d, 0x4ecc, 0x8c, 0x32, 0x41, 0x83, 0x25, 0x3d, 0xfe, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetLineSpacing(in LineSpacing lineSpacingOptions) mut => VT.SetLineSpacing(ref this, lineSpacingOptions);
			public HResult GetLineSpacing(out LineSpacing lineSpacingOptions) mut => VT.GetLineSpacing(ref this, out lineSpacingOptions);

			[CRepr]
			public struct VTable : IDWriteTextFormat1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat2 self, in LineSpacing lineSpacingOptions) SetLineSpacing;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat2 self, out LineSpacing lineSpacingOptions) GetLineSpacing;
			}
		}
		[CRepr]
		public struct IDWriteTextLayout3 : IDWriteTextLayout2
		{
			public const new Guid IID = .(0x07ddcd52, 0x020e, 0x4de8, 0xac, 0x33, 0x6c, 0x95, 0x3d, 0x83, 0xf9, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult InvalidateLayout() mut => VT.InvalidateLayout(ref this);
			public HResult SetLineSpacing(in LineSpacing lineSpacingOptions) mut => VT.SetLineSpacing(ref this, lineSpacingOptions);
			public HResult GetLineSpacing(out LineSpacing lineSpacingOptions) mut => VT.GetLineSpacing(ref this, out lineSpacingOptions);
			public HResult GetLineMetrics(LineMetrics1* lineMetrics, uint32 maxLineCount, out uint32 actualLineCount) mut => VT.GetLineMetrics(ref this, lineMetrics, maxLineCount, out actualLineCount);

			[CRepr]
			public struct VTable : IDWriteTextLayout2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout3 self) InvalidateLayout;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout3 self, in LineSpacing lineSpacingOptions) SetLineSpacing;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout3 self, out LineSpacing lineSpacingOptions) GetLineSpacing;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout3 self, LineMetrics1* lineMetrics, uint32 maxLineCount, out uint32 actualLineCount) GetLineMetrics;
			}
		}
		[CRepr]
		public struct IDWriteColorGlyphRunEnumerator1 : IDWriteColorGlyphRunEnumerator
		{
			public const new Guid IID = .(0x7c5f86da, 0xc7a1, 0x4f05, 0xb8, 0xe1, 0x55, 0xa1, 0x79, 0xfe, 0x5a, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetCurrentRun(out ColorGlyphRun1* colorGlyphRun) mut => VT.GetCurrentRun(ref this, out colorGlyphRun);

			[CRepr]
			public struct VTable : IDWriteColorGlyphRunEnumerator.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteColorGlyphRunEnumerator1 self, out ColorGlyphRun1* colorGlyphRun) GetCurrentRun;
			}
		}
		[CRepr]
		public struct IDWriteFontFace4 : IDWriteFontFace3
		{
			public const new Guid IID = .(0x27f2a904, 0x4eb8, 0x441d, 0x96, 0x78, 0x05, 0x63, 0xf5, 0x3e, 0x3e, 0x2f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetGlyphImageFormats(uint16 glyphId, uint32 pixelsPerEmFirst, uint32 pixelsPerEmLast, out DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormats) mut => VT.GetGlyphImageFormats(ref this, glyphId, pixelsPerEmFirst, pixelsPerEmLast, out glyphImageFormats);
			public DWRITE_GLYPH_IMAGE_FORMATS GetGlyphImageFormats() mut => VT.GetGlyphImageFormats2(ref this);
			public HResult GetGlyphImageData(uint16 glyphId, uint32 pixelsPerEm, DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, out GlyphImageData glyphData, void** glyphDataContext) mut => VT.GetGlyphImageData(ref this, glyphId, pixelsPerEm, glyphImageFormat, out glyphData, glyphDataContext);
			public void ReleaseGlyphImageData(void* glyphDataContext) mut => VT.ReleaseGlyphImageData(ref this, glyphDataContext);

			[CRepr]
			public struct VTable : IDWriteFontFace3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace4 self, uint16 glyphId, uint32 pixelsPerEmFirst, uint32 pixelsPerEmLast, out DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormats) GetGlyphImageFormats;
				public new function [CallingConvention(.Stdcall)] DWRITE_GLYPH_IMAGE_FORMATS(ref IDWriteFontFace4 self) GetGlyphImageFormats2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace4 self, uint16 glyphId, uint32 pixelsPerEm, DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, out GlyphImageData glyphData, void** glyphDataContext) GetGlyphImageData;
				public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFace4 self, void* glyphDataContext) ReleaseGlyphImageData;
			}
		}
		[CRepr]
		public struct IDWriteFactory4 : IDWriteFactory3
		{
			public const new Guid IID = .(0x4b0b5bd3, 0x0797, 0x4549, 0x8a, 0xc5, 0xfe, 0x91, 0x5c, 0xc5, 0x38, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult TranslateColorGlyphRun(Vector2 baselineOrigin, in GlyphRun glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, DWRITE_GLYPH_IMAGE_FORMATS desiredGlyphImageFormats, DWRITE_MEASURING_MODE measuringMode, DWriteMatrix* worldAndDpiTransform, uint32 colorPaletteIndex, out IDWriteColorGlyphRunEnumerator1* colorLayers) mut => VT.TranslateColorGlyphRun(ref this, baselineOrigin, glyphRun, glyphRunDescription, desiredGlyphImageFormats, measuringMode, worldAndDpiTransform, colorPaletteIndex, out colorLayers);
			public HResult ComputeGlyphOrigins(in GlyphRun glyphRun, Vector2 baselineOrigin, out Vector2 glyphOrigins) mut => VT.ComputeGlyphOrigins(ref this, glyphRun, baselineOrigin, out glyphOrigins);
			public HResult ComputeGlyphOrigins(in GlyphRun glyphRun, DWRITE_MEASURING_MODE measuringMode, Vector2 baselineOrigin, DWriteMatrix* worldAndDpiTransform, out Vector2 glyphOrigins) mut => VT.ComputeGlyphOrigins2(ref this, glyphRun, measuringMode, baselineOrigin, worldAndDpiTransform, out glyphOrigins);

			[CRepr]
			public struct VTable : IDWriteFactory3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory4 self, Vector2 baselineOrigin, in GlyphRun glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, DWRITE_GLYPH_IMAGE_FORMATS desiredGlyphImageFormats, DWRITE_MEASURING_MODE measuringMode, DWriteMatrix* worldAndDpiTransform, uint32 colorPaletteIndex, out IDWriteColorGlyphRunEnumerator1* colorLayers) TranslateColorGlyphRun;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory4 self, in GlyphRun glyphRun, Vector2 baselineOrigin, out Vector2 glyphOrigins) ComputeGlyphOrigins;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory4 self, in GlyphRun glyphRun, DWRITE_MEASURING_MODE measuringMode, Vector2 baselineOrigin, DWriteMatrix* worldAndDpiTransform, out Vector2 glyphOrigins) ComputeGlyphOrigins2;
			}
		}
		[CRepr]
		public struct IDWriteFontSetBuilder1 : IDWriteFontSetBuilder
		{
			public const new Guid IID = .(0x3ff7715f, 0x3cdc, 0x4dc6, 0x9b, 0x72, 0xec, 0x56, 0x21, 0xdc, 0xca, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddFontFile(ref IDWriteFontFile fontFile) mut => VT.AddFontFile(ref this, ref fontFile);

			[CRepr]
			public struct VTable : IDWriteFontSetBuilder.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSetBuilder1 self, ref IDWriteFontFile fontFile) AddFontFile;
			}
		}
		[CRepr]
		public struct IDWriteAsyncResult : IUnknown
		{
			public const new Guid IID = .(0xce25f8fd, 0x863b, 0x4d13, 0x96, 0x51, 0xc1, 0xf8, 0x8d, 0xc7, 0x3f, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public Handle GetWaitHandle() mut => VT.GetWaitHandle(ref this);
			public HResult GetResult() mut => VT.GetResult(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] Handle(ref IDWriteAsyncResult self) GetWaitHandle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteAsyncResult self) GetResult;
			}
		}
		[CRepr]
		public struct IDWriteRemoteFontFileStream : IDWriteFontFileStream
		{
			public const new Guid IID = .(0x4db3757a, 0x2c72, 0x4ed9, 0xb2, 0xb6, 0x1a, 0xba, 0xbe, 0x1a, 0xff, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetLocalFileSize(out uint64 localFileSize) mut => VT.GetLocalFileSize(ref this, out localFileSize);
			public HResult GetFileFragmentLocality(uint64 fileOffset, uint64 fragmentSize, out IntBool isLocal, out uint64 partialSize) mut => VT.GetFileFragmentLocality(ref this, fileOffset, fragmentSize, out isLocal, out partialSize);
			public Locality GetLocality() mut => VT.GetLocality(ref this);
			public HResult BeginDownload(in Guid downloadOperationID, FileFragment* fileFragments, uint32 fragmentCount, IDWriteAsyncResult** asyncResult) mut => VT.BeginDownload(ref this, downloadOperationID, fileFragments, fragmentCount, asyncResult);

			[CRepr]
			public struct VTable : IDWriteFontFileStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteRemoteFontFileStream self, out uint64 localFileSize) GetLocalFileSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteRemoteFontFileStream self, uint64 fileOffset, uint64 fragmentSize, out IntBool isLocal, out uint64 partialSize) GetFileFragmentLocality;
				public new function [CallingConvention(.Stdcall)] Locality(ref IDWriteRemoteFontFileStream self) GetLocality;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteRemoteFontFileStream self, in Guid downloadOperationID, FileFragment* fileFragments, uint32 fragmentCount, IDWriteAsyncResult** asyncResult) BeginDownload;
			}
		}
		[CRepr]
		public struct IDWriteRemoteFontFileLoader : IDWriteFontFileLoader
		{
			public const new Guid IID = .(0x68648c83, 0x6ede, 0x46c0, 0xab, 0x46, 0x20, 0x08, 0x3a, 0x88, 0x7f, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateRemoteStreamFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out IDWriteRemoteFontFileStream* fontFileStream) mut => VT.CreateRemoteStreamFromKey(ref this, fontFileReferenceKey, fontFileReferenceKeySize, out fontFileStream);
			public HResult GetLocalityFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out Locality locality) mut => VT.GetLocalityFromKey(ref this, fontFileReferenceKey, fontFileReferenceKeySize, out locality);
			public HResult CreateFontFileReferenceFromUrl(ref IDWriteFactory factory, char16* baseUrl, char16* fontFileUrl, out IDWriteFontFile* fontFile) mut => VT.CreateFontFileReferenceFromUrl(ref this, ref factory, baseUrl, fontFileUrl, out fontFile);

			[CRepr]
			public struct VTable : IDWriteFontFileLoader.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteRemoteFontFileLoader self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out IDWriteRemoteFontFileStream* fontFileStream) CreateRemoteStreamFromKey;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteRemoteFontFileLoader self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out Locality locality) GetLocalityFromKey;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteRemoteFontFileLoader self, ref IDWriteFactory factory, char16* baseUrl, char16* fontFileUrl, out IDWriteFontFile* fontFile) CreateFontFileReferenceFromUrl;
			}
		}
		[CRepr]
		public struct IDWriteInMemoryFontFileLoader : IDWriteFontFileLoader
		{
			public const new Guid IID = .(0xdc102f47, 0xa12d, 0x4b1c, 0x82, 0x2d, 0x9e, 0x11, 0x7e, 0x33, 0x04, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateInMemoryFontFileReference(ref IDWriteFactory factory, void* fontData, uint32 fontDataSize, IUnknown* ownerObject, out IDWriteFontFile* fontFile) mut => VT.CreateInMemoryFontFileReference(ref this, ref factory, fontData, fontDataSize, ownerObject, out fontFile);
			public uint32 GetFileCount() mut => VT.GetFileCount(ref this);

			[CRepr]
			public struct VTable : IDWriteFontFileLoader.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteInMemoryFontFileLoader self, ref IDWriteFactory factory, void* fontData, uint32 fontDataSize, IUnknown* ownerObject, out IDWriteFontFile* fontFile) CreateInMemoryFontFileReference;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteInMemoryFontFileLoader self) GetFileCount;
			}
		}
		[CRepr]
		public struct IDWriteFactory5 : IDWriteFactory4
		{
			public const new Guid IID = .(0x958db99a, 0xbe2a, 0x4f09, 0xaf, 0x7d, 0x65, 0x18, 0x98, 0x03, 0xd1, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateFontSetBuilder(out IDWriteFontSetBuilder1* fontSetBuilder) mut => VT.CreateFontSetBuilder(ref this, out fontSetBuilder);
			public HResult CreateInMemoryFontFileLoader(out IDWriteInMemoryFontFileLoader* newLoader) mut => VT.CreateInMemoryFontFileLoader(ref this, out newLoader);
			public HResult CreateHttpFontFileLoader(char16* referrerUrl, char16* extraHeaders, out IDWriteRemoteFontFileLoader* newLoader) mut => VT.CreateHttpFontFileLoader(ref this, referrerUrl, extraHeaders, out newLoader);
			public ContainerType AnalyzeContainerType(void* fileData, uint32 fileDataSize) mut => VT.AnalyzeContainerType(ref this, fileData, fileDataSize);
			public HResult UnpackFontFile(ContainerType containerType, void* fileData, uint32 fileDataSize, out IDWriteFontFileStream* unpackedFontStream) mut => VT.UnpackFontFile(ref this, containerType, fileData, fileDataSize, out unpackedFontStream);

			[CRepr]
			public struct VTable : IDWriteFactory4.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory5 self, out IDWriteFontSetBuilder1* fontSetBuilder) CreateFontSetBuilder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory5 self, out IDWriteInMemoryFontFileLoader* newLoader) CreateInMemoryFontFileLoader;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory5 self, char16* referrerUrl, char16* extraHeaders, out IDWriteRemoteFontFileLoader* newLoader) CreateHttpFontFileLoader;
				public new function [CallingConvention(.Stdcall)] ContainerType(ref IDWriteFactory5 self, void* fileData, uint32 fileDataSize) AnalyzeContainerType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory5 self, ContainerType containerType, void* fileData, uint32 fileDataSize, out IDWriteFontFileStream* unpackedFontStream) UnpackFontFile;
			}
		}
		[CRepr]
		public struct IDWriteFactory6 : IDWriteFactory5
		{
			public const new Guid IID = .(0xf3744d80, 0x21f7, 0x42eb, 0xb3, 0x5d, 0x99, 0x5b, 0xc7, 0x2f, 0xc2, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateFontFaceReference(ref IDWriteFontFile fontFile, uint32 faceIndex, FontSimulations fontSimulations, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontFaceReference1* fontFaceReference) mut => VT.CreateFontFaceReference(ref this, ref fontFile, faceIndex, fontSimulations, fontAxisValues, fontAxisValueCount, out fontFaceReference);
			public HResult CreateFontResource(ref IDWriteFontFile fontFile, uint32 faceIndex, out IDWriteFontResource* fontResource) mut => VT.CreateFontResource(ref this, ref fontFile, faceIndex, out fontResource);
			public HResult GetSystemFontSet(IntBool includeDownloadableFonts, out IDWriteFontSet1* fontSet) mut => VT.GetSystemFontSet(ref this, includeDownloadableFonts, out fontSet);
			public HResult GetSystemFontCollection(IntBool includeDownloadableFonts, FontFamilyModel fontFamilyModel, out IDWriteFontCollection2* fontCollection) mut => VT.GetSystemFontCollection(ref this, includeDownloadableFonts, fontFamilyModel, out fontCollection);
			public HResult CreateFontCollectionFromFontSet(ref IDWriteFontSet fontSet, FontFamilyModel fontFamilyModel, out IDWriteFontCollection2* fontCollection) mut => VT.CreateFontCollectionFromFontSet(ref this, ref fontSet, fontFamilyModel, out fontCollection);
			public HResult CreateFontSetBuilder(out IDWriteFontSetBuilder2* fontSetBuilder) mut => VT.CreateFontSetBuilder(ref this, out fontSetBuilder);
			public HResult CreateTextFormat(char16* fontFamilyName, IDWriteFontCollection* fontCollection, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, float fontSize, char16* localeName, out IDWriteTextFormat3* textFormat) mut => VT.CreateTextFormat(ref this, fontFamilyName, fontCollection, fontAxisValues, fontAxisValueCount, fontSize, localeName, out textFormat);

			[CRepr]
			public struct VTable : IDWriteFactory5.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory6 self, ref IDWriteFontFile fontFile, uint32 faceIndex, FontSimulations fontSimulations, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontFaceReference1* fontFaceReference) CreateFontFaceReference;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory6 self, ref IDWriteFontFile fontFile, uint32 faceIndex, out IDWriteFontResource* fontResource) CreateFontResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory6 self, IntBool includeDownloadableFonts, out IDWriteFontSet1* fontSet) GetSystemFontSet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory6 self, IntBool includeDownloadableFonts, FontFamilyModel fontFamilyModel, out IDWriteFontCollection2* fontCollection) GetSystemFontCollection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory6 self, ref IDWriteFontSet fontSet, FontFamilyModel fontFamilyModel, out IDWriteFontCollection2* fontCollection) CreateFontCollectionFromFontSet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory6 self, out IDWriteFontSetBuilder2* fontSetBuilder) CreateFontSetBuilder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory6 self, char16* fontFamilyName, IDWriteFontCollection* fontCollection, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, float fontSize, char16* localeName, out IDWriteTextFormat3* textFormat) CreateTextFormat;
			}
		}
		[CRepr]
		public struct IDWriteFontFace5 : IDWriteFontFace4
		{
			public const new Guid IID = .(0x98eff3a5, 0xb667, 0x479a, 0xb1, 0x45, 0xe2, 0xfa, 0x5b, 0x9f, 0xdc, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetFontAxisValueCount() mut => VT.GetFontAxisValueCount(ref this);
			public HResult GetFontAxisValues(FontAxisValue* fontAxisValues, uint32 fontAxisValueCount) mut => VT.GetFontAxisValues(ref this, fontAxisValues, fontAxisValueCount);
			public IntBool HasVariations() mut => VT.HasVariations(ref this);
			public HResult GetFontResource(out IDWriteFontResource* fontResource) mut => VT.GetFontResource(ref this, out fontResource);
			public IntBool ComEquals(ref IDWriteFontFace fontFace) mut => VT.ComEquals(ref this, ref fontFace);

			[CRepr]
			public struct VTable : IDWriteFontFace4.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontFace5 self) GetFontAxisValueCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace5 self, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount) GetFontAxisValues;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFontFace5 self) HasVariations;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace5 self, out IDWriteFontResource* fontResource) GetFontResource;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFontFace5 self, ref IDWriteFontFace fontFace) ComEquals;
			}
		}
		[CRepr]
		public struct IDWriteFontResource : IUnknown
		{
			public const new Guid IID = .(0x1f803a76, 0x6871, 0x48e8, 0x98, 0x7f, 0xb9, 0x75, 0x55, 0x1c, 0x50, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFontFile(out IDWriteFontFile* fontFile) mut => VT.GetFontFile(ref this, out fontFile);
			public uint32 GetFontFaceIndex() mut => VT.GetFontFaceIndex(ref this);
			public uint32 GetFontAxisCount() mut => VT.GetFontAxisCount(ref this);
			public HResult GetDefaultFontAxisValues(FontAxisValue* fontAxisValues, uint32 fontAxisValueCount) mut => VT.GetDefaultFontAxisValues(ref this, fontAxisValues, fontAxisValueCount);
			public HResult GetFontAxisRanges(FontAxisRange* fontAxisRanges, uint32 fontAxisRangeCount) mut => VT.GetFontAxisRanges(ref this, fontAxisRanges, fontAxisRangeCount);
			public FontAxisAttributes GetFontAxisAttributes(uint32 axisIndex) mut => VT.GetFontAxisAttributes(ref this, axisIndex);
			public HResult GetAxisNames(uint32 axisIndex, out IDWriteLocalizedStrings* names) mut => VT.GetAxisNames(ref this, axisIndex, out names);
			public uint32 GetAxisValueNameCount(uint32 axisIndex) mut => VT.GetAxisValueNameCount(ref this, axisIndex);
			public HResult GetAxisValueNames(uint32 axisIndex, uint32 axisValueIndex, out FontAxisRange fontAxisRange, out IDWriteLocalizedStrings* names) mut => VT.GetAxisValueNames(ref this, axisIndex, axisValueIndex, out fontAxisRange, out names);
			public IntBool HasVariations() mut => VT.HasVariations(ref this);
			public HResult CreateFontFace(FontSimulations fontSimulations, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontFace5* fontFace) mut => VT.CreateFontFace(ref this, fontSimulations, fontAxisValues, fontAxisValueCount, out fontFace);
			public HResult CreateFontFaceReference(FontSimulations fontSimulations, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontFaceReference1* fontFaceReference) mut => VT.CreateFontFaceReference(ref this, fontSimulations, fontAxisValues, fontAxisValueCount, out fontFaceReference);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontResource self, out IDWriteFontFile* fontFile) GetFontFile;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontResource self) GetFontFaceIndex;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontResource self) GetFontAxisCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontResource self, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount) GetDefaultFontAxisValues;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontResource self, FontAxisRange* fontAxisRanges, uint32 fontAxisRangeCount) GetFontAxisRanges;
				public new function [CallingConvention(.Stdcall)] FontAxisAttributes(ref IDWriteFontResource self, uint32 axisIndex) GetFontAxisAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontResource self, uint32 axisIndex, out IDWriteLocalizedStrings* names) GetAxisNames;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontResource self, uint32 axisIndex) GetAxisValueNameCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontResource self, uint32 axisIndex, uint32 axisValueIndex, out FontAxisRange fontAxisRange, out IDWriteLocalizedStrings* names) GetAxisValueNames;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IDWriteFontResource self) HasVariations;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontResource self, FontSimulations fontSimulations, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontFace5* fontFace) CreateFontFace;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontResource self, FontSimulations fontSimulations, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontFaceReference1* fontFaceReference) CreateFontFaceReference;
			}
		}
		[CRepr]
		public struct IDWriteFontFaceReference1 : IDWriteFontFaceReference
		{
			public const new Guid IID = .(0xc081fe77, 0x2fd1, 0x41ac, 0xa5, 0xa3, 0x34, 0x98, 0x3c, 0x4b, 0xa6, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateFontFace(out IDWriteFontFace5* fontFace) mut => VT.CreateFontFace(ref this, out fontFace);
			public uint32 GetFontAxisValueCount() mut => VT.GetFontAxisValueCount(ref this);
			public HResult GetFontAxisValues(FontAxisValue* fontAxisValues, uint32 fontAxisValueCount) mut => VT.GetFontAxisValues(ref this, fontAxisValues, fontAxisValueCount);

			[CRepr]
			public struct VTable : IDWriteFontFaceReference.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFaceReference1 self, out IDWriteFontFace5* fontFace) CreateFontFace;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontFaceReference1 self) GetFontAxisValueCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFaceReference1 self, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount) GetFontAxisValues;
			}
		}
		[CRepr]
		public struct IDWriteFontSetBuilder2 : IDWriteFontSetBuilder1
		{
			public const new Guid IID = .(0xee5ba612, 0xb131, 0x463c, 0x8f, 0x4f, 0x31, 0x89, 0xb9, 0x40, 0x1e, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddFont(ref IDWriteFontFile fontFile, uint32 fontFaceIndex, FontSimulations fontSimulations, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, FontAxisRange* fontAxisRanges, uint32 fontAxisRangeCount, FontProperty* properties, uint32 propertyCount) mut => VT.AddFont(ref this, ref fontFile, fontFaceIndex, fontSimulations, fontAxisValues, fontAxisValueCount, fontAxisRanges, fontAxisRangeCount, properties, propertyCount);
			public HResult AddFontFile(char16* filePath) mut => VT.AddFontFile(ref this, filePath);

			[CRepr]
			public struct VTable : IDWriteFontSetBuilder1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSetBuilder2 self, ref IDWriteFontFile fontFile, uint32 fontFaceIndex, FontSimulations fontSimulations, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, FontAxisRange* fontAxisRanges, uint32 fontAxisRangeCount, FontProperty* properties, uint32 propertyCount) AddFont;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSetBuilder2 self, char16* filePath) AddFontFile;
			}
		}
		[CRepr]
		public struct IDWriteFontSet1 : IDWriteFontSet
		{
			public const new Guid IID = .(0x7e9fda85, 0x6c92, 0x4053, 0xbc, 0x47, 0x7a, 0xe3, 0x53, 0x0d, 0xb4, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetMatchingFonts(FontProperty* fontProperty, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontSet1* matchingFonts) mut => VT.GetMatchingFonts(ref this, fontProperty, fontAxisValues, fontAxisValueCount, out matchingFonts);
			public HResult GetFirstFontResources(out IDWriteFontSet1* filteredFontSet) mut => VT.GetFirstFontResources(ref this, out filteredFontSet);
			public HResult GetFilteredFonts(uint32* indices, uint32 indexCount, out IDWriteFontSet1* filteredFontSet) mut => VT.GetFilteredFonts(ref this, indices, indexCount, out filteredFontSet);
			public HResult GetFilteredFonts(FontAxisRange* fontAxisRanges, uint32 fontAxisRangeCount, IntBool selectAnyRange, out IDWriteFontSet1* filteredFontSet) mut => VT.GetFilteredFonts2(ref this, fontAxisRanges, fontAxisRangeCount, selectAnyRange, out filteredFontSet);
			public HResult GetFilteredFonts(FontProperty* properties, uint32 propertyCount, IntBool selectAnyProperty, out IDWriteFontSet1* filteredFontSet) mut => VT.GetFilteredFonts3(ref this, properties, propertyCount, selectAnyProperty, out filteredFontSet);
			public HResult GetFilteredFontIndices(FontAxisRange* fontAxisRanges, uint32 fontAxisRangeCount, IntBool selectAnyRange, uint32* indices, uint32 maxIndexCount, out uint32 actualIndexCount) mut => VT.GetFilteredFontIndices(ref this, fontAxisRanges, fontAxisRangeCount, selectAnyRange, indices, maxIndexCount, out actualIndexCount);
			public HResult GetFilteredFontIndices(FontProperty* properties, uint32 propertyCount, IntBool selectAnyProperty, uint32* indices, uint32 maxIndexCount, out uint32 actualIndexCount) mut => VT.GetFilteredFontIndices2(ref this, properties, propertyCount, selectAnyProperty, indices, maxIndexCount, out actualIndexCount);
			public HResult GetFontAxisRanges(uint32 listIndex, FontAxisRange* fontAxisRanges, uint32 maxFontAxisRangeCount, out uint32 actualFontAxisRangeCount) mut => VT.GetFontAxisRanges(ref this, listIndex, fontAxisRanges, maxFontAxisRangeCount, out actualFontAxisRangeCount);
			public HResult GetFontAxisRanges(FontAxisRange* fontAxisRanges, uint32 maxFontAxisRangeCount, out uint32 actualFontAxisRangeCount) mut => VT.GetFontAxisRanges2(ref this, fontAxisRanges, maxFontAxisRangeCount, out actualFontAxisRangeCount);
			public HResult GetFontFaceReference(uint32 listIndex, out IDWriteFontFaceReference1* fontFaceReference) mut => VT.GetFontFaceReference(ref this, listIndex, out fontFaceReference);
			public HResult CreateFontResource(uint32 listIndex, out IDWriteFontResource* fontResource) mut => VT.CreateFontResource(ref this, listIndex, out fontResource);
			public HResult CreateFontFace(uint32 listIndex, out IDWriteFontFace5* fontFace) mut => VT.CreateFontFace(ref this, listIndex, out fontFace);
			public Locality GetFontLocality(uint32 listIndex) mut => VT.GetFontLocality(ref this, listIndex);

			[CRepr]
			public struct VTable : IDWriteFontSet.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet1 self, FontProperty* fontProperty, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontSet1* matchingFonts) GetMatchingFonts;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet1 self, out IDWriteFontSet1* filteredFontSet) GetFirstFontResources;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet1 self, uint32* indices, uint32 indexCount, out IDWriteFontSet1* filteredFontSet) GetFilteredFonts;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet1 self, FontAxisRange* fontAxisRanges, uint32 fontAxisRangeCount, IntBool selectAnyRange, out IDWriteFontSet1* filteredFontSet) GetFilteredFonts2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet1 self, FontProperty* properties, uint32 propertyCount, IntBool selectAnyProperty, out IDWriteFontSet1* filteredFontSet) GetFilteredFonts3;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet1 self, FontAxisRange* fontAxisRanges, uint32 fontAxisRangeCount, IntBool selectAnyRange, uint32* indices, uint32 maxIndexCount, out uint32 actualIndexCount) GetFilteredFontIndices;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet1 self, FontProperty* properties, uint32 propertyCount, IntBool selectAnyProperty, uint32* indices, uint32 maxIndexCount, out uint32 actualIndexCount) GetFilteredFontIndices2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet1 self, uint32 listIndex, FontAxisRange* fontAxisRanges, uint32 maxFontAxisRangeCount, out uint32 actualFontAxisRangeCount) GetFontAxisRanges;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet1 self, FontAxisRange* fontAxisRanges, uint32 maxFontAxisRangeCount, out uint32 actualFontAxisRangeCount) GetFontAxisRanges2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet1 self, uint32 listIndex, out IDWriteFontFaceReference1* fontFaceReference) GetFontFaceReference;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet1 self, uint32 listIndex, out IDWriteFontResource* fontResource) CreateFontResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet1 self, uint32 listIndex, out IDWriteFontFace5* fontFace) CreateFontFace;
				public new function [CallingConvention(.Stdcall)] Locality(ref IDWriteFontSet1 self, uint32 listIndex) GetFontLocality;
			}
		}
		[CRepr]
		public struct IDWriteFontList2 : IDWriteFontList1
		{
			public const new Guid IID = .(0xc0763a34, 0x77af, 0x445a, 0xb7, 0x35, 0x08, 0xc3, 0x7b, 0x0a, 0x5b, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFontSet(out IDWriteFontSet1* fontSet) mut => VT.GetFontSet(ref this, out fontSet);

			[CRepr]
			public struct VTable : IDWriteFontList1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontList2 self, out IDWriteFontSet1* fontSet) GetFontSet;
			}
		}
		[CRepr]
		public struct IDWriteFontFamily2 : IDWriteFontFamily1
		{
			public const new Guid IID = .(0x3ed49e77, 0xa398, 0x4261, 0xb9, 0xcf, 0xc1, 0x26, 0xc2, 0x13, 0x1e, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetMatchingFonts(FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontList2* matchingFonts) mut => VT.GetMatchingFonts(ref this, fontAxisValues, fontAxisValueCount, out matchingFonts);
			public HResult GetFontSet(out IDWriteFontSet1* fontSet) mut => VT.GetFontSet(ref this, out fontSet);

			[CRepr]
			public struct VTable : IDWriteFontFamily1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFamily2 self, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontList2* matchingFonts) GetMatchingFonts;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFamily2 self, out IDWriteFontSet1* fontSet) GetFontSet;
			}
		}
		[CRepr]
		public struct IDWriteFontCollection2 : IDWriteFontCollection1
		{
			public const new Guid IID = .(0x514039c6, 0x4617, 0x4064, 0xbf, 0x8b, 0x92, 0xea, 0x83, 0xe5, 0x06, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFontFamily(uint32 index, out IDWriteFontFamily2* fontFamily) mut => VT.GetFontFamily(ref this, index, out fontFamily);
			public HResult GetMatchingFonts(char16* familyName, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontList2* fontList) mut => VT.GetMatchingFonts(ref this, familyName, fontAxisValues, fontAxisValueCount, out fontList);
			public FontFamilyModel GetFontFamilyModel() mut => VT.GetFontFamilyModel(ref this);
			public HResult GetFontSet(out IDWriteFontSet1* fontSet) mut => VT.GetFontSet(ref this, out fontSet);

			[CRepr]
			public struct VTable : IDWriteFontCollection1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontCollection2 self, uint32 index, out IDWriteFontFamily2* fontFamily) GetFontFamily;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontCollection2 self, char16* familyName, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontList2* fontList) GetMatchingFonts;
				public new function [CallingConvention(.Stdcall)] FontFamilyModel(ref IDWriteFontCollection2 self) GetFontFamilyModel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontCollection2 self, out IDWriteFontSet1* fontSet) GetFontSet;
			}
		}
		[CRepr]
		public struct IDWriteTextLayout4 : IDWriteTextLayout3
		{
			public const new Guid IID = .(0x05a9bf42, 0x223f, 0x4441, 0xb5, 0xfb, 0x82, 0x63, 0x68, 0x5f, 0x55, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetFontAxisValues(FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, TextRange textRange) mut => VT.SetFontAxisValues(ref this, fontAxisValues, fontAxisValueCount, textRange);
			public uint32 GetFontAxisValueCount(uint32 currentPosition) mut => VT.GetFontAxisValueCount(ref this, currentPosition);
			public HResult GetFontAxisValues(uint32 currentPosition, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, TextRange* textRange) mut => VT.GetFontAxisValues(ref this, currentPosition, fontAxisValues, fontAxisValueCount, textRange);
			public AutomaticFontAxes GetAutomaticFontAxes() mut => VT.GetAutomaticFontAxes(ref this);
			public HResult SetAutomaticFontAxes(AutomaticFontAxes automaticFontAxes) mut => VT.SetAutomaticFontAxes(ref this, automaticFontAxes);

			[CRepr]
			public struct VTable : IDWriteTextLayout3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout4 self, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, TextRange textRange) SetFontAxisValues;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteTextLayout4 self, uint32 currentPosition) GetFontAxisValueCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout4 self, uint32 currentPosition, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, TextRange* textRange) GetFontAxisValues;
				public new function [CallingConvention(.Stdcall)] AutomaticFontAxes(ref IDWriteTextLayout4 self) GetAutomaticFontAxes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextLayout4 self, AutomaticFontAxes automaticFontAxes) SetAutomaticFontAxes;
			}
		}
		[CRepr]
		public struct IDWriteTextFormat3 : IDWriteTextFormat2
		{
			public const new Guid IID = .(0x6d3b5641, 0xe550, 0x430d, 0xa8, 0x5b, 0xb7, 0xbf, 0x48, 0xa9, 0x34, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetFontAxisValues(FontAxisValue* fontAxisValues, uint32 fontAxisValueCount) mut => VT.SetFontAxisValues(ref this, fontAxisValues, fontAxisValueCount);
			public uint32 GetFontAxisValueCount() mut => VT.GetFontAxisValueCount(ref this);
			public HResult GetFontAxisValues(FontAxisValue* fontAxisValues, uint32 fontAxisValueCount) mut => VT.GetFontAxisValues(ref this, fontAxisValues, fontAxisValueCount);
			public AutomaticFontAxes GetAutomaticFontAxes() mut => VT.GetAutomaticFontAxes(ref this);
			public HResult SetAutomaticFontAxes(AutomaticFontAxes automaticFontAxes) mut => VT.SetAutomaticFontAxes(ref this, automaticFontAxes);

			[CRepr]
			public struct VTable : IDWriteTextFormat2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat3 self, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount) SetFontAxisValues;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteTextFormat3 self) GetFontAxisValueCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat3 self, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount) GetFontAxisValues;
				public new function [CallingConvention(.Stdcall)] AutomaticFontAxes(ref IDWriteTextFormat3 self) GetAutomaticFontAxes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteTextFormat3 self, AutomaticFontAxes automaticFontAxes) SetAutomaticFontAxes;
			}
		}
		[CRepr]
		public struct IDWriteFontFallback1 : IDWriteFontFallback
		{
			public const new Guid IID = .(0x2397599d, 0xdd0d, 0x4681, 0xbd, 0x6a, 0xf4, 0xf3, 0x1e, 0xaa, 0xde, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult MapCharacters(ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, IDWriteFontCollection* baseFontCollection, char16* baseFamilyName, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out uint32 mappedLength, out float scale, out IDWriteFontFace5* mappedFontFace) mut => VT.MapCharacters(ref this, ref analysisSource, textPosition, textLength, baseFontCollection, baseFamilyName, fontAxisValues, fontAxisValueCount, out mappedLength, out scale, out mappedFontFace);

			[CRepr]
			public struct VTable : IDWriteFontFallback.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFallback1 self, ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, IDWriteFontCollection* baseFontCollection, char16* baseFamilyName, FontAxisValue* fontAxisValues, uint32 fontAxisValueCount, out uint32 mappedLength, out float scale, out IDWriteFontFace5* mappedFontFace) MapCharacters;
			}
		}
		[CRepr]
		public struct IDWriteFontSet2 : IDWriteFontSet1
		{
			public const new Guid IID = .(0xdc7ead19, 0xe54c, 0x43af, 0xb2, 0xda, 0x4e, 0x2b, 0x79, 0xba, 0x3f, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public Handle GetExpirationEvent() mut => VT.GetExpirationEvent(ref this);

			[CRepr]
			public struct VTable : IDWriteFontSet1.VTable
			{
				public new function [CallingConvention(.Stdcall)] Handle(ref IDWriteFontSet2 self) GetExpirationEvent;
			}
		}
		[CRepr]
		public struct IDWriteFontCollection3 : IDWriteFontCollection2
		{
			public const new Guid IID = .(0xa4d055a6, 0xf9e3, 0x4e25, 0x93, 0xb7, 0x9e, 0x30, 0x9f, 0x3a, 0xf8, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public Handle GetExpirationEvent() mut => VT.GetExpirationEvent(ref this);

			[CRepr]
			public struct VTable : IDWriteFontCollection2.VTable
			{
				public new function [CallingConvention(.Stdcall)] Handle(ref IDWriteFontCollection3 self) GetExpirationEvent;
			}
		}
		[CRepr]
		public struct IDWriteFactory7 : IDWriteFactory6
		{
			public const new Guid IID = .(0x35d0e0b3, 0x9076, 0x4d2e, 0xa0, 0x16, 0xa9, 0x1b, 0x56, 0x8a, 0x06, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetSystemFontSet(IntBool includeDownloadableFonts, out IDWriteFontSet2* fontSet) mut => VT.GetSystemFontSet(ref this, includeDownloadableFonts, out fontSet);
			public HResult GetSystemFontCollection(IntBool includeDownloadableFonts, FontFamilyModel fontFamilyModel, out IDWriteFontCollection3* fontCollection) mut => VT.GetSystemFontCollection(ref this, includeDownloadableFonts, fontFamilyModel, out fontCollection);

			[CRepr]
			public struct VTable : IDWriteFactory6.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory7 self, IntBool includeDownloadableFonts, out IDWriteFontSet2* fontSet) GetSystemFontSet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFactory7 self, IntBool includeDownloadableFonts, FontFamilyModel fontFamilyModel, out IDWriteFontCollection3* fontCollection) GetSystemFontCollection;
			}
		}
		[CRepr]
		public struct IDWriteFontSet3 : IDWriteFontSet2
		{
			public const new Guid IID = .(0x7c073ef2, 0xa7f4, 0x4045, 0x8c, 0x32, 0x8a, 0xb8, 0xae, 0x64, 0x0f, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public FontSourceType GetFontSourceType(uint32 fontIndex) mut => VT.GetFontSourceType(ref this, fontIndex);
			public uint32 GetFontSourceNameLength(uint32 listIndex) mut => VT.GetFontSourceNameLength(ref this, listIndex);
			public HResult GetFontSourceName(uint32 listIndex, char16* stringBuffer, uint32 stringBufferSize) mut => VT.GetFontSourceName(ref this, listIndex, stringBuffer, stringBufferSize);

			[CRepr]
			public struct VTable : IDWriteFontSet2.VTable
			{
				public new function [CallingConvention(.Stdcall)] FontSourceType(ref IDWriteFontSet3 self, uint32 fontIndex) GetFontSourceType;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontSet3 self, uint32 listIndex) GetFontSourceNameLength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontSet3 self, uint32 listIndex, char16* stringBuffer, uint32 stringBufferSize) GetFontSourceName;
			}
		}
		[CRepr]
		public struct IDWriteFontFace6 : IDWriteFontFace5
		{
			public const new Guid IID = .(0xc4b1fe1b, 0x6e84, 0x47d5, 0xb5, 0x4c, 0xa5, 0x97, 0x98, 0x1b, 0x06, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFamilyNames(FontFamilyModel fontFamilyModel, out IDWriteLocalizedStrings* names) mut => VT.GetFamilyNames(ref this, fontFamilyModel, out names);
			public HResult GetFaceNames(FontFamilyModel fontFamilyModel, out IDWriteLocalizedStrings* names) mut => VT.GetFaceNames(ref this, fontFamilyModel, out names);

			[CRepr]
			public struct VTable : IDWriteFontFace5.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace6 self, FontFamilyModel fontFamilyModel, out IDWriteLocalizedStrings* names) GetFamilyNames;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDWriteFontFace6 self, FontFamilyModel fontFamilyModel, out IDWriteLocalizedStrings* names) GetFaceNames;
			}
		}
		
		// --- Functions ---
		
		[Import("dwrite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DWriteCreateFactory<T>(DWRITE_FACTORY_TYPE factoryType, in Guid iid, out T* factory) where T : IUnknown;
	}
}
