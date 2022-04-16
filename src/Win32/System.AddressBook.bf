using System;

// namespace System.AddressBook
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 PROP_ID_SECURE_MIN = 26608;
		public const uint32 PROP_ID_SECURE_MAX = 26623;
		public const uint32 MAPI_DIM = 1;
		public const uint32 MAPI_P1 = 268435456;
		public const uint32 MAPI_SUBMITTED = 2147483648;
		public const uint32 MAPI_SHORTTERM = 128;
		public const uint32 MAPI_NOTRECIP = 64;
		public const uint32 MAPI_THISSESSION = 32;
		public const uint32 MAPI_NOW = 16;
		public const uint32 MAPI_NOTRESERVED = 8;
		public const uint32 MAPI_COMPOUND = 128;
		public const uint32 MV_FLAG = 4096;
		public const uint32 PROP_ID_NULL = 0;
		public const uint32 PROP_ID_INVALID = 65535;
		public const uint32 MV_INSTANCE = 8192;
		public const uint32 TABLE_CHANGED = 1;
		public const uint32 TABLE_ERROR = 2;
		public const uint32 TABLE_ROW_ADDED = 3;
		public const uint32 TABLE_ROW_DELETED = 4;
		public const uint32 TABLE_ROW_MODIFIED = 5;
		public const uint32 TABLE_SORT_DONE = 6;
		public const uint32 TABLE_RESTRICT_DONE = 7;
		public const uint32 TABLE_SETCOL_DONE = 8;
		public const uint32 TABLE_RELOAD = 9;
		public const int32 MAPI_ERROR_VERSION = 0;
		public const uint32 MAPI_USE_DEFAULT = 64;
		public const uint32 MNID_ID = 0;
		public const uint32 MNID_STRING = 1;
		public const uint32 WAB_LOCAL_CONTAINERS = 1048576;
		public const uint32 WAB_PROFILE_CONTENTS = 2097152;
		public const uint32 WAB_IGNORE_PROFILES = 8388608;
		public const uint32 MAPI_ONE_OFF_NO_RICH_INFO = 1;
		public const uint32 UI_SERVICE = 2;
		public const uint32 SERVICE_UI_ALWAYS = 2;
		public const uint32 SERVICE_UI_ALLOWED = 16;
		public const uint32 UI_CURRENT_PROVIDER_FIRST = 4;
		public const uint32 WABOBJECT_LDAPURL_RETURN_MAILUSER = 1;
		public const uint32 WABOBJECT_ME_NEW = 1;
		public const uint32 WABOBJECT_ME_NOCREATE = 2;
		public const uint32 WAB_VCARD_FILE = 0;
		public const uint32 WAB_VCARD_STREAM = 1;
		public const uint32 WAB_USE_OE_SENDMAIL = 1;
		public const uint32 WAB_ENABLE_PROFILES = 4194304;
		public const uint32 WAB_DISPLAY_LDAPURL = 1;
		public const uint32 WAB_CONTEXT_ADRLIST = 2;
		public const uint32 WAB_DISPLAY_ISNTDS = 4;
		public const HResult E_IMAPI_REQUEST_CANCELLED = -1062600702;
		public const HResult E_IMAPI_RECORDER_REQUIRED = -1062600701;
		public const HResult S_IMAPI_SPEEDADJUSTED = 11141124;
		public const HResult S_IMAPI_ROTATIONADJUSTED = 11141125;
		public const HResult S_IMAPI_BOTHADJUSTED = 11141126;
		public const HResult E_IMAPI_BURN_VERIFICATION_FAILED = -1062600697;
		public const HResult S_IMAPI_COMMAND_HAS_SENSE_DATA = 11141632;
		public const HResult E_IMAPI_RECORDER_NO_SUCH_MODE_PAGE = -1062600191;
		public const HResult E_IMAPI_RECORDER_MEDIA_NO_MEDIA = -1062600190;
		public const HResult E_IMAPI_RECORDER_MEDIA_INCOMPATIBLE = -1062600189;
		public const HResult E_IMAPI_RECORDER_MEDIA_UPSIDE_DOWN = -1062600188;
		public const HResult E_IMAPI_RECORDER_MEDIA_BECOMING_READY = -1062600187;
		public const HResult E_IMAPI_RECORDER_MEDIA_FORMAT_IN_PROGRESS = -1062600186;
		public const HResult E_IMAPI_RECORDER_MEDIA_BUSY = -1062600185;
		public const HResult E_IMAPI_RECORDER_INVALID_MODE_PARAMETERS = -1062600184;
		public const HResult E_IMAPI_RECORDER_MEDIA_WRITE_PROTECTED = -1062600183;
		public const HResult E_IMAPI_RECORDER_NO_SUCH_FEATURE = -1062600182;
		public const HResult E_IMAPI_RECORDER_FEATURE_IS_NOT_CURRENT = -1062600181;
		public const HResult E_IMAPI_RECORDER_GET_CONFIGURATION_NOT_SUPPORTED = -1062600180;
		public const HResult E_IMAPI_RECORDER_COMMAND_TIMEOUT = -1062600179;
		public const HResult E_IMAPI_RECORDER_DVD_STRUCTURE_NOT_PRESENT = -1062600178;
		public const HResult E_IMAPI_RECORDER_MEDIA_SPEED_MISMATCH = -1062600177;
		public const HResult E_IMAPI_RECORDER_LOCKED = -1062600176;
		public const HResult E_IMAPI_RECORDER_CLIENT_NAME_IS_NOT_VALID = -1062600175;
		public const HResult E_IMAPI_RECORDER_MEDIA_NOT_FORMATTED = -1062600174;
		public const HResult E_IMAPI_RECORDER_INVALID_RESPONSE_FROM_DEVICE = -1062599937;
		public const HResult E_IMAPI_LOSS_OF_STREAMING = -1062599936;
		public const HResult E_IMAPI_UNEXPECTED_RESPONSE_FROM_DEVICE = -1062599935;
		public const HResult S_IMAPI_WRITE_NOT_IN_PROGRESS = 11141890;
		public const HResult E_IMAPI_DF2DATA_WRITE_IN_PROGRESS = -1062599680;
		public const HResult E_IMAPI_DF2DATA_WRITE_NOT_IN_PROGRESS = -1062599679;
		public const HResult E_IMAPI_DF2DATA_INVALID_MEDIA_STATE = -1062599678;
		public const HResult E_IMAPI_DF2DATA_STREAM_NOT_SUPPORTED = -1062599677;
		public const HResult E_IMAPI_DF2DATA_STREAM_TOO_LARGE_FOR_CURRENT_MEDIA = -1062599676;
		public const HResult E_IMAPI_DF2DATA_MEDIA_NOT_BLANK = -1062599675;
		public const HResult E_IMAPI_DF2DATA_MEDIA_IS_NOT_SUPPORTED = -1062599674;
		public const HResult E_IMAPI_DF2DATA_RECORDER_NOT_SUPPORTED = -1062599673;
		public const HResult E_IMAPI_DF2DATA_CLIENT_NAME_IS_NOT_VALID = -1062599672;
		public const HResult E_IMAPI_DF2TAO_WRITE_IN_PROGRESS = -1062599424;
		public const HResult E_IMAPI_DF2TAO_WRITE_NOT_IN_PROGRESS = -1062599423;
		public const HResult E_IMAPI_DF2TAO_MEDIA_IS_NOT_PREPARED = -1062599422;
		public const HResult E_IMAPI_DF2TAO_MEDIA_IS_PREPARED = -1062599421;
		public const HResult E_IMAPI_DF2TAO_PROPERTY_FOR_BLANK_MEDIA_ONLY = -1062599420;
		public const HResult E_IMAPI_DF2TAO_TABLE_OF_CONTENTS_EMPTY_DISC = -1062599419;
		public const HResult E_IMAPI_DF2TAO_MEDIA_IS_NOT_BLANK = -1062599418;
		public const HResult E_IMAPI_DF2TAO_MEDIA_IS_NOT_SUPPORTED = -1062599417;
		public const HResult E_IMAPI_DF2TAO_TRACK_LIMIT_REACHED = -1062599416;
		public const HResult E_IMAPI_DF2TAO_NOT_ENOUGH_SPACE = -1062599415;
		public const HResult E_IMAPI_DF2TAO_NO_RECORDER_SPECIFIED = -1062599414;
		public const HResult E_IMAPI_DF2TAO_INVALID_ISRC = -1062599413;
		public const HResult E_IMAPI_DF2TAO_INVALID_MCN = -1062599412;
		public const HResult E_IMAPI_DF2TAO_STREAM_NOT_SUPPORTED = -1062599411;
		public const HResult E_IMAPI_DF2TAO_RECORDER_NOT_SUPPORTED = -1062599410;
		public const HResult E_IMAPI_DF2TAO_CLIENT_NAME_IS_NOT_VALID = -1062599409;
		public const HResult E_IMAPI_DF2RAW_WRITE_IN_PROGRESS = -1062599168;
		public const HResult E_IMAPI_DF2RAW_WRITE_NOT_IN_PROGRESS = -1062599167;
		public const HResult E_IMAPI_DF2RAW_MEDIA_IS_NOT_PREPARED = -1062599166;
		public const HResult E_IMAPI_DF2RAW_MEDIA_IS_PREPARED = -1062599165;
		public const HResult E_IMAPI_DF2RAW_CLIENT_NAME_IS_NOT_VALID = -1062599164;
		public const HResult E_IMAPI_DF2RAW_MEDIA_IS_NOT_BLANK = -1062599162;
		public const HResult E_IMAPI_DF2RAW_MEDIA_IS_NOT_SUPPORTED = -1062599161;
		public const HResult E_IMAPI_DF2RAW_NOT_ENOUGH_SPACE = -1062599159;
		public const HResult E_IMAPI_DF2RAW_NO_RECORDER_SPECIFIED = -1062599158;
		public const HResult E_IMAPI_DF2RAW_STREAM_NOT_SUPPORTED = -1062599155;
		public const HResult E_IMAPI_DF2RAW_DATA_BLOCK_TYPE_NOT_SUPPORTED = -1062599154;
		public const HResult E_IMAPI_DF2RAW_STREAM_LEADIN_TOO_SHORT = -1062599153;
		public const HResult E_IMAPI_DF2RAW_RECORDER_NOT_SUPPORTED = -1062599152;
		public const HResult E_IMAPI_ERASE_RECORDER_IN_USE = -2136340224;
		public const HResult E_IMAPI_ERASE_ONLY_ONE_RECORDER_SUPPORTED = -2136340223;
		public const HResult E_IMAPI_ERASE_DISC_INFORMATION_TOO_SMALL = -2136340222;
		public const HResult E_IMAPI_ERASE_MODE_PAGE_2A_TOO_SMALL = -2136340221;
		public const HResult E_IMAPI_ERASE_MEDIA_IS_NOT_ERASABLE = -2136340220;
		public const HResult E_IMAPI_ERASE_DRIVE_FAILED_ERASE_COMMAND = -2136340219;
		public const HResult E_IMAPI_ERASE_TOOK_LONGER_THAN_ONE_HOUR = -2136340218;
		public const HResult E_IMAPI_ERASE_UNEXPECTED_DRIVE_RESPONSE_DURING_ERASE = -2136340217;
		public const HResult E_IMAPI_ERASE_DRIVE_FAILED_SPINUP_COMMAND = -2136340216;
		public const HResult E_IMAPI_ERASE_MEDIA_IS_NOT_SUPPORTED = -1062598391;
		public const HResult E_IMAPI_ERASE_RECORDER_NOT_SUPPORTED = -1062598390;
		public const HResult E_IMAPI_ERASE_CLIENT_NAME_IS_NOT_VALID = -1062598389;
		public const HResult E_IMAPI_RAW_IMAGE_IS_READ_ONLY = -2136339968;
		public const HResult E_IMAPI_RAW_IMAGE_TOO_MANY_TRACKS = -2136339967;
		public const HResult E_IMAPI_RAW_IMAGE_SECTOR_TYPE_NOT_SUPPORTED = -2136339966;
		public const HResult E_IMAPI_RAW_IMAGE_NO_TRACKS = -2136339965;
		public const HResult E_IMAPI_RAW_IMAGE_TRACKS_ALREADY_ADDED = -2136339964;
		public const HResult E_IMAPI_RAW_IMAGE_INSUFFICIENT_SPACE = -2136339963;
		public const HResult E_IMAPI_RAW_IMAGE_TOO_MANY_TRACK_INDEXES = -2136339962;
		public const HResult E_IMAPI_RAW_IMAGE_TRACK_INDEX_NOT_FOUND = -2136339961;
		public const HResult S_IMAPI_RAW_IMAGE_TRACK_INDEX_ALREADY_EXISTS = 11143688;
		public const HResult E_IMAPI_RAW_IMAGE_TRACK_INDEX_OFFSET_ZERO_CANNOT_BE_CLEARED = -2136339959;
		public const HResult E_IMAPI_RAW_IMAGE_TRACK_INDEX_TOO_CLOSE_TO_OTHER_INDEX = -2136339958;
		public const uint32 FACILITY_IMAPI2 = 170;
		public const HResult IMAPI_E_FSI_INTERNAL_ERROR = -1062555392;
		public const HResult IMAPI_E_INVALID_PARAM = -1062555391;
		public const HResult IMAPI_E_READONLY = -1062555390;
		public const HResult IMAPI_E_NO_OUTPUT = -1062555389;
		public const HResult IMAPI_E_INVALID_VOLUME_NAME = -1062555388;
		public const HResult IMAPI_E_INVALID_DATE = -1062555387;
		public const HResult IMAPI_E_FILE_SYSTEM_NOT_EMPTY = -1062555386;
		public const HResult IMAPI_E_NOT_FILE = -1062555384;
		public const HResult IMAPI_E_NOT_DIR = -1062555383;
		public const HResult IMAPI_E_DIR_NOT_EMPTY = -1062555382;
		public const HResult IMAPI_E_NOT_IN_FILE_SYSTEM = -1062555381;
		public const HResult IMAPI_E_INVALID_PATH = -1062555376;
		public const HResult IMAPI_E_RESTRICTED_NAME_VIOLATION = -1062555375;
		public const HResult IMAPI_E_DUP_NAME = -1062555374;
		public const HResult IMAPI_E_NO_UNIQUE_NAME = -1062555373;
		public const HResult IMAPI_E_ITEM_NOT_FOUND = -1062555368;
		public const HResult IMAPI_E_FILE_NOT_FOUND = -1062555367;
		public const HResult IMAPI_E_DIR_NOT_FOUND = -1062555366;
		public const HResult IMAPI_E_IMAGE_SIZE_LIMIT = -1062555360;
		public const HResult IMAPI_E_IMAGE_TOO_BIG = -1062555359;
		public const HResult IMAPI_E_DATA_STREAM_INCONSISTENCY = -1062555352;
		public const HResult IMAPI_E_DATA_STREAM_READ_FAILURE = -1062555351;
		public const HResult IMAPI_E_DATA_STREAM_CREATE_FAILURE = -1062555350;
		public const HResult IMAPI_E_DIRECTORY_READ_FAILURE = -1062555349;
		public const HResult IMAPI_E_TOO_MANY_DIRS = -1062555344;
		public const HResult IMAPI_E_ISO9660_LEVELS = -1062555343;
		public const HResult IMAPI_E_DATA_TOO_BIG = -1062555342;
		public const HResult IMAPI_E_INCOMPATIBLE_PREVIOUS_SESSION = -1062555341;
		public const HResult IMAPI_E_STASHFILE_OPEN_FAILURE = -1062555336;
		public const HResult IMAPI_E_STASHFILE_SEEK_FAILURE = -1062555335;
		public const HResult IMAPI_E_STASHFILE_WRITE_FAILURE = -1062555334;
		public const HResult IMAPI_E_STASHFILE_READ_FAILURE = -1062555333;
		public const HResult IMAPI_E_INVALID_WORKING_DIRECTORY = -1062555328;
		public const HResult IMAPI_E_WORKING_DIRECTORY_SPACE = -1062555327;
		public const HResult IMAPI_E_STASHFILE_MOVE = -1062555326;
		public const HResult IMAPI_E_BOOT_IMAGE_DATA = -1062555320;
		public const HResult IMAPI_E_BOOT_OBJECT_CONFLICT = -1062555319;
		public const HResult IMAPI_E_BOOT_EMULATION_IMAGE_SIZE_MISMATCH = -1062555318;
		public const HResult IMAPI_E_EMPTY_DISC = -1062555312;
		public const HResult IMAPI_E_NO_SUPPORTED_FILE_SYSTEM = -1062555311;
		public const HResult IMAPI_E_FILE_SYSTEM_NOT_FOUND = -1062555310;
		public const HResult IMAPI_E_FILE_SYSTEM_READ_CONSISTENCY_ERROR = -1062555309;
		public const HResult IMAPI_E_FILE_SYSTEM_FEATURE_NOT_SUPPORTED = -1062555308;
		public const HResult IMAPI_E_IMPORT_TYPE_COLLISION_FILE_EXISTS_AS_DIRECTORY = -1062555307;
		public const HResult IMAPI_E_IMPORT_SEEK_FAILURE = -1062555306;
		public const HResult IMAPI_E_IMPORT_READ_FAILURE = -1062555305;
		public const HResult IMAPI_E_DISC_MISMATCH = -1062555304;
		public const HResult IMAPI_E_IMPORT_MEDIA_NOT_ALLOWED = -1062555303;
		public const HResult IMAPI_E_UDF_NOT_WRITE_COMPATIBLE = -1062555302;
		public const HResult IMAPI_E_INCOMPATIBLE_MULTISESSION_TYPE = -1062555301;
		public const HResult IMAPI_E_NO_COMPATIBLE_MULTISESSION_TYPE = -1062555300;
		public const HResult IMAPI_E_MULTISESSION_NOT_SET = -1062555299;
		public const HResult IMAPI_E_IMPORT_TYPE_COLLISION_DIRECTORY_EXISTS_AS_FILE = -1062555298;
		public const HResult IMAPI_S_IMAGE_FEATURE_NOT_SUPPORTED = 11186527;
		public const HResult IMAPI_E_PROPERTY_NOT_ACCESSIBLE = -1062555296;
		public const HResult IMAPI_E_UDF_REVISION_CHANGE_NOT_ALLOWED = -1062555295;
		public const HResult IMAPI_E_BAD_MULTISESSION_PARAMETER = -1062555294;
		public const HResult IMAPI_E_FILE_SYSTEM_CHANGE_NOT_ALLOWED = -1062555293;
		public const HResult IMAPI_E_IMAGEMANAGER_IMAGE_NOT_ALIGNED = -1062555136;
		public const HResult IMAPI_E_IMAGEMANAGER_NO_VALID_VD_FOUND = -1062555135;
		public const HResult IMAPI_E_IMAGEMANAGER_NO_IMAGE = -1062555134;
		public const HResult IMAPI_E_IMAGEMANAGER_IMAGE_TOO_BIG = -1062555133;
		public const int32 MAPI_E_CALL_FAILED = -2147467259;
		public const int32 MAPI_E_NOT_ENOUGH_MEMORY = -2147024882;
		public const int32 MAPI_E_INVALID_PARAMETER = -2147024809;
		public const int32 MAPI_E_INTERFACE_NOT_SUPPORTED = -2147467262;
		public const int32 MAPI_E_NO_ACCESS = -2147024891;
		public const uint32 TAD_ALL_ROWS = 1;
		public const int32 PRILOWEST = -32768;
		public const uint32 PRIHIGHEST = 32767;
		public const uint32 PRIUSER = 0;
		
		// --- Enums ---
		
		public enum Gender : int32
		{
			Unspecified = 0,
			Female = 1,
			Male = 2,
		}
		
		// --- Function Pointers ---
		
		public function int32 LPALLOCATEBUFFER(uint32 cbSize, void** lppBuffer);
		public function int32 LPALLOCATEMORE(uint32 cbSize, void* lpObject, void** lppBuffer);
		public function uint32 LPFREEBUFFER(void* lpBuffer);
		public function int32 LPNOTIFCALLBACK(void* lpvContext, uint32 cNotification, out NOTIFICATION lpNotifications);
		public function IntBool LPFNABSDI(uint ulUIParam, void* lpvmsg);
		public function void LPFNDISMISS(uint ulUIParam, void* lpvContext);
		public function int32 LPFNBUTTON(uint ulUIParam, void* lpvContext, uint32 cbEntryID, out ENTRYID lpSelection, uint32 ulFlags);
		public function void CALLERRELEASE(uint32 ulCallerData, ref ITableData lpTblData, ref IMAPITable lpVue);
		public function IntBool FNIDLE(void* param0);
		public function IntBool PFNIDLE();
		public function HResult LPOPENSTREAMONFILE(LPALLOCATEBUFFER lpAllocateBuffer, LPFREEBUFFER lpFreeBuffer, uint32 ulFlags, ref int8 lpszFileName, int8* lpszPrefix, out IStream* lppStream);
		public function HResult LPDISPATCHNOTIFICATIONS(uint32 ulFlags);
		public function int32 LPCREATECONVERSATIONINDEX(uint32 cbParent, out uint8 lpbParent, out uint32 lpcbConvIndex, out uint8* lppbConvIndex);
		public function HResult IWABOBJECT_QueryInterface_METHOD(in Guid riid, void** ppvObj);
		public function uint32 IWABOBJECT_AddRef_METHOD();
		public function uint32 IWABOBJECT_Release_METHOD();
		public function HResult IWABOBJECT_GetLastError_METHOD(HResult hResult, uint32 ulFlags, out MAPIERROR* lppMAPIError);
		public function HResult IWABOBJECT_AllocateBuffer_METHOD(uint32 cbSize, void** lppBuffer);
		public function HResult IWABOBJECT_AllocateMore_METHOD(uint32 cbSize, void* lpObject, void** lppBuffer);
		public function HResult IWABOBJECT_FreeBuffer_METHOD(void* lpBuffer);
		public function HResult IWABOBJECT_Backup_METHOD(char8* lpFileName);
		public function HResult IWABOBJECT_Import_METHOD(char8* lpWIP);
		public function HResult IWABOBJECT_Find_METHOD(ref IAddrBook lpIAB, HWnd hWnd);
		public function HResult IWABOBJECT_VCardDisplay_METHOD(ref IAddrBook lpIAB, HWnd hWnd, char8* lpszFileName);
		public function HResult IWABOBJECT_LDAPUrl_METHOD(ref IAddrBook lpIAB, HWnd hWnd, uint32 ulFlags, char8* lpszURL, IMailUser** lppMailUser);
		public function HResult IWABOBJECT_VCardCreate_METHOD(ref IAddrBook lpIAB, uint32 ulFlags, char8* lpszVCard, ref IMailUser lpMailUser);
		public function HResult IWABOBJECT_VCardRetrieve_METHOD(ref IAddrBook lpIAB, uint32 ulFlags, char8* lpszVCard, out IMailUser* lppMailUser);
		public function HResult IWABOBJECT_GetMe_METHOD(ref IAddrBook lpIAB, uint32 ulFlags, out uint32 lpdwAction, out SBinary lpsbEID, HWnd hwnd);
		public function HResult IWABOBJECT_SetMe_METHOD(ref IAddrBook lpIAB, uint32 ulFlags, SBinary sbEID, HWnd hwnd);
		public function HResult LPWABOPEN(out IAddrBook* lppAdrBook, out IWABObject* lppWABObject, out WAB_PARAM lpWP, uint32 Reserved2);
		public function HResult LPWABOPENEX(out IAddrBook* lppAdrBook, out IWABObject* lppWABObject, out WAB_PARAM lpWP, uint32 Reserved, LPALLOCATEBUFFER fnAllocateBuffer, LPALLOCATEMORE fnAllocateMore, LPFREEBUFFER fnFreeBuffer);
		public function int32 LPWABALLOCATEBUFFER(ref IWABObject lpWABObject, uint32 cbSize, void** lppBuffer);
		public function int32 LPWABALLOCATEMORE(ref IWABObject lpWABObject, uint32 cbSize, void* lpObject, void** lppBuffer);
		public function uint32 LPWABFREEBUFFER(ref IWABObject lpWABObject, void* lpBuffer);
		
		// --- Structs ---
		
		[CRepr]
		public struct ENTRYID
		{
			public uint8[4] abFlags;
			public uint8[0] ab;
		}
		[CRepr]
		public struct MAPIUID
		{
			public uint8[16] ab;
		}
		[CRepr]
		public struct SPropTagArray
		{
			public uint32 cValues;
			public uint32[0] aulPropTag;
		}
		[CRepr]
		public struct SBinary
		{
			public uint32 cb;
			public uint8* lpb;
		}
		[CRepr]
		public struct SShortArray
		{
			public uint32 cValues;
			public int16* lpi;
		}
		[CRepr]
		public struct SGuidArray
		{
			public uint32 cValues;
			public Guid* lpguid;
		}
		[CRepr]
		public struct SRealArray
		{
			public uint32 cValues;
			public float* lpflt;
		}
		[CRepr]
		public struct SLongArray
		{
			public uint32 cValues;
			public int32* lpl;
		}
		[CRepr]
		public struct SLargeIntegerArray
		{
			public uint32 cValues;
			public LARGE_INTEGER* lpli;
		}
		[CRepr]
		public struct SDateTimeArray
		{
			public uint32 cValues;
			public FileTime* lpft;
		}
		[CRepr]
		public struct SAppTimeArray
		{
			public uint32 cValues;
			public double* lpat;
		}
		[CRepr]
		public struct SCurrencyArray
		{
			public uint32 cValues;
			public CY* lpcur;
		}
		[CRepr]
		public struct SBinaryArray
		{
			public uint32 cValues;
			public SBinary* lpbin;
		}
		[CRepr]
		public struct SDoubleArray
		{
			public uint32 cValues;
			public double* lpdbl;
		}
		[CRepr]
		public struct SWStringArray
		{
			public uint32 cValues;
			public char16** lppszW;
		}
		[CRepr]
		public struct SLPSTRArray
		{
			public uint32 cValues;
			public PSTR* lppszA;
		}
		[CRepr, Union]
		public struct _PV
		{
			public int16 i;
			public int32 l;
			public uint32 ul;
			public float flt;
			public double dbl;
			public uint16 b;
			public CY cur;
			public double at;
			public FileTime ft;
			public char8* lpszA;
			public SBinary bin;
			public char16* lpszW;
			public Guid* lpguid;
			public LARGE_INTEGER li;
			public SShortArray MVi;
			public SLongArray MVl;
			public SRealArray MVflt;
			public SDoubleArray MVdbl;
			public SCurrencyArray MVcur;
			public SAppTimeArray MVat;
			public SDateTimeArray MVft;
			public SBinaryArray MVbin;
			public SLPSTRArray MVszA;
			public SWStringArray MVszW;
			public SGuidArray MVguid;
			public SLargeIntegerArray MVli;
			public int32 err;
			public int32 x;
		}
		[CRepr]
		public struct SPropValue
		{
			public uint32 ulPropTag;
			public uint32 dwAlignPad;
			public _PV Value;
		}
		[CRepr]
		public struct SPropProblem
		{
			public uint32 ulIndex;
			public uint32 ulPropTag;
			public int32 scode;
		}
		[CRepr]
		public struct SPropProblemArray
		{
			public uint32 cProblem;
			public SPropProblem[0] aProblem;
		}
		[CRepr]
		public struct FLATENTRY
		{
			public uint32 cb;
			public uint8[0] abEntry;
		}
		[CRepr]
		public struct FLATENTRYLIST
		{
			public uint32 cEntries;
			public uint32 cbEntries;
			public uint8[0] abEntries;
		}
		[CRepr]
		public struct MTSID
		{
			public uint32 cb;
			public uint8[0] ab;
		}
		[CRepr]
		public struct FLATMTSIDLIST
		{
			public uint32 cMTSIDs;
			public uint32 cbMTSIDs;
			public uint8[0] abMTSIDs;
		}
		[CRepr]
		public struct ADRENTRY
		{
			public uint32 ulReserved1;
			public uint32 cValues;
			public SPropValue* rgPropVals;
		}
		[CRepr]
		public struct ADRLIST
		{
			public uint32 cEntries;
			public ADRENTRY[0] aEntries;
		}
		[CRepr]
		public struct SRow
		{
			public uint32 ulAdrEntryPad;
			public uint32 cValues;
			public SPropValue* lpProps;
		}
		[CRepr]
		public struct SRowSet
		{
			public uint32 cRows;
			public SRow[0] aRow;
		}
		[CRepr]
		public struct MAPIERROR
		{
			public uint32 ulVersion;
			public int8* lpszError;
			public int8* lpszComponent;
			public uint32 ulLowLevelError;
			public uint32 ulContext;
		}
		[CRepr]
		public struct ERROR_NOTIFICATION
		{
			public uint32 cbEntryID;
			public ENTRYID* lpEntryID;
			public int32 scode;
			public uint32 ulFlags;
			public MAPIERROR* lpMAPIError;
		}
		[CRepr]
		public struct NEWMAIL_NOTIFICATION
		{
			public uint32 cbEntryID;
			public ENTRYID* lpEntryID;
			public uint32 cbParentID;
			public ENTRYID* lpParentID;
			public uint32 ulFlags;
			public int8* lpszMessageClass;
			public uint32 ulMessageFlags;
		}
		[CRepr]
		public struct OBJECT_NOTIFICATION
		{
			public uint32 cbEntryID;
			public ENTRYID* lpEntryID;
			public uint32 ulObjType;
			public uint32 cbParentID;
			public ENTRYID* lpParentID;
			public uint32 cbOldID;
			public ENTRYID* lpOldID;
			public uint32 cbOldParentID;
			public ENTRYID* lpOldParentID;
			public SPropTagArray* lpPropTagArray;
		}
		[CRepr]
		public struct TABLE_NOTIFICATION
		{
			public uint32 ulTableEvent;
			public HResult hResult;
			public SPropValue propIndex;
			public SPropValue propPrior;
			public SRow row;
			public uint32 ulPad;
		}
		[CRepr]
		public struct EXTENDED_NOTIFICATION
		{
			public uint32 ulEvent;
			public uint32 cb;
			public uint8* pbEventParameters;
		}
		[CRepr]
		public struct STATUS_OBJECT_NOTIFICATION
		{
			public uint32 cbEntryID;
			public ENTRYID* lpEntryID;
			public uint32 cValues;
			public SPropValue* lpPropVals;
		}
		[CRepr]
		public struct NOTIFICATION
		{
			public uint32 ulEventType;
			public uint32 ulAlignPad;
			public _info_e__Union info;
			
			[CRepr, Union]
			public struct _info_e__Union
			{
				public ERROR_NOTIFICATION err;
				public NEWMAIL_NOTIFICATION newmail;
				public OBJECT_NOTIFICATION obj;
				public TABLE_NOTIFICATION tab;
				public EXTENDED_NOTIFICATION ext;
				public STATUS_OBJECT_NOTIFICATION statobj;
			}
		}
		[CRepr]
		public struct MAPINAMEID
		{
			public Guid* lpguid;
			public uint32 ulKind;
			public _Kind_e__Union Kind;
			
			[CRepr, Union]
			public struct _Kind_e__Union
			{
				public int32 lID;
				public char16* lpwstrName;
			}
		}
		[CRepr]
		public struct SSortOrder
		{
			public uint32 ulPropTag;
			public uint32 ulOrder;
		}
		[CRepr]
		public struct SSortOrderSet
		{
			public uint32 cSorts;
			public uint32 cCategories;
			public uint32 cExpanded;
			public SSortOrder[0] aSort;
		}
		[CRepr]
		public struct SAndRestriction
		{
			public uint32 cRes;
			public SRestriction* lpRes;
		}
		[CRepr]
		public struct SOrRestriction
		{
			public uint32 cRes;
			public SRestriction* lpRes;
		}
		[CRepr]
		public struct SNotRestriction
		{
			public uint32 ulReserved;
			public SRestriction* lpRes;
		}
		[CRepr]
		public struct SContentRestriction
		{
			public uint32 ulFuzzyLevel;
			public uint32 ulPropTag;
			public SPropValue* lpProp;
		}
		[CRepr]
		public struct SBitMaskRestriction
		{
			public uint32 relBMR;
			public uint32 ulPropTag;
			public uint32 ulMask;
		}
		[CRepr]
		public struct SPropertyRestriction
		{
			public uint32 relop;
			public uint32 ulPropTag;
			public SPropValue* lpProp;
		}
		[CRepr]
		public struct SComparePropsRestriction
		{
			public uint32 relop;
			public uint32 ulPropTag1;
			public uint32 ulPropTag2;
		}
		[CRepr]
		public struct SSizeRestriction
		{
			public uint32 relop;
			public uint32 ulPropTag;
			public uint32 cb;
		}
		[CRepr]
		public struct SExistRestriction
		{
			public uint32 ulReserved1;
			public uint32 ulPropTag;
			public uint32 ulReserved2;
		}
		[CRepr]
		public struct SSubRestriction
		{
			public uint32 ulSubObject;
			public SRestriction* lpRes;
		}
		[CRepr]
		public struct SCommentRestriction
		{
			public uint32 cValues;
			public SRestriction* lpRes;
			public SPropValue* lpProp;
		}
		[CRepr]
		public struct SRestriction
		{
			public uint32 rt;
			public _res_e__Union res;
			
			[CRepr, Union]
			public struct _res_e__Union
			{
				public SComparePropsRestriction resCompareProps;
				public SAndRestriction resAnd;
				public SOrRestriction resOr;
				public SNotRestriction resNot;
				public SContentRestriction resContent;
				public SPropertyRestriction resProperty;
				public SBitMaskRestriction resBitMask;
				public SSizeRestriction resSize;
				public SExistRestriction resExist;
				public SSubRestriction resSub;
				public SCommentRestriction resComment;
			}
		}
		[CRepr]
		public struct _flaglist
		{
			public uint32 cFlags;
			public uint32[0] ulFlag;
		}
		[CRepr]
		public struct ADRPARM
		{
			public uint32 cbABContEntryID;
			public ENTRYID* lpABContEntryID;
			public uint32 ulFlags;
			public void* lpReserved;
			public uint32 ulHelpContext;
			public int8* lpszHelpFileName;
			public LPFNABSDI lpfnABSDI;
			public LPFNDISMISS lpfnDismiss;
			public void* lpvDismissContext;
			public int8* lpszCaption;
			public int8* lpszNewEntryTitle;
			public int8* lpszDestWellsTitle;
			public uint32 cDestFields;
			public uint32 nDestFieldFocus;
			public int8** lppszDestTitles;
			public uint32* lpulDestComps;
			public SRestriction* lpContRestriction;
			public SRestriction* lpHierRestriction;
		}
		[CRepr]
		public struct DTBLLABEL
		{
			public uint32 ulbLpszLabelName;
			public uint32 ulFlags;
		}
		[CRepr]
		public struct DTBLEDIT
		{
			public uint32 ulbLpszCharsAllowed;
			public uint32 ulFlags;
			public uint32 ulNumCharsAllowed;
			public uint32 ulPropTag;
		}
		[CRepr]
		public struct DTBLLBX
		{
			public uint32 ulFlags;
			public uint32 ulPRSetProperty;
			public uint32 ulPRTableName;
		}
		[CRepr]
		public struct DTBLCOMBOBOX
		{
			public uint32 ulbLpszCharsAllowed;
			public uint32 ulFlags;
			public uint32 ulNumCharsAllowed;
			public uint32 ulPRPropertyName;
			public uint32 ulPRTableName;
		}
		[CRepr]
		public struct DTBLDDLBX
		{
			public uint32 ulFlags;
			public uint32 ulPRDisplayProperty;
			public uint32 ulPRSetProperty;
			public uint32 ulPRTableName;
		}
		[CRepr]
		public struct DTBLCHECKBOX
		{
			public uint32 ulbLpszLabel;
			public uint32 ulFlags;
			public uint32 ulPRPropertyName;
		}
		[CRepr]
		public struct DTBLGROUPBOX
		{
			public uint32 ulbLpszLabel;
			public uint32 ulFlags;
		}
		[CRepr]
		public struct DTBLBUTTON
		{
			public uint32 ulbLpszLabel;
			public uint32 ulFlags;
			public uint32 ulPRControl;
		}
		[CRepr]
		public struct DTBLPAGE
		{
			public uint32 ulbLpszLabel;
			public uint32 ulFlags;
			public uint32 ulbLpszComponent;
			public uint32 ulContext;
		}
		[CRepr]
		public struct DTBLRADIOBUTTON
		{
			public uint32 ulbLpszLabel;
			public uint32 ulFlags;
			public uint32 ulcButtons;
			public uint32 ulPropTag;
			public int32 lReturnValue;
		}
		[CRepr]
		public struct DTBLMVLISTBOX
		{
			public uint32 ulFlags;
			public uint32 ulMVPropTag;
		}
		[CRepr]
		public struct DTBLMVDDLBX
		{
			public uint32 ulFlags;
			public uint32 ulMVPropTag;
		}
		[CRepr]
		public struct DTCTL
		{
			public uint32 ulCtlType;
			public uint32 ulCtlFlags;
			public uint8* lpbNotif;
			public uint32 cbNotif;
			public int8* lpszFilter;
			public uint32 ulItemID;
			public _ctl_e__Union ctl;
			
			[CRepr, Union]
			public struct _ctl_e__Union
			{
				public void* lpv;
				public DTBLLABEL* lplabel;
				public DTBLEDIT* lpedit;
				public DTBLLBX* lplbx;
				public DTBLCOMBOBOX* lpcombobox;
				public DTBLDDLBX* lpddlbx;
				public DTBLCHECKBOX* lpcheckbox;
				public DTBLGROUPBOX* lpgroupbox;
				public DTBLBUTTON* lpbutton;
				public DTBLRADIOBUTTON* lpradiobutton;
				public DTBLMVLISTBOX* lpmvlbx;
				public DTBLMVDDLBX* lpmvddlbx;
				public DTBLPAGE* lppage;
			}
		}
		[CRepr]
		public struct DTPAGE
		{
			public uint32 cctl;
			public int8* lpszResourceName;
			public _Anonymous_e__Union Anonymous;
			public DTCTL* lpctl;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public int8* lpszComponent;
				public uint32 ulItemID;
			}
		}
		[CRepr]
		public struct _WABACTIONITEM {}
		[CRepr]
		public struct WAB_PARAM
		{
			public uint32 cbSize;
			public HWnd hwnd;
			public char8* szFileName;
			public uint32 ulFlags;
			public Guid guidPSExt;
		}
		[CRepr]
		public struct WABIMPORTPARAM
		{
			public uint32 cbSize;
			public IAddrBook* lpAdrBook;
			public HWnd hWnd;
			public uint32 ulFlags;
			public char8* lpszFileName;
		}
		[CRepr]
		public struct WABEXTDISPLAY
		{
			public uint32 cbSize;
			public IWABObject* lpWABObject;
			public IAddrBook* lpAdrBook;
			public IMAPIProp* lpPropObj;
			public IntBool fReadOnly;
			public IntBool fDataChanged;
			public uint32 ulFlags;
			public void* lpv;
			public int8* lpsz;
		}
		[CRepr]
		public struct NOTIFKEY
		{
			public uint32 cb;
			public uint8[0] ab;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IMAPIAdviseSink : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public uint32 OnNotify(uint32 cNotif, out NOTIFICATION lpNotifications) mut => VT.OnNotify(ref this, cNotif, out lpNotifications);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IMAPIAdviseSink self, uint32 cNotif, out NOTIFICATION lpNotifications) OnNotify;
			}
		}
		[CRepr]
		public struct IMAPIProgress : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult Progress(uint32 ulValue, uint32 ulCount, uint32 ulTotal) mut => VT.Progress(ref this, ulValue, ulCount, ulTotal);
			public HResult ComGetFlags(out uint32 lpulFlags) mut => VT.ComGetFlags(ref this, out lpulFlags);
			public HResult GetMax(out uint32 lpulMax) mut => VT.GetMax(ref this, out lpulMax);
			public HResult GetMin(out uint32 lpulMin) mut => VT.GetMin(ref this, out lpulMin);
			public HResult SetLimits(out uint32 lpulMin, out uint32 lpulMax, out uint32 lpulFlags) mut => VT.SetLimits(ref this, out lpulMin, out lpulMax, out lpulFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProgress self, uint32 ulValue, uint32 ulCount, uint32 ulTotal) Progress;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProgress self, out uint32 lpulFlags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProgress self, out uint32 lpulMax) GetMax;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProgress self, out uint32 lpulMin) GetMin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProgress self, out uint32 lpulMin, out uint32 lpulMax, out uint32 lpulFlags) SetLimits;
			}
		}
		[CRepr]
		public struct IMAPIProp : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetLastError(HResult hResult, uint32 ulFlags, out MAPIERROR* lppMAPIError) mut => VT.GetLastError(ref this, hResult, ulFlags, out lppMAPIError);
			public HResult SaveChanges(uint32 ulFlags) mut => VT.SaveChanges(ref this, ulFlags);
			public HResult GetProps(out SPropTagArray lpPropTagArray, uint32 ulFlags, out uint32 lpcValues, out SPropValue* lppPropArray) mut => VT.GetProps(ref this, out lpPropTagArray, ulFlags, out lpcValues, out lppPropArray);
			public HResult GetPropList(uint32 ulFlags, out SPropTagArray* lppPropTagArray) mut => VT.GetPropList(ref this, ulFlags, out lppPropTagArray);
			public HResult OpenProperty(uint32 ulPropTag, out Guid lpiid, uint32 ulInterfaceOptions, uint32 ulFlags, out IUnknown* lppUnk) mut => VT.OpenProperty(ref this, ulPropTag, out lpiid, ulInterfaceOptions, ulFlags, out lppUnk);
			public HResult SetProps(uint32 cValues, out SPropValue lpPropArray, out SPropProblemArray* lppProblems) mut => VT.SetProps(ref this, cValues, out lpPropArray, out lppProblems);
			public HResult DeleteProps(out SPropTagArray lpPropTagArray, out SPropProblemArray* lppProblems) mut => VT.DeleteProps(ref this, out lpPropTagArray, out lppProblems);
			public HResult CopyTo(uint32 ciidExclude, out Guid rgiidExclude, out SPropTagArray lpExcludeProps, uint ulUIParam, ref IMAPIProgress lpProgress, out Guid lpInterface, void* lpDestObj, uint32 ulFlags, out SPropProblemArray* lppProblems) mut => VT.CopyTo(ref this, ciidExclude, out rgiidExclude, out lpExcludeProps, ulUIParam, ref lpProgress, out lpInterface, lpDestObj, ulFlags, out lppProblems);
			public HResult CopyProps(out SPropTagArray lpIncludeProps, uint ulUIParam, ref IMAPIProgress lpProgress, out Guid lpInterface, void* lpDestObj, uint32 ulFlags, out SPropProblemArray* lppProblems) mut => VT.CopyProps(ref this, out lpIncludeProps, ulUIParam, ref lpProgress, out lpInterface, lpDestObj, ulFlags, out lppProblems);
			public HResult GetNamesFromIDs(out SPropTagArray* lppPropTags, out Guid lpPropSetGuid, uint32 ulFlags, out uint32 lpcPropNames, out MAPINAMEID** lpppPropNames) mut => VT.GetNamesFromIDs(ref this, out lppPropTags, out lpPropSetGuid, ulFlags, out lpcPropNames, out lpppPropNames);
			public HResult GetIDsFromNames(uint32 cPropNames, out MAPINAMEID* lppPropNames, uint32 ulFlags, out SPropTagArray* lppPropTags) mut => VT.GetIDsFromNames(ref this, cPropNames, out lppPropNames, ulFlags, out lppPropTags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProp self, HResult hResult, uint32 ulFlags, out MAPIERROR* lppMAPIError) GetLastError;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProp self, uint32 ulFlags) SaveChanges;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProp self, out SPropTagArray lpPropTagArray, uint32 ulFlags, out uint32 lpcValues, out SPropValue* lppPropArray) GetProps;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProp self, uint32 ulFlags, out SPropTagArray* lppPropTagArray) GetPropList;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProp self, uint32 ulPropTag, out Guid lpiid, uint32 ulInterfaceOptions, uint32 ulFlags, out IUnknown* lppUnk) OpenProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProp self, uint32 cValues, out SPropValue lpPropArray, out SPropProblemArray* lppProblems) SetProps;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProp self, out SPropTagArray lpPropTagArray, out SPropProblemArray* lppProblems) DeleteProps;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProp self, uint32 ciidExclude, out Guid rgiidExclude, out SPropTagArray lpExcludeProps, uint ulUIParam, ref IMAPIProgress lpProgress, out Guid lpInterface, void* lpDestObj, uint32 ulFlags, out SPropProblemArray* lppProblems) CopyTo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProp self, out SPropTagArray lpIncludeProps, uint ulUIParam, ref IMAPIProgress lpProgress, out Guid lpInterface, void* lpDestObj, uint32 ulFlags, out SPropProblemArray* lppProblems) CopyProps;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProp self, out SPropTagArray* lppPropTags, out Guid lpPropSetGuid, uint32 ulFlags, out uint32 lpcPropNames, out MAPINAMEID** lpppPropNames) GetNamesFromIDs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIProp self, uint32 cPropNames, out MAPINAMEID* lppPropNames, uint32 ulFlags, out SPropTagArray* lppPropTags) GetIDsFromNames;
			}
		}
		[CRepr]
		public struct IMAPITable : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetLastError(HResult hResult, uint32 ulFlags, out MAPIERROR* lppMAPIError) mut => VT.GetLastError(ref this, hResult, ulFlags, out lppMAPIError);
			public HResult Advise(uint32 ulEventMask, ref IMAPIAdviseSink lpAdviseSink, out uint32 lpulConnection) mut => VT.Advise(ref this, ulEventMask, ref lpAdviseSink, out lpulConnection);
			public HResult Unadvise(uint32 ulConnection) mut => VT.Unadvise(ref this, ulConnection);
			public HResult GetStatus(out uint32 lpulTableStatus, out uint32 lpulTableType) mut => VT.GetStatus(ref this, out lpulTableStatus, out lpulTableType);
			public HResult SetColumns(out SPropTagArray lpPropTagArray, uint32 ulFlags) mut => VT.SetColumns(ref this, out lpPropTagArray, ulFlags);
			public HResult QueryColumns(uint32 ulFlags, out SPropTagArray* lpPropTagArray) mut => VT.QueryColumns(ref this, ulFlags, out lpPropTagArray);
			public HResult GetRowCount(uint32 ulFlags, out uint32 lpulCount) mut => VT.GetRowCount(ref this, ulFlags, out lpulCount);
			public HResult SeekRow(uint32 bkOrigin, int32 lRowCount, out int32 lplRowsSought) mut => VT.SeekRow(ref this, bkOrigin, lRowCount, out lplRowsSought);
			public HResult SeekRowApprox(uint32 ulNumerator, uint32 ulDenominator) mut => VT.SeekRowApprox(ref this, ulNumerator, ulDenominator);
			public HResult QueryPosition(out uint32 lpulRow, out uint32 lpulNumerator, out uint32 lpulDenominator) mut => VT.QueryPosition(ref this, out lpulRow, out lpulNumerator, out lpulDenominator);
			public HResult FindRow(out SRestriction lpRestriction, uint32 bkOrigin, uint32 ulFlags) mut => VT.FindRow(ref this, out lpRestriction, bkOrigin, ulFlags);
			public HResult Restrict(out SRestriction lpRestriction, uint32 ulFlags) mut => VT.Restrict(ref this, out lpRestriction, ulFlags);
			public HResult CreateBookmark(out uint32 lpbkPosition) mut => VT.CreateBookmark(ref this, out lpbkPosition);
			public HResult FreeBookmark(uint32 bkPosition) mut => VT.FreeBookmark(ref this, bkPosition);
			public HResult SortTable(out SSortOrderSet lpSortCriteria, uint32 ulFlags) mut => VT.SortTable(ref this, out lpSortCriteria, ulFlags);
			public HResult QuerySortOrder(out SSortOrderSet* lppSortCriteria) mut => VT.QuerySortOrder(ref this, out lppSortCriteria);
			public HResult QueryRows(int32 lRowCount, uint32 ulFlags, out SRowSet* lppRows) mut => VT.QueryRows(ref this, lRowCount, ulFlags, out lppRows);
			public HResult Abort() mut => VT.Abort(ref this);
			public HResult ExpandRow(uint32 cbInstanceKey, out uint8 pbInstanceKey, uint32 ulRowCount, uint32 ulFlags, out SRowSet* lppRows, out uint32 lpulMoreRows) mut => VT.ExpandRow(ref this, cbInstanceKey, out pbInstanceKey, ulRowCount, ulFlags, out lppRows, out lpulMoreRows);
			public HResult CollapseRow(uint32 cbInstanceKey, out uint8 pbInstanceKey, uint32 ulFlags, out uint32 lpulRowCount) mut => VT.CollapseRow(ref this, cbInstanceKey, out pbInstanceKey, ulFlags, out lpulRowCount);
			public HResult WaitForCompletion(uint32 ulFlags, uint32 ulTimeout, out uint32 lpulTableStatus) mut => VT.WaitForCompletion(ref this, ulFlags, ulTimeout, out lpulTableStatus);
			public HResult GetCollapseState(uint32 ulFlags, uint32 cbInstanceKey, out uint8 lpbInstanceKey, out uint32 lpcbCollapseState, out uint8* lppbCollapseState) mut => VT.GetCollapseState(ref this, ulFlags, cbInstanceKey, out lpbInstanceKey, out lpcbCollapseState, out lppbCollapseState);
			public HResult SetCollapseState(uint32 ulFlags, uint32 cbCollapseState, out uint8 pbCollapseState, out uint32 lpbkLocation) mut => VT.SetCollapseState(ref this, ulFlags, cbCollapseState, out pbCollapseState, out lpbkLocation);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, HResult hResult, uint32 ulFlags, out MAPIERROR* lppMAPIError) GetLastError;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, uint32 ulEventMask, ref IMAPIAdviseSink lpAdviseSink, out uint32 lpulConnection) Advise;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, uint32 ulConnection) Unadvise;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, out uint32 lpulTableStatus, out uint32 lpulTableType) GetStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, out SPropTagArray lpPropTagArray, uint32 ulFlags) SetColumns;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, uint32 ulFlags, out SPropTagArray* lpPropTagArray) QueryColumns;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, uint32 ulFlags, out uint32 lpulCount) GetRowCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, uint32 bkOrigin, int32 lRowCount, out int32 lplRowsSought) SeekRow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, uint32 ulNumerator, uint32 ulDenominator) SeekRowApprox;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, out uint32 lpulRow, out uint32 lpulNumerator, out uint32 lpulDenominator) QueryPosition;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, out SRestriction lpRestriction, uint32 bkOrigin, uint32 ulFlags) FindRow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, out SRestriction lpRestriction, uint32 ulFlags) Restrict;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, out uint32 lpbkPosition) CreateBookmark;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, uint32 bkPosition) FreeBookmark;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, out SSortOrderSet lpSortCriteria, uint32 ulFlags) SortTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, out SSortOrderSet* lppSortCriteria) QuerySortOrder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, int32 lRowCount, uint32 ulFlags, out SRowSet* lppRows) QueryRows;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self) Abort;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, uint32 cbInstanceKey, out uint8 pbInstanceKey, uint32 ulRowCount, uint32 ulFlags, out SRowSet* lppRows, out uint32 lpulMoreRows) ExpandRow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, uint32 cbInstanceKey, out uint8 pbInstanceKey, uint32 ulFlags, out uint32 lpulRowCount) CollapseRow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, uint32 ulFlags, uint32 ulTimeout, out uint32 lpulTableStatus) WaitForCompletion;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, uint32 ulFlags, uint32 cbInstanceKey, out uint8 lpbInstanceKey, out uint32 lpcbCollapseState, out uint8* lppbCollapseState) GetCollapseState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPITable self, uint32 ulFlags, uint32 cbCollapseState, out uint8 pbCollapseState, out uint32 lpbkLocation) SetCollapseState;
			}
		}
		[CRepr]
		public struct IProfSect : IMAPIProp
		{
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IMAPIProp.VTable {}
		}
		[CRepr]
		public struct IMAPIStatus : IMAPIProp
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult ValidateState(uint ulUIParam, uint32 ulFlags) mut => VT.ValidateState(ref this, ulUIParam, ulFlags);
			public HResult SettingsDialog(uint ulUIParam, uint32 ulFlags) mut => VT.SettingsDialog(ref this, ulUIParam, ulFlags);
			public HResult ChangePassword(ref int8 lpOldPass, ref int8 lpNewPass, uint32 ulFlags) mut => VT.ChangePassword(ref this, ref lpOldPass, ref lpNewPass, ulFlags);
			public HResult FlushQueues(uint ulUIParam, uint32 cbTargetTransport, ENTRYID* lpTargetTransport, uint32 ulFlags) mut => VT.FlushQueues(ref this, ulUIParam, cbTargetTransport, lpTargetTransport, ulFlags);

			[CRepr]
			public struct VTable : IMAPIProp.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIStatus self, uint ulUIParam, uint32 ulFlags) ValidateState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIStatus self, uint ulUIParam, uint32 ulFlags) SettingsDialog;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIStatus self, ref int8 lpOldPass, ref int8 lpNewPass, uint32 ulFlags) ChangePassword;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIStatus self, uint ulUIParam, uint32 cbTargetTransport, ENTRYID* lpTargetTransport, uint32 ulFlags) FlushQueues;
			}
		}
		[CRepr]
		public struct IMAPIContainer : IMAPIProp
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetContentsTable(uint32 ulFlags, out IMAPITable* lppTable) mut => VT.GetContentsTable(ref this, ulFlags, out lppTable);
			public HResult GetHierarchyTable(uint32 ulFlags, out IMAPITable* lppTable) mut => VT.GetHierarchyTable(ref this, ulFlags, out lppTable);
			public HResult OpenEntry(uint32 cbEntryID, ref ENTRYID lpEntryID, out Guid lpInterface, uint32 ulFlags, out uint32 lpulObjType, out IUnknown* lppUnk) mut => VT.OpenEntry(ref this, cbEntryID, ref lpEntryID, out lpInterface, ulFlags, out lpulObjType, out lppUnk);
			public HResult SetSearchCriteria(SRestriction* lpRestriction, SBinaryArray* lpContainerList, uint32 ulSearchFlags) mut => VT.SetSearchCriteria(ref this, lpRestriction, lpContainerList, ulSearchFlags);
			public HResult GetSearchCriteria(uint32 ulFlags, SRestriction** lppRestriction, SBinaryArray** lppContainerList, uint32* lpulSearchState) mut => VT.GetSearchCriteria(ref this, ulFlags, lppRestriction, lppContainerList, lpulSearchState);

			[CRepr]
			public struct VTable : IMAPIProp.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIContainer self, uint32 ulFlags, out IMAPITable* lppTable) GetContentsTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIContainer self, uint32 ulFlags, out IMAPITable* lppTable) GetHierarchyTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIContainer self, uint32 cbEntryID, ref ENTRYID lpEntryID, out Guid lpInterface, uint32 ulFlags, out uint32 lpulObjType, out IUnknown* lppUnk) OpenEntry;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIContainer self, SRestriction* lpRestriction, SBinaryArray* lpContainerList, uint32 ulSearchFlags) SetSearchCriteria;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIContainer self, uint32 ulFlags, SRestriction** lppRestriction, SBinaryArray** lppContainerList, uint32* lpulSearchState) GetSearchCriteria;
			}
		}
		[CRepr]
		public struct IABContainer : IMAPIContainer
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateEntry(uint32 cbEntryID, ref ENTRYID lpEntryID, uint32 ulCreateFlags, out IMAPIProp* lppMAPIPropEntry) mut => VT.CreateEntry(ref this, cbEntryID, ref lpEntryID, ulCreateFlags, out lppMAPIPropEntry);
			public HResult CopyEntries(ref SBinaryArray lpEntries, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) mut => VT.CopyEntries(ref this, ref lpEntries, ulUIParam, lpProgress, ulFlags);
			public HResult DeleteEntries(ref SBinaryArray lpEntries, uint32 ulFlags) mut => VT.DeleteEntries(ref this, ref lpEntries, ulFlags);
			public HResult ResolveNames(SPropTagArray* lpPropTagArray, uint32 ulFlags, ref ADRLIST lpAdrList, out _flaglist lpFlagList) mut => VT.ResolveNames(ref this, lpPropTagArray, ulFlags, ref lpAdrList, out lpFlagList);

			[CRepr]
			public struct VTable : IMAPIContainer.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IABContainer self, uint32 cbEntryID, ref ENTRYID lpEntryID, uint32 ulCreateFlags, out IMAPIProp* lppMAPIPropEntry) CreateEntry;
				public new function [CallingConvention(.Stdcall)] HResult(ref IABContainer self, ref SBinaryArray lpEntries, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) CopyEntries;
				public new function [CallingConvention(.Stdcall)] HResult(ref IABContainer self, ref SBinaryArray lpEntries, uint32 ulFlags) DeleteEntries;
				public new function [CallingConvention(.Stdcall)] HResult(ref IABContainer self, SPropTagArray* lpPropTagArray, uint32 ulFlags, ref ADRLIST lpAdrList, out _flaglist lpFlagList) ResolveNames;
			}
		}
		[CRepr]
		public struct IMailUser : IMAPIProp
		{
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IMAPIProp.VTable {}
		}
		[CRepr]
		public struct IDistList : IMAPIContainer
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateEntry(uint32 cbEntryID, ref ENTRYID lpEntryID, uint32 ulCreateFlags, out IMAPIProp* lppMAPIPropEntry) mut => VT.CreateEntry(ref this, cbEntryID, ref lpEntryID, ulCreateFlags, out lppMAPIPropEntry);
			public HResult CopyEntries(ref SBinaryArray lpEntries, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) mut => VT.CopyEntries(ref this, ref lpEntries, ulUIParam, lpProgress, ulFlags);
			public HResult DeleteEntries(ref SBinaryArray lpEntries, uint32 ulFlags) mut => VT.DeleteEntries(ref this, ref lpEntries, ulFlags);
			public HResult ResolveNames(SPropTagArray* lpPropTagArray, uint32 ulFlags, ref ADRLIST lpAdrList, out _flaglist lpFlagList) mut => VT.ResolveNames(ref this, lpPropTagArray, ulFlags, ref lpAdrList, out lpFlagList);

			[CRepr]
			public struct VTable : IMAPIContainer.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDistList self, uint32 cbEntryID, ref ENTRYID lpEntryID, uint32 ulCreateFlags, out IMAPIProp* lppMAPIPropEntry) CreateEntry;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDistList self, ref SBinaryArray lpEntries, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) CopyEntries;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDistList self, ref SBinaryArray lpEntries, uint32 ulFlags) DeleteEntries;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDistList self, SPropTagArray* lpPropTagArray, uint32 ulFlags, ref ADRLIST lpAdrList, out _flaglist lpFlagList) ResolveNames;
			}
		}
		[CRepr]
		public struct IMAPIFolder : IMAPIContainer
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateMessage(out Guid lpInterface, uint32 ulFlags, out IMessage* lppMessage) mut => VT.CreateMessage(ref this, out lpInterface, ulFlags, out lppMessage);
			public HResult CopyMessages(ref SBinaryArray lpMsgList, Guid* lpInterface, void* lpDestFolder, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) mut => VT.CopyMessages(ref this, ref lpMsgList, lpInterface, lpDestFolder, ulUIParam, lpProgress, ulFlags);
			public HResult DeleteMessages(ref SBinaryArray lpMsgList, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) mut => VT.DeleteMessages(ref this, ref lpMsgList, ulUIParam, lpProgress, ulFlags);
			public HResult CreateFolder(uint32 ulFolderType, ref int8 lpszFolderName, int8* lpszFolderComment, Guid* lpInterface, uint32 ulFlags, out IMAPIFolder* lppFolder) mut => VT.CreateFolder(ref this, ulFolderType, ref lpszFolderName, lpszFolderComment, lpInterface, ulFlags, out lppFolder);
			public HResult CopyFolder(uint32 cbEntryID, ref ENTRYID lpEntryID, Guid* lpInterface, void* lpDestFolder, ref int8 lpszNewFolderName, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) mut => VT.CopyFolder(ref this, cbEntryID, ref lpEntryID, lpInterface, lpDestFolder, ref lpszNewFolderName, ulUIParam, lpProgress, ulFlags);
			public HResult DeleteFolder(uint32 cbEntryID, ref ENTRYID lpEntryID, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) mut => VT.DeleteFolder(ref this, cbEntryID, ref lpEntryID, ulUIParam, lpProgress, ulFlags);
			public HResult SetReadFlags(ref SBinaryArray lpMsgList, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) mut => VT.SetReadFlags(ref this, ref lpMsgList, ulUIParam, lpProgress, ulFlags);
			public HResult GetMessageStatus(uint32 cbEntryID, ref ENTRYID lpEntryID, uint32 ulFlags, out uint32 lpulMessageStatus) mut => VT.GetMessageStatus(ref this, cbEntryID, ref lpEntryID, ulFlags, out lpulMessageStatus);
			public HResult SetMessageStatus(uint32 cbEntryID, ref ENTRYID lpEntryID, uint32 ulNewStatus, uint32 ulNewStatusMask, out uint32 lpulOldStatus) mut => VT.SetMessageStatus(ref this, cbEntryID, ref lpEntryID, ulNewStatus, ulNewStatusMask, out lpulOldStatus);
			public HResult SaveContentsSort(ref SSortOrderSet lpSortCriteria, uint32 ulFlags) mut => VT.SaveContentsSort(ref this, ref lpSortCriteria, ulFlags);
			public HResult EmptyFolder(uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) mut => VT.EmptyFolder(ref this, ulUIParam, lpProgress, ulFlags);

			[CRepr]
			public struct VTable : IMAPIContainer.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIFolder self, out Guid lpInterface, uint32 ulFlags, out IMessage* lppMessage) CreateMessage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIFolder self, ref SBinaryArray lpMsgList, Guid* lpInterface, void* lpDestFolder, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) CopyMessages;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIFolder self, ref SBinaryArray lpMsgList, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) DeleteMessages;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIFolder self, uint32 ulFolderType, ref int8 lpszFolderName, int8* lpszFolderComment, Guid* lpInterface, uint32 ulFlags, out IMAPIFolder* lppFolder) CreateFolder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIFolder self, uint32 cbEntryID, ref ENTRYID lpEntryID, Guid* lpInterface, void* lpDestFolder, ref int8 lpszNewFolderName, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) CopyFolder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIFolder self, uint32 cbEntryID, ref ENTRYID lpEntryID, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) DeleteFolder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIFolder self, ref SBinaryArray lpMsgList, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) SetReadFlags;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIFolder self, uint32 cbEntryID, ref ENTRYID lpEntryID, uint32 ulFlags, out uint32 lpulMessageStatus) GetMessageStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIFolder self, uint32 cbEntryID, ref ENTRYID lpEntryID, uint32 ulNewStatus, uint32 ulNewStatusMask, out uint32 lpulOldStatus) SetMessageStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIFolder self, ref SSortOrderSet lpSortCriteria, uint32 ulFlags) SaveContentsSort;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIFolder self, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) EmptyFolder;
			}
		}
		[CRepr]
		public struct IMsgStore : IMAPIProp
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult Advise(uint32 cbEntryID, ENTRYID* lpEntryID, uint32 ulEventMask, ref IMAPIAdviseSink lpAdviseSink, out uint32 lpulConnection) mut => VT.Advise(ref this, cbEntryID, lpEntryID, ulEventMask, ref lpAdviseSink, out lpulConnection);
			public HResult Unadvise(uint32 ulConnection) mut => VT.Unadvise(ref this, ulConnection);
			public HResult CompareEntryIDs(uint32 cbEntryID1, ref ENTRYID lpEntryID1, uint32 cbEntryID2, ref ENTRYID lpEntryID2, uint32 ulFlags, out uint32 lpulResult) mut => VT.CompareEntryIDs(ref this, cbEntryID1, ref lpEntryID1, cbEntryID2, ref lpEntryID2, ulFlags, out lpulResult);
			public HResult OpenEntry(uint32 cbEntryID, ref ENTRYID lpEntryID, Guid* lpInterface, uint32 ulFlags, out uint32 lpulObjType, out IUnknown* ppUnk) mut => VT.OpenEntry(ref this, cbEntryID, ref lpEntryID, lpInterface, ulFlags, out lpulObjType, out ppUnk);
			public HResult SetReceiveFolder(int8* lpszMessageClass, uint32 ulFlags, uint32 cbEntryID, ref ENTRYID lpEntryID) mut => VT.SetReceiveFolder(ref this, lpszMessageClass, ulFlags, cbEntryID, ref lpEntryID);
			public HResult GetReceiveFolder(int8* lpszMessageClass, uint32 ulFlags, out uint32 lpcbEntryID, out ENTRYID* lppEntryID, int8** lppszExplicitClass) mut => VT.GetReceiveFolder(ref this, lpszMessageClass, ulFlags, out lpcbEntryID, out lppEntryID, lppszExplicitClass);
			public HResult GetReceiveFolderTable(uint32 ulFlags, out IMAPITable* lppTable) mut => VT.GetReceiveFolderTable(ref this, ulFlags, out lppTable);
			public HResult StoreLogoff(out uint32 lpulFlags) mut => VT.StoreLogoff(ref this, out lpulFlags);
			public HResult AbortSubmit(uint32 cbEntryID, ref ENTRYID lpEntryID, uint32 ulFlags) mut => VT.AbortSubmit(ref this, cbEntryID, ref lpEntryID, ulFlags);
			public HResult GetOutgoingQueue(uint32 ulFlags, out IMAPITable* lppTable) mut => VT.GetOutgoingQueue(ref this, ulFlags, out lppTable);
			public HResult SetLockState(ref IMessage lpMessage, uint32 ulLockState) mut => VT.SetLockState(ref this, ref lpMessage, ulLockState);
			public HResult FinishedMsg(uint32 ulFlags, uint32 cbEntryID, ref ENTRYID lpEntryID) mut => VT.FinishedMsg(ref this, ulFlags, cbEntryID, ref lpEntryID);
			public HResult NotifyNewMail(ref NOTIFICATION lpNotification) mut => VT.NotifyNewMail(ref this, ref lpNotification);

			[CRepr]
			public struct VTable : IMAPIProp.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMsgStore self, uint32 cbEntryID, ENTRYID* lpEntryID, uint32 ulEventMask, ref IMAPIAdviseSink lpAdviseSink, out uint32 lpulConnection) Advise;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMsgStore self, uint32 ulConnection) Unadvise;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMsgStore self, uint32 cbEntryID1, ref ENTRYID lpEntryID1, uint32 cbEntryID2, ref ENTRYID lpEntryID2, uint32 ulFlags, out uint32 lpulResult) CompareEntryIDs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMsgStore self, uint32 cbEntryID, ref ENTRYID lpEntryID, Guid* lpInterface, uint32 ulFlags, out uint32 lpulObjType, out IUnknown* ppUnk) OpenEntry;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMsgStore self, int8* lpszMessageClass, uint32 ulFlags, uint32 cbEntryID, ref ENTRYID lpEntryID) SetReceiveFolder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMsgStore self, int8* lpszMessageClass, uint32 ulFlags, out uint32 lpcbEntryID, out ENTRYID* lppEntryID, int8** lppszExplicitClass) GetReceiveFolder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMsgStore self, uint32 ulFlags, out IMAPITable* lppTable) GetReceiveFolderTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMsgStore self, out uint32 lpulFlags) StoreLogoff;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMsgStore self, uint32 cbEntryID, ref ENTRYID lpEntryID, uint32 ulFlags) AbortSubmit;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMsgStore self, uint32 ulFlags, out IMAPITable* lppTable) GetOutgoingQueue;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMsgStore self, ref IMessage lpMessage, uint32 ulLockState) SetLockState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMsgStore self, uint32 ulFlags, uint32 cbEntryID, ref ENTRYID lpEntryID) FinishedMsg;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMsgStore self, ref NOTIFICATION lpNotification) NotifyNewMail;
			}
		}
		[CRepr]
		public struct IMessage : IMAPIProp
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetAttachmentTable(uint32 ulFlags, out IMAPITable* lppTable) mut => VT.GetAttachmentTable(ref this, ulFlags, out lppTable);
			public HResult OpenAttach(uint32 ulAttachmentNum, Guid* lpInterface, uint32 ulFlags, out IAttach* lppAttach) mut => VT.OpenAttach(ref this, ulAttachmentNum, lpInterface, ulFlags, out lppAttach);
			public HResult CreateAttach(Guid* lpInterface, uint32 ulFlags, out uint32 lpulAttachmentNum, out IAttach* lppAttach) mut => VT.CreateAttach(ref this, lpInterface, ulFlags, out lpulAttachmentNum, out lppAttach);
			public HResult DeleteAttach(uint32 ulAttachmentNum, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) mut => VT.DeleteAttach(ref this, ulAttachmentNum, ulUIParam, lpProgress, ulFlags);
			public HResult GetRecipientTable(uint32 ulFlags, out IMAPITable* lppTable) mut => VT.GetRecipientTable(ref this, ulFlags, out lppTable);
			public HResult ModifyRecipients(uint32 ulFlags, ref ADRLIST lpMods) mut => VT.ModifyRecipients(ref this, ulFlags, ref lpMods);
			public HResult SubmitMessage(uint32 ulFlags) mut => VT.SubmitMessage(ref this, ulFlags);
			public HResult SetReadFlag(uint32 ulFlags) mut => VT.SetReadFlag(ref this, ulFlags);

			[CRepr]
			public struct VTable : IMAPIProp.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMessage self, uint32 ulFlags, out IMAPITable* lppTable) GetAttachmentTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMessage self, uint32 ulAttachmentNum, Guid* lpInterface, uint32 ulFlags, out IAttach* lppAttach) OpenAttach;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMessage self, Guid* lpInterface, uint32 ulFlags, out uint32 lpulAttachmentNum, out IAttach* lppAttach) CreateAttach;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMessage self, uint32 ulAttachmentNum, uint ulUIParam, IMAPIProgress* lpProgress, uint32 ulFlags) DeleteAttach;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMessage self, uint32 ulFlags, out IMAPITable* lppTable) GetRecipientTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMessage self, uint32 ulFlags, ref ADRLIST lpMods) ModifyRecipients;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMessage self, uint32 ulFlags) SubmitMessage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMessage self, uint32 ulFlags) SetReadFlag;
			}
		}
		[CRepr]
		public struct IAttach : IMAPIProp
		{
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IMAPIProp.VTable {}
		}
		[CRepr]
		public struct IMAPIControl : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetLastError(HResult hResult, uint32 ulFlags, out MAPIERROR* lppMAPIError) mut => VT.GetLastError(ref this, hResult, ulFlags, out lppMAPIError);
			public HResult Activate(uint32 ulFlags, uint ulUIParam) mut => VT.Activate(ref this, ulFlags, ulUIParam);
			public HResult GetState(uint32 ulFlags, out uint32 lpulState) mut => VT.GetState(ref this, ulFlags, out lpulState);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIControl self, HResult hResult, uint32 ulFlags, out MAPIERROR* lppMAPIError) GetLastError;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIControl self, uint32 ulFlags, uint ulUIParam) Activate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMAPIControl self, uint32 ulFlags, out uint32 lpulState) GetState;
			}
		}
		[CRepr]
		public struct IProviderAdmin : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetLastError(HResult hResult, uint32 ulFlags, out MAPIERROR* lppMAPIError) mut => VT.GetLastError(ref this, hResult, ulFlags, out lppMAPIError);
			public HResult GetProviderTable(uint32 ulFlags, out IMAPITable* lppTable) mut => VT.GetProviderTable(ref this, ulFlags, out lppTable);
			public HResult CreateProvider(ref int8 lpszProvider, uint32 cValues, SPropValue* lpProps, uint ulUIParam, uint32 ulFlags, out MAPIUID lpUID) mut => VT.CreateProvider(ref this, ref lpszProvider, cValues, lpProps, ulUIParam, ulFlags, out lpUID);
			public HResult DeleteProvider(ref MAPIUID lpUID) mut => VT.DeleteProvider(ref this, ref lpUID);
			public HResult OpenProfileSection(MAPIUID* lpUID, Guid* lpInterface, uint32 ulFlags, out IProfSect* lppProfSect) mut => VT.OpenProfileSection(ref this, lpUID, lpInterface, ulFlags, out lppProfSect);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IProviderAdmin self, HResult hResult, uint32 ulFlags, out MAPIERROR* lppMAPIError) GetLastError;
				public new function [CallingConvention(.Stdcall)] HResult(ref IProviderAdmin self, uint32 ulFlags, out IMAPITable* lppTable) GetProviderTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IProviderAdmin self, ref int8 lpszProvider, uint32 cValues, SPropValue* lpProps, uint ulUIParam, uint32 ulFlags, out MAPIUID lpUID) CreateProvider;
				public new function [CallingConvention(.Stdcall)] HResult(ref IProviderAdmin self, ref MAPIUID lpUID) DeleteProvider;
				public new function [CallingConvention(.Stdcall)] HResult(ref IProviderAdmin self, MAPIUID* lpUID, Guid* lpInterface, uint32 ulFlags, out IProfSect* lppProfSect) OpenProfileSection;
			}
		}
		[CRepr]
		public struct ITableData : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult HrGetView(out SSortOrderSet lpSSortOrderSet, out CALLERRELEASE lpfCallerRelease, uint32 ulCallerData, out IMAPITable* lppMAPITable) mut => VT.HrGetView(ref this, out lpSSortOrderSet, out lpfCallerRelease, ulCallerData, out lppMAPITable);
			public HResult HrModifyRow(out SRow param0) mut => VT.HrModifyRow(ref this, out param0);
			public HResult HrDeleteRow(out SPropValue lpSPropValue) mut => VT.HrDeleteRow(ref this, out lpSPropValue);
			public HResult HrQueryRow(out SPropValue lpsPropValue, out SRow* lppSRow, out uint32 lpuliRow) mut => VT.HrQueryRow(ref this, out lpsPropValue, out lppSRow, out lpuliRow);
			public HResult HrEnumRow(uint32 ulRowNumber, out SRow* lppSRow) mut => VT.HrEnumRow(ref this, ulRowNumber, out lppSRow);
			public HResult HrNotify(uint32 ulFlags, uint32 cValues, out SPropValue lpSPropValue) mut => VT.HrNotify(ref this, ulFlags, cValues, out lpSPropValue);
			public HResult HrInsertRow(uint32 uliRow, out SRow lpSRow) mut => VT.HrInsertRow(ref this, uliRow, out lpSRow);
			public HResult HrModifyRows(uint32 ulFlags, out SRowSet lpSRowSet) mut => VT.HrModifyRows(ref this, ulFlags, out lpSRowSet);
			public HResult HrDeleteRows(uint32 ulFlags, out SRowSet lprowsetToDelete, out uint32 cRowsDeleted) mut => VT.HrDeleteRows(ref this, ulFlags, out lprowsetToDelete, out cRowsDeleted);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITableData self, out SSortOrderSet lpSSortOrderSet, out CALLERRELEASE lpfCallerRelease, uint32 ulCallerData, out IMAPITable* lppMAPITable) HrGetView;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITableData self, out SRow param0) HrModifyRow;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITableData self, out SPropValue lpSPropValue) HrDeleteRow;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITableData self, out SPropValue lpsPropValue, out SRow* lppSRow, out uint32 lpuliRow) HrQueryRow;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITableData self, uint32 ulRowNumber, out SRow* lppSRow) HrEnumRow;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITableData self, uint32 ulFlags, uint32 cValues, out SPropValue lpSPropValue) HrNotify;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITableData self, uint32 uliRow, out SRow lpSRow) HrInsertRow;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITableData self, uint32 ulFlags, out SRowSet lpSRowSet) HrModifyRows;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITableData self, uint32 ulFlags, out SRowSet lprowsetToDelete, out uint32 cRowsDeleted) HrDeleteRows;
			}
		}
		[CRepr]
		public struct IPropData : IMAPIProp
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult HrSetObjAccess(uint32 ulAccess) mut => VT.HrSetObjAccess(ref this, ulAccess);
			public HResult HrSetPropAccess(out SPropTagArray lpPropTagArray, out uint32 rgulAccess) mut => VT.HrSetPropAccess(ref this, out lpPropTagArray, out rgulAccess);
			public HResult HrGetPropAccess(out SPropTagArray* lppPropTagArray, out uint32* lprgulAccess) mut => VT.HrGetPropAccess(ref this, out lppPropTagArray, out lprgulAccess);
			public HResult HrAddObjProps(out SPropTagArray lppPropTagArray, out SPropProblemArray* lprgulAccess) mut => VT.HrAddObjProps(ref this, out lppPropTagArray, out lprgulAccess);

			[CRepr]
			public struct VTable : IMAPIProp.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropData self, uint32 ulAccess) HrSetObjAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropData self, out SPropTagArray lpPropTagArray, out uint32 rgulAccess) HrSetPropAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropData self, out SPropTagArray* lppPropTagArray, out uint32* lprgulAccess) HrGetPropAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropData self, out SPropTagArray lppPropTagArray, out SPropProblemArray* lprgulAccess) HrAddObjProps;
			}
		}
		[CRepr]
		public struct IAddrBook : IMAPIProp
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult OpenEntry(uint32 cbEntryID, out ENTRYID lpEntryID, out Guid lpInterface, uint32 ulFlags, out uint32 lpulObjType, out IUnknown* lppUnk) mut => VT.OpenEntry(ref this, cbEntryID, out lpEntryID, out lpInterface, ulFlags, out lpulObjType, out lppUnk);
			public HResult CompareEntryIDs(uint32 cbEntryID1, out ENTRYID lpEntryID1, uint32 cbEntryID2, out ENTRYID lpEntryID2, uint32 ulFlags, out uint32 lpulResult) mut => VT.CompareEntryIDs(ref this, cbEntryID1, out lpEntryID1, cbEntryID2, out lpEntryID2, ulFlags, out lpulResult);
			public HResult Advise(uint32 cbEntryID, out ENTRYID lpEntryID, uint32 ulEventMask, ref IMAPIAdviseSink lpAdviseSink, out uint32 lpulConnection) mut => VT.Advise(ref this, cbEntryID, out lpEntryID, ulEventMask, ref lpAdviseSink, out lpulConnection);
			public HResult Unadvise(uint32 ulConnection) mut => VT.Unadvise(ref this, ulConnection);
			public HResult CreateOneOff(out int8 lpszName, out int8 lpszAdrType, out int8 lpszAddress, uint32 ulFlags, out uint32 lpcbEntryID, out ENTRYID* lppEntryID) mut => VT.CreateOneOff(ref this, out lpszName, out lpszAdrType, out lpszAddress, ulFlags, out lpcbEntryID, out lppEntryID);
			public HResult NewEntry(uint32 ulUIParam, uint32 ulFlags, uint32 cbEIDContainer, out ENTRYID lpEIDContainer, uint32 cbEIDNewEntryTpl, out ENTRYID lpEIDNewEntryTpl, out uint32 lpcbEIDNewEntry, out ENTRYID* lppEIDNewEntry) mut => VT.NewEntry(ref this, ulUIParam, ulFlags, cbEIDContainer, out lpEIDContainer, cbEIDNewEntryTpl, out lpEIDNewEntryTpl, out lpcbEIDNewEntry, out lppEIDNewEntry);
			public HResult ResolveName(uint ulUIParam, uint32 ulFlags, out int8 lpszNewEntryTitle, out ADRLIST lpAdrList) mut => VT.ResolveName(ref this, ulUIParam, ulFlags, out lpszNewEntryTitle, out lpAdrList);
			public HResult Address(out uint32 lpulUIParam, out ADRPARM lpAdrParms, out ADRLIST* lppAdrList) mut => VT.Address(ref this, out lpulUIParam, out lpAdrParms, out lppAdrList);
			public HResult Details(out uint lpulUIParam, LPFNDISMISS lpfnDismiss, void* lpvDismissContext, uint32 cbEntryID, out ENTRYID lpEntryID, LPFNBUTTON lpfButtonCallback, void* lpvButtonContext, out int8 lpszButtonText, uint32 ulFlags) mut => VT.Details(ref this, out lpulUIParam, lpfnDismiss, lpvDismissContext, cbEntryID, out lpEntryID, lpfButtonCallback, lpvButtonContext, out lpszButtonText, ulFlags);
			public HResult RecipOptions(uint32 ulUIParam, uint32 ulFlags, out ADRENTRY lpRecip) mut => VT.RecipOptions(ref this, ulUIParam, ulFlags, out lpRecip);
			public HResult QueryDefaultRecipOpt(out int8 lpszAdrType, uint32 ulFlags, out uint32 lpcValues, out SPropValue* lppOptions) mut => VT.QueryDefaultRecipOpt(ref this, out lpszAdrType, ulFlags, out lpcValues, out lppOptions);
			public HResult GetPAB(out uint32 lpcbEntryID, out ENTRYID* lppEntryID) mut => VT.GetPAB(ref this, out lpcbEntryID, out lppEntryID);
			public HResult SetPAB(uint32 cbEntryID, out ENTRYID lpEntryID) mut => VT.SetPAB(ref this, cbEntryID, out lpEntryID);
			public HResult GetDefaultDir(out uint32 lpcbEntryID, out ENTRYID* lppEntryID) mut => VT.GetDefaultDir(ref this, out lpcbEntryID, out lppEntryID);
			public HResult SetDefaultDir(uint32 cbEntryID, out ENTRYID lpEntryID) mut => VT.SetDefaultDir(ref this, cbEntryID, out lpEntryID);
			public HResult GetSearchPath(uint32 ulFlags, out SRowSet* lppSearchPath) mut => VT.GetSearchPath(ref this, ulFlags, out lppSearchPath);
			public HResult SetSearchPath(uint32 ulFlags, out SRowSet lpSearchPath) mut => VT.SetSearchPath(ref this, ulFlags, out lpSearchPath);
			public HResult PrepareRecips(uint32 ulFlags, out SPropTagArray lpPropTagArray, out ADRLIST lpRecipList) mut => VT.PrepareRecips(ref this, ulFlags, out lpPropTagArray, out lpRecipList);

			[CRepr]
			public struct VTable : IMAPIProp.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, uint32 cbEntryID, out ENTRYID lpEntryID, out Guid lpInterface, uint32 ulFlags, out uint32 lpulObjType, out IUnknown* lppUnk) OpenEntry;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, uint32 cbEntryID1, out ENTRYID lpEntryID1, uint32 cbEntryID2, out ENTRYID lpEntryID2, uint32 ulFlags, out uint32 lpulResult) CompareEntryIDs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, uint32 cbEntryID, out ENTRYID lpEntryID, uint32 ulEventMask, ref IMAPIAdviseSink lpAdviseSink, out uint32 lpulConnection) Advise;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, uint32 ulConnection) Unadvise;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, out int8 lpszName, out int8 lpszAdrType, out int8 lpszAddress, uint32 ulFlags, out uint32 lpcbEntryID, out ENTRYID* lppEntryID) CreateOneOff;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, uint32 ulUIParam, uint32 ulFlags, uint32 cbEIDContainer, out ENTRYID lpEIDContainer, uint32 cbEIDNewEntryTpl, out ENTRYID lpEIDNewEntryTpl, out uint32 lpcbEIDNewEntry, out ENTRYID* lppEIDNewEntry) NewEntry;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, uint ulUIParam, uint32 ulFlags, out int8 lpszNewEntryTitle, out ADRLIST lpAdrList) ResolveName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, out uint32 lpulUIParam, out ADRPARM lpAdrParms, out ADRLIST* lppAdrList) Address;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, out uint lpulUIParam, LPFNDISMISS lpfnDismiss, void* lpvDismissContext, uint32 cbEntryID, out ENTRYID lpEntryID, LPFNBUTTON lpfButtonCallback, void* lpvButtonContext, out int8 lpszButtonText, uint32 ulFlags) Details;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, uint32 ulUIParam, uint32 ulFlags, out ADRENTRY lpRecip) RecipOptions;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, out int8 lpszAdrType, uint32 ulFlags, out uint32 lpcValues, out SPropValue* lppOptions) QueryDefaultRecipOpt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, out uint32 lpcbEntryID, out ENTRYID* lppEntryID) GetPAB;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, uint32 cbEntryID, out ENTRYID lpEntryID) SetPAB;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, out uint32 lpcbEntryID, out ENTRYID* lppEntryID) GetDefaultDir;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, uint32 cbEntryID, out ENTRYID lpEntryID) SetDefaultDir;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, uint32 ulFlags, out SRowSet* lppSearchPath) GetSearchPath;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, uint32 ulFlags, out SRowSet lpSearchPath) SetSearchPath;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAddrBook self, uint32 ulFlags, out SPropTagArray lpPropTagArray, out ADRLIST lpRecipList) PrepareRecips;
			}
		}
		[CRepr]
		public struct IWABObject : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetLastError(HResult hResult, uint32 ulFlags, out MAPIERROR* lppMAPIError) mut => VT.GetLastError(ref this, hResult, ulFlags, out lppMAPIError);
			public HResult AllocateBuffer(uint32 cbSize, void** lppBuffer) mut => VT.AllocateBuffer(ref this, cbSize, lppBuffer);
			public HResult AllocateMore(uint32 cbSize, void* lpObject, void** lppBuffer) mut => VT.AllocateMore(ref this, cbSize, lpObject, lppBuffer);
			public HResult FreeBuffer(void* lpBuffer) mut => VT.FreeBuffer(ref this, lpBuffer);
			public HResult Backup(char8* lpFileName) mut => VT.Backup(ref this, lpFileName);
			public HResult Import(char8* lpWIP) mut => VT.Import(ref this, lpWIP);
			public HResult Find(ref IAddrBook lpIAB, HWnd hWnd) mut => VT.Find(ref this, ref lpIAB, hWnd);
			public HResult VCardDisplay(ref IAddrBook lpIAB, HWnd hWnd, char8* lpszFileName) mut => VT.VCardDisplay(ref this, ref lpIAB, hWnd, lpszFileName);
			public HResult LDAPUrl(ref IAddrBook lpIAB, HWnd hWnd, uint32 ulFlags, char8* lpszURL, IMailUser** lppMailUser) mut => VT.LDAPUrl(ref this, ref lpIAB, hWnd, ulFlags, lpszURL, lppMailUser);
			public HResult VCardCreate(ref IAddrBook lpIAB, uint32 ulFlags, char8* lpszVCard, ref IMailUser lpMailUser) mut => VT.VCardCreate(ref this, ref lpIAB, ulFlags, lpszVCard, ref lpMailUser);
			public HResult VCardRetrieve(ref IAddrBook lpIAB, uint32 ulFlags, char8* lpszVCard, out IMailUser* lppMailUser) mut => VT.VCardRetrieve(ref this, ref lpIAB, ulFlags, lpszVCard, out lppMailUser);
			public HResult GetMe(ref IAddrBook lpIAB, uint32 ulFlags, out uint32 lpdwAction, out SBinary lpsbEID, HWnd hwnd) mut => VT.GetMe(ref this, ref lpIAB, ulFlags, out lpdwAction, out lpsbEID, hwnd);
			public HResult SetMe(ref IAddrBook lpIAB, uint32 ulFlags, SBinary sbEID, HWnd hwnd) mut => VT.SetMe(ref this, ref lpIAB, ulFlags, sbEID, hwnd);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABObject self, HResult hResult, uint32 ulFlags, out MAPIERROR* lppMAPIError) GetLastError;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABObject self, uint32 cbSize, void** lppBuffer) AllocateBuffer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABObject self, uint32 cbSize, void* lpObject, void** lppBuffer) AllocateMore;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABObject self, void* lpBuffer) FreeBuffer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABObject self, char8* lpFileName) Backup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABObject self, char8* lpWIP) Import;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABObject self, ref IAddrBook lpIAB, HWnd hWnd) Find;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABObject self, ref IAddrBook lpIAB, HWnd hWnd, char8* lpszFileName) VCardDisplay;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABObject self, ref IAddrBook lpIAB, HWnd hWnd, uint32 ulFlags, char8* lpszURL, IMailUser** lppMailUser) LDAPUrl;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABObject self, ref IAddrBook lpIAB, uint32 ulFlags, char8* lpszVCard, ref IMailUser lpMailUser) VCardCreate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABObject self, ref IAddrBook lpIAB, uint32 ulFlags, char8* lpszVCard, out IMailUser* lppMailUser) VCardRetrieve;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABObject self, ref IAddrBook lpIAB, uint32 ulFlags, out uint32 lpdwAction, out SBinary lpsbEID, HWnd hwnd) GetMe;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABObject self, ref IAddrBook lpIAB, uint32 ulFlags, SBinary sbEID, HWnd hwnd) SetMe;
			}
		}
		[CRepr]
		public struct IWABOBJECT_
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public HResult QueryInterface(in Guid riid, void** ppvObj) mut => VT.QueryInterface(ref this, riid, ppvObj);
			public uint32 AddRef() mut => VT.AddRef(ref this);
			public uint32 Release() mut => VT.Release(ref this);
			public HResult GetLastError(HResult hResult, uint32 ulFlags, out MAPIERROR* lppMAPIError) mut => VT.GetLastError(ref this, hResult, ulFlags, out lppMAPIError);
			public HResult AllocateBuffer(uint32 cbSize, void** lppBuffer) mut => VT.AllocateBuffer(ref this, cbSize, lppBuffer);
			public HResult AllocateMore(uint32 cbSize, void* lpObject, void** lppBuffer) mut => VT.AllocateMore(ref this, cbSize, lpObject, lppBuffer);
			public HResult FreeBuffer(void* lpBuffer) mut => VT.FreeBuffer(ref this, lpBuffer);
			public HResult Backup(char8* lpFileName) mut => VT.Backup(ref this, lpFileName);
			public HResult Import(char8* lpWIP) mut => VT.Import(ref this, lpWIP);
			public HResult Find(ref IAddrBook lpIAB, HWnd hWnd) mut => VT.Find(ref this, ref lpIAB, hWnd);
			public HResult VCardDisplay(ref IAddrBook lpIAB, HWnd hWnd, char8* lpszFileName) mut => VT.VCardDisplay(ref this, ref lpIAB, hWnd, lpszFileName);
			public HResult LDAPUrl(ref IAddrBook lpIAB, HWnd hWnd, uint32 ulFlags, char8* lpszURL, IMailUser** lppMailUser) mut => VT.LDAPUrl(ref this, ref lpIAB, hWnd, ulFlags, lpszURL, lppMailUser);
			public HResult VCardCreate(ref IAddrBook lpIAB, uint32 ulFlags, char8* lpszVCard, ref IMailUser lpMailUser) mut => VT.VCardCreate(ref this, ref lpIAB, ulFlags, lpszVCard, ref lpMailUser);
			public HResult VCardRetrieve(ref IAddrBook lpIAB, uint32 ulFlags, char8* lpszVCard, out IMailUser* lppMailUser) mut => VT.VCardRetrieve(ref this, ref lpIAB, ulFlags, lpszVCard, out lppMailUser);
			public HResult GetMe(ref IAddrBook lpIAB, uint32 ulFlags, out uint32 lpdwAction, out SBinary lpsbEID, HWnd hwnd) mut => VT.GetMe(ref this, ref lpIAB, ulFlags, out lpdwAction, out lpsbEID, hwnd);
			public HResult SetMe(ref IAddrBook lpIAB, uint32 ulFlags, SBinary sbEID, HWnd hwnd) mut => VT.SetMe(ref this, ref lpIAB, ulFlags, sbEID, hwnd);

			[CRepr]
			public struct VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, in Guid riid, void** ppvObj) QueryInterface;
				public new function [CallingConvention(.Stdcall)] uint32(ref IWABOBJECT_ self) AddRef;
				public new function [CallingConvention(.Stdcall)] uint32(ref IWABOBJECT_ self) Release;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, HResult hResult, uint32 ulFlags, out MAPIERROR* lppMAPIError) GetLastError;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, uint32 cbSize, void** lppBuffer) AllocateBuffer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, uint32 cbSize, void* lpObject, void** lppBuffer) AllocateMore;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, void* lpBuffer) FreeBuffer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, char8* lpFileName) Backup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, char8* lpWIP) Import;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, ref IAddrBook lpIAB, HWnd hWnd) Find;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, ref IAddrBook lpIAB, HWnd hWnd, char8* lpszFileName) VCardDisplay;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, ref IAddrBook lpIAB, HWnd hWnd, uint32 ulFlags, char8* lpszURL, IMailUser** lppMailUser) LDAPUrl;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, ref IAddrBook lpIAB, uint32 ulFlags, char8* lpszVCard, ref IMailUser lpMailUser) VCardCreate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, ref IAddrBook lpIAB, uint32 ulFlags, char8* lpszVCard, out IMailUser* lppMailUser) VCardRetrieve;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, ref IAddrBook lpIAB, uint32 ulFlags, out uint32 lpdwAction, out SBinary lpsbEID, HWnd hwnd) GetMe;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABOBJECT_ self, ref IAddrBook lpIAB, uint32 ulFlags, SBinary sbEID, HWnd hwnd) SetMe;
			}
		}
		[CRepr]
		public struct IWABExtInit : IUnknown
		{
			public const new Guid IID = .(0xea22ebf0, 0x87a4, 0x11d1, 0x9a, 0xcf, 0x00, 0xa0, 0xc9, 0x1f, 0x9c, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Initialize(out WABEXTDISPLAY lpWABExtDisplay) mut => VT.Initialize(ref this, out lpWABExtDisplay);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWABExtInit self, out WABEXTDISPLAY lpWABExtDisplay) Initialize;
			}
		}
		
		// --- Functions ---
		
		[Import("rtm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 CreateTable(out Guid lpInterface, LPALLOCATEBUFFER lpAllocateBuffer, LPALLOCATEMORE lpAllocateMore, LPFREEBUFFER lpFreeBuffer, void* lpvReserved, uint32 ulTableType, uint32 ulPropTagIndexColumn, out SPropTagArray lpSPropTagArrayColumns, out ITableData* lppTableData);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 CreateIProp(out Guid lpInterface, LPALLOCATEBUFFER lpAllocateBuffer, LPALLOCATEMORE lpAllocateMore, LPFREEBUFFER lpFreeBuffer, void* lpvReserved, out IPropData* lppPropData);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 MAPIInitIdle(void* lpvReserved);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void MAPIDeinitIdle();
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* FtgRegisterIdleRoutine(PFNIDLE lpfnIdle, void* lpvIdleParam, int16 priIdle, uint32 csecIdle, uint16 iroIdle);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DeregisterIdleRoutine(void* ftg);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void EnableIdleRoutine(void* ftg, IntBool fEnable);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ChangeIdleRoutine(void* ftg, PFNIDLE lpfnIdle, void* lpvIdleParam, int16 priIdle, uint32 csecIdle, uint16 iroIdle, uint16 ircIdle);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IMalloc* MAPIGetDefaultMalloc();
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult OpenStreamOnFile(LPALLOCATEBUFFER lpAllocateBuffer, LPFREEBUFFER lpFreeBuffer, uint32 ulFlags, ref int8 lpszFileName, int8* lpszPrefix, out IStream* lppStream);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PropCopyMore(out SPropValue lpSPropValueDest, out SPropValue lpSPropValueSrc, LPALLOCATEMORE lpfAllocMore, void* lpvObject);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UlPropSize(out SPropValue lpSPropValue);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool FEqualNames(out MAPINAMEID lpName1, out MAPINAMEID lpName2);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool FPropContainsProp(out SPropValue lpSPropValueDst, out SPropValue lpSPropValueSrc, uint32 ulFuzzyLevel);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool FPropCompareProp(out SPropValue lpSPropValue1, uint32 ulRelOp, out SPropValue lpSPropValue2);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 LPropCompareProp(out SPropValue lpSPropValueA, out SPropValue lpSPropValueB);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HrAddColumns(ref IMAPITable lptbl, out SPropTagArray lpproptagColumnsNew, LPALLOCATEBUFFER lpAllocateBuffer, LPFREEBUFFER lpFreeBuffer);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HrAddColumnsEx(ref IMAPITable lptbl, out SPropTagArray lpproptagColumnsNew, LPALLOCATEBUFFER lpAllocateBuffer, LPFREEBUFFER lpFreeBuffer, int lpfnFilterColumns);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HrAllocAdviseSink(LPNOTIFCALLBACK lpfnCallback, void* lpvContext, out IMAPIAdviseSink* lppAdviseSink);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HrThisThreadAdviseSink(ref IMAPIAdviseSink lpAdviseSink, out IMAPIAdviseSink* lppAdviseSink);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HrDispatchNotifications(uint32 ulFlags);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult BuildDisplayTable(LPALLOCATEBUFFER lpAllocateBuffer, LPALLOCATEMORE lpAllocateMore, LPFREEBUFFER lpFreeBuffer, ref IMalloc lpMalloc, HINSTANCE hInstance, uint32 cPages, out DTPAGE lpPage, uint32 ulFlags, out IMAPITable* lppTable, out ITableData* lppTblData);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ScCountNotifications(int32 cNotifications, out NOTIFICATION lpNotifications, out uint32 lpcb);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ScCopyNotifications(int32 cNotification, out NOTIFICATION lpNotifications, void* lpvDst, out uint32 lpcb);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ScRelocNotifications(int32 cNotification, out NOTIFICATION lpNotifications, void* lpvBaseOld, void* lpvBaseNew, out uint32 lpcb);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ScCountProps(int32 cValues, out SPropValue lpPropArray, out uint32 lpcb);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern SPropValue* LpValFindProp(uint32 ulPropTag, uint32 cValues, out SPropValue lpPropArray);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ScCopyProps(int32 cValues, out SPropValue lpPropArray, void* lpvDst, out uint32 lpcb);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ScRelocProps(int32 cValues, out SPropValue lpPropArray, void* lpvBaseOld, void* lpvBaseNew, out uint32 lpcb);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ScDupPropset(int32 cValues, out SPropValue lpPropArray, LPALLOCATEBUFFER lpAllocateBuffer, out SPropValue* lppPropArray);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UlAddRef(void* lpunk);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UlRelease(void* lpunk);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HrGetOneProp(ref IMAPIProp lpMapiProp, uint32 ulPropTag, out SPropValue* lppProp);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HrSetOneProp(ref IMAPIProp lpMapiProp, out SPropValue lpProp);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool FPropExists(ref IMAPIProp lpMapiProp, uint32 ulPropTag);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern SPropValue* PpropFindProp(out SPropValue lpPropArray, uint32 cValues, uint32 ulPropTag);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreePadrlist(out ADRLIST lpAdrlist);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeProws(out SRowSet lpRows);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HrQueryAllRows(ref IMAPITable lpTable, out SPropTagArray lpPropTags, out SRestriction lpRestriction, out SSortOrderSet lpSortOrderSet, int32 crowsMax, out SRowSet* lppRows);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int8* SzFindCh(out int8 lpsz, uint16 ch);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int8* SzFindLastCh(out int8 lpsz, uint16 ch);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int8* SzFindSz(out int8 lpsz, out int8 lpszKey);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UFromSz(out int8 lpsz);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ScUNCFromLocalPath(char8* lpszLocal, uint8* lpszUNC, uint32 cchUNC);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ScLocalPathFromUNC(char8* lpszUNC, uint8* lpszLocal, uint32 cchLocal);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern FileTime FtAddFt(FILETIME ftAddend1, FileTime ftAddend2);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern FileTime FtMulDwDw(uint32 ftMultiplicand, uint32 ftMultiplier);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern FileTime FtMulDw(uint32 ftMultiplier, FileTime ftMultiplicand);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern FileTime FtSubFt(FILETIME ftMinuend, FileTime ftSubtrahend);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern FileTime FtNegFt(FILETIME ft);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ScCreateConversationIndex(uint32 cbParent, out uint8 lpbParent, out uint32 lpcbConvIndex, out uint8* lppbConvIndex);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WrapStoreEntryID(uint32 ulFlags, ref int8 lpszDLLName, uint32 cbOrigEntry, ref ENTRYID lpOrigEntry, out uint32 lpcbWrappedEntry, out ENTRYID* lppWrappedEntry);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RTFSync(ref IMessage lpMessage, uint32 ulFlags, out IntBool lpfMessageUpdated);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WrapCompressedRTFStream(ref IStream lpCompressedRTFStream, uint32 ulFlags, out IStream* lpUncompressedRTFStream);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HrIStorageFromStream(ref IUnknown lpUnkIn, out Guid lpInterface, uint32 ulFlags, out IStorage* lppStorageOut);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ScInitMapiUtil(uint32 ulFlags);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DeinitMapiUtil();
	}
}
