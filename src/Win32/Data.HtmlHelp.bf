using System;

// namespace Data.HtmlHelp
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 HH_DISPLAY_TOPIC = 0;
		public const uint32 HH_HELP_FINDER = 0;
		public const uint32 HH_DISPLAY_TOC = 1;
		public const uint32 HH_DISPLAY_INDEX = 2;
		public const uint32 HH_DISPLAY_SEARCH = 3;
		public const uint32 HH_SET_WIN_TYPE = 4;
		public const uint32 HH_GET_WIN_TYPE = 5;
		public const uint32 HH_GET_WIN_HANDLE = 6;
		public const uint32 HH_ENUM_INFO_TYPE = 7;
		public const uint32 HH_SET_INFO_TYPE = 8;
		public const uint32 HH_SYNC = 9;
		public const uint32 HH_RESERVED1 = 10;
		public const uint32 HH_RESERVED2 = 11;
		public const uint32 HH_RESERVED3 = 12;
		public const uint32 HH_KEYWORD_LOOKUP = 13;
		public const uint32 HH_DISPLAY_TEXT_POPUP = 14;
		public const uint32 HH_HELP_CONTEXT = 15;
		public const uint32 HH_TP_HELP_CONTEXTMENU = 16;
		public const uint32 HH_TP_HELP_WM_HELP = 17;
		public const uint32 HH_CLOSE_ALL = 18;
		public const uint32 HH_ALINK_LOOKUP = 19;
		public const uint32 HH_GET_LAST_ERROR = 20;
		public const uint32 HH_ENUM_CATEGORY = 21;
		public const uint32 HH_ENUM_CATEGORY_IT = 22;
		public const uint32 HH_RESET_IT_FILTER = 23;
		public const uint32 HH_SET_INCLUSIVE_FILTER = 24;
		public const uint32 HH_SET_EXCLUSIVE_FILTER = 25;
		public const uint32 HH_INITIALIZE = 28;
		public const uint32 HH_UNINITIALIZE = 29;
		public const uint32 HH_SET_QUERYSERVICE = 30;
		public const uint32 HH_PRETRANSLATEMESSAGE = 253;
		public const uint32 HH_SET_GLOBAL_PROPERTY = 252;
		public const uint32 HH_SAFE_DISPLAY_TOPIC = 32;
		public const uint32 HHWIN_PROP_TAB_AUTOHIDESHOW = 1;
		public const uint32 HHWIN_PROP_ONTOP = 2;
		public const uint32 HHWIN_PROP_NOTITLEBAR = 4;
		public const uint32 HHWIN_PROP_NODEF_STYLES = 8;
		public const uint32 HHWIN_PROP_NODEF_EXSTYLES = 16;
		public const uint32 HHWIN_PROP_TRI_PANE = 32;
		public const uint32 HHWIN_PROP_NOTB_TEXT = 64;
		public const uint32 HHWIN_PROP_POST_QUIT = 128;
		public const uint32 HHWIN_PROP_AUTO_SYNC = 256;
		public const uint32 HHWIN_PROP_TRACKING = 512;
		public const uint32 HHWIN_PROP_TAB_SEARCH = 1024;
		public const uint32 HHWIN_PROP_TAB_HISTORY = 2048;
		public const uint32 HHWIN_PROP_TAB_FAVORITES = 4096;
		public const uint32 HHWIN_PROP_CHANGE_TITLE = 8192;
		public const uint32 HHWIN_PROP_NAV_ONLY_WIN = 16384;
		public const uint32 HHWIN_PROP_NO_TOOLBAR = 32768;
		public const uint32 HHWIN_PROP_MENU = 65536;
		public const uint32 HHWIN_PROP_TAB_ADVSEARCH = 131072;
		public const uint32 HHWIN_PROP_USER_POS = 262144;
		public const uint32 HHWIN_PROP_TAB_CUSTOM1 = 524288;
		public const uint32 HHWIN_PROP_TAB_CUSTOM2 = 1048576;
		public const uint32 HHWIN_PROP_TAB_CUSTOM3 = 2097152;
		public const uint32 HHWIN_PROP_TAB_CUSTOM4 = 4194304;
		public const uint32 HHWIN_PROP_TAB_CUSTOM5 = 8388608;
		public const uint32 HHWIN_PROP_TAB_CUSTOM6 = 16777216;
		public const uint32 HHWIN_PROP_TAB_CUSTOM7 = 33554432;
		public const uint32 HHWIN_PROP_TAB_CUSTOM8 = 67108864;
		public const uint32 HHWIN_PROP_TAB_CUSTOM9 = 134217728;
		public const uint32 HHWIN_TB_MARGIN = 268435456;
		public const uint32 HHWIN_PARAM_PROPERTIES = 2;
		public const uint32 HHWIN_PARAM_STYLES = 4;
		public const uint32 HHWIN_PARAM_EXSTYLES = 8;
		public const uint32 HHWIN_PARAM_RECT = 16;
		public const uint32 HHWIN_PARAM_NAV_WIDTH = 32;
		public const uint32 HHWIN_PARAM_SHOWSTATE = 64;
		public const uint32 HHWIN_PARAM_INFOTYPES = 128;
		public const uint32 HHWIN_PARAM_TB_FLAGS = 256;
		public const uint32 HHWIN_PARAM_EXPANSION = 512;
		public const uint32 HHWIN_PARAM_TABPOS = 1024;
		public const uint32 HHWIN_PARAM_TABORDER = 2048;
		public const uint32 HHWIN_PARAM_HISTORY_COUNT = 4096;
		public const uint32 HHWIN_PARAM_CUR_TAB = 8192;
		public const uint32 HHWIN_BUTTON_EXPAND = 2;
		public const uint32 HHWIN_BUTTON_BACK = 4;
		public const uint32 HHWIN_BUTTON_FORWARD = 8;
		public const uint32 HHWIN_BUTTON_STOP = 16;
		public const uint32 HHWIN_BUTTON_REFRESH = 32;
		public const uint32 HHWIN_BUTTON_HOME = 64;
		public const uint32 HHWIN_BUTTON_BROWSE_FWD = 128;
		public const uint32 HHWIN_BUTTON_BROWSE_BCK = 256;
		public const uint32 HHWIN_BUTTON_NOTES = 512;
		public const uint32 HHWIN_BUTTON_CONTENTS = 1024;
		public const uint32 HHWIN_BUTTON_SYNC = 2048;
		public const uint32 HHWIN_BUTTON_OPTIONS = 4096;
		public const uint32 HHWIN_BUTTON_PRINT = 8192;
		public const uint32 HHWIN_BUTTON_INDEX = 16384;
		public const uint32 HHWIN_BUTTON_SEARCH = 32768;
		public const uint32 HHWIN_BUTTON_HISTORY = 65536;
		public const uint32 HHWIN_BUTTON_FAVORITES = 131072;
		public const uint32 HHWIN_BUTTON_JUMP1 = 262144;
		public const uint32 HHWIN_BUTTON_JUMP2 = 524288;
		public const uint32 HHWIN_BUTTON_ZOOM = 1048576;
		public const uint32 HHWIN_BUTTON_TOC_NEXT = 2097152;
		public const uint32 HHWIN_BUTTON_TOC_PREV = 4194304;
		public const uint32 IDTB_EXPAND = 200;
		public const uint32 IDTB_CONTRACT = 201;
		public const uint32 IDTB_STOP = 202;
		public const uint32 IDTB_REFRESH = 203;
		public const uint32 IDTB_BACK = 204;
		public const uint32 IDTB_HOME = 205;
		public const uint32 IDTB_SYNC = 206;
		public const uint32 IDTB_PRINT = 207;
		public const uint32 IDTB_OPTIONS = 208;
		public const uint32 IDTB_FORWARD = 209;
		public const uint32 IDTB_NOTES = 210;
		public const uint32 IDTB_BROWSE_FWD = 211;
		public const uint32 IDTB_BROWSE_BACK = 212;
		public const uint32 IDTB_CONTENTS = 213;
		public const uint32 IDTB_INDEX = 214;
		public const uint32 IDTB_SEARCH = 215;
		public const uint32 IDTB_HISTORY = 216;
		public const uint32 IDTB_FAVORITES = 217;
		public const uint32 IDTB_JUMP1 = 218;
		public const uint32 IDTB_JUMP2 = 219;
		public const uint32 IDTB_CUSTOMIZE = 221;
		public const uint32 IDTB_ZOOM = 222;
		public const uint32 IDTB_TOC_NEXT = 223;
		public const uint32 IDTB_TOC_PREV = 224;
		public const uint32 HH_MAX_TABS = 19;
		public const int32 HH_FTS_DEFAULT_PROXIMITY = -1;
		public const Guid CLSID_IITPropList = .(0x4662daae, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const uint32 PROP_ADD = 0;
		public const uint32 PROP_DELETE = 1;
		public const uint32 PROP_UPDATE = 2;
		public const uint32 TYPE_VALUE = 0;
		public const uint32 TYPE_POINTER = 1;
		public const uint32 TYPE_STRING = 2;
		public const Guid CLSID_IITDatabase = .(0x66673452, 0x8c23, 0x11d0, 0xa8, 0x4e, 0x00, 0xaa, 0x00, 0x6c, 0x7d, 0x01);
		public const Guid CLSID_IITDatabaseLocal = .(0x4662daa9, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const uint32 STDPROP_UID = 1;
		public const uint32 STDPROP_TITLE = 2;
		public const uint32 STDPROP_USERDATA = 3;
		public const uint32 STDPROP_KEY = 4;
		public const uint32 STDPROP_SORTKEY = 100;
		public const uint32 STDPROP_DISPLAYKEY = 101;
		public const uint32 STDPROP_SORTORDINAL = 102;
		public const uint32 STDPROP_INDEX_TEXT = 200;
		public const uint32 STDPROP_INDEX_VFLD = 201;
		public const uint32 STDPROP_INDEX_DTYPE = 202;
		public const uint32 STDPROP_INDEX_LENGTH = 203;
		public const uint32 STDPROP_INDEX_BREAK = 204;
		public const uint32 STDPROP_INDEX_TERM = 210;
		public const uint32 STDPROP_INDEX_TERM_RAW_LENGTH = 211;
		public const uint32 STDPROP_USERPROP_BASE = 65536;
		public const uint32 STDPROP_USERPROP_MAX = 2147483647;
		public const Guid CLSID_IITCmdInt = .(0x4662daa2, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_IITSvMgr = .(0x4662daa3, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_IITWordWheelUpdate = .(0x4662daa5, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_IITGroupUpdate = .(0x4662daa4, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_IITIndexBuild = .(0x8fa0d5aa, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_IITWWFilterBuild = .(0x8fa0d5ab, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_IITWordWheel = .(0xd73725c2, 0x8c12, 0x11d0, 0xa8, 0x4e, 0x00, 0xaa, 0x00, 0x6c, 0x7d, 0x01);
		public const Guid CLSID_IITWordWheelLocal = .(0x4662daa8, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const uint32 ITWW_OPEN_NOCONNECT = 1;
		public const uint32 ITWW_CBKEY_MAX = 1024;
		public const uint32 IITWBC_BREAK_ACCEPT_WILDCARDS = 1;
		public const uint32 IITWBC_BREAK_AND_STEM = 2;
		public const HResult E_NOTEXIST = -2147479552;
		public const HResult E_DUPLICATE = -2147479551;
		public const HResult E_BADVERSION = -2147479550;
		public const HResult E_BADFILE = -2147479549;
		public const HResult E_BADFORMAT = -2147479548;
		public const HResult E_NOPERMISSION = -2147479547;
		public const HResult E_ASSERT = -2147479546;
		public const HResult E_INTERRUPT = -2147479545;
		public const HResult E_NOTSUPPORTED = -2147479544;
		public const HResult E_OUTOFRANGE = -2147479543;
		public const HResult E_GROUPIDTOOBIG = -2147479542;
		public const HResult E_TOOMANYTITLES = -2147479541;
		public const HResult E_NOMERGEDDATA = -2147479540;
		public const HResult E_NOTFOUND = -2147479539;
		public const HResult E_CANTFINDDLL = -2147479538;
		public const HResult E_NOHANDLE = -2147479537;
		public const HResult E_GETLASTERROR = -2147479536;
		public const HResult E_BADPARAM = -2147479535;
		public const HResult E_INVALIDSTATE = -2147479534;
		public const HResult E_NOTOPEN = -2147479533;
		public const HResult E_ALREADYOPEN = -2147479533;
		public const HResult E_UNKNOWN_TRANSPORT = -2147479530;
		public const HResult E_UNSUPPORTED_TRANSPORT = -2147479529;
		public const HResult E_BADFILTERSIZE = -2147479528;
		public const HResult E_TOOMANYOBJECTS = -2147479527;
		public const HResult E_NAMETOOLONG = -2147479520;
		public const HResult E_FILECREATE = -2147479504;
		public const HResult E_FILECLOSE = -2147479503;
		public const HResult E_FILEREAD = -2147479502;
		public const HResult E_FILESEEK = -2147479501;
		public const HResult E_FILEWRITE = -2147479500;
		public const HResult E_FILEDELETE = -2147479499;
		public const HResult E_FILEINVALID = -2147479498;
		public const HResult E_FILENOTFOUND = -2147479497;
		public const HResult E_DISKFULL = -2147479496;
		public const HResult E_TOOMANYTOPICS = -2147479472;
		public const HResult E_TOOMANYDUPS = -2147479471;
		public const HResult E_TREETOOBIG = -2147479470;
		public const HResult E_BADBREAKER = -2147479469;
		public const HResult E_BADVALUE = -2147479468;
		public const HResult E_ALL_WILD = -2147479467;
		public const HResult E_TOODEEP = -2147479466;
		public const HResult E_EXPECTEDTERM = -2147479465;
		public const HResult E_MISSLPAREN = -2147479464;
		public const HResult E_MISSRPAREN = -2147479463;
		public const HResult E_MISSQUOTE = -2147479462;
		public const HResult E_NULLQUERY = -2147479461;
		public const HResult E_STOPWORD = -2147479460;
		public const HResult E_BADRANGEOP = -2147479459;
		public const HResult E_UNMATCHEDTYPE = -2147479458;
		public const HResult E_WORDTOOLONG = -2147479457;
		public const HResult E_BADINDEXFLAGS = -2147479456;
		public const HResult E_WILD_IN_DTYPE = -2147479455;
		public const HResult E_NOSTEMMER = -2147479454;
		public const HResult E_MISSINGPROP = -2147479424;
		public const HResult E_PROPLISTNOTEMPTY = -2147479423;
		public const HResult E_PROPLISTEMPTY = -2147479422;
		public const HResult E_ALREADYINIT = -2147479421;
		public const HResult E_NOTINIT = -2147479420;
		public const HResult E_RESULTSETEMPTY = -2147479419;
		public const HResult E_TOOMANYCOLUMNS = -2147479418;
		public const HResult E_NOKEYPROP = -2147479417;
		public const Guid CLSID_IITResultSet = .(0x4662daa7, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const uint32 MAX_COLUMNS = 256;
		public const Guid CLSID_ITStdBreaker = .(0x4662daaf, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_ITEngStemmer = .(0x8fa0d5a8, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const int32 HHWIN_NAVTYPE_TOC = 0;
		public const int32 HHWIN_NAVTYPE_INDEX = 1;
		public const int32 HHWIN_NAVTYPE_SEARCH = 2;
		public const int32 HHWIN_NAVTYPE_FAVORITES = 3;
		public const int32 HHWIN_NAVTYPE_HISTORY = 4;
		public const int32 HHWIN_NAVTYPE_AUTHOR = 5;
		public const int32 HHWIN_NAVTYPE_CUSTOM_FIRST = 11;
		public const int32 IT_INCLUSIVE = 0;
		public const int32 IT_EXCLUSIVE = 1;
		public const int32 IT_HIDDEN = 2;
		public const int32 HHWIN_NAVTAB_TOP = 0;
		public const int32 HHWIN_NAVTAB_LEFT = 1;
		public const int32 HHWIN_NAVTAB_BOTTOM = 2;
		public const int32 HH_TAB_CONTENTS = 0;
		public const int32 HH_TAB_INDEX = 1;
		public const int32 HH_TAB_SEARCH = 2;
		public const int32 HH_TAB_FAVORITES = 3;
		public const int32 HH_TAB_HISTORY = 4;
		public const int32 HH_TAB_AUTHOR = 5;
		public const int32 HH_TAB_CUSTOM_FIRST = 11;
		public const int32 HH_TAB_CUSTOM_LAST = 19;
		public const int32 HHACT_TAB_CONTENTS = 0;
		public const int32 HHACT_TAB_INDEX = 1;
		public const int32 HHACT_TAB_SEARCH = 2;
		public const int32 HHACT_TAB_HISTORY = 3;
		public const int32 HHACT_TAB_FAVORITES = 4;
		public const int32 HHACT_EXPAND = 5;
		public const int32 HHACT_CONTRACT = 6;
		public const int32 HHACT_BACK = 7;
		public const int32 HHACT_FORWARD = 8;
		public const int32 HHACT_STOP = 9;
		public const int32 HHACT_REFRESH = 10;
		public const int32 HHACT_HOME = 11;
		public const int32 HHACT_SYNC = 12;
		public const int32 HHACT_OPTIONS = 13;
		public const int32 HHACT_PRINT = 14;
		public const int32 HHACT_HIGHLIGHT = 15;
		public const int32 HHACT_CUSTOMIZE = 16;
		public const int32 HHACT_JUMP1 = 17;
		public const int32 HHACT_JUMP2 = 18;
		public const int32 HHACT_ZOOM = 19;
		public const int32 HHACT_TOC_NEXT = 20;
		public const int32 HHACT_TOC_PREV = 21;
		public const int32 HHACT_NOTES = 22;
		public const int32 HHACT_LAST_ENUM = 23;
		
		// --- Enums ---
		
		public enum WORD_WHEEL_OPEN_FLAGS : uint32
		{
			ITWW_OPEN_CONNECT = 0,
		}
		public enum HH_GPROPID : int32
		{
			SINGLETHREAD = 1,
			TOOLBAR_MARGIN = 2,
			UI_LANGUAGE = 3,
			CURRENT_SUBSET = 4,
			CONTENT_LANGUAGE = 5,
		}
		public enum PRIORITY : int32
		{
			LOW = 0,
			NORMAL = 1,
			HIGH = 2,
		}
		
		// --- Function Pointers ---
		
		public function int32 PFNCOLHEAPFREE(void* param0);
		
		// --- Structs ---
		
		[CRepr]
		public struct HHN_NOTIFY
		{
			public NMHDR hdr;
			public char8* pszUrl;
		}
		[CRepr]
		public struct HH_POPUP
		{
			public int32 cbStruct;
			public HINSTANCE hinst;
			public uint32 idString;
			public int8* pszText;
			public POINT pt;
			public uint32 clrForeground;
			public uint32 clrBackground;
			public RectI rcMargins;
			public int8* pszFont;
		}
		[CRepr]
		public struct HH_AKLINK
		{
			public int32 cbStruct;
			public IntBool fReserved;
			public int8* pszKeywords;
			public int8* pszUrl;
			public int8* pszMsgText;
			public int8* pszMsgTitle;
			public int8* pszWindow;
			public IntBool fIndexOnFail;
		}
		[CRepr]
		public struct HH_ENUM_IT
		{
			public int32 cbStruct;
			public int32 iType;
			public char8* pszCatName;
			public char8* pszITName;
			public char8* pszITDescription;
		}
		[CRepr]
		public struct HH_ENUM_CAT
		{
			public int32 cbStruct;
			public char8* pszCatName;
			public char8* pszCatDescription;
		}
		[CRepr]
		public struct HH_SET_INFOTYPE
		{
			public int32 cbStruct;
			public char8* pszCatName;
			public char8* pszInfoTypeName;
		}
		[CRepr]
		public struct HH_FTS_QUERY
		{
			public int32 cbStruct;
			public IntBool fUniCodeStrings;
			public int8* pszSearchQuery;
			public int32 iProximity;
			public IntBool fStemmedSearch;
			public IntBool fTitleOnly;
			public IntBool fExecute;
			public int8* pszWindow;
		}
		[CRepr]
		public struct HH_WINTYPE
		{
			public int32 cbStruct;
			public IntBool fUniCodeStrings;
			public int8* pszType;
			public uint32 fsValidMembers;
			public uint32 fsWinProperties;
			public int8* pszCaption;
			public uint32 dwStyles;
			public uint32 dwExStyles;
			public RectI rcWindowPos;
			public int32 nShowState;
			public HWnd hwndHelp;
			public HWnd hwndCaller;
			public uint32* paInfoTypes;
			public HWnd hwndToolBar;
			public HWnd hwndNavigation;
			public HWnd hwndHTML;
			public int32 iNavWidth;
			public RectI rcHTML;
			public int8* pszToc;
			public int8* pszIndex;
			public int8* pszFile;
			public int8* pszHome;
			public uint32 fsToolBarFlags;
			public IntBool fNotExpanded;
			public int32 curNavType;
			public int32 tabpos;
			public int32 idNotify;
			public uint8[20] tabOrder;
			public int32 cHistory;
			public int8* pszJump1;
			public int8* pszJump2;
			public int8* pszUrlJump1;
			public int8* pszUrlJump2;
			public RectI rcMinSize;
			public int32 cbInfoTypes;
			public int8* pszCustomTabs;
		}
		[CRepr]
		public struct HHNTRACK
		{
			public NMHDR hdr;
			public char8* pszCurUrl;
			public int32 idAction;
			public HH_WINTYPE* phhWinType;
		}
		[CRepr]
		public struct HH_GLOBAL_PROPERTY
		{
			public HH_GPROPID id;
			public VARIANT @var;
		}
		[CRepr]
		public struct CProperty
		{
			public uint32 dwPropID;
			public uint32 cbData;
			public uint32 dwType;
			public _Anonymous_e__Union Anonymous;
			public IntBool fPersist;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public char16* lpszwData;
				public void* lpvData;
				public uint32 dwValue;
			}
		}
		[CRepr]
		public struct IITGroup {}
		[CRepr]
		public struct IITQuery {}
		[CRepr]
		public struct IITStopWordList {}
		[CRepr]
		public struct ROWSTATUS
		{
			public int32 lRowFirst;
			public int32 cRows;
			public int32 cProperties;
			public int32 cRowsTotal;
		}
		[CRepr]
		public struct COLUMNSTATUS
		{
			public int32 cPropCount;
			public int32 cPropsLoaded;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IITPropList : IPersistStreamInit
		{
			public const new Guid IID = .(0x1f403bb1, 0x9997, 0x11d0, 0xa8, 0x50, 0x00, 0xaa, 0x00, 0x6c, 0x7d, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Set(uint32 PropID, char16* lpszwString, uint32 dwOperation) mut => VT.Set(ref this, PropID, lpszwString, dwOperation);
			public HResult Set(uint32 PropID, void* lpvData, uint32 cbData, uint32 dwOperation) mut => VT.Set2(ref this, PropID, lpvData, cbData, dwOperation);
			public HResult Set(uint32 PropID, uint32 dwData, uint32 dwOperation) mut => VT.Set3(ref this, PropID, dwData, dwOperation);
			public HResult Add(out CProperty Prop) mut => VT.Add(ref this, out Prop);
			public HResult Get(uint32 PropID, out CProperty Property) mut => VT.Get(ref this, PropID, out Property);
			public HResult Clear() mut => VT.Clear(ref this);
			public HResult SetPersist(IntBool fPersist) mut => VT.SetPersist(ref this, fPersist);
			public HResult SetPersist(uint32 PropID, IntBool fPersist) mut => VT.SetPersist2(ref this, PropID, fPersist);
			public HResult GetFirst(out CProperty Property) mut => VT.GetFirst(ref this, out Property);
			public HResult GetNext(out CProperty Property) mut => VT.GetNext(ref this, out Property);
			public HResult GetPropCount(out int32 cProp) mut => VT.GetPropCount(ref this, out cProp);
			public HResult SaveHeader(void* lpvData, uint32 dwHdrSize) mut => VT.SaveHeader(ref this, lpvData, dwHdrSize);
			public HResult SaveData(void* lpvHeader, uint32 dwHdrSize, void* lpvData, uint32 dwBufSize) mut => VT.SaveData(ref this, lpvHeader, dwHdrSize, lpvData, dwBufSize);
			public HResult GetHeaderSize(out uint32 dwHdrSize) mut => VT.GetHeaderSize(ref this, out dwHdrSize);
			public HResult GetDataSize(void* lpvHeader, uint32 dwHdrSize, out uint32 dwDataSize) mut => VT.GetDataSize(ref this, lpvHeader, dwHdrSize, out dwDataSize);
			public HResult SaveDataToStream(void* lpvHeader, uint32 dwHdrSize, ref IStream pStream) mut => VT.SaveDataToStream(ref this, lpvHeader, dwHdrSize, ref pStream);
			public HResult LoadFromMem(void* lpvData, uint32 dwBufSize) mut => VT.LoadFromMem(ref this, lpvData, dwBufSize);
			public HResult SaveToMem(void* lpvData, uint32 dwBufSize) mut => VT.SaveToMem(ref this, lpvData, dwBufSize);

			[CRepr]
			public struct VTable : IPersistStreamInit.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, uint32 PropID, char16* lpszwString, uint32 dwOperation) Set;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, uint32 PropID, void* lpvData, uint32 cbData, uint32 dwOperation) Set2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, uint32 PropID, uint32 dwData, uint32 dwOperation) Set3;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, out CProperty Prop) Add;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, uint32 PropID, out CProperty Property) Get;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self) Clear;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, IntBool fPersist) SetPersist;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, uint32 PropID, IntBool fPersist) SetPersist2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, out CProperty Property) GetFirst;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, out CProperty Property) GetNext;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, out int32 cProp) GetPropCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, void* lpvData, uint32 dwHdrSize) SaveHeader;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, void* lpvHeader, uint32 dwHdrSize, void* lpvData, uint32 dwBufSize) SaveData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, out uint32 dwHdrSize) GetHeaderSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, void* lpvHeader, uint32 dwHdrSize, out uint32 dwDataSize) GetDataSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, void* lpvHeader, uint32 dwHdrSize, ref IStream pStream) SaveDataToStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, void* lpvData, uint32 dwBufSize) LoadFromMem;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITPropList self, void* lpvData, uint32 dwBufSize) SaveToMem;
			}
		}
		[CRepr]
		public struct IITDatabase : IUnknown
		{
			public const new Guid IID = .(0x8fa0d5a2, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Open(char16* lpszHost, char16* lpszMoniker, uint32 dwFlags) mut => VT.Open(ref this, lpszHost, lpszMoniker, dwFlags);
			public HResult Close() mut => VT.Close(ref this);
			public HResult CreateObject(in Guid rclsid, out uint32 pdwObjInstance) mut => VT.CreateObject(ref this, rclsid, out pdwObjInstance);
			public HResult GetObject(uint32 dwObjInstance, in Guid riid, void** ppvObj) mut => VT.GetObject(ref this, dwObjInstance, riid, ppvObj);
			public HResult GetObjectPersistence(char16* lpwszObject, uint32 dwObjInstance, void** ppvPersistence, IntBool fStream) mut => VT.GetObjectPersistence(ref this, lpwszObject, dwObjInstance, ppvPersistence, fStream);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IITDatabase self, char16* lpszHost, char16* lpszMoniker, uint32 dwFlags) Open;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITDatabase self) Close;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITDatabase self, in Guid rclsid, out uint32 pdwObjInstance) CreateObject;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITDatabase self, uint32 dwObjInstance, in Guid riid, void** ppvObj) GetObject;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITDatabase self, char16* lpwszObject, uint32 dwObjInstance, void** ppvPersistence, IntBool fStream) GetObjectPersistence;
			}
		}
		[CRepr]
		public struct IITWordWheel : IUnknown
		{
			public const new Guid IID = .(0x8fa0d5a4, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Open(ref IITDatabase lpITDB, char16* lpszMoniker, WORD_WHEEL_OPEN_FLAGS dwFlags) mut => VT.Open(ref this, ref lpITDB, lpszMoniker, dwFlags);
			public HResult Close() mut => VT.Close(ref this);
			public HResult GetLocaleInfo(out uint32 pdwCodePageID, out uint32 plcid) mut => VT.GetLocaleInfo(ref this, out pdwCodePageID, out plcid);
			public HResult GetSorterInstance(out uint32 pdwObjInstance) mut => VT.GetSorterInstance(ref this, out pdwObjInstance);
			public HResult Count(out int32 pcEntries) mut => VT.Count(ref this, out pcEntries);
			public HResult Lookup(void* lpcvPrefix, IntBool fExactMatch, out int32 plEntry) mut => VT.Lookup(ref this, lpcvPrefix, fExactMatch, out plEntry);
			public HResult Lookup(int32 lEntry, ref IITResultSet lpITResult, int32 cEntries) mut => VT.Lookup2(ref this, lEntry, ref lpITResult, cEntries);
			public HResult Lookup(int32 lEntry, void* lpvKeyBuf, uint32 cbKeyBuf) mut => VT.Lookup3(ref this, lEntry, lpvKeyBuf, cbKeyBuf);
			public HResult SetGroup(out IITGroup piitGroup) mut => VT.SetGroup(ref this, out piitGroup);
			public HResult GetGroup(out IITGroup* ppiitGroup) mut => VT.GetGroup(ref this, out ppiitGroup);
			public HResult GetDataCount(int32 lEntry, out uint32 pdwCount) mut => VT.GetDataCount(ref this, lEntry, out pdwCount);
			public HResult GetData(int32 lEntry, ref IITResultSet lpITResult) mut => VT.GetData(ref this, lEntry, ref lpITResult);
			public HResult GetDataColumns(ref IITResultSet pRS) mut => VT.GetDataColumns(ref this, ref pRS);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IITWordWheel self, ref IITDatabase lpITDB, char16* lpszMoniker, WORD_WHEEL_OPEN_FLAGS dwFlags) Open;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITWordWheel self) Close;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITWordWheel self, out uint32 pdwCodePageID, out uint32 plcid) GetLocaleInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITWordWheel self, out uint32 pdwObjInstance) GetSorterInstance;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITWordWheel self, out int32 pcEntries) Count;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITWordWheel self, void* lpcvPrefix, IntBool fExactMatch, out int32 plEntry) Lookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITWordWheel self, int32 lEntry, ref IITResultSet lpITResult, int32 cEntries) Lookup2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITWordWheel self, int32 lEntry, void* lpvKeyBuf, uint32 cbKeyBuf) Lookup3;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITWordWheel self, out IITGroup piitGroup) SetGroup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITWordWheel self, out IITGroup* ppiitGroup) GetGroup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITWordWheel self, int32 lEntry, out uint32 pdwCount) GetDataCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITWordWheel self, int32 lEntry, ref IITResultSet lpITResult) GetData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITWordWheel self, ref IITResultSet pRS) GetDataColumns;
			}
		}
		[CRepr]
		public struct IStemSink : IUnknown
		{
			public const new Guid IID = .(0xfe77c330, 0x7f42, 0x11ce, 0xbe, 0x57, 0x00, 0xaa, 0x00, 0x51, 0xfe, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult PutAltWord(char16* pwcInBuf, uint32 cwc) mut => VT.PutAltWord(ref this, pwcInBuf, cwc);
			public HResult PutWord(char16* pwcInBuf, uint32 cwc) mut => VT.PutWord(ref this, pwcInBuf, cwc);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IStemSink self, char16* pwcInBuf, uint32 cwc) PutAltWord;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStemSink self, char16* pwcInBuf, uint32 cwc) PutWord;
			}
		}
		[CRepr]
		public struct IStemmerConfig : IUnknown
		{
			public const new Guid IID = .(0x8fa0d5a7, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetLocaleInfo(uint32 dwCodePageID, uint32 lcid) mut => VT.SetLocaleInfo(ref this, dwCodePageID, lcid);
			public HResult GetLocaleInfo(out uint32 pdwCodePageID, out uint32 plcid) mut => VT.GetLocaleInfo(ref this, out pdwCodePageID, out plcid);
			public HResult SetControlInfo(uint32 grfStemFlags, uint32 dwReserved) mut => VT.SetControlInfo(ref this, grfStemFlags, dwReserved);
			public HResult GetControlInfo(out uint32 pgrfStemFlags, out uint32 pdwReserved) mut => VT.GetControlInfo(ref this, out pgrfStemFlags, out pdwReserved);
			public HResult LoadExternalStemmerData(ref IStream pStream, uint32 dwExtDataType) mut => VT.LoadExternalStemmerData(ref this, ref pStream, dwExtDataType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IStemmerConfig self, uint32 dwCodePageID, uint32 lcid) SetLocaleInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStemmerConfig self, out uint32 pdwCodePageID, out uint32 plcid) GetLocaleInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStemmerConfig self, uint32 grfStemFlags, uint32 dwReserved) SetControlInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStemmerConfig self, out uint32 pgrfStemFlags, out uint32 pdwReserved) GetControlInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStemmerConfig self, ref IStream pStream, uint32 dwExtDataType) LoadExternalStemmerData;
			}
		}
		[CRepr]
		public struct IWordBreakerConfig : IUnknown
		{
			public const new Guid IID = .(0x8fa0d5a6, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetLocaleInfo(uint32 dwCodePageID, uint32 lcid) mut => VT.SetLocaleInfo(ref this, dwCodePageID, lcid);
			public HResult GetLocaleInfo(out uint32 pdwCodePageID, out uint32 plcid) mut => VT.GetLocaleInfo(ref this, out pdwCodePageID, out plcid);
			public HResult SetBreakWordType(uint32 dwBreakWordType) mut => VT.SetBreakWordType(ref this, dwBreakWordType);
			public HResult GetBreakWordType(out uint32 pdwBreakWordType) mut => VT.GetBreakWordType(ref this, out pdwBreakWordType);
			public HResult SetControlInfo(uint32 grfBreakFlags, uint32 dwReserved) mut => VT.SetControlInfo(ref this, grfBreakFlags, dwReserved);
			public HResult GetControlInfo(out uint32 pgrfBreakFlags, out uint32 pdwReserved) mut => VT.GetControlInfo(ref this, out pgrfBreakFlags, out pdwReserved);
			public HResult LoadExternalBreakerData(ref IStream pStream, uint32 dwExtDataType) mut => VT.LoadExternalBreakerData(ref this, ref pStream, dwExtDataType);
			public HResult SetWordStemmer(in Guid rclsid, ref IStemmer pStemmer) mut => VT.SetWordStemmer(ref this, rclsid, ref pStemmer);
			public HResult GetWordStemmer(out IStemmer* ppStemmer) mut => VT.GetWordStemmer(ref this, out ppStemmer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWordBreakerConfig self, uint32 dwCodePageID, uint32 lcid) SetLocaleInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWordBreakerConfig self, out uint32 pdwCodePageID, out uint32 plcid) GetLocaleInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWordBreakerConfig self, uint32 dwBreakWordType) SetBreakWordType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWordBreakerConfig self, out uint32 pdwBreakWordType) GetBreakWordType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWordBreakerConfig self, uint32 grfBreakFlags, uint32 dwReserved) SetControlInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWordBreakerConfig self, out uint32 pgrfBreakFlags, out uint32 pdwReserved) GetControlInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWordBreakerConfig self, ref IStream pStream, uint32 dwExtDataType) LoadExternalBreakerData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWordBreakerConfig self, in Guid rclsid, ref IStemmer pStemmer) SetWordStemmer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWordBreakerConfig self, out IStemmer* ppStemmer) GetWordStemmer;
			}
		}
		[CRepr]
		public struct IITResultSet : IUnknown
		{
			public const new Guid IID = .(0x3bb91d41, 0x998b, 0x11d0, 0xa8, 0x50, 0x00, 0xaa, 0x00, 0x6c, 0x7d, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetColumnPriority(int32 lColumnIndex, PRIORITY ColumnPriority) mut => VT.SetColumnPriority(ref this, lColumnIndex, ColumnPriority);
			public HResult SetColumnHeap(int32 lColumnIndex, void* lpvHeap, PFNCOLHEAPFREE pfnColHeapFree) mut => VT.SetColumnHeap(ref this, lColumnIndex, lpvHeap, pfnColHeapFree);
			public HResult SetKeyProp(uint32 PropID) mut => VT.SetKeyProp(ref this, PropID);
			public HResult Add(uint32 PropID, uint32 dwDefaultData, PRIORITY Priority) mut => VT.Add(ref this, PropID, dwDefaultData, Priority);
			public HResult Add(uint32 PropID, char16* lpszwDefault, PRIORITY Priority) mut => VT.Add2(ref this, PropID, lpszwDefault, Priority);
			public HResult Add(uint32 PropID, void* lpvDefaultData, uint32 cbData, PRIORITY Priority) mut => VT.Add3(ref this, PropID, lpvDefaultData, cbData, Priority);
			public HResult Add(void* lpvHdr) mut => VT.Add4(ref this, lpvHdr);
			public HResult Append(void* lpvHdr, void* lpvData) mut => VT.Append(ref this, lpvHdr, lpvData);
			public HResult Set(int32 lRowIndex, int32 lColumnIndex, void* lpvData, uint32 cbData) mut => VT.Set(ref this, lRowIndex, lColumnIndex, lpvData, cbData);
			public HResult Set(int32 lRowIndex, int32 lColumnIndex, char16* lpwStr) mut => VT.Set2(ref this, lRowIndex, lColumnIndex, lpwStr);
			public HResult Set(int32 lRowIndex, int32 lColumnIndex, uint dwData) mut => VT.Set3(ref this, lRowIndex, lColumnIndex, dwData);
			public HResult Set(int32 lRowIndex, void* lpvHdr, void* lpvData) mut => VT.Set4(ref this, lRowIndex, lpvHdr, lpvData);
			public HResult Copy(ref IITResultSet pRSCopy) mut => VT.Copy(ref this, ref pRSCopy);
			public HResult AppendRows(ref IITResultSet pResSrc, int32 lRowSrcFirst, int32 cSrcRows, out int32 lRowFirstDest) mut => VT.AppendRows(ref this, ref pResSrc, lRowSrcFirst, cSrcRows, out lRowFirstDest);
			public HResult Get(int32 lRowIndex, int32 lColumnIndex, out CProperty Prop) mut => VT.Get(ref this, lRowIndex, lColumnIndex, out Prop);
			public HResult GetKeyProp(out uint32 KeyPropID) mut => VT.GetKeyProp(ref this, out KeyPropID);
			public HResult GetColumnPriority(int32 lColumnIndex, out PRIORITY ColumnPriority) mut => VT.GetColumnPriority(ref this, lColumnIndex, out ColumnPriority);
			public HResult GetRowCount(out int32 lNumberOfRows) mut => VT.GetRowCount(ref this, out lNumberOfRows);
			public HResult GetColumnCount(out int32 lNumberOfColumns) mut => VT.GetColumnCount(ref this, out lNumberOfColumns);
			public HResult GetColumn(int32 lColumnIndex, out uint32 PropID, out uint32 dwType, void** lpvDefaultValue, out uint32 cbSize, out PRIORITY ColumnPriority) mut => VT.GetColumn(ref this, lColumnIndex, out PropID, out dwType, lpvDefaultValue, out cbSize, out ColumnPriority);
			public HResult GetColumn(int32 lColumnIndex, out uint32 PropID) mut => VT.GetColumn2(ref this, lColumnIndex, out PropID);
			public HResult GetColumnFromPropID(uint32 PropID, out int32 lColumnIndex) mut => VT.GetColumnFromPropID(ref this, PropID, out lColumnIndex);
			public HResult Clear() mut => VT.Clear(ref this);
			public HResult ClearRows() mut => VT.ClearRows(ref this);
			public HResult Free() mut => VT.Free(ref this);
			public HResult IsCompleted() mut => VT.IsCompleted(ref this);
			public HResult Cancel() mut => VT.Cancel(ref this);
			public HResult Pause(IntBool fPause) mut => VT.Pause(ref this, fPause);
			public HResult GetRowStatus(int32 lRowFirst, int32 cRows, out ROWSTATUS lpRowStatus) mut => VT.GetRowStatus(ref this, lRowFirst, cRows, out lpRowStatus);
			public HResult GetColumnStatus(out COLUMNSTATUS lpColStatus) mut => VT.GetColumnStatus(ref this, out lpColStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, int32 lColumnIndex, PRIORITY ColumnPriority) SetColumnPriority;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, int32 lColumnIndex, void* lpvHeap, PFNCOLHEAPFREE pfnColHeapFree) SetColumnHeap;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, uint32 PropID) SetKeyProp;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, uint32 PropID, uint32 dwDefaultData, PRIORITY Priority) Add;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, uint32 PropID, char16* lpszwDefault, PRIORITY Priority) Add2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, uint32 PropID, void* lpvDefaultData, uint32 cbData, PRIORITY Priority) Add3;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, void* lpvHdr) Add4;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, void* lpvHdr, void* lpvData) Append;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, int32 lRowIndex, int32 lColumnIndex, void* lpvData, uint32 cbData) Set;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, int32 lRowIndex, int32 lColumnIndex, char16* lpwStr) Set2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, int32 lRowIndex, int32 lColumnIndex, uint dwData) Set3;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, int32 lRowIndex, void* lpvHdr, void* lpvData) Set4;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, ref IITResultSet pRSCopy) Copy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, ref IITResultSet pResSrc, int32 lRowSrcFirst, int32 cSrcRows, out int32 lRowFirstDest) AppendRows;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, int32 lRowIndex, int32 lColumnIndex, out CProperty Prop) Get;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, out uint32 KeyPropID) GetKeyProp;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, int32 lColumnIndex, out PRIORITY ColumnPriority) GetColumnPriority;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, out int32 lNumberOfRows) GetRowCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, out int32 lNumberOfColumns) GetColumnCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, int32 lColumnIndex, out uint32 PropID, out uint32 dwType, void** lpvDefaultValue, out uint32 cbSize, out PRIORITY ColumnPriority) GetColumn;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, int32 lColumnIndex, out uint32 PropID) GetColumn2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, uint32 PropID, out int32 lColumnIndex) GetColumnFromPropID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self) Clear;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self) ClearRows;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self) Free;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self) IsCompleted;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self) Cancel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, IntBool fPause) Pause;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, int32 lRowFirst, int32 cRows, out ROWSTATUS lpRowStatus) GetRowStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IITResultSet self, out COLUMNSTATUS lpColStatus) GetColumnStatus;
			}
		}
		
	}
}
