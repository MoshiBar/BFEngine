using System;

// namespace System.UpdateAgent
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid LIBID_WUApiLib = .(0xb596cc9f, 0x56e5, 0x419e, 0xa6, 0x22, 0xe0, 0x1b, 0xb4, 0x57, 0x43, 0x1e);
		public const uint32 UPDATE_LOCKDOWN_WEBSITE_ACCESS = 1;
		public const HResult WU_S_SERVICE_STOP = 2359297;
		public const HResult WU_S_SELFUPDATE = 2359298;
		public const HResult WU_S_UPDATE_ERROR = 2359299;
		public const HResult WU_S_MARKED_FOR_DISCONNECT = 2359300;
		public const HResult WU_S_REBOOT_REQUIRED = 2359301;
		public const HResult WU_S_ALREADY_INSTALLED = 2359302;
		public const HResult WU_S_ALREADY_UNINSTALLED = 2359303;
		public const HResult WU_S_ALREADY_DOWNLOADED = 2359304;
		public const HResult WU_S_SOME_UPDATES_SKIPPED_ON_BATTERY = 2359305;
		public const HResult WU_S_ALREADY_REVERTED = 2359306;
		public const HResult WU_S_SEARCH_CRITERIA_NOT_SUPPORTED = 2359312;
		public const HResult WU_S_UH_INSTALLSTILLPENDING = 2367509;
		public const HResult WU_S_UH_DOWNLOAD_SIZE_CALCULATED = 2367510;
		public const HResult WU_S_SIH_NOOP = 2379777;
		public const HResult WU_S_DM_ALREADYDOWNLOADING = 2383873;
		public const HResult WU_S_METADATA_SKIPPED_BY_ENFORCEMENTMODE = 2388225;
		public const HResult WU_S_METADATA_IGNORED_SIGNATURE_VERIFICATION = 2388226;
		public const HResult WU_S_SEARCH_LOAD_SHEDDING = 2392065;
		public const HResult WU_E_NO_SERVICE = -2145124351;
		public const HResult WU_E_MAX_CAPACITY_REACHED = -2145124350;
		public const HResult WU_E_UNKNOWN_ID = -2145124349;
		public const HResult WU_E_NOT_INITIALIZED = -2145124348;
		public const HResult WU_E_RANGEOVERLAP = -2145124347;
		public const HResult WU_E_TOOMANYRANGES = -2145124346;
		public const HResult WU_E_INVALIDINDEX = -2145124345;
		public const HResult WU_E_ITEMNOTFOUND = -2145124344;
		public const HResult WU_E_OPERATIONINPROGRESS = -2145124343;
		public const HResult WU_E_COULDNOTCANCEL = -2145124342;
		public const HResult WU_E_CALL_CANCELLED = -2145124341;
		public const HResult WU_E_NOOP = -2145124340;
		public const HResult WU_E_XML_MISSINGDATA = -2145124339;
		public const HResult WU_E_XML_INVALID = -2145124338;
		public const HResult WU_E_CYCLE_DETECTED = -2145124337;
		public const HResult WU_E_TOO_DEEP_RELATION = -2145124336;
		public const HResult WU_E_INVALID_RELATIONSHIP = -2145124335;
		public const HResult WU_E_REG_VALUE_INVALID = -2145124334;
		public const HResult WU_E_DUPLICATE_ITEM = -2145124333;
		public const HResult WU_E_INVALID_INSTALL_REQUESTED = -2145124332;
		public const HResult WU_E_INSTALL_NOT_ALLOWED = -2145124330;
		public const HResult WU_E_NOT_APPLICABLE = -2145124329;
		public const HResult WU_E_NO_USERTOKEN = -2145124328;
		public const HResult WU_E_EXCLUSIVE_INSTALL_CONFLICT = -2145124327;
		public const HResult WU_E_POLICY_NOT_SET = -2145124326;
		public const HResult WU_E_SELFUPDATE_IN_PROGRESS = -2145124325;
		public const HResult WU_E_INVALID_UPDATE = -2145124323;
		public const HResult WU_E_SERVICE_STOP = -2145124322;
		public const HResult WU_E_NO_CONNECTION = -2145124321;
		public const HResult WU_E_NO_INTERACTIVE_USER = -2145124320;
		public const HResult WU_E_TIME_OUT = -2145124319;
		public const HResult WU_E_ALL_UPDATES_FAILED = -2145124318;
		public const HResult WU_E_EULAS_DECLINED = -2145124317;
		public const HResult WU_E_NO_UPDATE = -2145124316;
		public const HResult WU_E_USER_ACCESS_DISABLED = -2145124315;
		public const HResult WU_E_INVALID_UPDATE_TYPE = -2145124314;
		public const HResult WU_E_URL_TOO_LONG = -2145124313;
		public const HResult WU_E_UNINSTALL_NOT_ALLOWED = -2145124312;
		public const HResult WU_E_INVALID_PRODUCT_LICENSE = -2145124311;
		public const HResult WU_E_MISSING_HANDLER = -2145124310;
		public const HResult WU_E_LEGACYSERVER = -2145124309;
		public const HResult WU_E_BIN_SOURCE_ABSENT = -2145124308;
		public const HResult WU_E_SOURCE_ABSENT = -2145124307;
		public const HResult WU_E_WU_DISABLED = -2145124306;
		public const HResult WU_E_CALL_CANCELLED_BY_POLICY = -2145124305;
		public const HResult WU_E_INVALID_PROXY_SERVER = -2145124304;
		public const HResult WU_E_INVALID_FILE = -2145124303;
		public const HResult WU_E_INVALID_CRITERIA = -2145124302;
		public const HResult WU_E_EULA_UNAVAILABLE = -2145124301;
		public const HResult WU_E_DOWNLOAD_FAILED = -2145124300;
		public const HResult WU_E_UPDATE_NOT_PROCESSED = -2145124299;
		public const HResult WU_E_INVALID_OPERATION = -2145124298;
		public const HResult WU_E_NOT_SUPPORTED = -2145124297;
		public const HResult WU_E_WINHTTP_INVALID_FILE = -2145124296;
		public const HResult WU_E_TOO_MANY_RESYNC = -2145124295;
		public const HResult WU_E_NO_SERVER_CORE_SUPPORT = -2145124288;
		public const HResult WU_E_SYSPREP_IN_PROGRESS = -2145124287;
		public const HResult WU_E_UNKNOWN_SERVICE = -2145124286;
		public const HResult WU_E_NO_UI_SUPPORT = -2145124285;
		public const HResult WU_E_PER_MACHINE_UPDATE_ACCESS_DENIED = -2145124284;
		public const HResult WU_E_UNSUPPORTED_SEARCHSCOPE = -2145124283;
		public const HResult WU_E_BAD_FILE_URL = -2145124282;
		public const HResult WU_E_REVERT_NOT_ALLOWED = -2145124281;
		public const HResult WU_E_INVALID_NOTIFICATION_INFO = -2145124280;
		public const HResult WU_E_OUTOFRANGE = -2145124279;
		public const HResult WU_E_SETUP_IN_PROGRESS = -2145124278;
		public const HResult WU_E_ORPHANED_DOWNLOAD_JOB = -2145124277;
		public const HResult WU_E_LOW_BATTERY = -2145124276;
		public const HResult WU_E_INFRASTRUCTUREFILE_INVALID_FORMAT = -2145124275;
		public const HResult WU_E_INFRASTRUCTUREFILE_REQUIRES_SSL = -2145124274;
		public const HResult WU_E_IDLESHUTDOWN_OPCOUNT_DISCOVERY = -2145124273;
		public const HResult WU_E_IDLESHUTDOWN_OPCOUNT_SEARCH = -2145124272;
		public const HResult WU_E_IDLESHUTDOWN_OPCOUNT_DOWNLOAD = -2145124271;
		public const HResult WU_E_IDLESHUTDOWN_OPCOUNT_INSTALL = -2145124270;
		public const HResult WU_E_IDLESHUTDOWN_OPCOUNT_OTHER = -2145124269;
		public const HResult WU_E_INTERACTIVE_CALL_CANCELLED = -2145124268;
		public const HResult WU_E_AU_CALL_CANCELLED = -2145124267;
		public const HResult WU_E_SYSTEM_UNSUPPORTED = -2145124266;
		public const HResult WU_E_NO_SUCH_HANDLER_PLUGIN = -2145124265;
		public const HResult WU_E_INVALID_SERIALIZATION_VERSION = -2145124264;
		public const HResult WU_E_NETWORK_COST_EXCEEDS_POLICY = -2145124263;
		public const HResult WU_E_CALL_CANCELLED_BY_HIDE = -2145124262;
		public const HResult WU_E_CALL_CANCELLED_BY_INVALID = -2145124261;
		public const HResult WU_E_INVALID_VOLUMEID = -2145124260;
		public const HResult WU_E_UNRECOGNIZED_VOLUMEID = -2145124259;
		public const HResult WU_E_EXTENDEDERROR_NOTSET = -2145124258;
		public const HResult WU_E_EXTENDEDERROR_FAILED = -2145124257;
		public const HResult WU_E_IDLESHUTDOWN_OPCOUNT_SERVICEREGISTRATION = -2145124256;
		public const HResult WU_E_FILETRUST_SHA2SIGNATURE_MISSING = -2145124255;
		public const HResult WU_E_UPDATE_NOT_APPROVED = -2145124254;
		public const HResult WU_E_CALL_CANCELLED_BY_INTERACTIVE_SEARCH = -2145124253;
		public const HResult WU_E_INSTALL_JOB_RESUME_NOT_ALLOWED = -2145124252;
		public const HResult WU_E_INSTALL_JOB_NOT_SUSPENDED = -2145124251;
		public const HResult WU_E_INSTALL_USERCONTEXT_ACCESSDENIED = -2145124250;
		public const HResult WU_E_UNEXPECTED = -2145120257;
		public const HResult WU_E_MSI_WRONG_VERSION = -2145120255;
		public const HResult WU_E_MSI_NOT_CONFIGURED = -2145120254;
		public const HResult WU_E_MSP_DISABLED = -2145120253;
		public const HResult WU_E_MSI_WRONG_APP_CONTEXT = -2145120252;
		public const HResult WU_E_MSI_NOT_PRESENT = -2145120251;
		public const HResult WU_E_MSP_UNEXPECTED = -2145116161;
		public const HResult WU_E_PT_SOAPCLIENT_BASE = -2145107968;
		public const HResult WU_E_PT_SOAPCLIENT_INITIALIZE = -2145107967;
		public const HResult WU_E_PT_SOAPCLIENT_OUTOFMEMORY = -2145107966;
		public const HResult WU_E_PT_SOAPCLIENT_GENERATE = -2145107965;
		public const HResult WU_E_PT_SOAPCLIENT_CONNECT = -2145107964;
		public const HResult WU_E_PT_SOAPCLIENT_SEND = -2145107963;
		public const HResult WU_E_PT_SOAPCLIENT_SERVER = -2145107962;
		public const HResult WU_E_PT_SOAPCLIENT_SOAPFAULT = -2145107961;
		public const HResult WU_E_PT_SOAPCLIENT_PARSEFAULT = -2145107960;
		public const HResult WU_E_PT_SOAPCLIENT_READ = -2145107959;
		public const HResult WU_E_PT_SOAPCLIENT_PARSE = -2145107958;
		public const HResult WU_E_PT_SOAP_VERSION = -2145107957;
		public const HResult WU_E_PT_SOAP_MUST_UNDERSTAND = -2145107956;
		public const HResult WU_E_PT_SOAP_CLIENT = -2145107955;
		public const HResult WU_E_PT_SOAP_SERVER = -2145107954;
		public const HResult WU_E_PT_WMI_ERROR = -2145107953;
		public const HResult WU_E_PT_EXCEEDED_MAX_SERVER_TRIPS = -2145107952;
		public const HResult WU_E_PT_SUS_SERVER_NOT_SET = -2145107951;
		public const HResult WU_E_PT_DOUBLE_INITIALIZATION = -2145107950;
		public const HResult WU_E_PT_INVALID_COMPUTER_NAME = -2145107949;
		public const HResult WU_E_PT_REFRESH_CACHE_REQUIRED = -2145107947;
		public const HResult WU_E_PT_HTTP_STATUS_BAD_REQUEST = -2145107946;
		public const HResult WU_E_PT_HTTP_STATUS_DENIED = -2145107945;
		public const HResult WU_E_PT_HTTP_STATUS_FORBIDDEN = -2145107944;
		public const HResult WU_E_PT_HTTP_STATUS_NOT_FOUND = -2145107943;
		public const HResult WU_E_PT_HTTP_STATUS_BAD_METHOD = -2145107942;
		public const HResult WU_E_PT_HTTP_STATUS_PROXY_AUTH_REQ = -2145107941;
		public const HResult WU_E_PT_HTTP_STATUS_REQUEST_TIMEOUT = -2145107940;
		public const HResult WU_E_PT_HTTP_STATUS_CONFLICT = -2145107939;
		public const HResult WU_E_PT_HTTP_STATUS_GONE = -2145107938;
		public const HResult WU_E_PT_HTTP_STATUS_SERVER_ERROR = -2145107937;
		public const HResult WU_E_PT_HTTP_STATUS_NOT_SUPPORTED = -2145107936;
		public const HResult WU_E_PT_HTTP_STATUS_BAD_GATEWAY = -2145107935;
		public const HResult WU_E_PT_HTTP_STATUS_SERVICE_UNAVAIL = -2145107934;
		public const HResult WU_E_PT_HTTP_STATUS_GATEWAY_TIMEOUT = -2145107933;
		public const HResult WU_E_PT_HTTP_STATUS_VERSION_NOT_SUP = -2145107932;
		public const HResult WU_E_PT_FILE_LOCATIONS_CHANGED = -2145107931;
		public const HResult WU_E_PT_REGISTRATION_NOT_SUPPORTED = -2145107930;
		public const HResult WU_E_PT_NO_AUTH_PLUGINS_REQUESTED = -2145107929;
		public const HResult WU_E_PT_NO_AUTH_COOKIES_CREATED = -2145107928;
		public const HResult WU_E_PT_INVALID_CONFIG_PROP = -2145107927;
		public const HResult WU_E_PT_CONFIG_PROP_MISSING = -2145107926;
		public const HResult WU_E_PT_HTTP_STATUS_NOT_MAPPED = -2145107925;
		public const HResult WU_E_PT_WINHTTP_NAME_NOT_RESOLVED = -2145107924;
		public const HResult WU_E_PT_LOAD_SHEDDING = -2145107923;
		public const HResult WU_E_PT_SAME_REDIR_ID = -2145103827;
		public const HResult WU_E_PT_NO_MANAGED_RECOVER = -2145103826;
		public const HResult WU_E_PT_ECP_SUCCEEDED_WITH_ERRORS = -2145107921;
		public const HResult WU_E_PT_ECP_INIT_FAILED = -2145107920;
		public const HResult WU_E_PT_ECP_INVALID_FILE_FORMAT = -2145107919;
		public const HResult WU_E_PT_ECP_INVALID_METADATA = -2145107918;
		public const HResult WU_E_PT_ECP_FAILURE_TO_EXTRACT_DIGEST = -2145107917;
		public const HResult WU_E_PT_ECP_FAILURE_TO_DECOMPRESS_CAB_FILE = -2145107916;
		public const HResult WU_E_PT_ECP_FILE_LOCATION_ERROR = -2145107915;
		public const HResult WU_E_PT_CATALOG_SYNC_REQUIRED = -2145123274;
		public const HResult WU_E_PT_SECURITY_VERIFICATION_FAILURE = -2145123273;
		public const HResult WU_E_PT_ENDPOINT_UNREACHABLE = -2145123272;
		public const HResult WU_E_PT_INVALID_FORMAT = -2145123271;
		public const HResult WU_E_PT_INVALID_URL = -2145123270;
		public const HResult WU_E_PT_NWS_NOT_LOADED = -2145123269;
		public const HResult WU_E_PT_PROXY_AUTH_SCHEME_NOT_SUPPORTED = -2145123268;
		public const HResult WU_E_SERVICEPROP_NOTAVAIL = -2145123267;
		public const HResult WU_E_PT_ENDPOINT_REFRESH_REQUIRED = -2145123266;
		public const HResult WU_E_PT_ENDPOINTURL_NOTAVAIL = -2145123265;
		public const HResult WU_E_PT_ENDPOINT_DISCONNECTED = -2145123264;
		public const HResult WU_E_PT_INVALID_OPERATION = -2145123263;
		public const HResult WU_E_PT_OBJECT_FAULTED = -2145123262;
		public const HResult WU_E_PT_NUMERIC_OVERFLOW = -2145123261;
		public const HResult WU_E_PT_OPERATION_ABORTED = -2145123260;
		public const HResult WU_E_PT_OPERATION_ABANDONED = -2145123259;
		public const HResult WU_E_PT_QUOTA_EXCEEDED = -2145123258;
		public const HResult WU_E_PT_NO_TRANSLATION_AVAILABLE = -2145123257;
		public const HResult WU_E_PT_ADDRESS_IN_USE = -2145123256;
		public const HResult WU_E_PT_ADDRESS_NOT_AVAILABLE = -2145123255;
		public const HResult WU_E_PT_OTHER = -2145123254;
		public const HResult WU_E_PT_SECURITY_SYSTEM_FAILURE = -2145123253;
		public const HResult WU_E_PT_UNEXPECTED = -2145103873;
		public const HResult WU_E_REDIRECTOR_LOAD_XML = -2145103871;
		public const HResult WU_E_REDIRECTOR_S_FALSE = -2145103870;
		public const HResult WU_E_REDIRECTOR_ID_SMALLER = -2145103869;
		public const HResult WU_E_REDIRECTOR_UNKNOWN_SERVICE = -2145103868;
		public const HResult WU_E_REDIRECTOR_UNSUPPORTED_CONTENTTYPE = -2145103867;
		public const HResult WU_E_REDIRECTOR_INVALID_RESPONSE = -2145103866;
		public const HResult WU_E_REDIRECTOR_ATTRPROVIDER_EXCEEDED_MAX_NAMEVALUE = -2145103864;
		public const HResult WU_E_REDIRECTOR_ATTRPROVIDER_INVALID_NAME = -2145103863;
		public const HResult WU_E_REDIRECTOR_ATTRPROVIDER_INVALID_VALUE = -2145103862;
		public const HResult WU_E_REDIRECTOR_SLS_GENERIC_ERROR = -2145103861;
		public const HResult WU_E_REDIRECTOR_CONNECT_POLICY = -2145103860;
		public const HResult WU_E_REDIRECTOR_ONLINE_DISALLOWED = -2145103859;
		public const HResult WU_E_REDIRECTOR_UNEXPECTED = -2145103617;
		public const HResult WU_E_SIH_VERIFY_DOWNLOAD_ENGINE = -2145103615;
		public const HResult WU_E_SIH_VERIFY_DOWNLOAD_PAYLOAD = -2145103614;
		public const HResult WU_E_SIH_VERIFY_STAGE_ENGINE = -2145103613;
		public const HResult WU_E_SIH_VERIFY_STAGE_PAYLOAD = -2145103612;
		public const HResult WU_E_SIH_ACTION_NOT_FOUND = -2145103611;
		public const HResult WU_E_SIH_SLS_PARSE = -2145103610;
		public const HResult WU_E_SIH_INVALIDHASH = -2145103609;
		public const HResult WU_E_SIH_NO_ENGINE = -2145103608;
		public const HResult WU_E_SIH_POST_REBOOT_INSTALL_FAILED = -2145103607;
		public const HResult WU_E_SIH_POST_REBOOT_NO_CACHED_SLS_RESPONSE = -2145103606;
		public const HResult WU_E_SIH_PARSE = -2145103605;
		public const HResult WU_E_SIH_SECURITY = -2145103604;
		public const HResult WU_E_SIH_PPL = -2145103603;
		public const HResult WU_E_SIH_POLICY = -2145103602;
		public const HResult WU_E_SIH_STDEXCEPTION = -2145103601;
		public const HResult WU_E_SIH_NONSTDEXCEPTION = -2145103600;
		public const HResult WU_E_SIH_ENGINE_EXCEPTION = -2145103599;
		public const HResult WU_E_SIH_BLOCKED_FOR_PLATFORM = -2145103598;
		public const HResult WU_E_SIH_ANOTHER_INSTANCE_RUNNING = -2145103597;
		public const HResult WU_E_SIH_DNSRESILIENCY_OFF = -2145103596;
		public const HResult WU_E_SIH_UNEXPECTED = -2145103361;
		public const HResult WU_E_DRV_PRUNED = -2145075199;
		public const HResult WU_E_DRV_NOPROP_OR_LEGACY = -2145075198;
		public const HResult WU_E_DRV_REG_MISMATCH = -2145075197;
		public const HResult WU_E_DRV_NO_METADATA = -2145075196;
		public const HResult WU_E_DRV_MISSING_ATTRIBUTE = -2145075195;
		public const HResult WU_E_DRV_SYNC_FAILED = -2145075194;
		public const HResult WU_E_DRV_NO_PRINTER_CONTENT = -2145075193;
		public const HResult WU_E_DRV_DEVICE_PROBLEM = -2145075192;
		public const HResult WU_E_DRV_UNEXPECTED = -2145071105;
		public const HResult WU_E_DS_SHUTDOWN = -2145091584;
		public const HResult WU_E_DS_INUSE = -2145091583;
		public const HResult WU_E_DS_INVALID = -2145091582;
		public const HResult WU_E_DS_TABLEMISSING = -2145091581;
		public const HResult WU_E_DS_TABLEINCORRECT = -2145091580;
		public const HResult WU_E_DS_INVALIDTABLENAME = -2145091579;
		public const HResult WU_E_DS_BADVERSION = -2145091578;
		public const HResult WU_E_DS_NODATA = -2145091577;
		public const HResult WU_E_DS_MISSINGDATA = -2145091576;
		public const HResult WU_E_DS_MISSINGREF = -2145091575;
		public const HResult WU_E_DS_UNKNOWNHANDLER = -2145091574;
		public const HResult WU_E_DS_CANTDELETE = -2145091573;
		public const HResult WU_E_DS_LOCKTIMEOUTEXPIRED = -2145091572;
		public const HResult WU_E_DS_NOCATEGORIES = -2145091571;
		public const HResult WU_E_DS_ROWEXISTS = -2145091570;
		public const HResult WU_E_DS_STOREFILELOCKED = -2145091569;
		public const HResult WU_E_DS_CANNOTREGISTER = -2145091568;
		public const HResult WU_E_DS_UNABLETOSTART = -2145091567;
		public const HResult WU_E_DS_DUPLICATEUPDATEID = -2145091565;
		public const HResult WU_E_DS_UNKNOWNSERVICE = -2145091564;
		public const HResult WU_E_DS_SERVICEEXPIRED = -2145091563;
		public const HResult WU_E_DS_DECLINENOTALLOWED = -2145091562;
		public const HResult WU_E_DS_TABLESESSIONMISMATCH = -2145091561;
		public const HResult WU_E_DS_SESSIONLOCKMISMATCH = -2145091560;
		public const HResult WU_E_DS_NEEDWINDOWSSERVICE = -2145091559;
		public const HResult WU_E_DS_INVALIDOPERATION = -2145091558;
		public const HResult WU_E_DS_SCHEMAMISMATCH = -2145091557;
		public const HResult WU_E_DS_RESETREQUIRED = -2145091556;
		public const HResult WU_E_DS_IMPERSONATED = -2145091555;
		public const HResult WU_E_DS_DATANOTAVAILABLE = -2145091554;
		public const HResult WU_E_DS_DATANOTLOADED = -2145091553;
		public const HResult WU_E_DS_NODATA_NOSUCHREVISION = -2145091552;
		public const HResult WU_E_DS_NODATA_NOSUCHUPDATE = -2145091551;
		public const HResult WU_E_DS_NODATA_EULA = -2145091550;
		public const HResult WU_E_DS_NODATA_SERVICE = -2145091549;
		public const HResult WU_E_DS_NODATA_COOKIE = -2145091548;
		public const HResult WU_E_DS_NODATA_TIMER = -2145091547;
		public const HResult WU_E_DS_NODATA_CCR = -2145091546;
		public const HResult WU_E_DS_NODATA_FILE = -2145091545;
		public const HResult WU_E_DS_NODATA_DOWNLOADJOB = -2145091544;
		public const HResult WU_E_DS_NODATA_TMI = -2145091543;
		public const HResult WU_E_DS_UNEXPECTED = -2145087489;
		public const HResult WU_E_INVENTORY_PARSEFAILED = -2145087487;
		public const HResult WU_E_INVENTORY_GET_INVENTORY_TYPE_FAILED = -2145087486;
		public const HResult WU_E_INVENTORY_RESULT_UPLOAD_FAILED = -2145087485;
		public const HResult WU_E_INVENTORY_UNEXPECTED = -2145087484;
		public const HResult WU_E_INVENTORY_WMI_ERROR = -2145087483;
		public const HResult WU_E_AU_NOSERVICE = -2145083392;
		public const HResult WU_E_AU_NONLEGACYSERVER = -2145083390;
		public const HResult WU_E_AU_LEGACYCLIENTDISABLED = -2145083389;
		public const HResult WU_E_AU_PAUSED = -2145083388;
		public const HResult WU_E_AU_NO_REGISTERED_SERVICE = -2145083387;
		public const HResult WU_E_AU_DETECT_SVCID_MISMATCH = -2145083386;
		public const HResult WU_E_REBOOT_IN_PROGRESS = -2145083385;
		public const HResult WU_E_AU_OOBE_IN_PROGRESS = -2145083384;
		public const HResult WU_E_AU_UNEXPECTED = -2145079297;
		public const HResult WU_E_UH_REMOTEUNAVAILABLE = -2145116160;
		public const HResult WU_E_UH_LOCALONLY = -2145116159;
		public const HResult WU_E_UH_UNKNOWNHANDLER = -2145116158;
		public const HResult WU_E_UH_REMOTEALREADYACTIVE = -2145116157;
		public const HResult WU_E_UH_DOESNOTSUPPORTACTION = -2145116156;
		public const HResult WU_E_UH_WRONGHANDLER = -2145116155;
		public const HResult WU_E_UH_INVALIDMETADATA = -2145116154;
		public const HResult WU_E_UH_INSTALLERHUNG = -2145116153;
		public const HResult WU_E_UH_OPERATIONCANCELLED = -2145116152;
		public const HResult WU_E_UH_BADHANDLERXML = -2145116151;
		public const HResult WU_E_UH_CANREQUIREINPUT = -2145116150;
		public const HResult WU_E_UH_INSTALLERFAILURE = -2145116149;
		public const HResult WU_E_UH_FALLBACKTOSELFCONTAINED = -2145116148;
		public const HResult WU_E_UH_NEEDANOTHERDOWNLOAD = -2145116147;
		public const HResult WU_E_UH_NOTIFYFAILURE = -2145116146;
		public const HResult WU_E_UH_INCONSISTENT_FILE_NAMES = -2145116145;
		public const HResult WU_E_UH_FALLBACKERROR = -2145116144;
		public const HResult WU_E_UH_TOOMANYDOWNLOADREQUESTS = -2145116143;
		public const HResult WU_E_UH_UNEXPECTEDCBSRESPONSE = -2145116142;
		public const HResult WU_E_UH_BADCBSPACKAGEID = -2145116141;
		public const HResult WU_E_UH_POSTREBOOTSTILLPENDING = -2145116140;
		public const HResult WU_E_UH_POSTREBOOTRESULTUNKNOWN = -2145116139;
		public const HResult WU_E_UH_POSTREBOOTUNEXPECTEDSTATE = -2145116138;
		public const HResult WU_E_UH_NEW_SERVICING_STACK_REQUIRED = -2145116137;
		public const HResult WU_E_UH_CALLED_BACK_FAILURE = -2145116136;
		public const HResult WU_E_UH_CUSTOMINSTALLER_INVALID_SIGNATURE = -2145116135;
		public const HResult WU_E_UH_UNSUPPORTED_INSTALLCONTEXT = -2145116134;
		public const HResult WU_E_UH_INVALID_TARGETSESSION = -2145116133;
		public const HResult WU_E_UH_DECRYPTFAILURE = -2145116132;
		public const HResult WU_E_UH_HANDLER_DISABLEDUNTILREBOOT = -2145116131;
		public const HResult WU_E_UH_APPX_NOT_PRESENT = -2145116130;
		public const HResult WU_E_UH_NOTREADYTOCOMMIT = -2145116129;
		public const HResult WU_E_UH_APPX_INVALID_PACKAGE_VOLUME = -2145116128;
		public const HResult WU_E_UH_APPX_DEFAULT_PACKAGE_VOLUME_UNAVAILABLE = -2145116127;
		public const HResult WU_E_UH_APPX_INSTALLED_PACKAGE_VOLUME_UNAVAILABLE = -2145116126;
		public const HResult WU_E_UH_APPX_PACKAGE_FAMILY_NOT_FOUND = -2145116125;
		public const HResult WU_E_UH_APPX_SYSTEM_VOLUME_NOT_FOUND = -2145116124;
		public const HResult WU_E_UH_UNEXPECTED = -2145112065;
		public const HResult WU_E_DM_URLNOTAVAILABLE = -2145099775;
		public const HResult WU_E_DM_INCORRECTFILEHASH = -2145099774;
		public const HResult WU_E_DM_UNKNOWNALGORITHM = -2145099773;
		public const HResult WU_E_DM_NEEDDOWNLOADREQUEST = -2145099772;
		public const HResult WU_E_DM_NONETWORK = -2145099771;
		public const HResult WU_E_DM_WRONGBITSVERSION = -2145099770;
		public const HResult WU_E_DM_NOTDOWNLOADED = -2145099769;
		public const HResult WU_E_DM_FAILTOCONNECTTOBITS = -2145099768;
		public const HResult WU_E_DM_BITSTRANSFERERROR = -2145099767;
		public const HResult WU_E_DM_DOWNLOADLOCATIONCHANGED = -2145099766;
		public const HResult WU_E_DM_CONTENTCHANGED = -2145099765;
		public const HResult WU_E_DM_DOWNLOADLIMITEDBYUPDATESIZE = -2145099764;
		public const HResult WU_E_DM_UNAUTHORIZED = -2145099762;
		public const HResult WU_E_DM_BG_ERROR_TOKEN_REQUIRED = -2145099761;
		public const HResult WU_E_DM_DOWNLOADSANDBOXNOTFOUND = -2145099760;
		public const HResult WU_E_DM_DOWNLOADFILEPATHUNKNOWN = -2145099759;
		public const HResult WU_E_DM_DOWNLOADFILEMISSING = -2145099758;
		public const HResult WU_E_DM_UPDATEREMOVED = -2145099757;
		public const HResult WU_E_DM_READRANGEFAILED = -2145099756;
		public const HResult WU_E_DM_UNAUTHORIZED_NO_USER = -2145099754;
		public const HResult WU_E_DM_UNAUTHORIZED_LOCAL_USER = -2145099753;
		public const HResult WU_E_DM_UNAUTHORIZED_DOMAIN_USER = -2145099752;
		public const HResult WU_E_DM_UNAUTHORIZED_MSA_USER = -2145099751;
		public const HResult WU_E_DM_FALLINGBACKTOBITS = -2145099750;
		public const HResult WU_E_DM_DOWNLOAD_VOLUME_CONFLICT = -2145099749;
		public const HResult WU_E_DM_SANDBOX_HASH_MISMATCH = -2145099748;
		public const HResult WU_E_DM_HARDRESERVEID_CONFLICT = -2145099747;
		public const HResult WU_E_DM_DOSVC_REQUIRED = -2145099746;
		public const HResult WU_E_DM_UNEXPECTED = -2145095681;
		public const HResult WU_E_SETUP_INVALID_INFDATA = -2145071103;
		public const HResult WU_E_SETUP_INVALID_IDENTDATA = -2145071102;
		public const HResult WU_E_SETUP_ALREADY_INITIALIZED = -2145071101;
		public const HResult WU_E_SETUP_NOT_INITIALIZED = -2145071100;
		public const HResult WU_E_SETUP_SOURCE_VERSION_MISMATCH = -2145071099;
		public const HResult WU_E_SETUP_TARGET_VERSION_GREATER = -2145071098;
		public const HResult WU_E_SETUP_REGISTRATION_FAILED = -2145071097;
		public const HResult WU_E_SELFUPDATE_SKIP_ON_FAILURE = -2145071096;
		public const HResult WU_E_SETUP_SKIP_UPDATE = -2145071095;
		public const HResult WU_E_SETUP_UNSUPPORTED_CONFIGURATION = -2145071094;
		public const HResult WU_E_SETUP_BLOCKED_CONFIGURATION = -2145071093;
		public const HResult WU_E_SETUP_REBOOT_TO_FIX = -2145071092;
		public const HResult WU_E_SETUP_ALREADYRUNNING = -2145071091;
		public const HResult WU_E_SETUP_REBOOTREQUIRED = -2145071090;
		public const HResult WU_E_SETUP_HANDLER_EXEC_FAILURE = -2145071089;
		public const HResult WU_E_SETUP_INVALID_REGISTRY_DATA = -2145071088;
		public const HResult WU_E_SELFUPDATE_REQUIRED = -2145071087;
		public const HResult WU_E_SELFUPDATE_REQUIRED_ADMIN = -2145071086;
		public const HResult WU_E_SETUP_WRONG_SERVER_VERSION = -2145071085;
		public const HResult WU_E_SETUP_DEFERRABLE_REBOOT_PENDING = -2145071084;
		public const HResult WU_E_SETUP_NON_DEFERRABLE_REBOOT_PENDING = -2145071083;
		public const HResult WU_E_SETUP_FAIL = -2145071082;
		public const HResult WU_E_SETUP_UNEXPECTED = -2145067009;
		public const HResult WU_E_EE_UNKNOWN_EXPRESSION = -2145067007;
		public const HResult WU_E_EE_INVALID_EXPRESSION = -2145067006;
		public const HResult WU_E_EE_MISSING_METADATA = -2145067005;
		public const HResult WU_E_EE_INVALID_VERSION = -2145067004;
		public const HResult WU_E_EE_NOT_INITIALIZED = -2145067003;
		public const HResult WU_E_EE_INVALID_ATTRIBUTEDATA = -2145067002;
		public const HResult WU_E_EE_CLUSTER_ERROR = -2145067001;
		public const HResult WU_E_EE_UNEXPECTED = -2145062913;
		public const HResult WU_E_INSTALLATION_RESULTS_UNKNOWN_VERSION = -2145112063;
		public const HResult WU_E_INSTALLATION_RESULTS_INVALID_DATA = -2145112062;
		public const HResult WU_E_INSTALLATION_RESULTS_NOT_FOUND = -2145112061;
		public const HResult WU_E_TRAYICON_FAILURE = -2145112060;
		public const HResult WU_E_NON_UI_MODE = -2145107971;
		public const HResult WU_E_WUCLTUI_UNSUPPORTED_VERSION = -2145107970;
		public const HResult WU_E_AUCLIENT_UNEXPECTED = -2145107969;
		public const HResult WU_E_REPORTER_EVENTCACHECORRUPT = -2145062911;
		public const HResult WU_E_REPORTER_EVENTNAMESPACEPARSEFAILED = -2145062910;
		public const HResult WU_E_INVALID_EVENT = -2145062909;
		public const HResult WU_E_SERVER_BUSY = -2145062908;
		public const HResult WU_E_CALLBACK_COOKIE_NOT_FOUND = -2145062907;
		public const HResult WU_E_REPORTER_UNEXPECTED = -2145058817;
		public const HResult WU_E_OL_INVALID_SCANFILE = -2145095679;
		public const HResult WU_E_OL_NEWCLIENT_REQUIRED = -2145095678;
		public const HResult WU_E_INVALID_EVENT_PAYLOAD = -2145095677;
		public const HResult WU_E_INVALID_EVENT_PAYLOADSIZE = -2145095676;
		public const HResult WU_E_SERVICE_NOT_REGISTERED = -2145095675;
		public const HResult WU_E_OL_UNEXPECTED = -2145091585;
		public const HResult WU_E_METADATA_NOOP = -2145095424;
		public const HResult WU_E_METADATA_CONFIG_INVALID_BINARY_ENCODING = -2145095423;
		public const HResult WU_E_METADATA_FETCH_CONFIG = -2145095422;
		public const HResult WU_E_METADATA_INVALID_PARAMETER = -2145095420;
		public const HResult WU_E_METADATA_UNEXPECTED = -2145095419;
		public const HResult WU_E_METADATA_NO_VERIFICATION_DATA = -2145095418;
		public const HResult WU_E_METADATA_BAD_FRAGMENTSIGNING_CONFIG = -2145095417;
		public const HResult WU_E_METADATA_FAILURE_PROCESSING_FRAGMENTSIGNING_CONFIG = -2145095416;
		public const HResult WU_E_METADATA_XML_MISSING = -2145095392;
		public const HResult WU_E_METADATA_XML_FRAGMENTSIGNING_MISSING = -2145095391;
		public const HResult WU_E_METADATA_XML_MODE_MISSING = -2145095390;
		public const HResult WU_E_METADATA_XML_MODE_INVALID = -2145095389;
		public const HResult WU_E_METADATA_XML_VALIDITY_INVALID = -2145095388;
		public const HResult WU_E_METADATA_XML_LEAFCERT_MISSING = -2145095387;
		public const HResult WU_E_METADATA_XML_INTERMEDIATECERT_MISSING = -2145095386;
		public const HResult WU_E_METADATA_XML_LEAFCERT_ID_MISSING = -2145095385;
		public const HResult WU_E_METADATA_XML_BASE64CERDATA_MISSING = -2145095384;
		public const HResult WU_E_METADATA_BAD_SIGNATURE = -2145095360;
		public const HResult WU_E_METADATA_UNSUPPORTED_HASH_ALG = -2145095359;
		public const HResult WU_E_METADATA_SIGNATURE_VERIFY_FAILED = -2145095358;
		public const HResult WU_E_METADATATRUST_CERTIFICATECHAIN_VERIFICATION = -2145095344;
		public const HResult WU_E_METADATATRUST_UNTRUSTED_CERTIFICATECHAIN = -2145095343;
		public const HResult WU_E_METADATA_TIMESTAMP_TOKEN_MISSING = -2145095328;
		public const HResult WU_E_METADATA_TIMESTAMP_TOKEN_VERIFICATION_FAILED = -2145095327;
		public const HResult WU_E_METADATA_TIMESTAMP_TOKEN_UNTRUSTED = -2145095326;
		public const HResult WU_E_METADATA_TIMESTAMP_TOKEN_VALIDITY_WINDOW = -2145095325;
		public const HResult WU_E_METADATA_TIMESTAMP_TOKEN_SIGNATURE = -2145095324;
		public const HResult WU_E_METADATA_TIMESTAMP_TOKEN_CERTCHAIN = -2145095323;
		public const HResult WU_E_METADATA_TIMESTAMP_TOKEN_REFRESHONLINE = -2145095322;
		public const HResult WU_E_METADATA_TIMESTAMP_TOKEN_ALL_BAD = -2145095321;
		public const HResult WU_E_METADATA_TIMESTAMP_TOKEN_NODATA = -2145095320;
		public const HResult WU_E_METADATA_TIMESTAMP_TOKEN_CACHELOOKUP = -2145095319;
		public const HResult WU_E_METADATA_TIMESTAMP_TOKEN_VALIDITYWINDOW_UNEXPECTED = -2145095298;
		public const HResult WU_E_METADATA_TIMESTAMP_TOKEN_UNEXPECTED = -2145095297;
		public const HResult WU_E_METADATA_CERT_MISSING = -2145095296;
		public const HResult WU_E_METADATA_LEAFCERT_BAD_TRANSPORT_ENCODING = -2145095295;
		public const HResult WU_E_METADATA_INTCERT_BAD_TRANSPORT_ENCODING = -2145095294;
		public const HResult WU_E_METADATA_CERT_UNTRUSTED = -2145095293;
		public const HResult WU_E_WUTASK_INPROGRESS = -2145079295;
		public const HResult WU_E_WUTASK_STATUS_DISABLED = -2145079294;
		public const HResult WU_E_WUTASK_NOT_STARTED = -2145079293;
		public const HResult WU_E_WUTASK_RETRY = -2145079292;
		public const HResult WU_E_WUTASK_CANCELINSTALL_DISALLOWED = -2145079291;
		public const HResult WU_E_UNKNOWN_HARDWARECAPABILITY = -2145079039;
		public const HResult WU_E_BAD_XML_HARDWARECAPABILITY = -2145079038;
		public const HResult WU_E_WMI_NOT_SUPPORTED = -2145079037;
		public const HResult WU_E_UPDATE_MERGE_NOT_ALLOWED = -2145079036;
		public const HResult WU_E_SKIPPED_UPDATE_INSTALLATION = -2145079035;
		public const HResult WU_E_SLS_INVALID_REVISION = -2145078783;
		public const HResult WU_E_FILETRUST_DUALSIGNATURE_RSA = -2145078527;
		public const HResult WU_E_FILETRUST_DUALSIGNATURE_ECC = -2145078526;
		public const HResult WU_E_TRUST_SUBJECT_NOT_TRUSTED = -2145078525;
		public const HResult WU_E_TRUST_PROVIDER_UNKNOWN = -2145078524;
		
		// --- Enums ---
		
		public enum AutomaticUpdatesNotificationLevel : int32
		{
			NotConfigured = 0,
			Disabled = 1,
			NotifyBeforeDownload = 2,
			NotifyBeforeInstallation = 3,
			ScheduledInstallation = 4,
		}
		public enum AutomaticUpdatesScheduledInstallationDay : int32
		{
			Day = 0,
			Sunday = 1,
			Monday = 2,
			Tuesday = 3,
			Wednesday = 4,
			Thursday = 5,
			Friday = 6,
			Saturday = 7,
		}
		public enum DownloadPhase : int32
		{
			Initializing = 1,
			Downloading = 2,
			Verifying = 3,
		}
		public enum DownloadPriority : int32
		{
			Low = 1,
			Normal = 2,
			High = 3,
			ExtraHigh = 4,
		}
		public enum AutoSelectionMode : int32
		{
			LetWindowsUpdateDecide = 0,
			AutoSelectIfDownloaded = 1,
			NeverAutoSelect = 2,
			AlwaysAutoSelect = 3,
		}
		public enum AutoDownloadMode : int32
		{
			LetWindowsUpdateDecide = 0,
			NeverAutoDownload = 1,
			AlwaysAutoDownload = 2,
		}
		public enum InstallationImpact : int32
		{
			Normal = 0,
			Minor = 1,
			RequiresExclusiveHandling = 2,
		}
		public enum InstallationRebootBehavior : int32
		{
			NeverReboots = 0,
			AlwaysRequiresReboot = 1,
			CanRequestReboot = 2,
		}
		public enum OperationResultCode : int32
		{
			NotStarted = 0,
			InProgress = 1,
			Succeeded = 2,
			SucceededWithErrors = 3,
			Failed = 4,
			Aborted = 5,
		}
		public enum ServerSelection : int32
		{
			Default = 0,
			ManagedServer = 1,
			WindowsUpdate = 2,
			Others = 3,
		}
		public enum UpdateType : int32
		{
			Software = 1,
			Driver = 2,
		}
		public enum UpdateOperation : int32
		{
			Installation = 1,
			Uninstallation = 2,
		}
		public enum DeploymentAction : int32
		{
			None = 0,
			Installation = 1,
			Uninstallation = 2,
			Detection = 3,
			OptionalInstallation = 4,
		}
		public enum UpdateExceptionContext : int32
		{
			General = 1,
			WindowsDriver = 2,
			WindowsInstaller = 3,
			SearchIncomplete = 4,
		}
		public enum AutomaticUpdatesUserType : int32
		{
			CurrentUser = 1,
			LocalAdministrator = 2,
		}
		public enum AutomaticUpdatesPermissionType : int32
		{
			SetNotificationLevel = 1,
			DisableAutomaticUpdates = 2,
			SetIncludeRecommendedUpdates = 3,
			SetFeaturedUpdatesEnabled = 4,
			SetNonAdministratorsElevated = 5,
		}
		public enum UpdateServiceRegistrationState : int32
		{
			NotRegistered = 1,
			RegistrationPending = 2,
			Registered = 3,
		}
		public enum SearchScope : int32
		{
			Default = 0,
			MachineOnly = 1,
			CurrentUserOnly = 2,
			MachineAndCurrentUser = 3,
			MachineAndAllUsers = 4,
			AllUsers = 5,
		}
		public enum UpdateLockdownOption : int32
		{
			uloForWebsiteAccess = 1,
		}
		public enum AddServiceFlag : int32
		{
			AllowPendingRegistration = 1,
			AllowOnlineRegistration = 2,
			RegisterServiceWithAU = 4,
		}
		public enum UpdateServiceOption : int32
		{
			usoNonVolatileService = 1,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_StringCollection = .(0x72c97d74, 0x7c3b, 0x40ae, 0xb7, 0x7d, 0xab, 0xdb, 0x22, 0xeb, 0xa6, 0xfb);
		public const Guid CLSID_UpdateSearcher = .(0xb699e5e8, 0x67ff, 0x4177, 0x88, 0xb0, 0x36, 0x84, 0xa3, 0x38, 0x8b, 0xfb);
		public const Guid CLSID_WebProxy = .(0x650503cf, 0x9108, 0x4ddc, 0xa2, 0xce, 0x6c, 0x23, 0x41, 0xe1, 0xc5, 0x82);
		public const Guid CLSID_SystemInformation = .(0xc01b9ba0, 0xbea7, 0x41ba, 0xb6, 0x04, 0xd0, 0xa3, 0x6f, 0x46, 0x91, 0x33);
		public const Guid CLSID_WindowsUpdateAgentInfo = .(0xc2e88c2f, 0x6f5b, 0x4aaa, 0x89, 0x4b, 0x55, 0xc8, 0x47, 0xad, 0x3a, 0x2d);
		public const Guid CLSID_AutomaticUpdates = .(0xbfe18e9c, 0x6d87, 0x4450, 0xb3, 0x7c, 0xe0, 0x2f, 0x0b, 0x37, 0x38, 0x03);
		public const Guid CLSID_UpdateCollection = .(0x13639463, 0x00db, 0x4646, 0x80, 0x3d, 0x52, 0x80, 0x26, 0x14, 0x0d, 0x88);
		public const Guid CLSID_UpdateDownloader = .(0x5baf654a, 0x5a07, 0x4264, 0xa2, 0x55, 0x9f, 0xf5, 0x4c, 0x71, 0x51, 0xe7);
		public const Guid CLSID_UpdateInstaller = .(0xd2e0fe7f, 0xd23e, 0x48e1, 0x93, 0xc0, 0x6f, 0xa8, 0xcc, 0x34, 0x64, 0x74);
		public const Guid CLSID_UpdateSession = .(0x4cb43d7f, 0x7eee, 0x4906, 0x86, 0x98, 0x60, 0xda, 0x1c, 0x38, 0xf2, 0xfe);
		public const Guid CLSID_UpdateServiceManager = .(0xf8d253d9, 0x89a4, 0x4daa, 0x87, 0xb6, 0x11, 0x68, 0x36, 0x9f, 0x0b, 0x21);
		public const Guid CLSID_InstallationAgent = .(0x317e92fc, 0x1679, 0x46fd, 0xa0, 0xb5, 0xf0, 0x89, 0x14, 0xdd, 0x86, 0x23);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IUpdateLockdown : IUnknown
		{
			public const new Guid IID = .(0xa976c28d, 0x75a1, 0x42aa, 0x94, 0xae, 0x8a, 0xf8, 0xb8, 0x72, 0x08, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult LockDown(int32 flags) mut => VT.LockDown(ref this, flags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateLockdown self, int32 flags) LockDown;
			}
		}
		[CRepr]
		public struct IStringCollection : IDispatch
		{
			public const new Guid IID = .(0xeff90582, 0x2ddc, 0x480f, 0xa0, 0x6d, 0x60, 0xf3, 0xfb, 0xc3, 0x62, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Item(int32 index, out BSTR retval) mut => VT.get_Item(ref this, index, out retval);
			public HResult put_Item(int32 index, BSTR value) mut => VT.put_Item(ref this, index, value);
			public HResult get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
			public HResult get_Count(out int32 retval) mut => VT.get_Count(ref this, out retval);
			public HResult get_ReadOnly(out int16 retval) mut => VT.get_ReadOnly(ref this, out retval);
			public HResult Add(BSTR value, out int32 retval) mut => VT.Add(ref this, value, out retval);
			public HResult Clear() mut => VT.Clear(ref this);
			public HResult Copy(out IStringCollection* retval) mut => VT.Copy(ref this, out retval);
			public HResult Insert(int32 index, BSTR value) mut => VT.Insert(ref this, index, value);
			public HResult RemoveAt(int32 index) mut => VT.RemoveAt(ref this, index);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IStringCollection self, int32 index, out BSTR retval) get_Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStringCollection self, int32 index, BSTR value) put_Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStringCollection self, out IUnknown* retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStringCollection self, out int32 retval) get_Count;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStringCollection self, out int16 retval) get_ReadOnly;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStringCollection self, BSTR value, out int32 retval) Add;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStringCollection self) Clear;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStringCollection self, out IStringCollection* retval) Copy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStringCollection self, int32 index, BSTR value) Insert;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStringCollection self, int32 index) RemoveAt;
			}
		}
		[CRepr]
		public struct IWebProxy : IDispatch
		{
			public const new Guid IID = .(0x174c81fe, 0xaecd, 0x4dae, 0xb8, 0xa0, 0x2c, 0x63, 0x18, 0xdd, 0x86, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Address(out BSTR retval) mut => VT.get_Address(ref this, out retval);
			public HResult put_Address(BSTR value) mut => VT.put_Address(ref this, value);
			public HResult get_BypassList(out IStringCollection* retval) mut => VT.get_BypassList(ref this, out retval);
			public HResult put_BypassList(ref IStringCollection value) mut => VT.put_BypassList(ref this, ref value);
			public HResult get_BypassProxyOnLocal(out int16 retval) mut => VT.get_BypassProxyOnLocal(ref this, out retval);
			public HResult put_BypassProxyOnLocal(int16 value) mut => VT.put_BypassProxyOnLocal(ref this, value);
			public HResult get_ReadOnly(out int16 retval) mut => VT.get_ReadOnly(ref this, out retval);
			public HResult get_UserName(out BSTR retval) mut => VT.get_UserName(ref this, out retval);
			public HResult put_UserName(BSTR value) mut => VT.put_UserName(ref this, value);
			public HResult SetPassword(BSTR value) mut => VT.SetPassword(ref this, value);
			public HResult PromptForCredentials(ref IUnknown parentWindow, BSTR title) mut => VT.PromptForCredentials(ref this, ref parentWindow, title);
			public HResult PromptForCredentialsFromHwnd(HWnd parentWindow, BSTR title) mut => VT.PromptForCredentialsFromHwnd(ref this, parentWindow, title);
			public HResult get_AutoDetect(out int16 retval) mut => VT.get_AutoDetect(ref this, out retval);
			public HResult put_AutoDetect(int16 value) mut => VT.put_AutoDetect(ref this, value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, out BSTR retval) get_Address;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, BSTR value) put_Address;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, out IStringCollection* retval) get_BypassList;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, ref IStringCollection value) put_BypassList;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, out int16 retval) get_BypassProxyOnLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, int16 value) put_BypassProxyOnLocal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, out int16 retval) get_ReadOnly;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, out BSTR retval) get_UserName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, BSTR value) put_UserName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, BSTR value) SetPassword;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, ref IUnknown parentWindow, BSTR title) PromptForCredentials;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, HWnd parentWindow, BSTR title) PromptForCredentialsFromHwnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, out int16 retval) get_AutoDetect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebProxy self, int16 value) put_AutoDetect;
			}
		}
		[CRepr]
		public struct ISystemInformation : IDispatch
		{
			public const new Guid IID = .(0xade87bf7, 0x7b56, 0x4275, 0x8f, 0xab, 0xb9, 0xb0, 0xe5, 0x91, 0x84, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_OemHardwareSupportLink(out BSTR retval) mut => VT.get_OemHardwareSupportLink(ref this, out retval);
			public HResult get_RebootRequired(out int16 retval) mut => VT.get_RebootRequired(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISystemInformation self, out BSTR retval) get_OemHardwareSupportLink;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISystemInformation self, out int16 retval) get_RebootRequired;
			}
		}
		[CRepr]
		public struct IWindowsUpdateAgentInfo : IDispatch
		{
			public const new Guid IID = .(0x85713fa1, 0x7796, 0x4fa2, 0xbe, 0x3b, 0xe2, 0xd6, 0x12, 0x4d, 0xd3, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetInfo(VARIANT varInfoIdentifier, out VARIANT retval) mut => VT.GetInfo(ref this, varInfoIdentifier, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsUpdateAgentInfo self, VARIANT varInfoIdentifier, out VARIANT retval) GetInfo;
			}
		}
		[CRepr]
		public struct IAutomaticUpdatesResults : IDispatch
		{
			public const new Guid IID = .(0xe7a4d634, 0x7942, 0x4dd9, 0xa1, 0x11, 0x82, 0x22, 0x8b, 0xa3, 0x39, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_LastSearchSuccessDate(out VARIANT retval) mut => VT.get_LastSearchSuccessDate(ref this, out retval);
			public HResult get_LastInstallationSuccessDate(out VARIANT retval) mut => VT.get_LastInstallationSuccessDate(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesResults self, out VARIANT retval) get_LastSearchSuccessDate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesResults self, out VARIANT retval) get_LastInstallationSuccessDate;
			}
		}
		[CRepr]
		public struct IAutomaticUpdatesSettings : IDispatch
		{
			public const new Guid IID = .(0x2ee48f22, 0xaf3c, 0x405f, 0x89, 0x70, 0xf7, 0x1b, 0xe1, 0x2e, 0xe9, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_NotificationLevel(out AutomaticUpdatesNotificationLevel retval) mut => VT.get_NotificationLevel(ref this, out retval);
			public HResult put_NotificationLevel(AutomaticUpdatesNotificationLevel value) mut => VT.put_NotificationLevel(ref this, value);
			public HResult get_ReadOnly(out int16 retval) mut => VT.get_ReadOnly(ref this, out retval);
			public HResult get_Required(out int16 retval) mut => VT.get_Required(ref this, out retval);
			public HResult get_ScheduledInstallationDay(out AutomaticUpdatesScheduledInstallationDay retval) mut => VT.get_ScheduledInstallationDay(ref this, out retval);
			public HResult put_ScheduledInstallationDay(AutomaticUpdatesScheduledInstallationDay value) mut => VT.put_ScheduledInstallationDay(ref this, value);
			public HResult get_ScheduledInstallationTime(out int32 retval) mut => VT.get_ScheduledInstallationTime(ref this, out retval);
			public HResult put_ScheduledInstallationTime(int32 value) mut => VT.put_ScheduledInstallationTime(ref this, value);
			public HResult Refresh() mut => VT.Refresh(ref this);
			public HResult Save() mut => VT.Save(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings self, out AutomaticUpdatesNotificationLevel retval) get_NotificationLevel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings self, AutomaticUpdatesNotificationLevel value) put_NotificationLevel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings self, out int16 retval) get_ReadOnly;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings self, out int16 retval) get_Required;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings self, out AutomaticUpdatesScheduledInstallationDay retval) get_ScheduledInstallationDay;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings self, AutomaticUpdatesScheduledInstallationDay value) put_ScheduledInstallationDay;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings self, out int32 retval) get_ScheduledInstallationTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings self, int32 value) put_ScheduledInstallationTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings self) Refresh;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings self) Save;
			}
		}
		[CRepr]
		public struct IAutomaticUpdatesSettings2 : IAutomaticUpdatesSettings
		{
			public const new Guid IID = .(0x6abc136a, 0xc3ca, 0x4384, 0x81, 0x71, 0xcb, 0x2b, 0x1e, 0x59, 0xb8, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_IncludeRecommendedUpdates(out int16 retval) mut => VT.get_IncludeRecommendedUpdates(ref this, out retval);
			public HResult put_IncludeRecommendedUpdates(int16 value) mut => VT.put_IncludeRecommendedUpdates(ref this, value);
			public HResult CheckPermission(AutomaticUpdatesUserType userType, AutomaticUpdatesPermissionType permissionType, out int16 userHasPermission) mut => VT.CheckPermission(ref this, userType, permissionType, out userHasPermission);

			[CRepr]
			public struct VTable : IAutomaticUpdatesSettings.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings2 self, out int16 retval) get_IncludeRecommendedUpdates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings2 self, int16 value) put_IncludeRecommendedUpdates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings2 self, AutomaticUpdatesUserType userType, AutomaticUpdatesPermissionType permissionType, out int16 userHasPermission) CheckPermission;
			}
		}
		[CRepr]
		public struct IAutomaticUpdatesSettings3 : IAutomaticUpdatesSettings2
		{
			public const new Guid IID = .(0xb587f5c3, 0xf57e, 0x485f, 0xbb, 0xf5, 0x0d, 0x18, 0x1c, 0x5c, 0xd0, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_NonAdministratorsElevated(out int16 retval) mut => VT.get_NonAdministratorsElevated(ref this, out retval);
			public HResult put_NonAdministratorsElevated(int16 value) mut => VT.put_NonAdministratorsElevated(ref this, value);
			public HResult get_FeaturedUpdatesEnabled(out int16 retval) mut => VT.get_FeaturedUpdatesEnabled(ref this, out retval);
			public HResult put_FeaturedUpdatesEnabled(int16 value) mut => VT.put_FeaturedUpdatesEnabled(ref this, value);

			[CRepr]
			public struct VTable : IAutomaticUpdatesSettings2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings3 self, out int16 retval) get_NonAdministratorsElevated;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings3 self, int16 value) put_NonAdministratorsElevated;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings3 self, out int16 retval) get_FeaturedUpdatesEnabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdatesSettings3 self, int16 value) put_FeaturedUpdatesEnabled;
			}
		}
		[CRepr]
		public struct IAutomaticUpdates : IDispatch
		{
			public const new Guid IID = .(0x673425bf, 0xc082, 0x4c7c, 0xbd, 0xfd, 0x56, 0x94, 0x64, 0xb8, 0xe0, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult DetectNow() mut => VT.DetectNow(ref this);
			public HResult Pause() mut => VT.Pause(ref this);
			public HResult Resume() mut => VT.Resume(ref this);
			public HResult ShowSettingsDialog() mut => VT.ShowSettingsDialog(ref this);
			public HResult get_Settings(out IAutomaticUpdatesSettings* retval) mut => VT.get_Settings(ref this, out retval);
			public HResult get_ServiceEnabled(out int16 retval) mut => VT.get_ServiceEnabled(ref this, out retval);
			public HResult EnableService() mut => VT.EnableService(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdates self) DetectNow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdates self) Pause;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdates self) Resume;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdates self) ShowSettingsDialog;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdates self, out IAutomaticUpdatesSettings* retval) get_Settings;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdates self, out int16 retval) get_ServiceEnabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdates self) EnableService;
			}
		}
		[CRepr]
		public struct IAutomaticUpdates2 : IAutomaticUpdates
		{
			public const new Guid IID = .(0x4a2f5c31, 0xcfd9, 0x410e, 0xb7, 0xfb, 0x29, 0xa6, 0x53, 0x97, 0x3a, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Results(out IAutomaticUpdatesResults* retval) mut => VT.get_Results(ref this, out retval);

			[CRepr]
			public struct VTable : IAutomaticUpdates.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IAutomaticUpdates2 self, out IAutomaticUpdatesResults* retval) get_Results;
			}
		}
		[CRepr]
		public struct IUpdateIdentity : IDispatch
		{
			public const new Guid IID = .(0x46297823, 0x9940, 0x4c09, 0xae, 0xd9, 0xcd, 0x3e, 0xa6, 0xd0, 0x59, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_RevisionNumber(out int32 retval) mut => VT.get_RevisionNumber(ref this, out retval);
			public HResult get_UpdateID(out BSTR retval) mut => VT.get_UpdateID(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateIdentity self, out int32 retval) get_RevisionNumber;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateIdentity self, out BSTR retval) get_UpdateID;
			}
		}
		[CRepr]
		public struct IImageInformation : IDispatch
		{
			public const new Guid IID = .(0x7c907864, 0x346c, 0x4aeb, 0x8f, 0x3f, 0x57, 0xda, 0x28, 0x9f, 0x96, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_AltText(out BSTR retval) mut => VT.get_AltText(ref this, out retval);
			public HResult get_Height(out int32 retval) mut => VT.get_Height(ref this, out retval);
			public HResult get_Source(out BSTR retval) mut => VT.get_Source(ref this, out retval);
			public HResult get_Width(out int32 retval) mut => VT.get_Width(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IImageInformation self, out BSTR retval) get_AltText;
				public new function [CallingConvention(.Stdcall)] HResult(ref IImageInformation self, out int32 retval) get_Height;
				public new function [CallingConvention(.Stdcall)] HResult(ref IImageInformation self, out BSTR retval) get_Source;
				public new function [CallingConvention(.Stdcall)] HResult(ref IImageInformation self, out int32 retval) get_Width;
			}
		}
		[CRepr]
		public struct ICategory : IDispatch
		{
			public const new Guid IID = .(0x81ddc1b8, 0x9d35, 0x47a6, 0xb4, 0x71, 0x5b, 0x80, 0xf5, 0x19, 0x22, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Name(out BSTR retval) mut => VT.get_Name(ref this, out retval);
			public HResult get_CategoryID(out BSTR retval) mut => VT.get_CategoryID(ref this, out retval);
			public HResult get_Children(out ICategoryCollection* retval) mut => VT.get_Children(ref this, out retval);
			public HResult get_Description(out BSTR retval) mut => VT.get_Description(ref this, out retval);
			public HResult get_Image(out IImageInformation* retval) mut => VT.get_Image(ref this, out retval);
			public HResult get_Order(out int32 retval) mut => VT.get_Order(ref this, out retval);
			public HResult get_Parent(out ICategory* retval) mut => VT.get_Parent(ref this, out retval);
			public HResult get_Type(out BSTR retval) mut => VT.get_Type(ref this, out retval);
			public HResult get_Updates(out IUpdateCollection* retval) mut => VT.get_Updates(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICategory self, out BSTR retval) get_Name;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICategory self, out BSTR retval) get_CategoryID;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICategory self, out ICategoryCollection* retval) get_Children;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICategory self, out BSTR retval) get_Description;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICategory self, out IImageInformation* retval) get_Image;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICategory self, out int32 retval) get_Order;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICategory self, out ICategory* retval) get_Parent;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICategory self, out BSTR retval) get_Type;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICategory self, out IUpdateCollection* retval) get_Updates;
			}
		}
		[CRepr]
		public struct ICategoryCollection : IDispatch
		{
			public const new Guid IID = .(0x3a56bfb8, 0x576c, 0x43f7, 0x93, 0x35, 0xfe, 0x48, 0x38, 0xfd, 0x7e, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Item(int32 index, out ICategory* retval) mut => VT.get_Item(ref this, index, out retval);
			public HResult get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
			public HResult get_Count(out int32 retval) mut => VT.get_Count(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICategoryCollection self, int32 index, out ICategory* retval) get_Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICategoryCollection self, out IUnknown* retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICategoryCollection self, out int32 retval) get_Count;
			}
		}
		[CRepr]
		public struct IInstallationBehavior : IDispatch
		{
			public const new Guid IID = .(0xd9a59339, 0xe245, 0x4dbd, 0x96, 0x86, 0x4d, 0x57, 0x63, 0xe3, 0x96, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_CanRequestUserInput(out int16 retval) mut => VT.get_CanRequestUserInput(ref this, out retval);
			public HResult get_Impact(out InstallationImpact retval) mut => VT.get_Impact(ref this, out retval);
			public HResult get_RebootBehavior(out InstallationRebootBehavior retval) mut => VT.get_RebootBehavior(ref this, out retval);
			public HResult get_RequiresNetworkConnectivity(out int16 retval) mut => VT.get_RequiresNetworkConnectivity(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationBehavior self, out int16 retval) get_CanRequestUserInput;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationBehavior self, out InstallationImpact retval) get_Impact;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationBehavior self, out InstallationRebootBehavior retval) get_RebootBehavior;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationBehavior self, out int16 retval) get_RequiresNetworkConnectivity;
			}
		}
		[CRepr]
		public struct IUpdateDownloadContent : IDispatch
		{
			public const new Guid IID = .(0x54a2cb2d, 0x9a0c, 0x48b6, 0x8a, 0x50, 0x9a, 0xbb, 0x69, 0xee, 0x2d, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_DownloadUrl(out BSTR retval) mut => VT.get_DownloadUrl(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloadContent self, out BSTR retval) get_DownloadUrl;
			}
		}
		[CRepr]
		public struct IUpdateDownloadContent2 : IUpdateDownloadContent
		{
			public const new Guid IID = .(0xc97ad11b, 0xf257, 0x420b, 0x9d, 0x9f, 0x37, 0x7f, 0x73, 0x3f, 0x6f, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_IsDeltaCompressedContent(out int16 retval) mut => VT.get_IsDeltaCompressedContent(ref this, out retval);

			[CRepr]
			public struct VTable : IUpdateDownloadContent.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloadContent2 self, out int16 retval) get_IsDeltaCompressedContent;
			}
		}
		[CRepr]
		public struct IUpdateDownloadContentCollection : IDispatch
		{
			public const new Guid IID = .(0xbc5513c8, 0xb3b8, 0x4bf7, 0xa4, 0xd4, 0x36, 0x1c, 0x0d, 0x8c, 0x88, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Item(int32 index, out IUpdateDownloadContent* retval) mut => VT.get_Item(ref this, index, out retval);
			public HResult get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
			public HResult get_Count(out int32 retval) mut => VT.get_Count(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloadContentCollection self, int32 index, out IUpdateDownloadContent* retval) get_Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloadContentCollection self, out IUnknown* retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloadContentCollection self, out int32 retval) get_Count;
			}
		}
		[CRepr]
		public struct IUpdate : IDispatch
		{
			public const new Guid IID = .(0x6a92b07a, 0xd821, 0x4682, 0xb4, 0x23, 0x5c, 0x80, 0x50, 0x22, 0xcc, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Title(out BSTR retval) mut => VT.get_Title(ref this, out retval);
			public HResult get_AutoSelectOnWebSites(out int16 retval) mut => VT.get_AutoSelectOnWebSites(ref this, out retval);
			public HResult get_BundledUpdates(out IUpdateCollection* retval) mut => VT.get_BundledUpdates(ref this, out retval);
			public HResult get_CanRequireSource(out int16 retval) mut => VT.get_CanRequireSource(ref this, out retval);
			public HResult get_Categories(out ICategoryCollection* retval) mut => VT.get_Categories(ref this, out retval);
			public HResult get_Deadline(out VARIANT retval) mut => VT.get_Deadline(ref this, out retval);
			public HResult get_DeltaCompressedContentAvailable(out int16 retval) mut => VT.get_DeltaCompressedContentAvailable(ref this, out retval);
			public HResult get_DeltaCompressedContentPreferred(out int16 retval) mut => VT.get_DeltaCompressedContentPreferred(ref this, out retval);
			public HResult get_Description(out BSTR retval) mut => VT.get_Description(ref this, out retval);
			public HResult get_EulaAccepted(out int16 retval) mut => VT.get_EulaAccepted(ref this, out retval);
			public HResult get_EulaText(out BSTR retval) mut => VT.get_EulaText(ref this, out retval);
			public HResult get_HandlerID(out BSTR retval) mut => VT.get_HandlerID(ref this, out retval);
			public HResult get_Identity(out IUpdateIdentity* retval) mut => VT.get_Identity(ref this, out retval);
			public HResult get_Image(out IImageInformation* retval) mut => VT.get_Image(ref this, out retval);
			public HResult get_InstallationBehavior(out IInstallationBehavior* retval) mut => VT.get_InstallationBehavior(ref this, out retval);
			public HResult get_IsBeta(out int16 retval) mut => VT.get_IsBeta(ref this, out retval);
			public HResult get_IsDownloaded(out int16 retval) mut => VT.get_IsDownloaded(ref this, out retval);
			public HResult get_IsHidden(out int16 retval) mut => VT.get_IsHidden(ref this, out retval);
			public HResult put_IsHidden(int16 value) mut => VT.put_IsHidden(ref this, value);
			public HResult get_IsInstalled(out int16 retval) mut => VT.get_IsInstalled(ref this, out retval);
			public HResult get_IsMandatory(out int16 retval) mut => VT.get_IsMandatory(ref this, out retval);
			public HResult get_IsUninstallable(out int16 retval) mut => VT.get_IsUninstallable(ref this, out retval);
			public HResult get_Languages(out IStringCollection* retval) mut => VT.get_Languages(ref this, out retval);
			public HResult get_LastDeploymentChangeTime(out double retval) mut => VT.get_LastDeploymentChangeTime(ref this, out retval);
			public HResult get_MaxDownloadSize(out DECIMAL retval) mut => VT.get_MaxDownloadSize(ref this, out retval);
			public HResult get_MinDownloadSize(out DECIMAL retval) mut => VT.get_MinDownloadSize(ref this, out retval);
			public HResult get_MoreInfoUrls(out IStringCollection* retval) mut => VT.get_MoreInfoUrls(ref this, out retval);
			public HResult get_MsrcSeverity(out BSTR retval) mut => VT.get_MsrcSeverity(ref this, out retval);
			public HResult get_RecommendedCpuSpeed(out int32 retval) mut => VT.get_RecommendedCpuSpeed(ref this, out retval);
			public HResult get_RecommendedHardDiskSpace(out int32 retval) mut => VT.get_RecommendedHardDiskSpace(ref this, out retval);
			public HResult get_RecommendedMemory(out int32 retval) mut => VT.get_RecommendedMemory(ref this, out retval);
			public HResult get_ReleaseNotes(out BSTR retval) mut => VT.get_ReleaseNotes(ref this, out retval);
			public HResult get_SecurityBulletinIDs(out IStringCollection* retval) mut => VT.get_SecurityBulletinIDs(ref this, out retval);
			public HResult get_SupersededUpdateIDs(out IStringCollection* retval) mut => VT.get_SupersededUpdateIDs(ref this, out retval);
			public HResult get_SupportUrl(out BSTR retval) mut => VT.get_SupportUrl(ref this, out retval);
			public HResult get_Type(out UpdateType retval) mut => VT.get_Type(ref this, out retval);
			public HResult get_UninstallationNotes(out BSTR retval) mut => VT.get_UninstallationNotes(ref this, out retval);
			public HResult get_UninstallationBehavior(out IInstallationBehavior* retval) mut => VT.get_UninstallationBehavior(ref this, out retval);
			public HResult get_UninstallationSteps(out IStringCollection* retval) mut => VT.get_UninstallationSteps(ref this, out retval);
			public HResult get_KBArticleIDs(out IStringCollection* retval) mut => VT.get_KBArticleIDs(ref this, out retval);
			public HResult AcceptEula() mut => VT.AcceptEula(ref this);
			public HResult get_DeploymentAction(out DeploymentAction retval) mut => VT.get_DeploymentAction(ref this, out retval);
			public HResult CopyFromCache(BSTR path, int16 toExtractCabFiles) mut => VT.CopyFromCache(ref this, path, toExtractCabFiles);
			public HResult get_DownloadPriority(out DownloadPriority retval) mut => VT.get_DownloadPriority(ref this, out retval);
			public HResult get_DownloadContents(out IUpdateDownloadContentCollection* retval) mut => VT.get_DownloadContents(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out BSTR retval) get_Title;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int16 retval) get_AutoSelectOnWebSites;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out IUpdateCollection* retval) get_BundledUpdates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int16 retval) get_CanRequireSource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out ICategoryCollection* retval) get_Categories;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out VARIANT retval) get_Deadline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int16 retval) get_DeltaCompressedContentAvailable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int16 retval) get_DeltaCompressedContentPreferred;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out BSTR retval) get_Description;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int16 retval) get_EulaAccepted;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out BSTR retval) get_EulaText;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out BSTR retval) get_HandlerID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out IUpdateIdentity* retval) get_Identity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out IImageInformation* retval) get_Image;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out IInstallationBehavior* retval) get_InstallationBehavior;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int16 retval) get_IsBeta;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int16 retval) get_IsDownloaded;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int16 retval) get_IsHidden;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, int16 value) put_IsHidden;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int16 retval) get_IsInstalled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int16 retval) get_IsMandatory;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int16 retval) get_IsUninstallable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out IStringCollection* retval) get_Languages;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out double retval) get_LastDeploymentChangeTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out DECIMAL retval) get_MaxDownloadSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out DECIMAL retval) get_MinDownloadSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out IStringCollection* retval) get_MoreInfoUrls;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out BSTR retval) get_MsrcSeverity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int32 retval) get_RecommendedCpuSpeed;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int32 retval) get_RecommendedHardDiskSpace;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out int32 retval) get_RecommendedMemory;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out BSTR retval) get_ReleaseNotes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out IStringCollection* retval) get_SecurityBulletinIDs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out IStringCollection* retval) get_SupersededUpdateIDs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out BSTR retval) get_SupportUrl;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out UpdateType retval) get_Type;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out BSTR retval) get_UninstallationNotes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out IInstallationBehavior* retval) get_UninstallationBehavior;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out IStringCollection* retval) get_UninstallationSteps;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out IStringCollection* retval) get_KBArticleIDs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self) AcceptEula;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out DeploymentAction retval) get_DeploymentAction;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, BSTR path, int16 toExtractCabFiles) CopyFromCache;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out DownloadPriority retval) get_DownloadPriority;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate self, out IUpdateDownloadContentCollection* retval) get_DownloadContents;
			}
		}
		[CRepr]
		public struct IWindowsDriverUpdate : IUpdate
		{
			public const new Guid IID = .(0xb383cd1a, 0x5ce9, 0x4504, 0x9f, 0x63, 0x76, 0x4b, 0x12, 0x36, 0xf1, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_DriverClass(out BSTR retval) mut => VT.get_DriverClass(ref this, out retval);
			public HResult get_DriverHardwareID(out BSTR retval) mut => VT.get_DriverHardwareID(ref this, out retval);
			public HResult get_DriverManufacturer(out BSTR retval) mut => VT.get_DriverManufacturer(ref this, out retval);
			public HResult get_DriverModel(out BSTR retval) mut => VT.get_DriverModel(ref this, out retval);
			public HResult get_DriverProvider(out BSTR retval) mut => VT.get_DriverProvider(ref this, out retval);
			public HResult get_DriverVerDate(out double retval) mut => VT.get_DriverVerDate(ref this, out retval);
			public HResult get_DeviceProblemNumber(out int32 retval) mut => VT.get_DeviceProblemNumber(ref this, out retval);
			public HResult get_DeviceStatus(out int32 retval) mut => VT.get_DeviceStatus(ref this, out retval);

			[CRepr]
			public struct VTable : IUpdate.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate self, out BSTR retval) get_DriverClass;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate self, out BSTR retval) get_DriverHardwareID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate self, out BSTR retval) get_DriverManufacturer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate self, out BSTR retval) get_DriverModel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate self, out BSTR retval) get_DriverProvider;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate self, out double retval) get_DriverVerDate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate self, out int32 retval) get_DeviceProblemNumber;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate self, out int32 retval) get_DeviceStatus;
			}
		}
		[CRepr]
		public struct IUpdate2 : IUpdate
		{
			public const new Guid IID = .(0x144fe9b0, 0xd23d, 0x4a8b, 0x86, 0x34, 0xfb, 0x44, 0x57, 0x53, 0x3b, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_RebootRequired(out int16 retval) mut => VT.get_RebootRequired(ref this, out retval);
			public HResult get_IsPresent(out int16 retval) mut => VT.get_IsPresent(ref this, out retval);
			public HResult get_CveIDs(out IStringCollection* retval) mut => VT.get_CveIDs(ref this, out retval);
			public HResult CopyToCache(ref IStringCollection pFiles) mut => VT.CopyToCache(ref this, ref pFiles);

			[CRepr]
			public struct VTable : IUpdate.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate2 self, out int16 retval) get_RebootRequired;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate2 self, out int16 retval) get_IsPresent;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate2 self, out IStringCollection* retval) get_CveIDs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate2 self, ref IStringCollection pFiles) CopyToCache;
			}
		}
		[CRepr]
		public struct IUpdate3 : IUpdate2
		{
			public const new Guid IID = .(0x112eda6b, 0x95b3, 0x476f, 0x9d, 0x90, 0xae, 0xe8, 0x2c, 0x6b, 0x81, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_BrowseOnly(out int16 retval) mut => VT.get_BrowseOnly(ref this, out retval);

			[CRepr]
			public struct VTable : IUpdate2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate3 self, out int16 retval) get_BrowseOnly;
			}
		}
		[CRepr]
		public struct IUpdate4 : IUpdate3
		{
			public const new Guid IID = .(0x27e94b0d, 0x5139, 0x49a2, 0x9a, 0x61, 0x93, 0x52, 0x2d, 0xc5, 0x46, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_PerUser(out int16 retval) mut => VT.get_PerUser(ref this, out retval);

			[CRepr]
			public struct VTable : IUpdate3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate4 self, out int16 retval) get_PerUser;
			}
		}
		[CRepr]
		public struct IUpdate5 : IUpdate4
		{
			public const new Guid IID = .(0xc1c2f21a, 0xd2f4, 0x4902, 0xb5, 0xc6, 0x8a, 0x08, 0x1c, 0x19, 0xa8, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_AutoSelection(out AutoSelectionMode retval) mut => VT.get_AutoSelection(ref this, out retval);
			public HResult get_AutoDownload(out AutoDownloadMode retval) mut => VT.get_AutoDownload(ref this, out retval);

			[CRepr]
			public struct VTable : IUpdate4.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate5 self, out AutoSelectionMode retval) get_AutoSelection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdate5 self, out AutoDownloadMode retval) get_AutoDownload;
			}
		}
		[CRepr]
		public struct IWindowsDriverUpdate2 : IWindowsDriverUpdate
		{
			public const new Guid IID = .(0x615c4269, 0x7a48, 0x43bd, 0x96, 0xb7, 0xbf, 0x6c, 0xa2, 0x7d, 0x6c, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_RebootRequired(out int16 retval) mut => VT.get_RebootRequired(ref this, out retval);
			public HResult get_IsPresent(out int16 retval) mut => VT.get_IsPresent(ref this, out retval);
			public HResult get_CveIDs(out IStringCollection* retval) mut => VT.get_CveIDs(ref this, out retval);
			public HResult CopyToCache(ref IStringCollection pFiles) mut => VT.CopyToCache(ref this, ref pFiles);

			[CRepr]
			public struct VTable : IWindowsDriverUpdate.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate2 self, out int16 retval) get_RebootRequired;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate2 self, out int16 retval) get_IsPresent;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate2 self, out IStringCollection* retval) get_CveIDs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate2 self, ref IStringCollection pFiles) CopyToCache;
			}
		}
		[CRepr]
		public struct IWindowsDriverUpdate3 : IWindowsDriverUpdate2
		{
			public const new Guid IID = .(0x49ebd502, 0x4a96, 0x41bd, 0x9e, 0x3e, 0x4c, 0x50, 0x57, 0xf4, 0x25, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_BrowseOnly(out int16 retval) mut => VT.get_BrowseOnly(ref this, out retval);

			[CRepr]
			public struct VTable : IWindowsDriverUpdate2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate3 self, out int16 retval) get_BrowseOnly;
			}
		}
		[CRepr]
		public struct IWindowsDriverUpdateEntry : IDispatch
		{
			public const new Guid IID = .(0xed8bfe40, 0xa60b, 0x42ea, 0x96, 0x52, 0x81, 0x7d, 0xfc, 0xfa, 0x23, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_DriverClass(out BSTR retval) mut => VT.get_DriverClass(ref this, out retval);
			public HResult get_DriverHardwareID(out BSTR retval) mut => VT.get_DriverHardwareID(ref this, out retval);
			public HResult get_DriverManufacturer(out BSTR retval) mut => VT.get_DriverManufacturer(ref this, out retval);
			public HResult get_DriverModel(out BSTR retval) mut => VT.get_DriverModel(ref this, out retval);
			public HResult get_DriverProvider(out BSTR retval) mut => VT.get_DriverProvider(ref this, out retval);
			public HResult get_DriverVerDate(out double retval) mut => VT.get_DriverVerDate(ref this, out retval);
			public HResult get_DeviceProblemNumber(out int32 retval) mut => VT.get_DeviceProblemNumber(ref this, out retval);
			public HResult get_DeviceStatus(out int32 retval) mut => VT.get_DeviceStatus(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdateEntry self, out BSTR retval) get_DriverClass;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdateEntry self, out BSTR retval) get_DriverHardwareID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdateEntry self, out BSTR retval) get_DriverManufacturer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdateEntry self, out BSTR retval) get_DriverModel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdateEntry self, out BSTR retval) get_DriverProvider;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdateEntry self, out double retval) get_DriverVerDate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdateEntry self, out int32 retval) get_DeviceProblemNumber;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdateEntry self, out int32 retval) get_DeviceStatus;
			}
		}
		[CRepr]
		public struct IWindowsDriverUpdateEntryCollection : IDispatch
		{
			public const new Guid IID = .(0x0d521700, 0xa372, 0x4bef, 0x82, 0x8b, 0x3d, 0x00, 0xc1, 0x0a, 0xde, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Item(int32 index, out IWindowsDriverUpdateEntry* retval) mut => VT.get_Item(ref this, index, out retval);
			public HResult get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
			public HResult get_Count(out int32 retval) mut => VT.get_Count(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdateEntryCollection self, int32 index, out IWindowsDriverUpdateEntry* retval) get_Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdateEntryCollection self, out IUnknown* retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdateEntryCollection self, out int32 retval) get_Count;
			}
		}
		[CRepr]
		public struct IWindowsDriverUpdate4 : IWindowsDriverUpdate3
		{
			public const new Guid IID = .(0x004c6a2b, 0x0c19, 0x4c69, 0x9f, 0x5c, 0xa2, 0x69, 0xb2, 0x56, 0x0d, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_WindowsDriverUpdateEntries(out IWindowsDriverUpdateEntryCollection* retval) mut => VT.get_WindowsDriverUpdateEntries(ref this, out retval);
			public HResult get_PerUser(out int16 retval) mut => VT.get_PerUser(ref this, out retval);

			[CRepr]
			public struct VTable : IWindowsDriverUpdate3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate4 self, out IWindowsDriverUpdateEntryCollection* retval) get_WindowsDriverUpdateEntries;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate4 self, out int16 retval) get_PerUser;
			}
		}
		[CRepr]
		public struct IWindowsDriverUpdate5 : IWindowsDriverUpdate4
		{
			public const new Guid IID = .(0x70cf5c82, 0x8642, 0x42bb, 0x9d, 0xbc, 0x0c, 0xfd, 0x26, 0x3c, 0x6c, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_AutoSelection(out AutoSelectionMode retval) mut => VT.get_AutoSelection(ref this, out retval);
			public HResult get_AutoDownload(out AutoDownloadMode retval) mut => VT.get_AutoDownload(ref this, out retval);

			[CRepr]
			public struct VTable : IWindowsDriverUpdate4.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate5 self, out AutoSelectionMode retval) get_AutoSelection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWindowsDriverUpdate5 self, out AutoDownloadMode retval) get_AutoDownload;
			}
		}
		[CRepr]
		public struct IUpdateCollection : IDispatch
		{
			public const new Guid IID = .(0x07f7438c, 0x7709, 0x4ca5, 0xb5, 0x18, 0x91, 0x27, 0x92, 0x88, 0x13, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Item(int32 index, out IUpdate* retval) mut => VT.get_Item(ref this, index, out retval);
			public HResult put_Item(int32 index, ref IUpdate value) mut => VT.put_Item(ref this, index, ref value);
			public HResult get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
			public HResult get_Count(out int32 retval) mut => VT.get_Count(ref this, out retval);
			public HResult get_ReadOnly(out int16 retval) mut => VT.get_ReadOnly(ref this, out retval);
			public HResult Add(ref IUpdate value, out int32 retval) mut => VT.Add(ref this, ref value, out retval);
			public HResult Clear() mut => VT.Clear(ref this);
			public HResult Copy(out IUpdateCollection* retval) mut => VT.Copy(ref this, out retval);
			public HResult Insert(int32 index, ref IUpdate value) mut => VT.Insert(ref this, index, ref value);
			public HResult RemoveAt(int32 index) mut => VT.RemoveAt(ref this, index);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateCollection self, int32 index, out IUpdate* retval) get_Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateCollection self, int32 index, ref IUpdate value) put_Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateCollection self, out IUnknown* retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateCollection self, out int32 retval) get_Count;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateCollection self, out int16 retval) get_ReadOnly;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateCollection self, ref IUpdate value, out int32 retval) Add;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateCollection self) Clear;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateCollection self, out IUpdateCollection* retval) Copy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateCollection self, int32 index, ref IUpdate value) Insert;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateCollection self, int32 index) RemoveAt;
			}
		}
		[CRepr]
		public struct IUpdateException : IDispatch
		{
			public const new Guid IID = .(0xa376dd5e, 0x09d4, 0x427f, 0xaf, 0x7c, 0xfe, 0xd5, 0xb6, 0xe1, 0xc1, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Message(out BSTR retval) mut => VT.get_Message(ref this, out retval);
			public HResult get_HResult(out int32 retval) mut => VT.get_HResult(ref this, out retval);
			public HResult get_Context(out UpdateExceptionContext retval) mut => VT.get_Context(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateException self, out BSTR retval) get_Message;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateException self, out int32 retval) get_HResult;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateException self, out UpdateExceptionContext retval) get_Context;
			}
		}
		[CRepr]
		public struct IInvalidProductLicenseException : IUpdateException
		{
			public const new Guid IID = .(0xa37d00f5, 0x7bb0, 0x4953, 0xb4, 0x14, 0xf9, 0xe9, 0x83, 0x26, 0xf2, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Product(out BSTR retval) mut => VT.get_Product(ref this, out retval);

			[CRepr]
			public struct VTable : IUpdateException.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInvalidProductLicenseException self, out BSTR retval) get_Product;
			}
		}
		[CRepr]
		public struct IUpdateExceptionCollection : IDispatch
		{
			public const new Guid IID = .(0x503626a3, 0x8e14, 0x4729, 0x93, 0x55, 0x0f, 0xe6, 0x64, 0xbd, 0x23, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Item(int32 index, out IUpdateException* retval) mut => VT.get_Item(ref this, index, out retval);
			public HResult get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
			public HResult get_Count(out int32 retval) mut => VT.get_Count(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateExceptionCollection self, int32 index, out IUpdateException* retval) get_Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateExceptionCollection self, out IUnknown* retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateExceptionCollection self, out int32 retval) get_Count;
			}
		}
		[CRepr]
		public struct ISearchResult : IDispatch
		{
			public const new Guid IID = .(0xd40cff62, 0xe08c, 0x4498, 0x94, 0x1a, 0x01, 0xe2, 0x5f, 0x0f, 0xd3, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_ResultCode(out OperationResultCode retval) mut => VT.get_ResultCode(ref this, out retval);
			public HResult get_RootCategories(out ICategoryCollection* retval) mut => VT.get_RootCategories(ref this, out retval);
			public HResult get_Updates(out IUpdateCollection* retval) mut => VT.get_Updates(ref this, out retval);
			public HResult get_Warnings(out IUpdateExceptionCollection* retval) mut => VT.get_Warnings(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISearchResult self, out OperationResultCode retval) get_ResultCode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISearchResult self, out ICategoryCollection* retval) get_RootCategories;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISearchResult self, out IUpdateCollection* retval) get_Updates;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISearchResult self, out IUpdateExceptionCollection* retval) get_Warnings;
			}
		}
		[CRepr]
		public struct ISearchJob : IDispatch
		{
			public const new Guid IID = .(0x7366ea16, 0x7a1a, 0x4ea2, 0xb0, 0x42, 0x97, 0x3d, 0x3e, 0x9c, 0xd9, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_AsyncState(out VARIANT retval) mut => VT.get_AsyncState(ref this, out retval);
			public HResult get_IsCompleted(out int16 retval) mut => VT.get_IsCompleted(ref this, out retval);
			public HResult CleanUp() mut => VT.CleanUp(ref this);
			public HResult RequestAbort() mut => VT.RequestAbort(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISearchJob self, out VARIANT retval) get_AsyncState;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISearchJob self, out int16 retval) get_IsCompleted;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISearchJob self) CleanUp;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISearchJob self) RequestAbort;
			}
		}
		[CRepr]
		public struct ISearchCompletedCallbackArgs : IDispatch
		{
			public const new Guid IID = .(0xa700a634, 0x2850, 0x4c47, 0x93, 0x8a, 0x9e, 0x4b, 0x6e, 0x5a, 0xf9, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct ISearchCompletedCallback : IUnknown
		{
			public const new Guid IID = .(0x88aee058, 0xd4b0, 0x4725, 0xa2, 0xf1, 0x81, 0x4a, 0x67, 0xae, 0x96, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Invoke(ref ISearchJob searchJob, ref ISearchCompletedCallbackArgs callbackArgs) mut => VT.Invoke(ref this, ref searchJob, ref callbackArgs);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISearchCompletedCallback self, ref ISearchJob searchJob, ref ISearchCompletedCallbackArgs callbackArgs) Invoke;
			}
		}
		[CRepr]
		public struct IUpdateHistoryEntry : IDispatch
		{
			public const new Guid IID = .(0xbe56a644, 0xaf0e, 0x4e0e, 0xa3, 0x11, 0xc1, 0xd8, 0xe6, 0x95, 0xcb, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Operation(out UpdateOperation retval) mut => VT.get_Operation(ref this, out retval);
			public HResult get_ResultCode(out OperationResultCode retval) mut => VT.get_ResultCode(ref this, out retval);
			public HResult get_HResult(out int32 retval) mut => VT.get_HResult(ref this, out retval);
			public HResult get_Date(out double retval) mut => VT.get_Date(ref this, out retval);
			public HResult get_UpdateIdentity(out IUpdateIdentity* retval) mut => VT.get_UpdateIdentity(ref this, out retval);
			public HResult get_Title(out BSTR retval) mut => VT.get_Title(ref this, out retval);
			public HResult get_Description(out BSTR retval) mut => VT.get_Description(ref this, out retval);
			public HResult get_UnmappedResultCode(out int32 retval) mut => VT.get_UnmappedResultCode(ref this, out retval);
			public HResult get_ClientApplicationID(out BSTR retval) mut => VT.get_ClientApplicationID(ref this, out retval);
			public HResult get_ServerSelection(out ServerSelection retval) mut => VT.get_ServerSelection(ref this, out retval);
			public HResult get_ServiceID(out BSTR retval) mut => VT.get_ServiceID(ref this, out retval);
			public HResult get_UninstallationSteps(out IStringCollection* retval) mut => VT.get_UninstallationSteps(ref this, out retval);
			public HResult get_UninstallationNotes(out BSTR retval) mut => VT.get_UninstallationNotes(ref this, out retval);
			public HResult get_SupportUrl(out BSTR retval) mut => VT.get_SupportUrl(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out UpdateOperation retval) get_Operation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out OperationResultCode retval) get_ResultCode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out int32 retval) get_HResult;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out double retval) get_Date;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out IUpdateIdentity* retval) get_UpdateIdentity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out BSTR retval) get_Title;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out BSTR retval) get_Description;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out int32 retval) get_UnmappedResultCode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out BSTR retval) get_ClientApplicationID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out ServerSelection retval) get_ServerSelection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out BSTR retval) get_ServiceID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out IStringCollection* retval) get_UninstallationSteps;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out BSTR retval) get_UninstallationNotes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry self, out BSTR retval) get_SupportUrl;
			}
		}
		[CRepr]
		public struct IUpdateHistoryEntry2 : IUpdateHistoryEntry
		{
			public const new Guid IID = .(0xc2bfb780, 0x4539, 0x4132, 0xab, 0x8c, 0x0a, 0x87, 0x72, 0x01, 0x3a, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Categories(out ICategoryCollection* retval) mut => VT.get_Categories(ref this, out retval);

			[CRepr]
			public struct VTable : IUpdateHistoryEntry.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntry2 self, out ICategoryCollection* retval) get_Categories;
			}
		}
		[CRepr]
		public struct IUpdateHistoryEntryCollection : IDispatch
		{
			public const new Guid IID = .(0xa7f04f3c, 0xa290, 0x435b, 0xaa, 0xdf, 0xa1, 0x16, 0xc3, 0x35, 0x7a, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Item(int32 index, out IUpdateHistoryEntry* retval) mut => VT.get_Item(ref this, index, out retval);
			public HResult get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
			public HResult get_Count(out int32 retval) mut => VT.get_Count(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntryCollection self, int32 index, out IUpdateHistoryEntry* retval) get_Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntryCollection self, out IUnknown* retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateHistoryEntryCollection self, out int32 retval) get_Count;
			}
		}
		[CRepr]
		public struct IUpdateSearcher : IDispatch
		{
			public const new Guid IID = .(0x8f45abf1, 0xf9ae, 0x4b95, 0xa9, 0x33, 0xf0, 0xf6, 0x6e, 0x50, 0x56, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_CanAutomaticallyUpgradeService(out int16 retval) mut => VT.get_CanAutomaticallyUpgradeService(ref this, out retval);
			public HResult put_CanAutomaticallyUpgradeService(int16 value) mut => VT.put_CanAutomaticallyUpgradeService(ref this, value);
			public HResult get_ClientApplicationID(out BSTR retval) mut => VT.get_ClientApplicationID(ref this, out retval);
			public HResult put_ClientApplicationID(BSTR value) mut => VT.put_ClientApplicationID(ref this, value);
			public HResult get_IncludePotentiallySupersededUpdates(out int16 retval) mut => VT.get_IncludePotentiallySupersededUpdates(ref this, out retval);
			public HResult put_IncludePotentiallySupersededUpdates(int16 value) mut => VT.put_IncludePotentiallySupersededUpdates(ref this, value);
			public HResult get_ServerSelection(out ServerSelection retval) mut => VT.get_ServerSelection(ref this, out retval);
			public HResult put_ServerSelection(ServerSelection value) mut => VT.put_ServerSelection(ref this, value);
			public HResult BeginSearch(BSTR criteria, ref IUnknown onCompleted, VARIANT state, out ISearchJob* retval) mut => VT.BeginSearch(ref this, criteria, ref onCompleted, state, out retval);
			public HResult EndSearch(ref ISearchJob searchJob, out ISearchResult* retval) mut => VT.EndSearch(ref this, ref searchJob, out retval);
			public HResult EscapeString(BSTR unescaped, out BSTR retval) mut => VT.EscapeString(ref this, unescaped, out retval);
			public HResult QueryHistory(int32 startIndex, int32 count, out IUpdateHistoryEntryCollection* retval) mut => VT.QueryHistory(ref this, startIndex, count, out retval);
			public HResult Search(BSTR criteria, out ISearchResult* retval) mut => VT.Search(ref this, criteria, out retval);
			public HResult get_Online(out int16 retval) mut => VT.get_Online(ref this, out retval);
			public HResult put_Online(int16 value) mut => VT.put_Online(ref this, value);
			public HResult GetTotalHistoryCount(out int32 retval) mut => VT.GetTotalHistoryCount(ref this, out retval);
			public HResult get_ServiceID(out BSTR retval) mut => VT.get_ServiceID(ref this, out retval);
			public HResult put_ServiceID(BSTR value) mut => VT.put_ServiceID(ref this, value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, out int16 retval) get_CanAutomaticallyUpgradeService;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, int16 value) put_CanAutomaticallyUpgradeService;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, out BSTR retval) get_ClientApplicationID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, BSTR value) put_ClientApplicationID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, out int16 retval) get_IncludePotentiallySupersededUpdates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, int16 value) put_IncludePotentiallySupersededUpdates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, out ServerSelection retval) get_ServerSelection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, ServerSelection value) put_ServerSelection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, BSTR criteria, ref IUnknown onCompleted, VARIANT state, out ISearchJob* retval) BeginSearch;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, ref ISearchJob searchJob, out ISearchResult* retval) EndSearch;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, BSTR unescaped, out BSTR retval) EscapeString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, int32 startIndex, int32 count, out IUpdateHistoryEntryCollection* retval) QueryHistory;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, BSTR criteria, out ISearchResult* retval) Search;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, out int16 retval) get_Online;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, int16 value) put_Online;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, out int32 retval) GetTotalHistoryCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, out BSTR retval) get_ServiceID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher self, BSTR value) put_ServiceID;
			}
		}
		[CRepr]
		public struct IUpdateSearcher2 : IUpdateSearcher
		{
			public const new Guid IID = .(0x4cbdcb2d, 0x1589, 0x4beb, 0xbd, 0x1c, 0x3e, 0x58, 0x2f, 0xf0, 0xad, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_IgnoreDownloadPriority(out int16 retval) mut => VT.get_IgnoreDownloadPriority(ref this, out retval);
			public HResult put_IgnoreDownloadPriority(int16 value) mut => VT.put_IgnoreDownloadPriority(ref this, value);

			[CRepr]
			public struct VTable : IUpdateSearcher.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher2 self, out int16 retval) get_IgnoreDownloadPriority;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher2 self, int16 value) put_IgnoreDownloadPriority;
			}
		}
		[CRepr]
		public struct IUpdateSearcher3 : IUpdateSearcher2
		{
			public const new Guid IID = .(0x04c6895d, 0xeaf2, 0x4034, 0x97, 0xf3, 0x31, 0x1d, 0xe9, 0xbe, 0x41, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_SearchScope(out SearchScope retval) mut => VT.get_SearchScope(ref this, out retval);
			public HResult put_SearchScope(SearchScope value) mut => VT.put_SearchScope(ref this, value);

			[CRepr]
			public struct VTable : IUpdateSearcher2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher3 self, out SearchScope retval) get_SearchScope;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSearcher3 self, SearchScope value) put_SearchScope;
			}
		}
		[CRepr]
		public struct IUpdateDownloadResult : IDispatch
		{
			public const new Guid IID = .(0xbf99af76, 0xb575, 0x42ad, 0x8a, 0xa4, 0x33, 0xcb, 0xb5, 0x47, 0x7a, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_HResult(out int32 retval) mut => VT.get_HResult(ref this, out retval);
			public HResult get_ResultCode(out OperationResultCode retval) mut => VT.get_ResultCode(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloadResult self, out int32 retval) get_HResult;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloadResult self, out OperationResultCode retval) get_ResultCode;
			}
		}
		[CRepr]
		public struct IDownloadResult : IDispatch
		{
			public const new Guid IID = .(0xdaa4fdd0, 0x4727, 0x4dbe, 0xa1, 0xe7, 0x74, 0x5d, 0xca, 0x31, 0x71, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_HResult(out int32 retval) mut => VT.get_HResult(ref this, out retval);
			public HResult get_ResultCode(out OperationResultCode retval) mut => VT.get_ResultCode(ref this, out retval);
			public HResult GetUpdateResult(int32 updateIndex, out IUpdateDownloadResult* retval) mut => VT.GetUpdateResult(ref this, updateIndex, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadResult self, out int32 retval) get_HResult;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadResult self, out OperationResultCode retval) get_ResultCode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadResult self, int32 updateIndex, out IUpdateDownloadResult* retval) GetUpdateResult;
			}
		}
		[CRepr]
		public struct IDownloadProgress : IDispatch
		{
			public const new Guid IID = .(0xd31a5bac, 0xf719, 0x4178, 0x9d, 0xbb, 0x5e, 0x2c, 0xb4, 0x7f, 0xd1, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_CurrentUpdateBytesDownloaded(out DECIMAL retval) mut => VT.get_CurrentUpdateBytesDownloaded(ref this, out retval);
			public HResult get_CurrentUpdateBytesToDownload(out DECIMAL retval) mut => VT.get_CurrentUpdateBytesToDownload(ref this, out retval);
			public HResult get_CurrentUpdateIndex(out int32 retval) mut => VT.get_CurrentUpdateIndex(ref this, out retval);
			public HResult get_PercentComplete(out int32 retval) mut => VT.get_PercentComplete(ref this, out retval);
			public HResult get_TotalBytesDownloaded(out DECIMAL retval) mut => VT.get_TotalBytesDownloaded(ref this, out retval);
			public HResult get_TotalBytesToDownload(out DECIMAL retval) mut => VT.get_TotalBytesToDownload(ref this, out retval);
			public HResult GetUpdateResult(int32 updateIndex, out IUpdateDownloadResult* retval) mut => VT.GetUpdateResult(ref this, updateIndex, out retval);
			public HResult get_CurrentUpdateDownloadPhase(out DownloadPhase retval) mut => VT.get_CurrentUpdateDownloadPhase(ref this, out retval);
			public HResult get_CurrentUpdatePercentComplete(out int32 retval) mut => VT.get_CurrentUpdatePercentComplete(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadProgress self, out DECIMAL retval) get_CurrentUpdateBytesDownloaded;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadProgress self, out DECIMAL retval) get_CurrentUpdateBytesToDownload;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadProgress self, out int32 retval) get_CurrentUpdateIndex;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadProgress self, out int32 retval) get_PercentComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadProgress self, out DECIMAL retval) get_TotalBytesDownloaded;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadProgress self, out DECIMAL retval) get_TotalBytesToDownload;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadProgress self, int32 updateIndex, out IUpdateDownloadResult* retval) GetUpdateResult;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadProgress self, out DownloadPhase retval) get_CurrentUpdateDownloadPhase;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadProgress self, out int32 retval) get_CurrentUpdatePercentComplete;
			}
		}
		[CRepr]
		public struct IDownloadJob : IDispatch
		{
			public const new Guid IID = .(0xc574de85, 0x7358, 0x43f6, 0xaa, 0xe8, 0x86, 0x97, 0xe6, 0x2d, 0x8b, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_AsyncState(out VARIANT retval) mut => VT.get_AsyncState(ref this, out retval);
			public HResult get_IsCompleted(out int16 retval) mut => VT.get_IsCompleted(ref this, out retval);
			public HResult get_Updates(out IUpdateCollection* retval) mut => VT.get_Updates(ref this, out retval);
			public HResult CleanUp() mut => VT.CleanUp(ref this);
			public HResult GetProgress(out IDownloadProgress* retval) mut => VT.GetProgress(ref this, out retval);
			public HResult RequestAbort() mut => VT.RequestAbort(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadJob self, out VARIANT retval) get_AsyncState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadJob self, out int16 retval) get_IsCompleted;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadJob self, out IUpdateCollection* retval) get_Updates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadJob self) CleanUp;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadJob self, out IDownloadProgress* retval) GetProgress;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadJob self) RequestAbort;
			}
		}
		[CRepr]
		public struct IDownloadCompletedCallbackArgs : IDispatch
		{
			public const new Guid IID = .(0xfa565b23, 0x498c, 0x47a0, 0x97, 0x9d, 0xe7, 0xd5, 0xb1, 0x81, 0x33, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IDownloadCompletedCallback : IUnknown
		{
			public const new Guid IID = .(0x77254866, 0x9f5b, 0x4c8e, 0xb9, 0xe2, 0xc7, 0x7a, 0x85, 0x30, 0xd6, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Invoke(ref IDownloadJob downloadJob, ref IDownloadCompletedCallbackArgs callbackArgs) mut => VT.Invoke(ref this, ref downloadJob, ref callbackArgs);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadCompletedCallback self, ref IDownloadJob downloadJob, ref IDownloadCompletedCallbackArgs callbackArgs) Invoke;
			}
		}
		[CRepr]
		public struct IDownloadProgressChangedCallbackArgs : IDispatch
		{
			public const new Guid IID = .(0x324ff2c6, 0x4981, 0x4b04, 0x94, 0x12, 0x57, 0x48, 0x17, 0x45, 0xab, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Progress(out IDownloadProgress* retval) mut => VT.get_Progress(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadProgressChangedCallbackArgs self, out IDownloadProgress* retval) get_Progress;
			}
		}
		[CRepr]
		public struct IDownloadProgressChangedCallback : IUnknown
		{
			public const new Guid IID = .(0x8c3f1cdd, 0x6173, 0x4591, 0xae, 0xbd, 0xa5, 0x6a, 0x53, 0xca, 0x77, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Invoke(ref IDownloadJob downloadJob, ref IDownloadProgressChangedCallbackArgs callbackArgs) mut => VT.Invoke(ref this, ref downloadJob, ref callbackArgs);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDownloadProgressChangedCallback self, ref IDownloadJob downloadJob, ref IDownloadProgressChangedCallbackArgs callbackArgs) Invoke;
			}
		}
		[CRepr]
		public struct IUpdateDownloader : IDispatch
		{
			public const new Guid IID = .(0x68f1c6f9, 0x7ecc, 0x4666, 0xa4, 0x64, 0x24, 0x7f, 0xe1, 0x24, 0x96, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_ClientApplicationID(out BSTR retval) mut => VT.get_ClientApplicationID(ref this, out retval);
			public HResult put_ClientApplicationID(BSTR value) mut => VT.put_ClientApplicationID(ref this, value);
			public HResult get_IsForced(out int16 retval) mut => VT.get_IsForced(ref this, out retval);
			public HResult put_IsForced(int16 value) mut => VT.put_IsForced(ref this, value);
			public HResult get_Priority(out DownloadPriority retval) mut => VT.get_Priority(ref this, out retval);
			public HResult put_Priority(DownloadPriority value) mut => VT.put_Priority(ref this, value);
			public HResult get_Updates(out IUpdateCollection* retval) mut => VT.get_Updates(ref this, out retval);
			public HResult put_Updates(ref IUpdateCollection value) mut => VT.put_Updates(ref this, ref value);
			public HResult BeginDownload(ref IUnknown onProgressChanged, ref IUnknown onCompleted, VARIANT state, out IDownloadJob* retval) mut => VT.BeginDownload(ref this, ref onProgressChanged, ref onCompleted, state, out retval);
			public HResult Download(out IDownloadResult* retval) mut => VT.Download(ref this, out retval);
			public HResult EndDownload(ref IDownloadJob value, out IDownloadResult* retval) mut => VT.EndDownload(ref this, ref value, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloader self, out BSTR retval) get_ClientApplicationID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloader self, BSTR value) put_ClientApplicationID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloader self, out int16 retval) get_IsForced;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloader self, int16 value) put_IsForced;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloader self, out DownloadPriority retval) get_Priority;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloader self, DownloadPriority value) put_Priority;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloader self, out IUpdateCollection* retval) get_Updates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloader self, ref IUpdateCollection value) put_Updates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloader self, ref IUnknown onProgressChanged, ref IUnknown onCompleted, VARIANT state, out IDownloadJob* retval) BeginDownload;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloader self, out IDownloadResult* retval) Download;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateDownloader self, ref IDownloadJob value, out IDownloadResult* retval) EndDownload;
			}
		}
		[CRepr]
		public struct IUpdateInstallationResult : IDispatch
		{
			public const new Guid IID = .(0xd940f0f8, 0x3cbb, 0x4fd0, 0x99, 0x3f, 0x47, 0x1e, 0x7f, 0x23, 0x28, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_HResult(out int32 retval) mut => VT.get_HResult(ref this, out retval);
			public HResult get_RebootRequired(out int16 retval) mut => VT.get_RebootRequired(ref this, out retval);
			public HResult get_ResultCode(out OperationResultCode retval) mut => VT.get_ResultCode(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstallationResult self, out int32 retval) get_HResult;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstallationResult self, out int16 retval) get_RebootRequired;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstallationResult self, out OperationResultCode retval) get_ResultCode;
			}
		}
		[CRepr]
		public struct IInstallationResult : IDispatch
		{
			public const new Guid IID = .(0xa43c56d6, 0x7451, 0x48d4, 0xaf, 0x96, 0xb6, 0xcd, 0x2d, 0x0d, 0x9b, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_HResult(out int32 retval) mut => VT.get_HResult(ref this, out retval);
			public HResult get_RebootRequired(out int16 retval) mut => VT.get_RebootRequired(ref this, out retval);
			public HResult get_ResultCode(out OperationResultCode retval) mut => VT.get_ResultCode(ref this, out retval);
			public HResult GetUpdateResult(int32 updateIndex, out IUpdateInstallationResult* retval) mut => VT.GetUpdateResult(ref this, updateIndex, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationResult self, out int32 retval) get_HResult;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationResult self, out int16 retval) get_RebootRequired;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationResult self, out OperationResultCode retval) get_ResultCode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationResult self, int32 updateIndex, out IUpdateInstallationResult* retval) GetUpdateResult;
			}
		}
		[CRepr]
		public struct IInstallationProgress : IDispatch
		{
			public const new Guid IID = .(0x345c8244, 0x43a3, 0x4e32, 0xa3, 0x68, 0x65, 0xf0, 0x73, 0xb7, 0x6f, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_CurrentUpdateIndex(out int32 retval) mut => VT.get_CurrentUpdateIndex(ref this, out retval);
			public HResult get_CurrentUpdatePercentComplete(out int32 retval) mut => VT.get_CurrentUpdatePercentComplete(ref this, out retval);
			public HResult get_PercentComplete(out int32 retval) mut => VT.get_PercentComplete(ref this, out retval);
			public HResult GetUpdateResult(int32 updateIndex, out IUpdateInstallationResult* retval) mut => VT.GetUpdateResult(ref this, updateIndex, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationProgress self, out int32 retval) get_CurrentUpdateIndex;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationProgress self, out int32 retval) get_CurrentUpdatePercentComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationProgress self, out int32 retval) get_PercentComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationProgress self, int32 updateIndex, out IUpdateInstallationResult* retval) GetUpdateResult;
			}
		}
		[CRepr]
		public struct IInstallationJob : IDispatch
		{
			public const new Guid IID = .(0x5c209f0b, 0xbad5, 0x432a, 0x95, 0x56, 0x46, 0x99, 0xbe, 0xd2, 0x63, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_AsyncState(out VARIANT retval) mut => VT.get_AsyncState(ref this, out retval);
			public HResult get_IsCompleted(out int16 retval) mut => VT.get_IsCompleted(ref this, out retval);
			public HResult get_Updates(out IUpdateCollection* retval) mut => VT.get_Updates(ref this, out retval);
			public HResult CleanUp() mut => VT.CleanUp(ref this);
			public HResult GetProgress(out IInstallationProgress* retval) mut => VT.GetProgress(ref this, out retval);
			public HResult RequestAbort() mut => VT.RequestAbort(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationJob self, out VARIANT retval) get_AsyncState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationJob self, out int16 retval) get_IsCompleted;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationJob self, out IUpdateCollection* retval) get_Updates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationJob self) CleanUp;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationJob self, out IInstallationProgress* retval) GetProgress;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationJob self) RequestAbort;
			}
		}
		[CRepr]
		public struct IInstallationCompletedCallbackArgs : IDispatch
		{
			public const new Guid IID = .(0x250e2106, 0x8efb, 0x4705, 0x96, 0x53, 0xef, 0x13, 0xc5, 0x81, 0xb6, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IInstallationCompletedCallback : IUnknown
		{
			public const new Guid IID = .(0x45f4f6f3, 0xd602, 0x4f98, 0x9a, 0x8a, 0x3e, 0xfa, 0x15, 0x2a, 0xd2, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Invoke(ref IInstallationJob installationJob, ref IInstallationCompletedCallbackArgs callbackArgs) mut => VT.Invoke(ref this, ref installationJob, ref callbackArgs);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationCompletedCallback self, ref IInstallationJob installationJob, ref IInstallationCompletedCallbackArgs callbackArgs) Invoke;
			}
		}
		[CRepr]
		public struct IInstallationProgressChangedCallbackArgs : IDispatch
		{
			public const new Guid IID = .(0xe4f14e1e, 0x689d, 0x4218, 0xa0, 0xb9, 0xbc, 0x18, 0x9c, 0x48, 0x4a, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Progress(out IInstallationProgress* retval) mut => VT.get_Progress(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationProgressChangedCallbackArgs self, out IInstallationProgress* retval) get_Progress;
			}
		}
		[CRepr]
		public struct IInstallationProgressChangedCallback : IUnknown
		{
			public const new Guid IID = .(0xe01402d5, 0xf8da, 0x43ba, 0xa0, 0x12, 0x38, 0x89, 0x4b, 0xd0, 0x48, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Invoke(ref IInstallationJob installationJob, ref IInstallationProgressChangedCallbackArgs callbackArgs) mut => VT.Invoke(ref this, ref installationJob, ref callbackArgs);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationProgressChangedCallback self, ref IInstallationJob installationJob, ref IInstallationProgressChangedCallbackArgs callbackArgs) Invoke;
			}
		}
		[CRepr]
		public struct IUpdateInstaller : IDispatch
		{
			public const new Guid IID = .(0x7b929c68, 0xccdc, 0x4226, 0x96, 0xb1, 0x87, 0x24, 0x60, 0x0b, 0x54, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_ClientApplicationID(out BSTR retval) mut => VT.get_ClientApplicationID(ref this, out retval);
			public HResult put_ClientApplicationID(BSTR value) mut => VT.put_ClientApplicationID(ref this, value);
			public HResult get_IsForced(out int16 retval) mut => VT.get_IsForced(ref this, out retval);
			public HResult put_IsForced(int16 value) mut => VT.put_IsForced(ref this, value);
			public HResult get_ParentHwnd(out HWnd retval) mut => VT.get_ParentHwnd(ref this, out retval);
			public HResult put_ParentHwnd(HWnd value) mut => VT.put_ParentHwnd(ref this, value);
			public HResult put_ParentWindow(ref IUnknown value) mut => VT.put_ParentWindow(ref this, ref value);
			public HResult get_ParentWindow(out IUnknown* retval) mut => VT.get_ParentWindow(ref this, out retval);
			public HResult get_Updates(out IUpdateCollection* retval) mut => VT.get_Updates(ref this, out retval);
			public HResult put_Updates(ref IUpdateCollection value) mut => VT.put_Updates(ref this, ref value);
			public HResult BeginInstall(ref IUnknown onProgressChanged, ref IUnknown onCompleted, VARIANT state, out IInstallationJob* retval) mut => VT.BeginInstall(ref this, ref onProgressChanged, ref onCompleted, state, out retval);
			public HResult BeginUninstall(ref IUnknown onProgressChanged, ref IUnknown onCompleted, VARIANT state, out IInstallationJob* retval) mut => VT.BeginUninstall(ref this, ref onProgressChanged, ref onCompleted, state, out retval);
			public HResult EndInstall(ref IInstallationJob value, out IInstallationResult* retval) mut => VT.EndInstall(ref this, ref value, out retval);
			public HResult EndUninstall(ref IInstallationJob value, out IInstallationResult* retval) mut => VT.EndUninstall(ref this, ref value, out retval);
			public HResult Install(out IInstallationResult* retval) mut => VT.Install(ref this, out retval);
			public HResult RunWizard(BSTR dialogTitle, out IInstallationResult* retval) mut => VT.RunWizard(ref this, dialogTitle, out retval);
			public HResult get_IsBusy(out int16 retval) mut => VT.get_IsBusy(ref this, out retval);
			public HResult Uninstall(out IInstallationResult* retval) mut => VT.Uninstall(ref this, out retval);
			public HResult get_AllowSourcePrompts(out int16 retval) mut => VT.get_AllowSourcePrompts(ref this, out retval);
			public HResult put_AllowSourcePrompts(int16 value) mut => VT.put_AllowSourcePrompts(ref this, value);
			public HResult get_RebootRequiredBeforeInstallation(out int16 retval) mut => VT.get_RebootRequiredBeforeInstallation(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, out BSTR retval) get_ClientApplicationID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, BSTR value) put_ClientApplicationID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, out int16 retval) get_IsForced;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, int16 value) put_IsForced;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, out HWnd retval) get_ParentHwnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, HWnd value) put_ParentHwnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, ref IUnknown value) put_ParentWindow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, out IUnknown* retval) get_ParentWindow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, out IUpdateCollection* retval) get_Updates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, ref IUpdateCollection value) put_Updates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, ref IUnknown onProgressChanged, ref IUnknown onCompleted, VARIANT state, out IInstallationJob* retval) BeginInstall;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, ref IUnknown onProgressChanged, ref IUnknown onCompleted, VARIANT state, out IInstallationJob* retval) BeginUninstall;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, ref IInstallationJob value, out IInstallationResult* retval) EndInstall;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, ref IInstallationJob value, out IInstallationResult* retval) EndUninstall;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, out IInstallationResult* retval) Install;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, BSTR dialogTitle, out IInstallationResult* retval) RunWizard;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, out int16 retval) get_IsBusy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, out IInstallationResult* retval) Uninstall;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, out int16 retval) get_AllowSourcePrompts;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, int16 value) put_AllowSourcePrompts;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller self, out int16 retval) get_RebootRequiredBeforeInstallation;
			}
		}
		[CRepr]
		public struct IUpdateInstaller2 : IUpdateInstaller
		{
			public const new Guid IID = .(0x3442d4fe, 0x224d, 0x4cee, 0x98, 0xcf, 0x30, 0xe0, 0xc4, 0xd2, 0x29, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_ForceQuiet(out int16 retval) mut => VT.get_ForceQuiet(ref this, out retval);
			public HResult put_ForceQuiet(int16 value) mut => VT.put_ForceQuiet(ref this, value);

			[CRepr]
			public struct VTable : IUpdateInstaller.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller2 self, out int16 retval) get_ForceQuiet;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller2 self, int16 value) put_ForceQuiet;
			}
		}
		[CRepr]
		public struct IUpdateInstaller3 : IUpdateInstaller2
		{
			public const new Guid IID = .(0x16d11c35, 0x099a, 0x48d0, 0x83, 0x38, 0x5f, 0xae, 0x64, 0x04, 0x7f, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_AttemptCloseAppsIfNecessary(out int16 retval) mut => VT.get_AttemptCloseAppsIfNecessary(ref this, out retval);
			public HResult put_AttemptCloseAppsIfNecessary(int16 value) mut => VT.put_AttemptCloseAppsIfNecessary(ref this, value);

			[CRepr]
			public struct VTable : IUpdateInstaller2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller3 self, out int16 retval) get_AttemptCloseAppsIfNecessary;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller3 self, int16 value) put_AttemptCloseAppsIfNecessary;
			}
		}
		[CRepr]
		public struct IUpdateInstaller4 : IUpdateInstaller3
		{
			public const new Guid IID = .(0xef8208ea, 0x2304, 0x492d, 0x91, 0x09, 0x23, 0x81, 0x3b, 0x09, 0x58, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Commit(uint32 dwFlags) mut => VT.Commit(ref this, dwFlags);

			[CRepr]
			public struct VTable : IUpdateInstaller3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateInstaller4 self, uint32 dwFlags) Commit;
			}
		}
		[CRepr]
		public struct IUpdateSession : IDispatch
		{
			public const new Guid IID = .(0x816858a4, 0x260d, 0x4260, 0x93, 0x3a, 0x25, 0x85, 0xf1, 0xab, 0xc7, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_ClientApplicationID(out BSTR retval) mut => VT.get_ClientApplicationID(ref this, out retval);
			public HResult put_ClientApplicationID(BSTR value) mut => VT.put_ClientApplicationID(ref this, value);
			public HResult get_ReadOnly(out int16 retval) mut => VT.get_ReadOnly(ref this, out retval);
			public HResult get_WebProxy(out IWebProxy* retval) mut => VT.get_WebProxy(ref this, out retval);
			public HResult put_WebProxy(ref IWebProxy value) mut => VT.put_WebProxy(ref this, ref value);
			public HResult CreateUpdateSearcher(out IUpdateSearcher* retval) mut => VT.CreateUpdateSearcher(ref this, out retval);
			public HResult CreateUpdateDownloader(out IUpdateDownloader* retval) mut => VT.CreateUpdateDownloader(ref this, out retval);
			public HResult CreateUpdateInstaller(out IUpdateInstaller* retval) mut => VT.CreateUpdateInstaller(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSession self, out BSTR retval) get_ClientApplicationID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSession self, BSTR value) put_ClientApplicationID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSession self, out int16 retval) get_ReadOnly;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSession self, out IWebProxy* retval) get_WebProxy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSession self, ref IWebProxy value) put_WebProxy;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSession self, out IUpdateSearcher* retval) CreateUpdateSearcher;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSession self, out IUpdateDownloader* retval) CreateUpdateDownloader;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSession self, out IUpdateInstaller* retval) CreateUpdateInstaller;
			}
		}
		[CRepr]
		public struct IUpdateSession2 : IUpdateSession
		{
			public const new Guid IID = .(0x91caf7b0, 0xeb23, 0x49ed, 0x99, 0x37, 0xc5, 0x2d, 0x81, 0x7f, 0x46, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_UserLocale(out uint32 retval) mut => VT.get_UserLocale(ref this, out retval);
			public HResult put_UserLocale(uint32 lcid) mut => VT.put_UserLocale(ref this, lcid);

			[CRepr]
			public struct VTable : IUpdateSession.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSession2 self, out uint32 retval) get_UserLocale;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSession2 self, uint32 lcid) put_UserLocale;
			}
		}
		[CRepr]
		public struct IUpdateSession3 : IUpdateSession2
		{
			public const new Guid IID = .(0x918efd1e, 0xb5d8, 0x4c90, 0x85, 0x40, 0xae, 0xb9, 0xbd, 0xc5, 0x6f, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateUpdateServiceManager(out IUpdateServiceManager2* retval) mut => VT.CreateUpdateServiceManager(ref this, out retval);
			public HResult QueryHistory(BSTR criteria, int32 startIndex, int32 count, out IUpdateHistoryEntryCollection* retval) mut => VT.QueryHistory(ref this, criteria, startIndex, count, out retval);

			[CRepr]
			public struct VTable : IUpdateSession2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSession3 self, out IUpdateServiceManager2* retval) CreateUpdateServiceManager;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateSession3 self, BSTR criteria, int32 startIndex, int32 count, out IUpdateHistoryEntryCollection* retval) QueryHistory;
			}
		}
		[CRepr]
		public struct IUpdateService : IDispatch
		{
			public const new Guid IID = .(0x76b3b17e, 0xaed6, 0x4da5, 0x85, 0xf0, 0x83, 0x58, 0x7f, 0x81, 0xab, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Name(out BSTR retval) mut => VT.get_Name(ref this, out retval);
			public HResult get_ContentValidationCert(out VARIANT retval) mut => VT.get_ContentValidationCert(ref this, out retval);
			public HResult get_ExpirationDate(out double retval) mut => VT.get_ExpirationDate(ref this, out retval);
			public HResult get_IsManaged(out int16 retval) mut => VT.get_IsManaged(ref this, out retval);
			public HResult get_IsRegisteredWithAU(out int16 retval) mut => VT.get_IsRegisteredWithAU(ref this, out retval);
			public HResult get_IssueDate(out double retval) mut => VT.get_IssueDate(ref this, out retval);
			public HResult get_OffersWindowsUpdates(out int16 retval) mut => VT.get_OffersWindowsUpdates(ref this, out retval);
			public HResult get_RedirectUrls(out IStringCollection* retval) mut => VT.get_RedirectUrls(ref this, out retval);
			public HResult get_ServiceID(out BSTR retval) mut => VT.get_ServiceID(ref this, out retval);
			public HResult get_IsScanPackageService(out int16 retval) mut => VT.get_IsScanPackageService(ref this, out retval);
			public HResult get_CanRegisterWithAU(out int16 retval) mut => VT.get_CanRegisterWithAU(ref this, out retval);
			public HResult get_ServiceUrl(out BSTR retval) mut => VT.get_ServiceUrl(ref this, out retval);
			public HResult get_SetupPrefix(out BSTR retval) mut => VT.get_SetupPrefix(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService self, out BSTR retval) get_Name;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService self, out VARIANT retval) get_ContentValidationCert;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService self, out double retval) get_ExpirationDate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService self, out int16 retval) get_IsManaged;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService self, out int16 retval) get_IsRegisteredWithAU;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService self, out double retval) get_IssueDate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService self, out int16 retval) get_OffersWindowsUpdates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService self, out IStringCollection* retval) get_RedirectUrls;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService self, out BSTR retval) get_ServiceID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService self, out int16 retval) get_IsScanPackageService;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService self, out int16 retval) get_CanRegisterWithAU;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService self, out BSTR retval) get_ServiceUrl;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService self, out BSTR retval) get_SetupPrefix;
			}
		}
		[CRepr]
		public struct IUpdateService2 : IUpdateService
		{
			public const new Guid IID = .(0x1518b460, 0x6518, 0x4172, 0x94, 0x0f, 0xc7, 0x58, 0x83, 0xb2, 0x4c, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_IsDefaultAUService(out int16 retval) mut => VT.get_IsDefaultAUService(ref this, out retval);

			[CRepr]
			public struct VTable : IUpdateService.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateService2 self, out int16 retval) get_IsDefaultAUService;
			}
		}
		[CRepr]
		public struct IUpdateServiceCollection : IDispatch
		{
			public const new Guid IID = .(0x9b0353aa, 0x0e52, 0x44ff, 0xb8, 0xb0, 0x1f, 0x7f, 0xa0, 0x43, 0x7f, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Item(int32 index, out IUpdateService* retval) mut => VT.get_Item(ref this, index, out retval);
			public HResult get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
			public HResult get_Count(out int32 retval) mut => VT.get_Count(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceCollection self, int32 index, out IUpdateService* retval) get_Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceCollection self, out IUnknown* retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceCollection self, out int32 retval) get_Count;
			}
		}
		[CRepr]
		public struct IUpdateServiceRegistration : IDispatch
		{
			public const new Guid IID = .(0xdde02280, 0x12b3, 0x4e0b, 0x93, 0x7b, 0x67, 0x47, 0xf6, 0xac, 0xb2, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_RegistrationState(out UpdateServiceRegistrationState retval) mut => VT.get_RegistrationState(ref this, out retval);
			public HResult get_ServiceID(out BSTR retval) mut => VT.get_ServiceID(ref this, out retval);
			public HResult get_IsPendingRegistrationWithAU(out int16 retval) mut => VT.get_IsPendingRegistrationWithAU(ref this, out retval);
			public HResult get_Service(out IUpdateService2* retval) mut => VT.get_Service(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceRegistration self, out UpdateServiceRegistrationState retval) get_RegistrationState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceRegistration self, out BSTR retval) get_ServiceID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceRegistration self, out int16 retval) get_IsPendingRegistrationWithAU;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceRegistration self, out IUpdateService2* retval) get_Service;
			}
		}
		[CRepr]
		public struct IUpdateServiceManager : IDispatch
		{
			public const new Guid IID = .(0x23857e3c, 0x02ba, 0x44a3, 0x94, 0x23, 0xb1, 0xc9, 0x00, 0x80, 0x5f, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Services(out IUpdateServiceCollection* retval) mut => VT.get_Services(ref this, out retval);
			public HResult AddService(BSTR serviceID, BSTR authorizationCabPath, out IUpdateService* retval) mut => VT.AddService(ref this, serviceID, authorizationCabPath, out retval);
			public HResult RegisterServiceWithAU(BSTR serviceID) mut => VT.RegisterServiceWithAU(ref this, serviceID);
			public HResult RemoveService(BSTR serviceID) mut => VT.RemoveService(ref this, serviceID);
			public HResult UnregisterServiceWithAU(BSTR serviceID) mut => VT.UnregisterServiceWithAU(ref this, serviceID);
			public HResult AddScanPackageService(BSTR serviceName, BSTR scanFileLocation, int32 flags, out IUpdateService* ppService) mut => VT.AddScanPackageService(ref this, serviceName, scanFileLocation, flags, out ppService);
			public HResult SetOption(BSTR optionName, VARIANT optionValue) mut => VT.SetOption(ref this, optionName, optionValue);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceManager self, out IUpdateServiceCollection* retval) get_Services;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceManager self, BSTR serviceID, BSTR authorizationCabPath, out IUpdateService* retval) AddService;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceManager self, BSTR serviceID) RegisterServiceWithAU;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceManager self, BSTR serviceID) RemoveService;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceManager self, BSTR serviceID) UnregisterServiceWithAU;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceManager self, BSTR serviceName, BSTR scanFileLocation, int32 flags, out IUpdateService* ppService) AddScanPackageService;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceManager self, BSTR optionName, VARIANT optionValue) SetOption;
			}
		}
		[CRepr]
		public struct IUpdateServiceManager2 : IUpdateServiceManager
		{
			public const new Guid IID = .(0x0bb8531d, 0x7e8d, 0x424f, 0x98, 0x6c, 0xa0, 0xb8, 0xf6, 0x0a, 0x3e, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_ClientApplicationID(out BSTR retval) mut => VT.get_ClientApplicationID(ref this, out retval);
			public HResult put_ClientApplicationID(BSTR value) mut => VT.put_ClientApplicationID(ref this, value);
			public HResult QueryServiceRegistration(BSTR serviceID, out IUpdateServiceRegistration* retval) mut => VT.QueryServiceRegistration(ref this, serviceID, out retval);
			public HResult AddService2(BSTR serviceID, int32 flags, BSTR authorizationCabPath, out IUpdateServiceRegistration* retval) mut => VT.AddService2(ref this, serviceID, flags, authorizationCabPath, out retval);

			[CRepr]
			public struct VTable : IUpdateServiceManager.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceManager2 self, out BSTR retval) get_ClientApplicationID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceManager2 self, BSTR value) put_ClientApplicationID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceManager2 self, BSTR serviceID, out IUpdateServiceRegistration* retval) QueryServiceRegistration;
				public new function [CallingConvention(.Stdcall)] HResult(ref IUpdateServiceManager2 self, BSTR serviceID, int32 flags, BSTR authorizationCabPath, out IUpdateServiceRegistration* retval) AddService2;
			}
		}
		[CRepr]
		public struct IInstallationAgent : IDispatch
		{
			public const new Guid IID = .(0x925cbc18, 0xa2ea, 0x4648, 0xbf, 0x1c, 0xec, 0x8b, 0xad, 0xcf, 0xe2, 0x0a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RecordInstallationResult(BSTR installationResultCookie, int32 hresult, ref IStringCollection extendedReportingData) mut => VT.RecordInstallationResult(ref this, installationResultCookie, hresult, ref extendedReportingData);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInstallationAgent self, BSTR installationResultCookie, int32 hresult, ref IStringCollection extendedReportingData) RecordInstallationResult;
			}
		}
		
	}
}
