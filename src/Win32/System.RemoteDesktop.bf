using System;

// namespace System.RemoteDesktop
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WTS_DOMAIN_LENGTH = 255;
		public const uint32 WTS_USERNAME_LENGTH = 255;
		public const uint32 WTS_PASSWORD_LENGTH = 255;
		public const uint32 WTS_DIRECTORY_LENGTH = 256;
		public const uint32 WTS_INITIALPROGRAM_LENGTH = 256;
		public const uint32 WTS_PROTOCOL_NAME_LENGTH = 8;
		public const uint32 WTS_DRIVER_NAME_LENGTH = 8;
		public const uint32 WTS_DEVICE_NAME_LENGTH = 19;
		public const uint32 WTS_IMEFILENAME_LENGTH = 32;
		public const uint32 WTS_CLIENTNAME_LENGTH = 20;
		public const uint32 WTS_CLIENTADDRESS_LENGTH = 30;
		public const uint32 WTS_CLIENT_PRODUCT_ID_LENGTH = 32;
		public const uint32 WTS_MAX_PROTOCOL_CACHE = 4;
		public const uint32 WTS_MAX_CACHE_RESERVED = 20;
		public const uint32 WTS_MAX_RESERVED = 100;
		public const uint32 WTS_MAX_COUNTERS = 100;
		public const uint32 WTS_MAX_DISPLAY_IOCTL_DATA = 256;
		public const uint32 WTS_PERF_DISABLE_NOTHING = 0;
		public const uint32 WTS_PERF_DISABLE_WALLPAPER = 1;
		public const uint32 WTS_PERF_DISABLE_FULLWINDOWDRAG = 2;
		public const uint32 WTS_PERF_DISABLE_MENUANIMATIONS = 4;
		public const uint32 WTS_PERF_DISABLE_THEMING = 8;
		public const uint32 WTS_PERF_ENABLE_ENHANCED_GRAPHICS = 16;
		public const uint32 WTS_PERF_DISABLE_CURSOR_SHADOW = 32;
		public const uint32 WTS_PERF_DISABLE_CURSORSETTINGS = 64;
		public const uint32 WTS_PERF_ENABLE_FONT_SMOOTHING = 128;
		public const uint32 WTS_PERF_ENABLE_DESKTOP_COMPOSITION = 256;
		public const uint32 WTS_VALUE_TYPE_ULONG = 1;
		public const uint32 WTS_VALUE_TYPE_STRING = 2;
		public const uint32 WTS_VALUE_TYPE_BINARY = 3;
		public const uint32 WTS_VALUE_TYPE_GUID = 4;
		public const uint32 WTS_KEY_EXCHANGE_ALG_RSA = 1;
		public const uint32 WTS_KEY_EXCHANGE_ALG_DH = 2;
		public const uint32 WTS_LICENSE_PROTOCOL_VERSION = 65536;
		public const uint32 WTS_LICENSE_PREAMBLE_VERSION = 3;
		public const uint32 WRDS_DOMAIN_LENGTH = 255;
		public const uint32 WRDS_USERNAME_LENGTH = 255;
		public const uint32 WRDS_PASSWORD_LENGTH = 255;
		public const uint32 WRDS_DIRECTORY_LENGTH = 256;
		public const uint32 WRDS_INITIALPROGRAM_LENGTH = 256;
		public const uint32 WRDS_PROTOCOL_NAME_LENGTH = 8;
		public const uint32 WRDS_DRIVER_NAME_LENGTH = 8;
		public const uint32 WRDS_DEVICE_NAME_LENGTH = 19;
		public const uint32 WRDS_IMEFILENAME_LENGTH = 32;
		public const uint32 WRDS_CLIENTNAME_LENGTH = 20;
		public const uint32 WRDS_CLIENTADDRESS_LENGTH = 30;
		public const uint32 WRDS_CLIENT_PRODUCT_ID_LENGTH = 32;
		public const uint32 WRDS_MAX_PROTOCOL_CACHE = 4;
		public const uint32 WRDS_MAX_CACHE_RESERVED = 20;
		public const uint32 WRDS_MAX_RESERVED = 100;
		public const uint32 WRDS_MAX_COUNTERS = 100;
		public const uint32 WRDS_MAX_DISPLAY_IOCTL_DATA = 256;
		public const uint32 WRDS_PERF_DISABLE_NOTHING = 0;
		public const uint32 WRDS_PERF_DISABLE_WALLPAPER = 1;
		public const uint32 WRDS_PERF_DISABLE_FULLWINDOWDRAG = 2;
		public const uint32 WRDS_PERF_DISABLE_MENUANIMATIONS = 4;
		public const uint32 WRDS_PERF_DISABLE_THEMING = 8;
		public const uint32 WRDS_PERF_ENABLE_ENHANCED_GRAPHICS = 16;
		public const uint32 WRDS_PERF_DISABLE_CURSOR_SHADOW = 32;
		public const uint32 WRDS_PERF_DISABLE_CURSORSETTINGS = 64;
		public const uint32 WRDS_PERF_ENABLE_FONT_SMOOTHING = 128;
		public const uint32 WRDS_PERF_ENABLE_DESKTOP_COMPOSITION = 256;
		public const uint32 WRDS_VALUE_TYPE_ULONG = 1;
		public const uint32 WRDS_VALUE_TYPE_STRING = 2;
		public const uint32 WRDS_VALUE_TYPE_BINARY = 3;
		public const uint32 WRDS_VALUE_TYPE_GUID = 4;
		public const uint32 WRDS_KEY_EXCHANGE_ALG_RSA = 1;
		public const uint32 WRDS_KEY_EXCHANGE_ALG_DH = 2;
		public const uint32 WRDS_LICENSE_PROTOCOL_VERSION = 65536;
		public const uint32 WRDS_LICENSE_PREAMBLE_VERSION = 3;
		public const uint32 SINGLE_SESSION = 1;
		public const uint32 FORCE_REJOIN = 2;
		public const uint32 FORCE_REJOIN_IN_CLUSTERMODE = 3;
		public const uint32 RESERVED_FOR_LEGACY = 4;
		public const uint32 KEEP_EXISTING_SESSIONS = 8;
		public const uint32 CHANNEL_EVENT_INITIALIZED = 0;
		public const uint32 CHANNEL_EVENT_CONNECTED = 1;
		public const uint32 CHANNEL_EVENT_V1_CONNECTED = 2;
		public const uint32 CHANNEL_EVENT_DISCONNECTED = 3;
		public const uint32 CHANNEL_EVENT_TERMINATED = 4;
		public const uint32 CHANNEL_EVENT_DATA_RECEIVED = 10;
		public const uint32 CHANNEL_EVENT_WRITE_COMPLETE = 11;
		public const uint32 CHANNEL_EVENT_WRITE_CANCELLED = 12;
		public const uint32 CHANNEL_RC_OK = 0;
		public const uint32 CHANNEL_RC_ALREADY_INITIALIZED = 1;
		public const uint32 CHANNEL_RC_NOT_INITIALIZED = 2;
		public const uint32 CHANNEL_RC_ALREADY_CONNECTED = 3;
		public const uint32 CHANNEL_RC_NOT_CONNECTED = 4;
		public const uint32 CHANNEL_RC_TOO_MANY_CHANNELS = 5;
		public const uint32 CHANNEL_RC_BAD_CHANNEL = 6;
		public const uint32 CHANNEL_RC_BAD_CHANNEL_HANDLE = 7;
		public const uint32 CHANNEL_RC_NO_BUFFER = 8;
		public const uint32 CHANNEL_RC_BAD_INIT_HANDLE = 9;
		public const uint32 CHANNEL_RC_NOT_OPEN = 10;
		public const uint32 CHANNEL_RC_BAD_PROC = 11;
		public const uint32 CHANNEL_RC_NO_MEMORY = 12;
		public const uint32 CHANNEL_RC_UNKNOWN_CHANNEL_NAME = 13;
		public const uint32 CHANNEL_RC_ALREADY_OPEN = 14;
		public const uint32 CHANNEL_RC_NOT_IN_VIRTUALCHANNELENTRY = 15;
		public const uint32 CHANNEL_RC_NULL_DATA = 16;
		public const uint32 CHANNEL_RC_ZERO_LENGTH = 17;
		public const uint32 CHANNEL_RC_INVALID_INSTANCE = 18;
		public const uint32 CHANNEL_RC_UNSUPPORTED_VERSION = 19;
		public const uint32 CHANNEL_RC_INITIALIZATION_ERROR = 20;
		public const uint32 VIRTUAL_CHANNEL_VERSION_WIN2000 = 1;
		public const uint32 CHANNEL_CHUNK_LENGTH = 1600;
		public const uint32 CHANNEL_BUFFER_SIZE = 65535;
		public const uint32 CHANNEL_FLAG_FIRST = 1;
		public const uint32 CHANNEL_FLAG_LAST = 2;
		public const uint32 CHANNEL_FLAG_MIDDLE = 0;
		public const uint32 CHANNEL_FLAG_FAIL = 256;
		public const uint32 CHANNEL_OPTION_INITIALIZED = 2147483648;
		public const uint32 CHANNEL_OPTION_ENCRYPT_RDP = 1073741824;
		public const uint32 CHANNEL_OPTION_ENCRYPT_SC = 536870912;
		public const uint32 CHANNEL_OPTION_ENCRYPT_CS = 268435456;
		public const uint32 CHANNEL_OPTION_PRI_HIGH = 134217728;
		public const uint32 CHANNEL_OPTION_PRI_MED = 67108864;
		public const uint32 CHANNEL_OPTION_PRI_LOW = 33554432;
		public const uint32 CHANNEL_OPTION_COMPRESS_RDP = 8388608;
		public const uint32 CHANNEL_OPTION_COMPRESS = 4194304;
		public const uint32 CHANNEL_OPTION_SHOW_PROTOCOL = 2097152;
		public const uint32 CHANNEL_OPTION_REMOTE_CONTROL_PERSISTENT = 1048576;
		public const uint32 CHANNEL_MAX_COUNT = 30;
		public const uint32 CHANNEL_NAME_LEN = 7;
		public const uint32 MAX_POLICY_ATTRIBUTES = 20;
		public const uint32 WTS_CURRENT_SESSION = 4294967295;
		public const uint32 USERNAME_LENGTH = 20;
		public const uint32 CLIENTNAME_LENGTH = 20;
		public const uint32 CLIENTADDRESS_LENGTH = 30;
		public const uint32 WTS_WSD_LOGOFF = 1;
		public const uint32 WTS_WSD_SHUTDOWN = 2;
		public const uint32 WTS_WSD_REBOOT = 4;
		public const uint32 WTS_WSD_POWEROFF = 8;
		public const uint32 WTS_WSD_FASTREBOOT = 16;
		public const uint32 MAX_ELAPSED_TIME_LENGTH = 15;
		public const uint32 MAX_DATE_TIME_LENGTH = 56;
		public const uint32 WINSTATIONNAME_LENGTH = 32;
		public const uint32 DOMAIN_LENGTH = 17;
		public const uint32 WTS_DRIVE_LENGTH = 3;
		public const uint32 WTS_LISTENER_NAME_LENGTH = 32;
		public const uint32 WTS_COMMENT_LENGTH = 60;
		public const uint32 WTS_LISTENER_CREATE = 1;
		public const uint32 WTS_LISTENER_UPDATE = 16;
		public const uint32 WTS_SECURITY_QUERY_INFORMATION = 1;
		public const uint32 WTS_SECURITY_SET_INFORMATION = 2;
		public const uint32 WTS_SECURITY_RESET = 4;
		public const uint32 WTS_SECURITY_VIRTUAL_CHANNELS = 8;
		public const uint32 WTS_SECURITY_REMOTE_CONTROL = 16;
		public const uint32 WTS_SECURITY_LOGON = 32;
		public const uint32 WTS_SECURITY_LOGOFF = 64;
		public const uint32 WTS_SECURITY_MESSAGE = 128;
		public const uint32 WTS_SECURITY_CONNECT = 256;
		public const uint32 WTS_SECURITY_DISCONNECT = 512;
		public const uint32 WTS_SECURITY_GUEST_ACCESS = 32;
		public const uint32 WTS_PROTOCOL_TYPE_CONSOLE = 0;
		public const uint32 WTS_PROTOCOL_TYPE_ICA = 1;
		public const uint32 WTS_PROTOCOL_TYPE_RDP = 2;
		public const uint32 WTS_SESSIONSTATE_UNKNOWN = 4294967295;
		public const uint32 WTS_SESSIONSTATE_LOCK = 0;
		public const uint32 WTS_SESSIONSTATE_UNLOCK = 1;
		public const uint32 PRODUCTINFO_COMPANYNAME_LENGTH = 256;
		public const uint32 PRODUCTINFO_PRODUCTID_LENGTH = 4;
		public const uint32 VALIDATIONINFORMATION_LICENSE_LENGTH = 16384;
		public const uint32 VALIDATIONINFORMATION_HARDWAREID_LENGTH = 20;
		public const uint32 WTS_EVENT_NONE = 0;
		public const uint32 WTS_EVENT_CREATE = 1;
		public const uint32 WTS_EVENT_DELETE = 2;
		public const uint32 WTS_EVENT_RENAME = 4;
		public const uint32 WTS_EVENT_CONNECT = 8;
		public const uint32 WTS_EVENT_DISCONNECT = 16;
		public const uint32 WTS_EVENT_LOGON = 32;
		public const uint32 WTS_EVENT_LOGOFF = 64;
		public const uint32 WTS_EVENT_STATECHANGE = 128;
		public const uint32 WTS_EVENT_LICENSE = 256;
		public const uint32 WTS_EVENT_ALL = 2147483647;
		public const uint32 WTS_EVENT_FLUSH = 2147483648;
		public const uint32 REMOTECONTROL_KBDSHIFT_HOTKEY = 1;
		public const uint32 REMOTECONTROL_KBDCTRL_HOTKEY = 2;
		public const uint32 REMOTECONTROL_KBDALT_HOTKEY = 4;
		public const uint32 WTS_CHANNEL_OPTION_DYNAMIC = 1;
		public const uint32 WTS_CHANNEL_OPTION_DYNAMIC_PRI_LOW = 0;
		public const uint32 WTS_CHANNEL_OPTION_DYNAMIC_PRI_MED = 2;
		public const uint32 WTS_CHANNEL_OPTION_DYNAMIC_PRI_HIGH = 4;
		public const uint32 WTS_CHANNEL_OPTION_DYNAMIC_PRI_REAL = 6;
		public const uint32 WTS_CHANNEL_OPTION_DYNAMIC_NO_COMPRESS = 8;
		public const uint32 NOTIFY_FOR_ALL_SESSIONS = 1;
		public const uint32 NOTIFY_FOR_THIS_SESSION = 0;
		public const uint32 WTS_PROCESS_INFO_LEVEL_0 = 0;
		public const uint32 WTS_PROCESS_INFO_LEVEL_1 = 1;
		public const uint32 PLUGIN_CAPABILITY_EXTERNAL_REDIRECTION = 1;
		public const uint32 MaxFQDN_Len = 256;
		public const uint32 MaxNetBiosName_Len = 16;
		public const uint32 MaxNumOfExposed_IPs = 12;
		public const uint32 MaxUserName_Len = 104;
		public const uint32 MaxDomainName_Len = 256;
		public const uint32 MaxFarm_Len = 256;
		public const uint32 MaxAppName_Len = 256;
		public const uint32 WKS_FLAG_CLEAR_CREDS_ON_LAST_RESOURCE = 1;
		public const uint32 WKS_FLAG_PASSWORD_ENCRYPTED = 2;
		public const uint32 WKS_FLAG_CREDS_AUTHENTICATED = 4;
		public const uint32 SB_SYNCH_CONFLICT_MAX_WRITE_ATTEMPTS = 100;
		public const uint32 ACQUIRE_TARGET_LOCK_TIMEOUT = 300000;
		public const uint32 RENDER_HINT_CLEAR = 0;
		public const uint32 RENDER_HINT_VIDEO = 1;
		public const uint32 RENDER_HINT_MAPPEDWINDOW = 2;
		public const uint32 TS_VC_LISTENER_STATIC_CHANNEL = 1;
		public const uint32 WRdsGraphicsChannels_LossyChannelMaxMessageSize = 988;
		public const uint32 RFX_RDP_MSG_PREFIX = 0;
		public const uint32 RFX_GFX_MSG_PREFIX = 48;
		public const uint32 RFX_GFX_MSG_PREFIX_MASK = 48;
		public const uint32 RFX_GFX_MAX_SUPPORTED_MONITORS = 16;
		public const uint32 RFX_CLIENT_ID_LENGTH = 32;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_CONNECT = 701;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_DISCONNECT = 702;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_RECONNECT = 703;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_DELETE_SAVED_CREDENTIALS = 704;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_UPDATE_SESSION_DISPLAYSETTINGS = 705;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_ATTACH_EVENT = 706;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_DETACH_EVENT = 707;
		public const uint32 DISPID_PROP_REMOTEDESKTOPCLIENT_SETTINGS = 710;
		public const uint32 DISPID_PROP_REMOTEDESKTOPCLIENT_ACTIONS = 711;
		public const uint32 DISPID_PROP_REMOTEDESKTOPCLIENT_TOUCH_POINTER = 712;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_SET_RDPPROPERTY = 720;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_GET_RDPPROPERTY = 721;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_APPLY_SETTINGS = 722;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_RETRIEVE_SETTINGS = 723;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_SUSPEND_SCREEN_UPDATES = 730;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_RESUME_SCREEN_UPDATES = 731;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_EXECUTE_REMOTE_ACTION = 732;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_GET_SNAPSHOT = 733;
		public const uint32 DISPID_PROP_REMOTEDESKTOPCLIENT_TOUCHPOINTER_ENABLED = 740;
		public const uint32 DISPID_PROP_REMOTEDESKTOPCLIENT_TOUCHPOINTER_EVENTSENABLED = 741;
		public const uint32 DISPID_PROP_REMOTEDESKTOPCLIENT_TOUCHPOINTER_POINTERSPEED = 742;
		public const uint32 DISPID_AX_CONNECTING = 750;
		public const uint32 DISPID_AX_CONNECTED = 751;
		public const uint32 DISPID_AX_LOGINCOMPLETED = 752;
		public const uint32 DISPID_AX_DISCONNECTED = 753;
		public const uint32 DISPID_AX_STATUSCHANGED = 754;
		public const uint32 DISPID_AX_AUTORECONNECTING = 755;
		public const uint32 DISPID_AX_AUTORECONNECTED = 756;
		public const uint32 DISPID_AX_DIALOGDISPLAYING = 757;
		public const uint32 DISPID_AX_DIALOGDISMISSED = 758;
		public const uint32 DISPID_AX_NETWORKSTATUSCHANGED = 759;
		public const uint32 DISPID_AX_ADMINMESSAGERECEIVED = 760;
		public const uint32 DISPID_AX_KEYCOMBINATIONPRESSED = 761;
		public const uint32 DISPID_AX_REMOTEDESKTOPSIZECHANGED = 762;
		public const uint32 DISPID_AX_TOUCHPOINTERCURSORMOVED = 800;
		public const Guid RDCLIENT_BITMAP_RENDER_SERVICE = .(0xe4cc08cb, 0x942e, 0x4b19, 0x85, 0x04, 0xbd, 0x5a, 0x89, 0xa7, 0x47, 0xf5);
		public const Guid WTS_QUERY_ALLOWED_INITIAL_APP = .(0xc77d1b30, 0x5be1, 0x4c6b, 0xa0, 0xe1, 0xbd, 0x6d, 0x2e, 0x5c, 0x9f, 0xcc);
		public const Guid WTS_QUERY_LOGON_SCREEN_SIZE = .(0x8b8e0fe7, 0x0804, 0x4a0e, 0xb2, 0x79, 0x86, 0x60, 0xb1, 0xdf, 0x00, 0x49);
		public const Guid WTS_QUERY_AUDIOENUM_DLL = .(0x9bf4fa97, 0xc883, 0x4c2a, 0x80, 0xab, 0x5a, 0x39, 0xc9, 0xaf, 0x00, 0xdb);
		public const Guid WTS_QUERY_MF_FORMAT_SUPPORT = .(0x41869ad0, 0x6332, 0x4dc8, 0x95, 0xd5, 0xdb, 0x74, 0x9e, 0x2f, 0x1d, 0x94);
		public const Guid WRDS_SERVICE_ID_GRAPHICS_GUID = .(0xd2993f4d, 0x02cf, 0x4280, 0x8c, 0x48, 0x16, 0x24, 0xb4, 0x4f, 0x87, 0x06);
		public const Guid PROPERTY_DYNAMIC_TIME_ZONE_INFORMATION = .(0x0cdfd28e, 0xd0b9, 0x4c1f, 0xa5, 0xeb, 0x6d, 0x1f, 0x6c, 0x65, 0x35, 0xb9);
		public const Guid PROPERTY_TYPE_GET_FAST_RECONNECT = .(0x6212d757, 0x0043, 0x4862, 0x99, 0xc3, 0x9f, 0x30, 0x59, 0xac, 0x2a, 0x3b);
		public const Guid PROPERTY_TYPE_GET_FAST_RECONNECT_USER_SID = .(0x197c427a, 0x0135, 0x4b6d, 0x9c, 0x5e, 0xe6, 0x57, 0x9a, 0x0a, 0xb6, 0x25);
		public const Guid PROPERTY_TYPE_ENABLE_UNIVERSAL_APPS_FOR_CUSTOM_SHELL = .(0xed2c3fda, 0x338d, 0x4d3f, 0x81, 0xa3, 0xe7, 0x67, 0x31, 0x0d, 0x90, 0x8e);
		public const Guid CONNECTION_PROPERTY_IDLE_TIME_WARNING = .(0x693f7ff5, 0x0c4e, 0x4d17, 0xb8, 0xe0, 0x1f, 0x70, 0x32, 0x5e, 0x5d, 0x58);
		public const Guid CONNECTION_PROPERTY_CURSOR_BLINK_DISABLED = .(0x4b150580, 0xfea4, 0x4d3c, 0x9d, 0xe4, 0x74, 0x33, 0xa6, 0x66, 0x18, 0xf7);
		
		// --- Typedefs ---
		
		public typealias HwtsVirtualChannelHandle = int;
		
		// --- Enums ---
		
		public enum AE_POSITION_FLAGS : int32
		{
			INVALID = 0,
			DISCONTINUOUS = 1,
			CONTINUOUS = 2,
			QPC_ERROR = 4,
		}
		public enum AAAuthSchemes : int32
		{
			MIN = 0,
			BASIC = 1,
			NTLM = 2,
			SC = 3,
			LOGGEDONCREDENTIALS = 4,
			NEGOTIATE = 5,
			ANY = 6,
			COOKIE = 7,
			DIGEST = 8,
			ORGID = 9,
			CONID = 10,
			SSPI_NTLM = 11,
			MAX = 12,
		}
		public enum AAAccountingDataType : int32
		{
			MAIN_SESSION_CREATION = 0,
			SUB_SESSION_CREATION = 1,
			SUB_SESSION_CLOSED = 2,
			MAIN_SESSION_CLOSED = 3,
		}
		public enum SESSION_TIMEOUT_ACTION_TYPE : int32
		{
			DISCONNECT = 0,
			SILENT_REAUTH = 1,
		}
		public enum PolicyAttributeType : int32
		{
			EnableAllRedirections = 0,
			DisableAllRedirections = 1,
			DriveRedirectionDisabled = 2,
			PrinterRedirectionDisabled = 3,
			PortRedirectionDisabled = 4,
			ClipboardRedirectionDisabled = 5,
			PnpRedirectionDisabled = 6,
			AllowOnlySDRServers = 7,
		}
		public enum AATrustClassID : int32
		{
			UNTRUSTED = 0,
			TRUSTEDUSER_UNTRUSTEDCLIENT = 1,
			TRUSTEDUSER_TRUSTEDCLIENT = 2,
		}
		public enum WTS_CONNECTSTATE_CLASS : int32
		{
			WTSActive = 0,
			WTSConnected = 1,
			WTSConnectQuery = 2,
			WTSShadow = 3,
			WTSDisconnected = 4,
			WTSIdle = 5,
			WTSListen = 6,
			WTSReset = 7,
			WTSDown = 8,
			WTSInit = 9,
		}
		public enum WTS_INFO_CLASS : int32
		{
			WTSInitialProgram = 0,
			WTSApplicationName = 1,
			WTSWorkingDirectory = 2,
			WTSOEMId = 3,
			WTSSessionId = 4,
			WTSUserName = 5,
			WTSWinStationName = 6,
			WTSDomainName = 7,
			WTSConnectState = 8,
			WTSClientBuildNumber = 9,
			WTSClientName = 10,
			WTSClientDirectory = 11,
			WTSClientProductId = 12,
			WTSClientHardwareId = 13,
			WTSClientAddress = 14,
			WTSClientDisplay = 15,
			WTSClientProtocolType = 16,
			WTSIdleTime = 17,
			WTSLogonTime = 18,
			WTSIncomingBytes = 19,
			WTSOutgoingBytes = 20,
			WTSIncomingFrames = 21,
			WTSOutgoingFrames = 22,
			WTSClientInfo = 23,
			WTSSessionInfo = 24,
			WTSSessionInfoEx = 25,
			WTSConfigInfo = 26,
			WTSValidationInfo = 27,
			WTSSessionAddressV4 = 28,
			WTSIsRemoteSession = 29,
		}
		public enum WTS_CONFIG_CLASS : int32
		{
			ConfigInitialProgram = 0,
			ConfigWorkingDirectory = 1,
			ConfigfInheritInitialProgram = 2,
			ConfigfAllowLogonTerminalServer = 3,
			ConfigTimeoutSettingsConnections = 4,
			ConfigTimeoutSettingsDisconnections = 5,
			ConfigTimeoutSettingsIdle = 6,
			ConfigfDeviceClientDrives = 7,
			ConfigfDeviceClientPrinters = 8,
			ConfigfDeviceClientDefaultPrinter = 9,
			ConfigBrokenTimeoutSettings = 10,
			ConfigReconnectSettings = 11,
			ConfigModemCallbackSettings = 12,
			ConfigModemCallbackPhoneNumber = 13,
			ConfigShadowingSettings = 14,
			ConfigTerminalServerProfilePath = 15,
			ConfigTerminalServerHomeDir = 16,
			ConfigTerminalServerHomeDirDrive = 17,
			ConfigfTerminalServerRemoteHomeDir = 18,
			ConfigUser = 19,
		}
		public enum WTS_CONFIG_SOURCE : int32
		{
			WTSUserConfigSourceSAM = 0,
		}
		public enum WTS_VIRTUAL_CLASS : int32
		{
			ClientData = 0,
			FileHandle = 1,
		}
		public enum WTS_TYPE_CLASS : int32
		{
			ProcessInfoLevel0 = 0,
			ProcessInfoLevel1 = 1,
			SessionInfoLevel1 = 2,
		}
		public enum WTSSBX_MACHINE_DRAIN : int32
		{
			UNSPEC = 0,
			OFF = 1,
			ON = 2,
		}
		public enum WTSSBX_MACHINE_SESSION_MODE : int32
		{
			UNSPEC = 0,
			SINGLE = 1,
			MULTIPLE = 2,
		}
		public enum WTSSBX_ADDRESS_FAMILY : int32
		{
			UNSPEC = 0,
			INET = 1,
			INET6 = 2,
			IPX = 3,
			NETBIOS = 4,
		}
		public enum WTSSBX_MACHINE_STATE : int32
		{
			UNSPEC = 0,
			READY = 1,
			SYNCHRONIZING = 2,
		}
		public enum WTSSBX_SESSION_STATE : int32
		{
			UNSPEC = 0,
			ACTIVE = 1,
			DISCONNECTED = 2,
		}
		public enum WTSSBX_NOTIFICATION_TYPE : int32
		{
			REMOVED = 1,
			CHANGED = 2,
			ADDED = 4,
			RESYNC = 8,
		}
		public enum TSSD_AddrV46Type : int32
		{
			UNDEFINED = 0,
			IPv4 = 4,
			IPv6 = 6,
		}
		public enum TSSB_NOTIFICATION_TYPE : int32
		{
			INVALID = 0,
			TARGET_CHANGE = 1,
			SESSION_CHANGE = 2,
			CONNECTION_REQUEST_CHANGE = 4,
		}
		public enum TARGET_STATE : int32
		{
			UNKNOWN = 1,
			INITIALIZING = 2,
			RUNNING = 3,
			DOWN = 4,
			HIBERNATED = 5,
			CHECKED_OUT = 6,
			STOPPED = 7,
			INVALID = 8,
			STARTING = 9,
			STOPPING = 10,
			MAXSTATE = 11,
		}
		public enum TARGET_CHANGE_TYPE : int32
		{
			CHANGE_UNSPEC = 1,
			EXTERNALIP_CHANGED = 2,
			INTERNALIP_CHANGED = 4,
			JOINED = 8,
			REMOVED = 16,
			STATE_CHANGED = 32,
			IDLE = 64,
			PENDING = 128,
			INUSE = 256,
			PATCH_STATE_CHANGED = 512,
			FARM_MEMBERSHIP_CHANGED = 1024,
		}
		public enum TARGET_TYPE : int32
		{
			UNKNOWN = 0,
			FARM = 1,
			NONFARM = 2,
		}
		public enum TARGET_PATCH_STATE : int32
		{
			UNKNOWN = 0,
			NOT_STARTED = 1,
			IN_PROGRESS = 2,
			COMPLETED = 3,
			FAILED = 4,
		}
		public enum CLIENT_MESSAGE_TYPE : int32
		{
			INVALID = 0,
			STATUS = 1,
			ERROR = 2,
		}
		public enum CONNECTION_CHANGE_NOTIFICATION : int32
		{
			INVALID = 0,
			PENDING = 1,
			FAILED = 2,
			TIMEDOUT = 3,
			SUCCEEDED = 4,
			CANCELLED = 5,
			LB_COMPLETED = 6,
			QUERY_PL_COMPLETED = 7,
			ORCH_COMPLETED = 8,
		}
		public enum RD_FARM_TYPE : int32
		{
			RDSH = 0,
			TEMP_VM = 1,
			MANUAL_PERSONAL_VM = 2,
			AUTO_PERSONAL_VM = 3,
			MANUAL_PERSONAL_RDSH = 4,
			AUTO_PERSONAL_RDSH = 5,
			TYPE_UNKNOWN = -1,
		}
		public enum PLUGIN_TYPE : int32
		{
			UNKNOWN_PLUGIN = 0,
			POLICY_PLUGIN = 1,
			RESOURCE_PLUGIN = 2,
			LOAD_BALANCING_PLUGIN = 4,
			PLACEMENT_PLUGIN = 8,
			ORCHESTRATION_PLUGIN = 16,
			PROVISIONING_PLUGIN = 32,
			TASK_PLUGIN = 64,
		}
		public enum TSSESSION_STATE : int32
		{
			INVALID = -1,
			ACTIVE = 0,
			CONNECTED = 1,
			CONNECTQUERY = 2,
			SHADOW = 3,
			DISCONNECTED = 4,
			IDLE = 5,
			LISTEN = 6,
			RESET = 7,
			DOWN = 8,
			INIT = 9,
			MAX = 10,
		}
		public enum TARGET_OWNER : int32
		{
			UNKNOWN = 0,
			MS_TS_PLUGIN = 1,
			MS_VM_PLUGIN = 2,
		}
		public enum VM_NOTIFY_STATUS : int32
		{
			PENDING = 0,
			IN_PROGRESS = 1,
			COMPLETE = 2,
			FAILED = 3,
			CANCELED = 4,
		}
		public enum VM_HOST_NOTIFY_STATUS : int32
		{
			PENDING = 0,
			IN_PROGRESS = 1,
			COMPLETE = 2,
			FAILED = 3,
		}
		public enum RDV_TASK_STATUS : int32
		{
			UNKNOWN = 0,
			SEARCHING = 1,
			DOWNLOADING = 2,
			APPLYING = 3,
			REBOOTING = 4,
			REBOOTED = 5,
			SUCCESS = 6,
			FAILED = 7,
			TIMEOUT = 8,
		}
		public enum TS_SB_SORT_BY : int32
		{
			NONE = 0,
			NAME = 1,
			PROP = 2,
		}
		public enum TSPUB_PLUGIN_PD_RESOLUTION_TYPE : int32
		{
			OR_CREATE = 0,
			EXISTING = 1,
		}
		public enum TSPUB_PLUGIN_PD_ASSIGNMENT_TYPE : int32
		{
			NEW = 0,
			EXISTING = 1,
		}
		public enum WRdsGraphicsChannelType : int32
		{
			GuaranteedDelivery = 0,
			BestEffortDelivery = 1,
		}
		public enum WTS_RCM_SERVICE_STATE : int32
		{
			NONE = 0,
			START = 1,
			STOP = 2,
		}
		public enum WTS_RCM_DRAIN_STATE : int32
		{
			STATE_NONE = 0,
			IN_DRAIN = 1,
			NOT_IN_DRAIN = 2,
		}
		public enum WTS_LOGON_ERROR_REDIRECTOR_RESPONSE : int32
		{
			INVALID = 0,
			NOT_HANDLED = 1,
			HANDLED_SHOW = 2,
			HANDLED_DONT_SHOW = 3,
			HANDLED_DONT_SHOW_START_OVER = 4,
		}
		public enum WTS_CERT_TYPE : int32
		{
			INVALID = 0,
			PROPRIETORY = 1,
			X509 = 2,
		}
		public enum WRDS_CONNECTION_SETTING_LEVEL : int32
		{
			INVALID = 0,
			_1 = 1,
		}
		public enum WRDS_LISTENER_SETTING_LEVEL : int32
		{
			INVALID = 0,
			_1 = 1,
		}
		public enum WRDS_SETTING_TYPE : int32
		{
			INVALID = 0,
			MACHINE = 1,
			USER = 2,
			SAM = 3,
		}
		public enum WRDS_SETTING_STATUS : int32
		{
			NOTAPPLICABLE = -1,
			DISABLED = 0,
			ENABLED = 1,
			NOTCONFIGURED = 2,
		}
		public enum WRDS_SETTING_LEVEL : int32
		{
			INVALID = 0,
			_1 = 1,
		}
		public enum PasswordEncodingType : int32
		{
			UTF8 = 0,
			UTF16LE = 1,
			UTF16BE = 2,
		}
		public enum RemoteActionType : int32
		{
			Charms = 0,
			Appbar = 1,
			Snap = 2,
			StartScreen = 3,
			AppSwitch = 4,
		}
		public enum SnapshotEncodingType : int32
		{
			DataUri = 0,
		}
		public enum SnapshotFormatType : int32
		{
			Png = 0,
			Jpeg = 1,
			Bmp = 2,
		}
		public enum KeyCombinationType : int32
		{
			Home = 0,
			Left = 1,
			Up = 2,
			Right = 3,
			Down = 4,
			Scroll = 5,
		}
		
		// --- Function Pointers ---
		
		public function void PCHANNEL_INIT_EVENT_FN(void* pInitHandle, uint32 event, void* pData, uint32 dataLength);
		public function void PCHANNEL_OPEN_EVENT_FN(uint32 openHandle, uint32 event, void* pData, uint32 dataLength, uint32 totalLength, uint32 dataFlags);
		public function uint32 PVIRTUALCHANNELINIT(void** ppInitHandle, out CHANNEL_DEF pChannel, int32 channelCount, uint32 versionRequested, PCHANNEL_INIT_EVENT_FN pChannelInitEventProc);
		public function uint32 PVIRTUALCHANNELOPEN(void* pInitHandle, out uint32 pOpenHandle, char8* pChannelName, PCHANNEL_OPEN_EVENT_FN pChannelOpenEventProc);
		public function uint32 PVIRTUALCHANNELCLOSE(uint32 openHandle);
		public function uint32 PVIRTUALCHANNELWRITE(uint32 openHandle, void* pData, uint32 dataLength, void* pUserData);
		public function IntBool PVIRTUALCHANNELENTRY(out CHANNEL_ENTRY_POINTS pEntryPoints);
		
		// --- Structs ---
		
		[CRepr]
		public struct AE_CURRENT_POSITION
		{
			public uint64 u64DevicePosition;
			public uint64 u64StreamPosition;
			public uint64 u64PaddingFrames;
			public int64 hnsQPCPosition;
			public float f32FramesPerSecond;
			public AE_POSITION_FLAGS Flag;
		}
		[CRepr]
		public struct AAAccountingData
		{
			public BSTR userName;
			public BSTR clientName;
			public AAAuthSchemes authType;
			public BSTR resourceName;
			public int32 portNumber;
			public BSTR protocolName;
			public int32 numberOfBytesReceived;
			public int32 numberOfBytesTransfered;
			public BSTR reasonForDisconnect;
			public Guid mainSessionId;
			public int32 subSessionId;
		}
		[CRepr]
		public struct WTS_SERVER_INFOW
		{
			public char16* pServerName;
		}
		[CRepr]
		public struct WTS_SERVER_INFOA
		{
			public char8* pServerName;
		}
		[CRepr]
		public struct WTS_SESSION_INFOW
		{
			public uint32 SessionId;
			public char16* pWinStationName;
			public WTS_CONNECTSTATE_CLASS State;
		}
		[CRepr]
		public struct WTS_SESSION_INFOA
		{
			public uint32 SessionId;
			public char8* pWinStationName;
			public WTS_CONNECTSTATE_CLASS State;
		}
		[CRepr]
		public struct WTS_SESSION_INFO_1W
		{
			public uint32 ExecEnvId;
			public WTS_CONNECTSTATE_CLASS State;
			public uint32 SessionId;
			public char16* pSessionName;
			public char16* pHostName;
			public char16* pUserName;
			public char16* pDomainName;
			public char16* pFarmName;
		}
		[CRepr]
		public struct WTS_SESSION_INFO_1A
		{
			public uint32 ExecEnvId;
			public WTS_CONNECTSTATE_CLASS State;
			public uint32 SessionId;
			public char8* pSessionName;
			public char8* pHostName;
			public char8* pUserName;
			public char8* pDomainName;
			public char8* pFarmName;
		}
		[CRepr]
		public struct WTS_PROCESS_INFOW
		{
			public uint32 SessionId;
			public uint32 ProcessId;
			public char16* pProcessName;
			public PSID pUserSid;
		}
		[CRepr]
		public struct WTS_PROCESS_INFOA
		{
			public uint32 SessionId;
			public uint32 ProcessId;
			public char8* pProcessName;
			public PSID pUserSid;
		}
		[CRepr]
		public struct WTSCONFIGINFOW
		{
			public uint32 version;
			public uint32 fConnectClientDrivesAtLogon;
			public uint32 fConnectPrinterAtLogon;
			public uint32 fDisablePrinterRedirection;
			public uint32 fDisableDefaultMainClientPrinter;
			public uint32 ShadowSettings;
			public char16[21] LogonUserName;
			public char16[18] LogonDomain;
			public char16[261] WorkDirectory;
			public char16[261] InitialProgram;
			public char16[261] ApplicationName;
		}
		[CRepr]
		public struct WTSCONFIGINFOA
		{
			public uint32 version;
			public uint32 fConnectClientDrivesAtLogon;
			public uint32 fConnectPrinterAtLogon;
			public uint32 fDisablePrinterRedirection;
			public uint32 fDisableDefaultMainClientPrinter;
			public uint32 ShadowSettings;
			public char8[21] LogonUserName;
			public char8[18] LogonDomain;
			public char8[261] WorkDirectory;
			public char8[261] InitialProgram;
			public char8[261] ApplicationName;
		}
		[CRepr]
		public struct WTSINFOW
		{
			public WTS_CONNECTSTATE_CLASS State;
			public uint32 SessionId;
			public uint32 IncomingBytes;
			public uint32 OutgoingBytes;
			public uint32 IncomingFrames;
			public uint32 OutgoingFrames;
			public uint32 IncomingCompressedBytes;
			public uint32 OutgoingCompressedBytes;
			public char16[32] WinStationName;
			public char16[17] Domain;
			public char16[21] UserName;
			public LARGE_INTEGER ConnectTime;
			public LARGE_INTEGER DisconnectTime;
			public LARGE_INTEGER LastInputTime;
			public LARGE_INTEGER LogonTime;
			public LARGE_INTEGER CurrentTime;
		}
		[CRepr]
		public struct WTSINFOA
		{
			public WTS_CONNECTSTATE_CLASS State;
			public uint32 SessionId;
			public uint32 IncomingBytes;
			public uint32 OutgoingBytes;
			public uint32 IncomingFrames;
			public uint32 OutgoingFrames;
			public uint32 IncomingCompressedBytes;
			public uint32 OutgoingCompressedBy;
			public char8[32] WinStationName;
			public char8[17] Domain;
			public char8[21] UserName;
			public LARGE_INTEGER ConnectTime;
			public LARGE_INTEGER DisconnectTime;
			public LARGE_INTEGER LastInputTime;
			public LARGE_INTEGER LogonTime;
			public LARGE_INTEGER CurrentTime;
		}
		[CRepr]
		public struct WTSINFOEX_LEVEL1_W
		{
			public uint32 SessionId;
			public WTS_CONNECTSTATE_CLASS SessionState;
			public int32 SessionFlags;
			public char16[33] WinStationName;
			public char16[21] UserName;
			public char16[18] DomainName;
			public LARGE_INTEGER LogonTime;
			public LARGE_INTEGER ConnectTime;
			public LARGE_INTEGER DisconnectTime;
			public LARGE_INTEGER LastInputTime;
			public LARGE_INTEGER CurrentTime;
			public uint32 IncomingBytes;
			public uint32 OutgoingBytes;
			public uint32 IncomingFrames;
			public uint32 OutgoingFrames;
			public uint32 IncomingCompressedBytes;
			public uint32 OutgoingCompressedBytes;
		}
		[CRepr]
		public struct WTSINFOEX_LEVEL1_A
		{
			public uint32 SessionId;
			public WTS_CONNECTSTATE_CLASS SessionState;
			public int32 SessionFlags;
			public char8[33] WinStationName;
			public char8[21] UserName;
			public char8[18] DomainName;
			public LARGE_INTEGER LogonTime;
			public LARGE_INTEGER ConnectTime;
			public LARGE_INTEGER DisconnectTime;
			public LARGE_INTEGER LastInputTime;
			public LARGE_INTEGER CurrentTime;
			public uint32 IncomingBytes;
			public uint32 OutgoingBytes;
			public uint32 IncomingFrames;
			public uint32 OutgoingFrames;
			public uint32 IncomingCompressedBytes;
			public uint32 OutgoingCompressedBytes;
		}
		[CRepr, Union]
		public struct WTSINFOEX_LEVEL_W
		{
			public WTSINFOEX_LEVEL1_W WTSInfoExLevel1;
		}
		[CRepr, Union]
		public struct WTSINFOEX_LEVEL_A
		{
			public WTSINFOEX_LEVEL1_A WTSInfoExLevel1;
		}
		[CRepr]
		public struct WTSINFOEXW
		{
			public uint32 Level;
			public WTSINFOEX_LEVEL_W Data;
		}
		[CRepr]
		public struct WTSINFOEXA
		{
			public uint32 Level;
			public WTSINFOEX_LEVEL_A Data;
		}
		[CRepr]
		public struct WTSCLIENTW
		{
			public char16[21] ClientName;
			public char16[18] Domain;
			public char16[21] UserName;
			public char16[261] WorkDirectory;
			public char16[261] InitialProgram;
			public uint8 EncryptionLevel;
			public uint32 ClientAddressFamily;
			public uint16[31] ClientAddress;
			public uint16 HRes;
			public uint16 VRes;
			public uint16 ColorDepth;
			public char16[261] ClientDirectory;
			public uint32 ClientBuildNumber;
			public uint32 ClientHardwareId;
			public uint16 ClientProductId;
			public uint16 OutBufCountHost;
			public uint16 OutBufCountClient;
			public uint16 OutBufLength;
			public char16[261] DeviceId;
		}
		[CRepr]
		public struct WTSCLIENTA
		{
			public char8[21] ClientName;
			public char8[18] Domain;
			public char8[21] UserName;
			public char8[261] WorkDirectory;
			public char8[261] InitialProgram;
			public uint8 EncryptionLevel;
			public uint32 ClientAddressFamily;
			public uint16[31] ClientAddress;
			public uint16 HRes;
			public uint16 VRes;
			public uint16 ColorDepth;
			public char8[261] ClientDirectory;
			public uint32 ClientBuildNumber;
			public uint32 ClientHardwareId;
			public uint16 ClientProductId;
			public uint16 OutBufCountHost;
			public uint16 OutBufCountClient;
			public uint16 OutBufLength;
			public char8[261] DeviceId;
		}
		[CRepr]
		public struct _WTS_PRODUCT_INFOA
		{
			public char8[256] CompanyName;
			public char8[4] ProductID;
		}
		[CRepr]
		public struct _WTS_PRODUCT_INFOW
		{
			public char16[256] CompanyName;
			public char16[4] ProductID;
		}
		[CRepr]
		public struct WTS_VALIDATION_INFORMATIONA
		{
			public _WTS_PRODUCT_INFOA ProductInfo;
			public uint8[16384] License;
			public uint32 LicenseLength;
			public uint8[20] HardwareID;
			public uint32 HardwareIDLength;
		}
		[CRepr]
		public struct WTS_VALIDATION_INFORMATIONW
		{
			public _WTS_PRODUCT_INFOW ProductInfo;
			public uint8[16384] License;
			public uint32 LicenseLength;
			public uint8[20] HardwareID;
			public uint32 HardwareIDLength;
		}
		[CRepr]
		public struct WTS_CLIENT_ADDRESS
		{
			public uint32 AddressFamily;
			public uint8[20] Address;
		}
		[CRepr]
		public struct WTS_CLIENT_DISPLAY
		{
			public uint32 HorizontalResolution;
			public uint32 VerticalResolution;
			public uint32 ColorDepth;
		}
		[CRepr]
		public struct WTSUSERCONFIGA
		{
			public uint32 Source;
			public uint32 InheritInitialProgram;
			public uint32 AllowLogonTerminalServer;
			public uint32 TimeoutSettingsConnections;
			public uint32 TimeoutSettingsDisconnections;
			public uint32 TimeoutSettingsIdle;
			public uint32 DeviceClientDrives;
			public uint32 DeviceClientPrinters;
			public uint32 ClientDefaultPrinter;
			public uint32 BrokenTimeoutSettings;
			public uint32 ReconnectSettings;
			public uint32 ShadowingSettings;
			public uint32 TerminalServerRemoteHomeDir;
			public char8[261] InitialProgram;
			public char8[261] WorkDirectory;
			public char8[261] TerminalServerProfilePath;
			public char8[261] TerminalServerHomeDir;
			public char8[4] TerminalServerHomeDirDrive;
		}
		[CRepr]
		public struct WTSUSERCONFIGW
		{
			public uint32 Source;
			public uint32 InheritInitialProgram;
			public uint32 AllowLogonTerminalServer;
			public uint32 TimeoutSettingsConnections;
			public uint32 TimeoutSettingsDisconnections;
			public uint32 TimeoutSettingsIdle;
			public uint32 DeviceClientDrives;
			public uint32 DeviceClientPrinters;
			public uint32 ClientDefaultPrinter;
			public uint32 BrokenTimeoutSettings;
			public uint32 ReconnectSettings;
			public uint32 ShadowingSettings;
			public uint32 TerminalServerRemoteHomeDir;
			public char16[261] InitialProgram;
			public char16[261] WorkDirectory;
			public char16[261] TerminalServerProfilePath;
			public char16[261] TerminalServerHomeDir;
			public char16[4] TerminalServerHomeDirDrive;
		}
		[CRepr]
		public struct WTS_SESSION_ADDRESS
		{
			public uint32 AddressFamily;
			public uint8[20] Address;
		}
		[CRepr]
		public struct WTS_PROCESS_INFO_EXW
		{
			public uint32 SessionId;
			public uint32 ProcessId;
			public char16* pProcessName;
			public PSID pUserSid;
			public uint32 NumberOfThreads;
			public uint32 HandleCount;
			public uint32 PagefileUsage;
			public uint32 PeakPagefileUsage;
			public uint32 WorkingSetSize;
			public uint32 PeakWorkingSetSize;
			public LARGE_INTEGER UserTime;
			public LARGE_INTEGER KernelTime;
		}
		[CRepr]
		public struct WTS_PROCESS_INFO_EXA
		{
			public uint32 SessionId;
			public uint32 ProcessId;
			public char8* pProcessName;
			public PSID pUserSid;
			public uint32 NumberOfThreads;
			public uint32 HandleCount;
			public uint32 PagefileUsage;
			public uint32 PeakPagefileUsage;
			public uint32 WorkingSetSize;
			public uint32 PeakWorkingSetSize;
			public LARGE_INTEGER UserTime;
			public LARGE_INTEGER KernelTime;
		}
		[CRepr]
		public struct WTSLISTENERCONFIGW
		{
			public uint32 version;
			public uint32 fEnableListener;
			public uint32 MaxConnectionCount;
			public uint32 fPromptForPassword;
			public uint32 fInheritColorDepth;
			public uint32 ColorDepth;
			public uint32 fInheritBrokenTimeoutSettings;
			public uint32 BrokenTimeoutSettings;
			public uint32 fDisablePrinterRedirection;
			public uint32 fDisableDriveRedirection;
			public uint32 fDisableComPortRedirection;
			public uint32 fDisableLPTPortRedirection;
			public uint32 fDisableClipboardRedirection;
			public uint32 fDisableAudioRedirection;
			public uint32 fDisablePNPRedirection;
			public uint32 fDisableDefaultMainClientPrinter;
			public uint32 LanAdapter;
			public uint32 PortNumber;
			public uint32 fInheritShadowSettings;
			public uint32 ShadowSettings;
			public uint32 TimeoutSettingsConnection;
			public uint32 TimeoutSettingsDisconnection;
			public uint32 TimeoutSettingsIdle;
			public uint32 SecurityLayer;
			public uint32 MinEncryptionLevel;
			public uint32 UserAuthentication;
			public char16[61] Comment;
			public char16[21] LogonUserName;
			public char16[18] LogonDomain;
			public char16[261] WorkDirectory;
			public char16[261] InitialProgram;
		}
		[CRepr]
		public struct WTSLISTENERCONFIGA
		{
			public uint32 version;
			public uint32 fEnableListener;
			public uint32 MaxConnectionCount;
			public uint32 fPromptForPassword;
			public uint32 fInheritColorDepth;
			public uint32 ColorDepth;
			public uint32 fInheritBrokenTimeoutSettings;
			public uint32 BrokenTimeoutSettings;
			public uint32 fDisablePrinterRedirection;
			public uint32 fDisableDriveRedirection;
			public uint32 fDisableComPortRedirection;
			public uint32 fDisableLPTPortRedirection;
			public uint32 fDisableClipboardRedirection;
			public uint32 fDisableAudioRedirection;
			public uint32 fDisablePNPRedirection;
			public uint32 fDisableDefaultMainClientPrinter;
			public uint32 LanAdapter;
			public uint32 PortNumber;
			public uint32 fInheritShadowSettings;
			public uint32 ShadowSettings;
			public uint32 TimeoutSettingsConnection;
			public uint32 TimeoutSettingsDisconnection;
			public uint32 TimeoutSettingsIdle;
			public uint32 SecurityLayer;
			public uint32 MinEncryptionLevel;
			public uint32 UserAuthentication;
			public char8[61] Comment;
			public char8[21] LogonUserName;
			public char8[18] LogonDomain;
			public char8[261] WorkDirectory;
			public char8[261] InitialProgram;
		}
		[CRepr]
		public struct WTSSBX_IP_ADDRESS
		{
			public WTSSBX_ADDRESS_FAMILY AddressFamily;
			public uint8[16] Address;
			public uint16 PortNumber;
			public uint32 dwScope;
		}
		[CRepr]
		public struct WTSSBX_MACHINE_CONNECT_INFO
		{
			public char16[257] wczMachineFQDN;
			public char16[17] wczMachineNetBiosName;
			public uint32 dwNumOfIPAddr;
			public WTSSBX_IP_ADDRESS[12] IPaddr;
		}
		[CRepr]
		public struct WTSSBX_MACHINE_INFO
		{
			public WTSSBX_MACHINE_CONNECT_INFO ClientConnectInfo;
			public char16[257] wczFarmName;
			public WTSSBX_IP_ADDRESS InternalIPAddress;
			public uint32 dwMaxSessionsLimit;
			public uint32 ServerWeight;
			public WTSSBX_MACHINE_SESSION_MODE SingleSessionMode;
			public WTSSBX_MACHINE_DRAIN InDrain;
			public WTSSBX_MACHINE_STATE MachineState;
		}
		[CRepr]
		public struct WTSSBX_SESSION_INFO
		{
			public char16[105] wszUserName;
			public char16[257] wszDomainName;
			public char16[257] ApplicationType;
			public uint32 dwSessionId;
			public FileTime CreateTime;
			public FileTime DisconnectTime;
			public WTSSBX_SESSION_STATE SessionState;
		}
		[CRepr, Packed(1)]
		public struct CHANNEL_DEF
		{
			public char8[8] name;
			public uint32 options;
		}
		[CRepr]
		public struct CHANNEL_PDU_HEADER
		{
			public uint32 length;
			public uint32 flags;
		}
		[CRepr]
		public struct CHANNEL_ENTRY_POINTS
		{
			public uint32 cbSize;
			public uint32 protocolVersion;
			public PVIRTUALCHANNELINIT pVirtualChannelInit;
			public PVIRTUALCHANNELOPEN pVirtualChannelOpen;
			public PVIRTUALCHANNELCLOSE pVirtualChannelClose;
			public PVIRTUALCHANNELWRITE pVirtualChannelWrite;
		}
		[CRepr]
		public struct CLIENT_DISPLAY
		{
			public uint32 HorizontalResolution;
			public uint32 VerticalResolution;
			public uint32 ColorDepth;
		}
		[CRepr]
		public struct TSSD_ConnectionPoint
		{
			public uint8[16] ServerAddressB;
			public TSSD_AddrV46Type AddressType;
			public uint16 PortNumber;
			public uint32 AddressScope;
		}
		[CRepr]
		public struct VM_NOTIFY_ENTRY
		{
			public char16[128] VmName;
			public char16[128] VmHost;
		}
		[CRepr]
		public struct VM_PATCH_INFO
		{
			public uint32 dwNumEntries;
			public char16** pVmNames;
		}
		[CRepr]
		public struct VM_NOTIFY_INFO
		{
			public uint32 dwNumEntries;
			public VM_NOTIFY_ENTRY** ppVmEntries;
		}
		[CRepr]
		public struct pluginResource
		{
			public char16[256] alias;
			public char16[256] name;
			public char16* resourceFileContents;
			public char16[256] fileExtension;
			public char16[256] resourcePluginType;
			public uint8 isDiscoverable;
			public int32 resourceType;
			public uint32 pceIconSize;
			public uint8* iconContents;
			public uint32 pcePluginBlobSize;
			public uint8* blobContents;
		}
		[CRepr]
		public struct pluginResource2FileAssociation
		{
			public char16[256] extName;
			public uint8 primaryHandler;
			public uint32 pceIconSize;
			public uint8* iconContents;
		}
		[CRepr]
		public struct pluginResource2
		{
			public pluginResource resourceV1;
			public uint32 pceFileAssocListSize;
			public pluginResource2FileAssociation* fileAssocList;
			public char16* securityDescriptor;
			public uint32 pceFolderListSize;
			public uint16** folderList;
		}
		[CRepr]
		public struct BITMAP_RENDERER_STATISTICS
		{
			public uint32 dwFramesDelivered;
			public uint32 dwFramesDropped;
		}
		[CRepr, Packed(1)]
		public struct RFX_GFX_RECT
		{
			public int32 left;
			public int32 top;
			public int32 right;
			public int32 bottom;
		}
		[CRepr, Packed(1)]
		public struct RFX_GFX_MSG_HEADER
		{
			public uint16 uMSGType;
			public uint16 cbSize;
		}
		[CRepr, Packed(1)]
		public struct RFX_GFX_MONITOR_INFO
		{
			public int32 left;
			public int32 top;
			public int32 right;
			public int32 bottom;
			public uint32 physicalWidth;
			public uint32 physicalHeight;
			public uint32 orientation;
			public IntBool primary;
		}
		[CRepr]
		public struct RFX_GFX_MSG_CLIENT_DESKTOP_INFO_REQUEST
		{
			public RFX_GFX_MSG_HEADER channelHdr;
		}
		[CRepr, Packed(1)]
		public struct RFX_GFX_MSG_CLIENT_DESKTOP_INFO_RESPONSE
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public uint32 reserved;
			public uint32 monitorCount;
			public RFX_GFX_MONITOR_INFO[16] MonitorData;
			public char16[32] clientUniqueId;
		}
		[CRepr, Packed(1)]
		public struct RFX_GFX_MSG_DESKTOP_CONFIG_CHANGE_NOTIFY
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public uint32 ulWidth;
			public uint32 ulHeight;
			public uint32 ulBpp;
			public uint32 Reserved;
		}
		[CRepr]
		public struct RFX_GFX_MSG_DESKTOP_CONFIG_CHANGE_CONFIRM
		{
			public RFX_GFX_MSG_HEADER channelHdr;
		}
		[CRepr, Packed(1)]
		public struct RFX_GFX_MSG_DESKTOP_INPUT_RESET
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public uint32 ulWidth;
			public uint32 ulHeight;
		}
		[CRepr, Packed(1)]
		public struct RFX_GFX_MSG_DISCONNECT_NOTIFY
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public uint32 DisconnectReason;
		}
		[CRepr]
		public struct RFX_GFX_MSG_DESKTOP_RESEND_REQUEST
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public RFX_GFX_RECT RedrawRect;
		}
		[CRepr]
		public struct RFX_GFX_MSG_RDP_DATA
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public uint8[0] rdpData;
		}
		[CRepr]
		public struct WTS_SOCKADDR
		{
			public uint16 sin_family;
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public _ipv4_e__Struct ipv4;
				public _ipv6_e__Struct ipv6;
				
				[CRepr]
				public struct _ipv6_e__Struct
				{
					public uint16 sin6_port;
					public uint32 sin6_flowinfo;
					public uint16[8] sin6_addr;
					public uint32 sin6_scope_id;
				}
				[CRepr]
				public struct _ipv4_e__Struct
				{
					public uint16 sin_port;
					public uint32 IN_ADDR;
					public uint8[8] sin_zero;
				}
			}
		}
		[CRepr]
		public struct WTS_SMALL_RECT
		{
			public int16 Left;
			public int16 Top;
			public int16 Right;
			public int16 Bottom;
		}
		[CRepr]
		public struct WTS_SERVICE_STATE
		{
			public WTS_RCM_SERVICE_STATE RcmServiceState;
			public WTS_RCM_DRAIN_STATE RcmDrainState;
		}
		[CRepr]
		public struct WTS_SESSION_ID
		{
			public Guid SessionUniqueGuid;
			public uint32 SessionId;
		}
		[CRepr]
		public struct WTS_USER_CREDENTIAL
		{
			public char16[256] UserName;
			public char16[256] Password;
			public char16[256] Domain;
		}
		[CRepr]
		public struct WTS_SYSTEMTIME
		{
			public uint16 wYear;
			public uint16 wMonth;
			public uint16 wDayOfWeek;
			public uint16 wDay;
			public uint16 wHour;
			public uint16 wMinute;
			public uint16 wSecond;
			public uint16 wMilliseconds;
		}
		[CRepr]
		public struct WTS_TIME_ZONE_INFORMATION
		{
			public int32 Bias;
			public char16[32] StandardName;
			public WTS_SYSTEMTIME StandardDate;
			public int32 StandardBias;
			public char16[32] DaylightName;
			public WTS_SYSTEMTIME DaylightDate;
			public int32 DaylightBias;
		}
		[CRepr]
		public struct WRDS_DYNAMIC_TIME_ZONE_INFORMATION
		{
			public int32 Bias;
			public char16[32] StandardName;
			public WTS_SYSTEMTIME StandardDate;
			public int32 StandardBias;
			public char16[32] DaylightName;
			public WTS_SYSTEMTIME DaylightDate;
			public int32 DaylightBias;
			public char16[128] TimeZoneKeyName;
			public uint16 DynamicDaylightTimeDisabled;
		}
		[CRepr]
		public struct WTS_CLIENT_DATA
		{
			public bool fDisableCtrlAltDel;
			public bool fDoubleClickDetect;
			public bool fEnableWindowsKey;
			public bool fHideTitleBar;
			public IntBool fInheritAutoLogon;
			public bool fPromptForPassword;
			public bool fUsingSavedCreds;
			public char16[256] Domain;
			public char16[256] UserName;
			public char16[256] Password;
			public bool fPasswordIsScPin;
			public IntBool fInheritInitialProgram;
			public char16[257] WorkDirectory;
			public char16[257] InitialProgram;
			public bool fMaximizeShell;
			public uint8 EncryptionLevel;
			public uint32 PerformanceFlags;
			public char16[9] ProtocolName;
			public uint16 ProtocolType;
			public IntBool fInheritColorDepth;
			public uint16 HRes;
			public uint16 VRes;
			public uint16 ColorDepth;
			public char16[9] DisplayDriverName;
			public char16[20] DisplayDeviceName;
			public bool fMouse;
			public uint32 KeyboardLayout;
			public uint32 KeyboardType;
			public uint32 KeyboardSubType;
			public uint32 KeyboardFunctionKey;
			public char16[33] imeFileName;
			public uint32 ActiveInputLocale;
			public bool fNoAudioPlayback;
			public bool fRemoteConsoleAudio;
			public char16[9] AudioDriverName;
			public WTS_TIME_ZONE_INFORMATION ClientTimeZone;
			public char16[21] ClientName;
			public uint32 SerialNumber;
			public uint32 ClientAddressFamily;
			public char16[31] ClientAddress;
			public WTS_SOCKADDR ClientSockAddress;
			public char16[257] ClientDirectory;
			public uint32 ClientBuildNumber;
			public uint16 ClientProductId;
			public uint16 OutBufCountHost;
			public uint16 OutBufCountClient;
			public uint16 OutBufLength;
			public uint32 ClientSessionId;
			public char16[33] ClientDigProductId;
			public bool fDisableCpm;
			public bool fDisableCdm;
			public bool fDisableCcm;
			public bool fDisableLPT;
			public bool fDisableClip;
			public bool fDisablePNP;
		}
		[CRepr]
		public struct WTS_USER_DATA
		{
			public char16[257] WorkDirectory;
			public char16[257] InitialProgram;
			public WTS_TIME_ZONE_INFORMATION UserTimeZone;
		}
		[CRepr]
		public struct WTS_POLICY_DATA
		{
			public bool fDisableEncryption;
			public bool fDisableAutoReconnect;
			public uint32 ColorDepth;
			public uint8 MinEncryptionLevel;
			public bool fDisableCpm;
			public bool fDisableCdm;
			public bool fDisableCcm;
			public bool fDisableLPT;
			public bool fDisableClip;
			public bool fDisablePNPRedir;
		}
		[CRepr]
		public struct WTS_PROTOCOL_CACHE
		{
			public uint32 CacheReads;
			public uint32 CacheHits;
		}
		[CRepr, Union]
		public struct WTS_CACHE_STATS_UN
		{
			public WTS_PROTOCOL_CACHE[4] ProtocolCache;
			public uint32 TShareCacheStats;
			public uint32[20] Reserved;
		}
		[CRepr]
		public struct WTS_CACHE_STATS
		{
			public uint32 Specific;
			public WTS_CACHE_STATS_UN Data;
			public uint16 ProtocolType;
			public uint16 Length;
		}
		[CRepr]
		public struct WTS_PROTOCOL_COUNTERS
		{
			public uint32 WdBytes;
			public uint32 WdFrames;
			public uint32 WaitForOutBuf;
			public uint32 Frames;
			public uint32 Bytes;
			public uint32 CompressedBytes;
			public uint32 CompressFlushes;
			public uint32 Errors;
			public uint32 Timeouts;
			public uint32 AsyncFramingError;
			public uint32 AsyncOverrunError;
			public uint32 AsyncOverflowError;
			public uint32 AsyncParityError;
			public uint32 TdErrors;
			public uint16 ProtocolType;
			public uint16 Length;
			public uint16 Specific;
			public uint32[100] Reserved;
		}
		[CRepr]
		public struct WTS_PROTOCOL_STATUS
		{
			public WTS_PROTOCOL_COUNTERS Output;
			public WTS_PROTOCOL_COUNTERS Input;
			public WTS_CACHE_STATS Cache;
			public uint32 AsyncSignal;
			public uint32 AsyncSignalMask;
			public LARGE_INTEGER[100] Counters;
		}
		[CRepr]
		public struct WTS_DISPLAY_IOCTL
		{
			public uint8[256] pDisplayIOCtlData;
			public uint32 cbDisplayIOCtlData;
		}
		[CRepr]
		public struct WTS_PROPERTY_VALUE
		{
			public uint16 Type;
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public uint32 ulVal;
				public _strVal_e__Struct strVal;
				public _bVal_e__Struct bVal;
				public Guid guidVal;
				
				[CRepr]
				public struct _bVal_e__Struct
				{
					public uint32 size;
					public char8* pbVal;
				}
				[CRepr]
				public struct _strVal_e__Struct
				{
					public uint32 size;
					public char16* pstrVal;
				}
			}
		}
		[CRepr]
		public struct WTS_LICENSE_CAPABILITIES
		{
			public uint32 KeyExchangeAlg;
			public uint32 ProtocolVer;
			public IntBool fAuthenticateServer;
			public WTS_CERT_TYPE CertType;
			public uint32 cbClientName;
			public uint8[42] rgbClientName;
		}
		[CRepr]
		public struct WRDS_LISTENER_SETTINGS_1
		{
			public uint32 MaxProtocolListenerConnectionCount;
			public uint32 SecurityDescriptorSize;
			public uint8* pSecurityDescriptor;
		}
		[CRepr, Union]
		public struct WRDS_LISTENER_SETTING
		{
			public WRDS_LISTENER_SETTINGS_1 WRdsListenerSettings1;
		}
		[CRepr]
		public struct WRDS_LISTENER_SETTINGS
		{
			public WRDS_LISTENER_SETTING_LEVEL WRdsListenerSettingLevel;
			public WRDS_LISTENER_SETTING WRdsListenerSetting;
		}
		[CRepr]
		public struct WRDS_CONNECTION_SETTINGS_1
		{
			public bool fInheritInitialProgram;
			public bool fInheritColorDepth;
			public bool fHideTitleBar;
			public bool fInheritAutoLogon;
			public bool fMaximizeShell;
			public bool fDisablePNP;
			public bool fPasswordIsScPin;
			public bool fPromptForPassword;
			public bool fDisableCpm;
			public bool fDisableCdm;
			public bool fDisableCcm;
			public bool fDisableLPT;
			public bool fDisableClip;
			public bool fResetBroken;
			public bool fDisableEncryption;
			public bool fDisableAutoReconnect;
			public bool fDisableCtrlAltDel;
			public bool fDoubleClickDetect;
			public bool fEnableWindowsKey;
			public bool fUsingSavedCreds;
			public bool fMouse;
			public bool fNoAudioPlayback;
			public bool fRemoteConsoleAudio;
			public uint8 EncryptionLevel;
			public uint16 ColorDepth;
			public uint16 ProtocolType;
			public uint16 HRes;
			public uint16 VRes;
			public uint16 ClientProductId;
			public uint16 OutBufCountHost;
			public uint16 OutBufCountClient;
			public uint16 OutBufLength;
			public uint32 KeyboardLayout;
			public uint32 MaxConnectionTime;
			public uint32 MaxDisconnectionTime;
			public uint32 MaxIdleTime;
			public uint32 PerformanceFlags;
			public uint32 KeyboardType;
			public uint32 KeyboardSubType;
			public uint32 KeyboardFunctionKey;
			public uint32 ActiveInputLocale;
			public uint32 SerialNumber;
			public uint32 ClientAddressFamily;
			public uint32 ClientBuildNumber;
			public uint32 ClientSessionId;
			public char16[257] WorkDirectory;
			public char16[257] InitialProgram;
			public char16[256] UserName;
			public char16[256] Domain;
			public char16[256] Password;
			public char16[9] ProtocolName;
			public char16[9] DisplayDriverName;
			public char16[20] DisplayDeviceName;
			public char16[33] imeFileName;
			public char16[9] AudioDriverName;
			public char16[21] ClientName;
			public char16[31] ClientAddress;
			public char16[257] ClientDirectory;
			public char16[33] ClientDigProductId;
			public WTS_SOCKADDR ClientSockAddress;
			public WTS_TIME_ZONE_INFORMATION ClientTimeZone;
			public WRDS_LISTENER_SETTINGS WRdsListenerSettings;
			public Guid EventLogActivityId;
			public uint32 ContextSize;
			public uint8* ContextData;
		}
		[CRepr]
		public struct WRDS_SETTINGS_1
		{
			public WRDS_SETTING_STATUS WRdsDisableClipStatus;
			public uint32 WRdsDisableClipValue;
			public WRDS_SETTING_STATUS WRdsDisableLPTStatus;
			public uint32 WRdsDisableLPTValue;
			public WRDS_SETTING_STATUS WRdsDisableCcmStatus;
			public uint32 WRdsDisableCcmValue;
			public WRDS_SETTING_STATUS WRdsDisableCdmStatus;
			public uint32 WRdsDisableCdmValue;
			public WRDS_SETTING_STATUS WRdsDisableCpmStatus;
			public uint32 WRdsDisableCpmValue;
			public WRDS_SETTING_STATUS WRdsDisablePnpStatus;
			public uint32 WRdsDisablePnpValue;
			public WRDS_SETTING_STATUS WRdsEncryptionLevelStatus;
			public uint32 WRdsEncryptionValue;
			public WRDS_SETTING_STATUS WRdsColorDepthStatus;
			public uint32 WRdsColorDepthValue;
			public WRDS_SETTING_STATUS WRdsDisableAutoReconnecetStatus;
			public uint32 WRdsDisableAutoReconnecetValue;
			public WRDS_SETTING_STATUS WRdsDisableEncryptionStatus;
			public uint32 WRdsDisableEncryptionValue;
			public WRDS_SETTING_STATUS WRdsResetBrokenStatus;
			public uint32 WRdsResetBrokenValue;
			public WRDS_SETTING_STATUS WRdsMaxIdleTimeStatus;
			public uint32 WRdsMaxIdleTimeValue;
			public WRDS_SETTING_STATUS WRdsMaxDisconnectTimeStatus;
			public uint32 WRdsMaxDisconnectTimeValue;
			public WRDS_SETTING_STATUS WRdsMaxConnectTimeStatus;
			public uint32 WRdsMaxConnectTimeValue;
			public WRDS_SETTING_STATUS WRdsKeepAliveStatus;
			public bool WRdsKeepAliveStartValue;
			public uint32 WRdsKeepAliveIntervalValue;
		}
		[CRepr, Union]
		public struct WRDS_CONNECTION_SETTING
		{
			public WRDS_CONNECTION_SETTINGS_1 WRdsConnectionSettings1;
		}
		[CRepr]
		public struct WRDS_CONNECTION_SETTINGS
		{
			public WRDS_CONNECTION_SETTING_LEVEL WRdsConnectionSettingLevel;
			public WRDS_CONNECTION_SETTING WRdsConnectionSetting;
		}
		[CRepr, Union]
		public struct WRDS_SETTING
		{
			public WRDS_SETTINGS_1 WRdsSettings1;
		}
		[CRepr]
		public struct WRDS_SETTINGS
		{
			public WRDS_SETTING_TYPE WRdsSettingType;
			public WRDS_SETTING_LEVEL WRdsSettingLevel;
			public WRDS_SETTING WRdsSetting;
		}
		[CRepr]
		public struct WTSSESSION_NOTIFICATION
		{
			public uint32 cbSize;
			public uint32 dwSessionId;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_TSUserExInterfaces = .(0x0910dd01, 0xdf8c, 0x11d1, 0xae, 0x27, 0x00, 0xc0, 0x4f, 0xa3, 0x58, 0x13);
		public const Guid CLSID_ADsTSUserEx = .(0xe2e9cae6, 0x1e7b, 0x4b8e, 0xba, 0xbd, 0xe9, 0xbf, 0x62, 0x92, 0xac, 0x29);
		public const Guid CLSID_Workspace = .(0x4f1dfca6, 0x3aad, 0x48e1, 0x84, 0x06, 0x4b, 0xc2, 0x1a, 0x50, 0x1d, 0x7c);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IAudioEndpoint : IUnknown
		{
			public const new Guid IID = .(0x30a99515, 0x1527, 0x4451, 0xaf, 0x9f, 0x00, 0xc5, 0xf0, 0x23, 0x4d, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFrameFormat(out WaveFormatEx* ppFormat) mut => VT.GetFrameFormat(ref this, out ppFormat);
			public HResult GetFramesPerPacket(out uint32 pFramesPerPacket) mut => VT.GetFramesPerPacket(ref this, out pFramesPerPacket);
			public HResult GetLatency(out int64 pLatency) mut => VT.GetLatency(ref this, out pLatency);
			public HResult SetStreamFlags(uint32 streamFlags) mut => VT.SetStreamFlags(ref this, streamFlags);
			public HResult SetEventHandle(Handle eventHandle) mut => VT.SetEventHandle(ref this, eventHandle);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioEndpoint self, out WaveFormatEx* ppFormat) GetFrameFormat;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioEndpoint self, out uint32 pFramesPerPacket) GetFramesPerPacket;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioEndpoint self, out int64 pLatency) GetLatency;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioEndpoint self, uint32 streamFlags) SetStreamFlags;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioEndpoint self, Handle eventHandle) SetEventHandle;
			}
		}
		[CRepr]
		public struct IAudioEndpointRT : IUnknown
		{
			public const new Guid IID = .(0xdfd2005f, 0xa6e5, 0x4d39, 0xa2, 0x65, 0x93, 0x9a, 0xda, 0x9f, 0xbb, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetCurrentPadding(out int64 pPadding, out AE_CURRENT_POSITION pAeCurrentPosition) mut => VT.GetCurrentPadding(ref this, out pPadding, out pAeCurrentPosition);
			public void ProcessingComplete() mut => VT.ProcessingComplete(ref this);
			public HResult SetPinInactive() mut => VT.SetPinInactive(ref this);
			public HResult SetPinActive() mut => VT.SetPinActive(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IAudioEndpointRT self, out int64 pPadding, out AE_CURRENT_POSITION pAeCurrentPosition) GetCurrentPadding;
				public new function [CallingConvention(.Stdcall)] void(ref IAudioEndpointRT self) ProcessingComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioEndpointRT self) SetPinInactive;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioEndpointRT self) SetPinActive;
			}
		}
		[CRepr]
		public struct IAudioInputEndpointRT : IUnknown
		{
			public const new Guid IID = .(0x8026ab61, 0x92b2, 0x43c1, 0xa1, 0xdf, 0x5c, 0x37, 0xeb, 0xd0, 0x8d, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetInputDataPointer(out APO_CONNECTION_PROPERTY pConnectionProperty, out AE_CURRENT_POSITION pAeTimeStamp) mut => VT.GetInputDataPointer(ref this, out pConnectionProperty, out pAeTimeStamp);
			public void ReleaseInputDataPointer(uint32 u32FrameCount, uint pDataPointer) mut => VT.ReleaseInputDataPointer(ref this, u32FrameCount, pDataPointer);
			public void PulseEndpoint() mut => VT.PulseEndpoint(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IAudioInputEndpointRT self, out APO_CONNECTION_PROPERTY pConnectionProperty, out AE_CURRENT_POSITION pAeTimeStamp) GetInputDataPointer;
				public new function [CallingConvention(.Stdcall)] void(ref IAudioInputEndpointRT self, uint32 u32FrameCount, uint pDataPointer) ReleaseInputDataPointer;
				public new function [CallingConvention(.Stdcall)] void(ref IAudioInputEndpointRT self) PulseEndpoint;
			}
		}
		[CRepr]
		public struct IAudioOutputEndpointRT : IUnknown
		{
			public const new Guid IID = .(0x8fa906e4, 0xc31c, 0x4e31, 0x93, 0x2e, 0x19, 0xa6, 0x63, 0x85, 0xe9, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint GetOutputDataPointer(uint32 u32FrameCount, ref AE_CURRENT_POSITION pAeTimeStamp) mut => VT.GetOutputDataPointer(ref this, u32FrameCount, ref pAeTimeStamp);
			public void ReleaseOutputDataPointer(in APO_CONNECTION_PROPERTY pConnectionProperty) mut => VT.ReleaseOutputDataPointer(ref this, pConnectionProperty);
			public void PulseEndpoint() mut => VT.PulseEndpoint(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint(ref IAudioOutputEndpointRT self, uint32 u32FrameCount, ref AE_CURRENT_POSITION pAeTimeStamp) GetOutputDataPointer;
				public new function [CallingConvention(.Stdcall)] void(ref IAudioOutputEndpointRT self, in APO_CONNECTION_PROPERTY pConnectionProperty) ReleaseOutputDataPointer;
				public new function [CallingConvention(.Stdcall)] void(ref IAudioOutputEndpointRT self) PulseEndpoint;
			}
		}
		[CRepr]
		public struct IAudioDeviceEndpoint : IUnknown
		{
			public const new Guid IID = .(0xd4952f5a, 0xa0b2, 0x4cc4, 0x8b, 0x82, 0x93, 0x58, 0x48, 0x8d, 0xd8, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetBuffer(int64 MaxPeriod, uint32 u32LatencyCoefficient) mut => VT.SetBuffer(ref this, MaxPeriod, u32LatencyCoefficient);
			public HResult GetRTCaps(out IntBool pbIsRTCapable) mut => VT.GetRTCaps(ref this, out pbIsRTCapable);
			public HResult GetEventDrivenCapable(out IntBool pbisEventCapable) mut => VT.GetEventDrivenCapable(ref this, out pbisEventCapable);
			public HResult WriteExclusiveModeParametersToSharedMemory(uint hTargetProcess, int64 hnsPeriod, int64 hnsBufferDuration, uint32 u32LatencyCoefficient, out uint32 pu32SharedMemorySize, out uint phSharedMemory) mut => VT.WriteExclusiveModeParametersToSharedMemory(ref this, hTargetProcess, hnsPeriod, hnsBufferDuration, u32LatencyCoefficient, out pu32SharedMemorySize, out phSharedMemory);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioDeviceEndpoint self, int64 MaxPeriod, uint32 u32LatencyCoefficient) SetBuffer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioDeviceEndpoint self, out IntBool pbIsRTCapable) GetRTCaps;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioDeviceEndpoint self, out IntBool pbisEventCapable) GetEventDrivenCapable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioDeviceEndpoint self, uint hTargetProcess, int64 hnsPeriod, int64 hnsBufferDuration, uint32 u32LatencyCoefficient, out uint32 pu32SharedMemorySize, out uint phSharedMemory) WriteExclusiveModeParametersToSharedMemory;
			}
		}
		[CRepr]
		public struct IAudioEndpointControl : IUnknown
		{
			public const new Guid IID = .(0xc684b72a, 0x6df4, 0x4774, 0xbd, 0xf9, 0x76, 0xb7, 0x75, 0x09, 0xb6, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Start() mut => VT.Start(ref this);
			public HResult Reset() mut => VT.Reset(ref this);
			public HResult Stop() mut => VT.Stop(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioEndpointControl self) Start;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioEndpointControl self) Reset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAudioEndpointControl self) Stop;
			}
		}
		[CRepr]
		public struct IADsTSUserEx : IDispatch
		{
			public const new Guid IID = .(0xc4930e79, 0x2989, 0x4462, 0x8a, 0x60, 0x2f, 0xcf, 0x2f, 0x29, 0x55, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_TerminalServicesProfilePath(BSTR* pVal) mut => VT.get_TerminalServicesProfilePath(ref this, pVal);
			public HResult put_TerminalServicesProfilePath(BSTR pNewVal) mut => VT.put_TerminalServicesProfilePath(ref this, pNewVal);
			public HResult get_TerminalServicesHomeDirectory(BSTR* pVal) mut => VT.get_TerminalServicesHomeDirectory(ref this, pVal);
			public HResult put_TerminalServicesHomeDirectory(BSTR pNewVal) mut => VT.put_TerminalServicesHomeDirectory(ref this, pNewVal);
			public HResult get_TerminalServicesHomeDrive(BSTR* pVal) mut => VT.get_TerminalServicesHomeDrive(ref this, pVal);
			public HResult put_TerminalServicesHomeDrive(BSTR pNewVal) mut => VT.put_TerminalServicesHomeDrive(ref this, pNewVal);
			public HResult get_AllowLogon(out int32 pVal) mut => VT.get_AllowLogon(ref this, out pVal);
			public HResult put_AllowLogon(int32 NewVal) mut => VT.put_AllowLogon(ref this, NewVal);
			public HResult get_EnableRemoteControl(out int32 pVal) mut => VT.get_EnableRemoteControl(ref this, out pVal);
			public HResult put_EnableRemoteControl(int32 NewVal) mut => VT.put_EnableRemoteControl(ref this, NewVal);
			public HResult get_MaxDisconnectionTime(out int32 pVal) mut => VT.get_MaxDisconnectionTime(ref this, out pVal);
			public HResult put_MaxDisconnectionTime(int32 NewVal) mut => VT.put_MaxDisconnectionTime(ref this, NewVal);
			public HResult get_MaxConnectionTime(out int32 pVal) mut => VT.get_MaxConnectionTime(ref this, out pVal);
			public HResult put_MaxConnectionTime(int32 NewVal) mut => VT.put_MaxConnectionTime(ref this, NewVal);
			public HResult get_MaxIdleTime(out int32 pVal) mut => VT.get_MaxIdleTime(ref this, out pVal);
			public HResult put_MaxIdleTime(int32 NewVal) mut => VT.put_MaxIdleTime(ref this, NewVal);
			public HResult get_ReconnectionAction(out int32 pNewVal) mut => VT.get_ReconnectionAction(ref this, out pNewVal);
			public HResult put_ReconnectionAction(int32 NewVal) mut => VT.put_ReconnectionAction(ref this, NewVal);
			public HResult get_BrokenConnectionAction(out int32 pNewVal) mut => VT.get_BrokenConnectionAction(ref this, out pNewVal);
			public HResult put_BrokenConnectionAction(int32 NewVal) mut => VT.put_BrokenConnectionAction(ref this, NewVal);
			public HResult get_ConnectClientDrivesAtLogon(out int32 pNewVal) mut => VT.get_ConnectClientDrivesAtLogon(ref this, out pNewVal);
			public HResult put_ConnectClientDrivesAtLogon(int32 NewVal) mut => VT.put_ConnectClientDrivesAtLogon(ref this, NewVal);
			public HResult get_ConnectClientPrintersAtLogon(out int32 pVal) mut => VT.get_ConnectClientPrintersAtLogon(ref this, out pVal);
			public HResult put_ConnectClientPrintersAtLogon(int32 NewVal) mut => VT.put_ConnectClientPrintersAtLogon(ref this, NewVal);
			public HResult get_DefaultToMainPrinter(out int32 pVal) mut => VT.get_DefaultToMainPrinter(ref this, out pVal);
			public HResult put_DefaultToMainPrinter(int32 NewVal) mut => VT.put_DefaultToMainPrinter(ref this, NewVal);
			public HResult get_TerminalServicesWorkDirectory(BSTR* pVal) mut => VT.get_TerminalServicesWorkDirectory(ref this, pVal);
			public HResult put_TerminalServicesWorkDirectory(BSTR pNewVal) mut => VT.put_TerminalServicesWorkDirectory(ref this, pNewVal);
			public HResult get_TerminalServicesInitialProgram(BSTR* pVal) mut => VT.get_TerminalServicesInitialProgram(ref this, pVal);
			public HResult put_TerminalServicesInitialProgram(BSTR pNewVal) mut => VT.put_TerminalServicesInitialProgram(ref this, pNewVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, BSTR* pVal) get_TerminalServicesProfilePath;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, BSTR pNewVal) put_TerminalServicesProfilePath;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, BSTR* pVal) get_TerminalServicesHomeDirectory;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, BSTR pNewVal) put_TerminalServicesHomeDirectory;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, BSTR* pVal) get_TerminalServicesHomeDrive;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, BSTR pNewVal) put_TerminalServicesHomeDrive;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, out int32 pVal) get_AllowLogon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, int32 NewVal) put_AllowLogon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, out int32 pVal) get_EnableRemoteControl;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, int32 NewVal) put_EnableRemoteControl;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, out int32 pVal) get_MaxDisconnectionTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, int32 NewVal) put_MaxDisconnectionTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, out int32 pVal) get_MaxConnectionTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, int32 NewVal) put_MaxConnectionTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, out int32 pVal) get_MaxIdleTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, int32 NewVal) put_MaxIdleTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, out int32 pNewVal) get_ReconnectionAction;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, int32 NewVal) put_ReconnectionAction;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, out int32 pNewVal) get_BrokenConnectionAction;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, int32 NewVal) put_BrokenConnectionAction;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, out int32 pNewVal) get_ConnectClientDrivesAtLogon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, int32 NewVal) put_ConnectClientDrivesAtLogon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, out int32 pVal) get_ConnectClientPrintersAtLogon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, int32 NewVal) put_ConnectClientPrintersAtLogon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, out int32 pVal) get_DefaultToMainPrinter;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, int32 NewVal) put_DefaultToMainPrinter;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, BSTR* pVal) get_TerminalServicesWorkDirectory;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, BSTR pNewVal) put_TerminalServicesWorkDirectory;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, BSTR* pVal) get_TerminalServicesInitialProgram;
				public new function [CallingConvention(.Stdcall)] HResult(ref IADsTSUserEx self, BSTR pNewVal) put_TerminalServicesInitialProgram;
			}
		}
		[CRepr]
		public struct ITSGAuthorizeConnectionSink : IUnknown
		{
			public const new Guid IID = .(0xc27ece33, 0x7781, 0x4318, 0x98, 0xef, 0x1c, 0xf2, 0xda, 0x7b, 0x70, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnConnectionAuthorized(HResult hrIn, Guid mainSessionId, uint32 cbSoHResponse, uint8* pbSoHResponse, uint32 idleTimeout, uint32 sessionTimeout, SESSION_TIMEOUT_ACTION_TYPE sessionTimeoutAction, AATrustClassID trustClass, ref uint32 policyAttributes) mut => VT.OnConnectionAuthorized(ref this, hrIn, mainSessionId, cbSoHResponse, pbSoHResponse, idleTimeout, sessionTimeout, sessionTimeoutAction, trustClass, ref policyAttributes);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITSGAuthorizeConnectionSink self, HResult hrIn, Guid mainSessionId, uint32 cbSoHResponse, uint8* pbSoHResponse, uint32 idleTimeout, uint32 sessionTimeout, SESSION_TIMEOUT_ACTION_TYPE sessionTimeoutAction, AATrustClassID trustClass, ref uint32 policyAttributes) OnConnectionAuthorized;
			}
		}
		[CRepr]
		public struct ITSGAuthorizeResourceSink : IUnknown
		{
			public const new Guid IID = .(0xfeddfcd4, 0xfa12, 0x4435, 0xae, 0x55, 0x7a, 0xd1, 0xa9, 0x77, 0x9a, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnChannelAuthorized(HResult hrIn, Guid mainSessionId, int32 subSessionId, BSTR* allowedResourceNames, uint32 numAllowedResourceNames, BSTR* failedResourceNames, uint32 numFailedResourceNames) mut => VT.OnChannelAuthorized(ref this, hrIn, mainSessionId, subSessionId, allowedResourceNames, numAllowedResourceNames, failedResourceNames, numFailedResourceNames);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITSGAuthorizeResourceSink self, HResult hrIn, Guid mainSessionId, int32 subSessionId, BSTR* allowedResourceNames, uint32 numAllowedResourceNames, BSTR* failedResourceNames, uint32 numFailedResourceNames) OnChannelAuthorized;
			}
		}
		[CRepr]
		public struct ITSGPolicyEngine : IUnknown
		{
			public const new Guid IID = .(0x8bc24f08, 0x6223, 0x42f4, 0xa5, 0xb4, 0x8e, 0x37, 0xcd, 0x13, 0x5b, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AuthorizeConnection(Guid mainSessionId, BSTR username, AAAuthSchemes authType, BSTR clientMachineIP, BSTR clientMachineName, uint8* sohData, uint32 numSOHBytes, uint8* cookieData, uint32 numCookieBytes, HANDLE_PTR userToken, ref ITSGAuthorizeConnectionSink pSink) mut => VT.AuthorizeConnection(ref this, mainSessionId, username, authType, clientMachineIP, clientMachineName, sohData, numSOHBytes, cookieData, numCookieBytes, userToken, ref pSink);
			public HResult AuthorizeResource(Guid mainSessionId, int32 subSessionId, BSTR username, BSTR* resourceNames, uint32 numResources, BSTR* alternateResourceNames, uint32 numAlternateResourceName, uint32 portNumber, BSTR operation, uint8* cookie, uint32 numBytesInCookie, ref ITSGAuthorizeResourceSink pSink) mut => VT.AuthorizeResource(ref this, mainSessionId, subSessionId, username, resourceNames, numResources, alternateResourceNames, numAlternateResourceName, portNumber, operation, cookie, numBytesInCookie, ref pSink);
			public HResult Refresh() mut => VT.Refresh(ref this);
			public HResult IsQuarantineEnabled(out IntBool quarantineEnabled) mut => VT.IsQuarantineEnabled(ref this, out quarantineEnabled);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITSGPolicyEngine self, Guid mainSessionId, BSTR username, AAAuthSchemes authType, BSTR clientMachineIP, BSTR clientMachineName, uint8* sohData, uint32 numSOHBytes, uint8* cookieData, uint32 numCookieBytes, HANDLE_PTR userToken, ref ITSGAuthorizeConnectionSink pSink) AuthorizeConnection;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITSGPolicyEngine self, Guid mainSessionId, int32 subSessionId, BSTR username, BSTR* resourceNames, uint32 numResources, BSTR* alternateResourceNames, uint32 numAlternateResourceName, uint32 portNumber, BSTR operation, uint8* cookie, uint32 numBytesInCookie, ref ITSGAuthorizeResourceSink pSink) AuthorizeResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITSGPolicyEngine self) Refresh;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITSGPolicyEngine self, out IntBool quarantineEnabled) IsQuarantineEnabled;
			}
		}
		[CRepr]
		public struct ITSGAccountingEngine : IUnknown
		{
			public const new Guid IID = .(0x4ce2a0c9, 0xe874, 0x4f1a, 0x86, 0xf4, 0x06, 0xbb, 0xb9, 0x11, 0x53, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult DoAccounting(AAAccountingDataType accountingDataType, AAAccountingData accountingData) mut => VT.DoAccounting(ref this, accountingDataType, accountingData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITSGAccountingEngine self, AAAccountingDataType accountingDataType, AAAccountingData accountingData) DoAccounting;
			}
		}
		[CRepr]
		public struct ITSGAuthenticateUserSink : IUnknown
		{
			public const new Guid IID = .(0x2c3e2e73, 0xa782, 0x47f9, 0x8d, 0xfb, 0x77, 0xee, 0x1e, 0xd2, 0x7a, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnUserAuthenticated(BSTR userName, BSTR userDomain, uint context, HANDLE_PTR userToken) mut => VT.OnUserAuthenticated(ref this, userName, userDomain, context, userToken);
			public HResult OnUserAuthenticationFailed(uint context, HResult genericErrorCode, HResult specificErrorCode) mut => VT.OnUserAuthenticationFailed(ref this, context, genericErrorCode, specificErrorCode);
			public HResult ReauthenticateUser(uint context) mut => VT.ReauthenticateUser(ref this, context);
			public HResult DisconnectUser(uint context) mut => VT.DisconnectUser(ref this, context);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITSGAuthenticateUserSink self, BSTR userName, BSTR userDomain, uint context, HANDLE_PTR userToken) OnUserAuthenticated;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITSGAuthenticateUserSink self, uint context, HResult genericErrorCode, HResult specificErrorCode) OnUserAuthenticationFailed;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITSGAuthenticateUserSink self, uint context) ReauthenticateUser;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITSGAuthenticateUserSink self, uint context) DisconnectUser;
			}
		}
		[CRepr]
		public struct ITSGAuthenticationEngine : IUnknown
		{
			public const new Guid IID = .(0x9ee3e5bf, 0x04ab, 0x4691, 0x99, 0x8c, 0xd7, 0xf6, 0x22, 0x32, 0x1a, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AuthenticateUser(Guid mainSessionId, ref uint8 cookieData, uint32 numCookieBytes, uint context, ref ITSGAuthenticateUserSink pSink) mut => VT.AuthenticateUser(ref this, mainSessionId, ref cookieData, numCookieBytes, context, ref pSink);
			public HResult CancelAuthentication(Guid mainSessionId, uint context) mut => VT.CancelAuthentication(ref this, mainSessionId, context);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITSGAuthenticationEngine self, Guid mainSessionId, ref uint8 cookieData, uint32 numCookieBytes, uint context, ref ITSGAuthenticateUserSink pSink) AuthenticateUser;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITSGAuthenticationEngine self, Guid mainSessionId, uint context) CancelAuthentication;
			}
		}
		[CRepr]
		public struct IWTSSBPlugin : IUnknown
		{
			public const new Guid IID = .(0xdc44be78, 0xb18d, 0x4399, 0xb2, 0x10, 0x64, 0x1b, 0xf6, 0x7a, 0x00, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Initialize(out uint32 PluginCapabilities) mut => VT.Initialize(ref this, out PluginCapabilities);
			public HResult WTSSBX_MachineChangeNotification(WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, ref WTSSBX_MACHINE_INFO pMachineInfo) mut => VT.WTSSBX_MachineChangeNotification(ref this, NotificationType, MachineId, ref pMachineInfo);
			public HResult WTSSBX_SessionChangeNotification(WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, uint32 NumOfSessions, WTSSBX_SESSION_INFO* SessionInfo) mut => VT.WTSSBX_SessionChangeNotification(ref this, NotificationType, MachineId, NumOfSessions, SessionInfo);
			public HResult WTSSBX_GetMostSuitableServer(char16* UserName, char16* DomainName, char16* ApplicationType, char16* FarmName, out int32 pMachineId) mut => VT.WTSSBX_GetMostSuitableServer(ref this, UserName, DomainName, ApplicationType, FarmName, out pMachineId);
			public HResult Terminated() mut => VT.Terminated(ref this);
			public HResult WTSSBX_GetUserExternalSession(char16* UserName, char16* DomainName, char16* ApplicationType, ref WTSSBX_IP_ADDRESS RedirectorInternalIP, out uint32 pSessionId, out WTSSBX_MACHINE_CONNECT_INFO pMachineConnectInfo) mut => VT.WTSSBX_GetUserExternalSession(ref this, UserName, DomainName, ApplicationType, ref RedirectorInternalIP, out pSessionId, out pMachineConnectInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSSBPlugin self, out uint32 PluginCapabilities) Initialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSSBPlugin self, WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, ref WTSSBX_MACHINE_INFO pMachineInfo) WTSSBX_MachineChangeNotification;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSSBPlugin self, WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, uint32 NumOfSessions, WTSSBX_SESSION_INFO* SessionInfo) WTSSBX_SessionChangeNotification;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSSBPlugin self, char16* UserName, char16* DomainName, char16* ApplicationType, char16* FarmName, out int32 pMachineId) WTSSBX_GetMostSuitableServer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSSBPlugin self) Terminated;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSSBPlugin self, char16* UserName, char16* DomainName, char16* ApplicationType, ref WTSSBX_IP_ADDRESS RedirectorInternalIP, out uint32 pSessionId, out WTSSBX_MACHINE_CONNECT_INFO pMachineConnectInfo) WTSSBX_GetUserExternalSession;
			}
		}
		[CRepr]
		public struct IWorkspaceClientExt : IUnknown
		{
			public const new Guid IID = .(0x12b952f4, 0x41ca, 0x4f21, 0xa8, 0x29, 0xa6, 0xd0, 0x7d, 0x9a, 0x16, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetResourceId(out BSTR bstrWorkspaceId) mut => VT.GetResourceId(ref this, out bstrWorkspaceId);
			public HResult GetResourceDisplayName(out BSTR bstrWorkspaceDisplayName) mut => VT.GetResourceDisplayName(ref this, out bstrWorkspaceDisplayName);
			public HResult IssueDisconnect() mut => VT.IssueDisconnect(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceClientExt self, out BSTR bstrWorkspaceId) GetResourceId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceClientExt self, out BSTR bstrWorkspaceDisplayName) GetResourceDisplayName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceClientExt self) IssueDisconnect;
			}
		}
		[CRepr]
		public struct IWorkspace : IUnknown
		{
			public const new Guid IID = .(0xb922bbb8, 0x4c55, 0x4fea, 0x84, 0x96, 0xbe, 0xb0, 0xb4, 0x42, 0x85, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetWorkspaceNames(out SAFEARRAY* psaWkspNames) mut => VT.GetWorkspaceNames(ref this, out psaWkspNames);
			public HResult StartRemoteApplication(BSTR bstrWorkspaceId, ref SAFEARRAY psaParams) mut => VT.StartRemoteApplication(ref this, bstrWorkspaceId, ref psaParams);
			public HResult GetProcessId(out uint32 pulProcessId) mut => VT.GetProcessId(ref this, out pulProcessId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspace self, out SAFEARRAY* psaWkspNames) GetWorkspaceNames;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspace self, BSTR bstrWorkspaceId, ref SAFEARRAY psaParams) StartRemoteApplication;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspace self, out uint32 pulProcessId) GetProcessId;
			}
		}
		[CRepr]
		public struct IWorkspace2 : IWorkspace
		{
			public const new Guid IID = .(0x96d8d7cf, 0x783e, 0x4286, 0x83, 0x4c, 0xeb, 0xc0, 0xe9, 0x5f, 0x78, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult StartRemoteApplicationEx(BSTR bstrWorkspaceId, BSTR bstrRequestingAppId, BSTR bstrRequestingAppFamilyName, int16 bLaunchIntoImmersiveClient, BSTR bstrImmersiveClientActivationContext, ref SAFEARRAY psaParams) mut => VT.StartRemoteApplicationEx(ref this, bstrWorkspaceId, bstrRequestingAppId, bstrRequestingAppFamilyName, bLaunchIntoImmersiveClient, bstrImmersiveClientActivationContext, ref psaParams);

			[CRepr]
			public struct VTable : IWorkspace.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspace2 self, BSTR bstrWorkspaceId, BSTR bstrRequestingAppId, BSTR bstrRequestingAppFamilyName, int16 bLaunchIntoImmersiveClient, BSTR bstrImmersiveClientActivationContext, ref SAFEARRAY psaParams) StartRemoteApplicationEx;
			}
		}
		[CRepr]
		public struct IWorkspace3 : IWorkspace2
		{
			public const new Guid IID = .(0x1becbe4a, 0xd654, 0x423b, 0xaf, 0xeb, 0xbe, 0x8d, 0x53, 0x2c, 0x13, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetClaimsToken2(BSTR bstrClaimsHint, BSTR bstrUserHint, uint32 claimCookie, uint32 hwndCredUiParent, RectI rectCredUiParent, out BSTR pbstrAccessToken) mut => VT.GetClaimsToken2(ref this, bstrClaimsHint, bstrUserHint, claimCookie, hwndCredUiParent, rectCredUiParent, out pbstrAccessToken);
			public HResult SetClaimsToken(BSTR bstrAccessToken, uint64 ullAccessTokenExpiration, BSTR bstrRefreshToken) mut => VT.SetClaimsToken(ref this, bstrAccessToken, ullAccessTokenExpiration, bstrRefreshToken);

			[CRepr]
			public struct VTable : IWorkspace2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspace3 self, BSTR bstrClaimsHint, BSTR bstrUserHint, uint32 claimCookie, uint32 hwndCredUiParent, RectI rectCredUiParent, out BSTR pbstrAccessToken) GetClaimsToken2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspace3 self, BSTR bstrAccessToken, uint64 ullAccessTokenExpiration, BSTR bstrRefreshToken) SetClaimsToken;
			}
		}
		[CRepr]
		public struct IWorkspaceRegistration : IUnknown
		{
			public const new Guid IID = .(0xb922bbb8, 0x4c55, 0x4fea, 0x84, 0x96, 0xbe, 0xb0, 0xb4, 0x42, 0x85, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddResource(ref IWorkspaceClientExt pUnk, out uint32 pdwCookie) mut => VT.AddResource(ref this, ref pUnk, out pdwCookie);
			public HResult RemoveResource(uint32 dwCookieConnection) mut => VT.RemoveResource(ref this, dwCookieConnection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceRegistration self, ref IWorkspaceClientExt pUnk, out uint32 pdwCookie) AddResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceRegistration self, uint32 dwCookieConnection) RemoveResource;
			}
		}
		[CRepr]
		public struct IWorkspaceRegistration2 : IWorkspaceRegistration
		{
			public const new Guid IID = .(0xcf59f654, 0x39bb, 0x44d8, 0x94, 0xd0, 0x46, 0x35, 0x72, 0x89, 0x57, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddResourceEx(ref IWorkspaceClientExt pUnk, BSTR bstrEventLogUploadAddress, out uint32 pdwCookie, Guid correlationId) mut => VT.AddResourceEx(ref this, ref pUnk, bstrEventLogUploadAddress, out pdwCookie, correlationId);
			public HResult RemoveResourceEx(uint32 dwCookieConnection, Guid correlationId) mut => VT.RemoveResourceEx(ref this, dwCookieConnection, correlationId);

			[CRepr]
			public struct VTable : IWorkspaceRegistration.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceRegistration2 self, ref IWorkspaceClientExt pUnk, BSTR bstrEventLogUploadAddress, out uint32 pdwCookie, Guid correlationId) AddResourceEx;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceRegistration2 self, uint32 dwCookieConnection, Guid correlationId) RemoveResourceEx;
			}
		}
		[CRepr]
		public struct IWorkspaceScriptable : IDispatch
		{
			public const new Guid IID = .(0xefea49a2, 0xdda5, 0x429d, 0x8f, 0x42, 0xb2, 0x3b, 0x92, 0xc4, 0xc3, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult DisconnectWorkspace(BSTR bstrWorkspaceId) mut => VT.DisconnectWorkspace(ref this, bstrWorkspaceId);
			public HResult StartWorkspace(BSTR bstrWorkspaceId, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) mut => VT.StartWorkspace(ref this, bstrWorkspaceId, bstrUserName, bstrPassword, bstrWorkspaceParams, lTimeout, lFlags);
			public HResult IsWorkspaceCredentialSpecified(BSTR bstrWorkspaceId, int16 bCountUnauthenticatedCredentials, out int16 pbCredExist) mut => VT.IsWorkspaceCredentialSpecified(ref this, bstrWorkspaceId, bCountUnauthenticatedCredentials, out pbCredExist);
			public HResult IsWorkspaceSSOEnabled(out int16 pbSSOEnabled) mut => VT.IsWorkspaceSSOEnabled(ref this, out pbSSOEnabled);
			public HResult ClearWorkspaceCredential(BSTR bstrWorkspaceId) mut => VT.ClearWorkspaceCredential(ref this, bstrWorkspaceId);
			public HResult OnAuthenticated(BSTR bstrWorkspaceId, BSTR bstrUserName) mut => VT.OnAuthenticated(ref this, bstrWorkspaceId, bstrUserName);
			public HResult DisconnectWorkspaceByFriendlyName(BSTR bstrWorkspaceFriendlyName) mut => VT.DisconnectWorkspaceByFriendlyName(ref this, bstrWorkspaceFriendlyName);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceScriptable self, BSTR bstrWorkspaceId) DisconnectWorkspace;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceScriptable self, BSTR bstrWorkspaceId, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) StartWorkspace;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceScriptable self, BSTR bstrWorkspaceId, int16 bCountUnauthenticatedCredentials, out int16 pbCredExist) IsWorkspaceCredentialSpecified;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceScriptable self, out int16 pbSSOEnabled) IsWorkspaceSSOEnabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceScriptable self, BSTR bstrWorkspaceId) ClearWorkspaceCredential;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceScriptable self, BSTR bstrWorkspaceId, BSTR bstrUserName) OnAuthenticated;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceScriptable self, BSTR bstrWorkspaceFriendlyName) DisconnectWorkspaceByFriendlyName;
			}
		}
		[CRepr]
		public struct IWorkspaceScriptable2 : IWorkspaceScriptable
		{
			public const new Guid IID = .(0xefea49a2, 0xdda5, 0x429d, 0x8f, 0x42, 0xb3, 0x3b, 0xa2, 0xc4, 0xc3, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult StartWorkspaceEx(BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) mut => VT.StartWorkspaceEx(ref this, bstrWorkspaceId, bstrWorkspaceFriendlyName, bstrRedirectorName, bstrUserName, bstrPassword, bstrAppContainer, bstrWorkspaceParams, lTimeout, lFlags);
			public HResult ResourceDismissed(BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName) mut => VT.ResourceDismissed(ref this, bstrWorkspaceId, bstrWorkspaceFriendlyName);

			[CRepr]
			public struct VTable : IWorkspaceScriptable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceScriptable2 self, BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) StartWorkspaceEx;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceScriptable2 self, BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName) ResourceDismissed;
			}
		}
		[CRepr]
		public struct IWorkspaceScriptable3 : IWorkspaceScriptable2
		{
			public const new Guid IID = .(0x531e6512, 0x2cbf, 0x4bd2, 0x80, 0xa5, 0xd9, 0x0a, 0x71, 0x63, 0x6a, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult StartWorkspaceEx2(BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags, BSTR bstrEventLogUploadAddress, Guid correlationId) mut => VT.StartWorkspaceEx2(ref this, bstrWorkspaceId, bstrWorkspaceFriendlyName, bstrRedirectorName, bstrUserName, bstrPassword, bstrAppContainer, bstrWorkspaceParams, lTimeout, lFlags, bstrEventLogUploadAddress, correlationId);

			[CRepr]
			public struct VTable : IWorkspaceScriptable2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceScriptable3 self, BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags, BSTR bstrEventLogUploadAddress, Guid correlationId) StartWorkspaceEx2;
			}
		}
		[CRepr]
		public struct IWorkspaceReportMessage : IUnknown
		{
			public const new Guid IID = .(0xa7c06739, 0x500f, 0x4e8c, 0x99, 0xa8, 0x2b, 0xd6, 0x95, 0x58, 0x99, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RegisterErrorLogMessage(BSTR bstrMessage) mut => VT.RegisterErrorLogMessage(ref this, bstrMessage);
			public HResult IsErrorMessageRegistered(BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode, out int16 pfErrorExist) mut => VT.IsErrorMessageRegistered(ref this, bstrWkspId, dwErrorType, bstrErrorMessageType, dwErrorCode, out pfErrorExist);
			public HResult RegisterErrorEvent(BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode) mut => VT.RegisterErrorEvent(ref this, bstrWkspId, dwErrorType, bstrErrorMessageType, dwErrorCode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceReportMessage self, BSTR bstrMessage) RegisterErrorLogMessage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceReportMessage self, BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode, out int16 pfErrorExist) IsErrorMessageRegistered;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceReportMessage self, BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode) RegisterErrorEvent;
			}
		}
		[CRepr]
		public struct _ITSWkspEvents : IDispatch
		{
			public const new Guid IID = .(0xb922bbb8, 0x4c55, 0x4fea, 0x84, 0x96, 0xbe, 0xb0, 0xb4, 0x42, 0x85, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct ITsSbPlugin : IUnknown
		{
			public const new Guid IID = .(0x48cd7406, 0xcaab, 0x465f, 0xa5, 0xd6, 0xba, 0xa8, 0x63, 0xb9, 0xea, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Initialize(ref ITsSbProvider pProvider, ref ITsSbPluginNotifySink pNotifySink, ref ITsSbPluginPropertySet pPropertySet) mut => VT.Initialize(ref this, ref pProvider, ref pNotifySink, ref pPropertySet);
			public HResult Terminate(HResult hr) mut => VT.Terminate(ref this, hr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbPlugin self, ref ITsSbProvider pProvider, ref ITsSbPluginNotifySink pNotifySink, ref ITsSbPluginPropertySet pPropertySet) Initialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbPlugin self, HResult hr) Terminate;
			}
		}
		[CRepr]
		public struct ITsSbResourcePlugin : ITsSbPlugin
		{
			public const new Guid IID = .(0xea8db42c, 0x98ed, 0x4535, 0xa8, 0x8b, 0x2a, 0x16, 0x4f, 0x35, 0x49, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPlugin.VTable {}
		}
		[CRepr]
		public struct ITsSbServiceNotification : IUnknown
		{
			public const new Guid IID = .(0x86cb68ae, 0x86e0, 0x4f57, 0x8a, 0x64, 0xbb, 0x74, 0x06, 0xbc, 0x55, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult NotifyServiceFailure() mut => VT.NotifyServiceFailure(ref this);
			public HResult NotifyServiceSuccess() mut => VT.NotifyServiceSuccess(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbServiceNotification self) NotifyServiceFailure;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbServiceNotification self) NotifyServiceSuccess;
			}
		}
		[CRepr]
		public struct ITsSbLoadBalancing : ITsSbPlugin
		{
			public const new Guid IID = .(0x24329274, 0x9eb7, 0x11dc, 0xae, 0x98, 0xf2, 0xb4, 0x56, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetMostSuitableTarget(ref ITsSbClientConnection pConnection, ref ITsSbLoadBalancingNotifySink pLBSink) mut => VT.GetMostSuitableTarget(ref this, ref pConnection, ref pLBSink);

			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbLoadBalancing self, ref ITsSbClientConnection pConnection, ref ITsSbLoadBalancingNotifySink pLBSink) GetMostSuitableTarget;
			}
		}
		[CRepr]
		public struct ITsSbPlacement : ITsSbPlugin
		{
			public const new Guid IID = .(0xdaadee5f, 0x6d32, 0x480e, 0x9e, 0x36, 0xdd, 0xab, 0x23, 0x29, 0xf0, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult QueryEnvironmentForTarget(ref ITsSbClientConnection pConnection, ref ITsSbPlacementNotifySink pPlacementSink) mut => VT.QueryEnvironmentForTarget(ref this, ref pConnection, ref pPlacementSink);

			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbPlacement self, ref ITsSbClientConnection pConnection, ref ITsSbPlacementNotifySink pPlacementSink) QueryEnvironmentForTarget;
			}
		}
		[CRepr]
		public struct ITsSbOrchestration : ITsSbPlugin
		{
			public const new Guid IID = .(0x64fc1172, 0x9eb7, 0x11dc, 0x8b, 0x00, 0x3a, 0xba, 0x56, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult PrepareTargetForConnect(ref ITsSbClientConnection pConnection, ref ITsSbOrchestrationNotifySink pOrchestrationNotifySink) mut => VT.PrepareTargetForConnect(ref this, ref pConnection, ref pOrchestrationNotifySink);

			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbOrchestration self, ref ITsSbClientConnection pConnection, ref ITsSbOrchestrationNotifySink pOrchestrationNotifySink) PrepareTargetForConnect;
			}
		}
		[CRepr]
		public struct ITsSbEnvironment : IUnknown
		{
			public const new Guid IID = .(0x8c87f7f7, 0xbf51, 0x4a5c, 0x87, 0xbf, 0x8e, 0x94, 0xfb, 0x6e, 0x22, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Name(out BSTR pVal) mut => VT.get_Name(ref this, out pVal);
			public HResult get_ServerWeight(out uint32 pVal) mut => VT.get_ServerWeight(ref this, out pVal);
			public HResult get_EnvironmentPropertySet(out ITsSbEnvironmentPropertySet* ppPropertySet) mut => VT.get_EnvironmentPropertySet(ref this, out ppPropertySet);
			public HResult put_EnvironmentPropertySet(ref ITsSbEnvironmentPropertySet pVal) mut => VT.put_EnvironmentPropertySet(ref this, ref pVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbEnvironment self, out BSTR pVal) get_Name;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbEnvironment self, out uint32 pVal) get_ServerWeight;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbEnvironment self, out ITsSbEnvironmentPropertySet* ppPropertySet) get_EnvironmentPropertySet;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbEnvironment self, ref ITsSbEnvironmentPropertySet pVal) put_EnvironmentPropertySet;
			}
		}
		[CRepr]
		public struct ITsSbLoadBalanceResult : IUnknown
		{
			public const new Guid IID = .(0x24fdb7ac, 0xfea6, 0x11dc, 0x96, 0x72, 0x9a, 0x89, 0x56, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_TargetName(out BSTR pVal) mut => VT.get_TargetName(ref this, out pVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbLoadBalanceResult self, out BSTR pVal) get_TargetName;
			}
		}
		[CRepr]
		public struct ITsSbTarget : IUnknown
		{
			public const new Guid IID = .(0x16616ecc, 0x272d, 0x411d, 0xb3, 0x24, 0x12, 0x68, 0x93, 0x03, 0x38, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_TargetName(out BSTR pVal) mut => VT.get_TargetName(ref this, out pVal);
			public HResult put_TargetName(BSTR Val) mut => VT.put_TargetName(ref this, Val);
			public HResult get_FarmName(out BSTR pVal) mut => VT.get_FarmName(ref this, out pVal);
			public HResult put_FarmName(BSTR Val) mut => VT.put_FarmName(ref this, Val);
			public HResult get_TargetFQDN(out BSTR TargetFqdnName) mut => VT.get_TargetFQDN(ref this, out TargetFqdnName);
			public HResult put_TargetFQDN(BSTR Val) mut => VT.put_TargetFQDN(ref this, Val);
			public HResult get_TargetNetbios(out BSTR TargetNetbiosName) mut => VT.get_TargetNetbios(ref this, out TargetNetbiosName);
			public HResult put_TargetNetbios(BSTR Val) mut => VT.put_TargetNetbios(ref this, Val);
			public HResult get_IpAddresses(TSSD_ConnectionPoint* SOCKADDR, out uint32 numAddresses) mut => VT.get_IpAddresses(ref this, SOCKADDR, out numAddresses);
			public HResult put_IpAddresses(TSSD_ConnectionPoint* SOCKADDR, uint32 numAddresses) mut => VT.put_IpAddresses(ref this, SOCKADDR, numAddresses);
			public HResult get_TargetState(out TARGET_STATE pState) mut => VT.get_TargetState(ref this, out pState);
			public HResult put_TargetState(TARGET_STATE State) mut => VT.put_TargetState(ref this, State);
			public HResult get_TargetPropertySet(out ITsSbTargetPropertySet* ppPropertySet) mut => VT.get_TargetPropertySet(ref this, out ppPropertySet);
			public HResult put_TargetPropertySet(ref ITsSbTargetPropertySet pVal) mut => VT.put_TargetPropertySet(ref this, ref pVal);
			public HResult get_EnvironmentName(out BSTR pVal) mut => VT.get_EnvironmentName(ref this, out pVal);
			public HResult put_EnvironmentName(BSTR Val) mut => VT.put_EnvironmentName(ref this, Val);
			public HResult get_NumSessions(out uint32 pNumSessions) mut => VT.get_NumSessions(ref this, out pNumSessions);
			public HResult get_NumPendingConnections(out uint32 pNumPendingConnections) mut => VT.get_NumPendingConnections(ref this, out pNumPendingConnections);
			public HResult get_TargetLoad(out uint32 pTargetLoad) mut => VT.get_TargetLoad(ref this, out pTargetLoad);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, out BSTR pVal) get_TargetName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, BSTR Val) put_TargetName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, out BSTR pVal) get_FarmName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, BSTR Val) put_FarmName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, out BSTR TargetFqdnName) get_TargetFQDN;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, BSTR Val) put_TargetFQDN;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, out BSTR TargetNetbiosName) get_TargetNetbios;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, BSTR Val) put_TargetNetbios;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, TSSD_ConnectionPoint* SOCKADDR, out uint32 numAddresses) get_IpAddresses;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, TSSD_ConnectionPoint* SOCKADDR, uint32 numAddresses) put_IpAddresses;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, out TARGET_STATE pState) get_TargetState;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, TARGET_STATE State) put_TargetState;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, out ITsSbTargetPropertySet* ppPropertySet) get_TargetPropertySet;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, ref ITsSbTargetPropertySet pVal) put_TargetPropertySet;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, out BSTR pVal) get_EnvironmentName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, BSTR Val) put_EnvironmentName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, out uint32 pNumSessions) get_NumSessions;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, out uint32 pNumPendingConnections) get_NumPendingConnections;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTarget self, out uint32 pTargetLoad) get_TargetLoad;
			}
		}
		[CRepr]
		public struct ITsSbSession : IUnknown
		{
			public const new Guid IID = .(0xd453aac7, 0xb1d8, 0x4c5e, 0xba, 0x34, 0x9a, 0xfb, 0x4c, 0x8c, 0x55, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_SessionId(out uint32 pVal) mut => VT.get_SessionId(ref this, out pVal);
			public HResult get_TargetName(out BSTR targetName) mut => VT.get_TargetName(ref this, out targetName);
			public HResult put_TargetName(BSTR targetName) mut => VT.put_TargetName(ref this, targetName);
			public HResult get_Username(out BSTR userName) mut => VT.get_Username(ref this, out userName);
			public HResult get_Domain(out BSTR domain) mut => VT.get_Domain(ref this, out domain);
			public HResult get_State(out TSSESSION_STATE pState) mut => VT.get_State(ref this, out pState);
			public HResult put_State(TSSESSION_STATE State) mut => VT.put_State(ref this, State);
			public HResult get_CreateTime(out FileTime pTime) mut => VT.get_CreateTime(ref this, out pTime);
			public HResult put_CreateTime(FILETIME Time) mut => VT.put_CreateTime(ref this, Time);
			public HResult get_DisconnectTime(out FileTime pTime) mut => VT.get_DisconnectTime(ref this, out pTime);
			public HResult put_DisconnectTime(FILETIME Time) mut => VT.put_DisconnectTime(ref this, Time);
			public HResult get_InitialProgram(out BSTR app) mut => VT.get_InitialProgram(ref this, out app);
			public HResult put_InitialProgram(BSTR Application) mut => VT.put_InitialProgram(ref this, Application);
			public HResult get_ClientDisplay(out CLIENT_DISPLAY pClientDisplay) mut => VT.get_ClientDisplay(ref this, out pClientDisplay);
			public HResult put_ClientDisplay(CLIENT_DISPLAY pClientDisplay) mut => VT.put_ClientDisplay(ref this, pClientDisplay);
			public HResult get_ProtocolType(out uint32 pVal) mut => VT.get_ProtocolType(ref this, out pVal);
			public HResult put_ProtocolType(uint32 Val) mut => VT.put_ProtocolType(ref this, Val);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, out uint32 pVal) get_SessionId;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, out BSTR targetName) get_TargetName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, BSTR targetName) put_TargetName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, out BSTR userName) get_Username;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, out BSTR domain) get_Domain;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, out TSSESSION_STATE pState) get_State;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, TSSESSION_STATE State) put_State;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, out FileTime pTime) get_CreateTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, FileTime Time) put_CreateTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, out FileTime pTime) get_DisconnectTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, FileTime Time) put_DisconnectTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, out BSTR app) get_InitialProgram;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, BSTR Application) put_InitialProgram;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, out CLIENT_DISPLAY pClientDisplay) get_ClientDisplay;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, CLIENT_DISPLAY pClientDisplay) put_ClientDisplay;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, out uint32 pVal) get_ProtocolType;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbSession self, uint32 Val) put_ProtocolType;
			}
		}
		[CRepr]
		public struct ITsSbResourceNotification : IUnknown
		{
			public const new Guid IID = .(0x65d3e85a, 0xc39b, 0x11dc, 0xb9, 0x2d, 0x3c, 0xd2, 0x55, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult NotifySessionChange(TSSESSION_STATE changeType, ref ITsSbSession pSession) mut => VT.NotifySessionChange(ref this, changeType, ref pSession);
			public HResult NotifyTargetChange(uint32 TargetChangeType, ref ITsSbTarget pTarget) mut => VT.NotifyTargetChange(ref this, TargetChangeType, ref pTarget);
			public HResult NotifyClientConnectionStateChange(CONNECTION_CHANGE_NOTIFICATION ChangeType, ref ITsSbClientConnection pConnection) mut => VT.NotifyClientConnectionStateChange(ref this, ChangeType, ref pConnection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourceNotification self, TSSESSION_STATE changeType, ref ITsSbSession pSession) NotifySessionChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourceNotification self, uint32 TargetChangeType, ref ITsSbTarget pTarget) NotifyTargetChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourceNotification self, CONNECTION_CHANGE_NOTIFICATION ChangeType, ref ITsSbClientConnection pConnection) NotifyClientConnectionStateChange;
			}
		}
		[CRepr]
		public struct ITsSbResourceNotificationEx : IUnknown
		{
			public const new Guid IID = .(0xa8a47fde, 0xca91, 0x44d2, 0xb8, 0x97, 0x3a, 0xa2, 0x8a, 0x43, 0xb2, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult NotifySessionChangeEx(BSTR targetName, BSTR userName, BSTR domain, uint32 sessionId, TSSESSION_STATE sessionState) mut => VT.NotifySessionChangeEx(ref this, targetName, userName, domain, sessionId, sessionState);
			public HResult NotifyTargetChangeEx(BSTR targetName, uint32 targetChangeType) mut => VT.NotifyTargetChangeEx(ref this, targetName, targetChangeType);
			public HResult NotifyClientConnectionStateChangeEx(BSTR userName, BSTR domain, BSTR initialProgram, BSTR poolName, BSTR targetName, CONNECTION_CHANGE_NOTIFICATION connectionChangeType) mut => VT.NotifyClientConnectionStateChangeEx(ref this, userName, domain, initialProgram, poolName, targetName, connectionChangeType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourceNotificationEx self, BSTR targetName, BSTR userName, BSTR domain, uint32 sessionId, TSSESSION_STATE sessionState) NotifySessionChangeEx;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourceNotificationEx self, BSTR targetName, uint32 targetChangeType) NotifyTargetChangeEx;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourceNotificationEx self, BSTR userName, BSTR domain, BSTR initialProgram, BSTR poolName, BSTR targetName, CONNECTION_CHANGE_NOTIFICATION connectionChangeType) NotifyClientConnectionStateChangeEx;
			}
		}
		[CRepr]
		public struct ITsSbTaskInfo : IUnknown
		{
			public const new Guid IID = .(0x523d1083, 0x89be, 0x48dd, 0x99, 0xea, 0x04, 0xe8, 0x2f, 0xfa, 0x72, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_TargetId(out BSTR pName) mut => VT.get_TargetId(ref this, out pName);
			public HResult get_StartTime(out FileTime pStartTime) mut => VT.get_StartTime(ref this, out pStartTime);
			public HResult get_EndTime(out FileTime pEndTime) mut => VT.get_EndTime(ref this, out pEndTime);
			public HResult get_Deadline(out FileTime pDeadline) mut => VT.get_Deadline(ref this, out pDeadline);
			public HResult get_Identifier(out BSTR pIdentifier) mut => VT.get_Identifier(ref this, out pIdentifier);
			public HResult get_Label(out BSTR pLabel) mut => VT.get_Label(ref this, out pLabel);
			public HResult get_Context(out SAFEARRAY* pContext) mut => VT.get_Context(ref this, out pContext);
			public HResult get_Plugin(out BSTR pPlugin) mut => VT.get_Plugin(ref this, out pPlugin);
			public HResult get_Status(out RDV_TASK_STATUS pStatus) mut => VT.get_Status(ref this, out pStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskInfo self, out BSTR pName) get_TargetId;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskInfo self, out FileTime pStartTime) get_StartTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskInfo self, out FileTime pEndTime) get_EndTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskInfo self, out FileTime pDeadline) get_Deadline;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskInfo self, out BSTR pIdentifier) get_Identifier;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskInfo self, out BSTR pLabel) get_Label;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskInfo self, out SAFEARRAY* pContext) get_Context;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskInfo self, out BSTR pPlugin) get_Plugin;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskInfo self, out RDV_TASK_STATUS pStatus) get_Status;
			}
		}
		[CRepr]
		public struct ITsSbTaskPlugin : ITsSbPlugin
		{
			public const new Guid IID = .(0xfa22ef0f, 0x8705, 0x41be, 0x93, 0xbc, 0x44, 0xbd, 0xbc, 0xf1, 0xc9, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult InitializeTaskPlugin(ref ITsSbTaskPluginNotifySink pITsSbTaskPluginNotifySink) mut => VT.InitializeTaskPlugin(ref this, ref pITsSbTaskPluginNotifySink);
			public HResult SetTaskQueue(BSTR pszHostName, uint32 SbTaskInfoSize, ITsSbTaskInfo** pITsSbTaskInfo) mut => VT.SetTaskQueue(ref this, pszHostName, SbTaskInfoSize, pITsSbTaskInfo);

			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskPlugin self, ref ITsSbTaskPluginNotifySink pITsSbTaskPluginNotifySink) InitializeTaskPlugin;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskPlugin self, BSTR pszHostName, uint32 SbTaskInfoSize, ITsSbTaskInfo** pITsSbTaskInfo) SetTaskQueue;
			}
		}
		[CRepr]
		public struct ITsSbPropertySet : IPropertyBag
		{
			public const new Guid IID = .(0x5c025171, 0xbb1e, 0x4baf, 0xa2, 0x12, 0x6d, 0x5e, 0x97, 0x74, 0xb3, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IPropertyBag.VTable {}
		}
		[CRepr]
		public struct ITsSbPluginPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0x95006e34, 0x7eff, 0x4b6c, 0xbb, 0x40, 0x49, 0xa4, 0xfd, 0xa7, 0xce, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPropertySet.VTable {}
		}
		[CRepr]
		public struct ITsSbClientConnectionPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0xe51995b0, 0x46d6, 0x11dd, 0xaa, 0x21, 0xce, 0xdc, 0x55, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPropertySet.VTable {}
		}
		[CRepr]
		public struct ITsSbTargetPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0xf7bda5d6, 0x994c, 0x4e11, 0xa0, 0x79, 0x27, 0x63, 0xb6, 0x18, 0x30, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPropertySet.VTable {}
		}
		[CRepr]
		public struct ITsSbEnvironmentPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0xd0d1bf7e, 0x7acf, 0x11dd, 0xa2, 0x43, 0xe5, 0x11, 0x56, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPropertySet.VTable {}
		}
		[CRepr]
		public struct ITsSbBaseNotifySink : IUnknown
		{
			public const new Guid IID = .(0x808a6537, 0x1282, 0x4989, 0x9e, 0x09, 0xf4, 0x39, 0x38, 0xb7, 0x17, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnError(HResult hrError) mut => VT.OnError(ref this, hrError);
			public HResult OnReportStatus(CLIENT_MESSAGE_TYPE messageType, uint32 messageID) mut => VT.OnReportStatus(ref this, messageType, messageID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbBaseNotifySink self, HResult hrError) OnError;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbBaseNotifySink self, CLIENT_MESSAGE_TYPE messageType, uint32 messageID) OnReportStatus;
			}
		}
		[CRepr]
		public struct ITsSbPluginNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x44dfe30b, 0xc3be, 0x40f5, 0xbf, 0x82, 0x7a, 0x95, 0xbb, 0x79, 0x5a, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnInitialized(HResult hr) mut => VT.OnInitialized(ref this, hr);
			public HResult OnTerminated() mut => VT.OnTerminated(ref this);

			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbPluginNotifySink self, HResult hr) OnInitialized;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbPluginNotifySink self) OnTerminated;
			}
		}
		[CRepr]
		public struct ITsSbLoadBalancingNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x5f8a8297, 0x3244, 0x4e6a, 0x95, 0x8a, 0x27, 0xc8, 0x22, 0xc1, 0xe1, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnGetMostSuitableTarget(ref ITsSbLoadBalanceResult pLBResult, IntBool fIsNewConnection) mut => VT.OnGetMostSuitableTarget(ref this, ref pLBResult, fIsNewConnection);

			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbLoadBalancingNotifySink self, ref ITsSbLoadBalanceResult pLBResult, IntBool fIsNewConnection) OnGetMostSuitableTarget;
			}
		}
		[CRepr]
		public struct ITsSbPlacementNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x68a0c487, 0x2b4f, 0x46c2, 0x94, 0xa1, 0x6c, 0xe6, 0x85, 0x18, 0x36, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnQueryEnvironmentCompleted(ref ITsSbEnvironment pEnvironment) mut => VT.OnQueryEnvironmentCompleted(ref this, ref pEnvironment);

			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbPlacementNotifySink self, ref ITsSbEnvironment pEnvironment) OnQueryEnvironmentCompleted;
			}
		}
		[CRepr]
		public struct ITsSbOrchestrationNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x36c37d61, 0x926b, 0x442f, 0xbc, 0xa5, 0x11, 0x8c, 0x6d, 0x50, 0xdc, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnReadyToConnect(ref ITsSbTarget pTarget) mut => VT.OnReadyToConnect(ref this, ref pTarget);

			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbOrchestrationNotifySink self, ref ITsSbTarget pTarget) OnReadyToConnect;
			}
		}
		[CRepr]
		public struct ITsSbTaskPluginNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x6aaf899e, 0xc2ec, 0x45ee, 0xaa, 0x37, 0x45, 0xe6, 0x08, 0x95, 0x26, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnSetTaskTime(BSTR szTargetName, FileTime TaskStartTime, FileTime TaskEndTime, FileTime TaskDeadline, BSTR szTaskLabel, BSTR szTaskIdentifier, BSTR szTaskPlugin, uint32 dwTaskStatus, ref SAFEARRAY saContext) mut => VT.OnSetTaskTime(ref this, szTargetName, TaskStartTime, TaskEndTime, TaskDeadline, szTaskLabel, szTaskIdentifier, szTaskPlugin, dwTaskStatus, ref saContext);
			public HResult OnDeleteTaskTime(BSTR szTargetName, BSTR szTaskIdentifier) mut => VT.OnDeleteTaskTime(ref this, szTargetName, szTaskIdentifier);
			public HResult OnUpdateTaskStatus(BSTR szTargetName, BSTR TaskIdentifier, RDV_TASK_STATUS TaskStatus) mut => VT.OnUpdateTaskStatus(ref this, szTargetName, TaskIdentifier, TaskStatus);
			public HResult OnReportTasks(BSTR szHostName) mut => VT.OnReportTasks(ref this, szHostName);

			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskPluginNotifySink self, BSTR szTargetName, FileTime TaskStartTime, FileTime TaskEndTime, FileTime TaskDeadline, BSTR szTaskLabel, BSTR szTaskIdentifier, BSTR szTaskPlugin, uint32 dwTaskStatus, ref SAFEARRAY saContext) OnSetTaskTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskPluginNotifySink self, BSTR szTargetName, BSTR szTaskIdentifier) OnDeleteTaskTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskPluginNotifySink self, BSTR szTargetName, BSTR TaskIdentifier, RDV_TASK_STATUS TaskStatus) OnUpdateTaskStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbTaskPluginNotifySink self, BSTR szHostName) OnReportTasks;
			}
		}
		[CRepr]
		public struct ITsSbClientConnection : IUnknown
		{
			public const new Guid IID = .(0x18857499, 0xad61, 0x4b1b, 0xb7, 0xdf, 0xcb, 0xcd, 0x41, 0xfb, 0x83, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_UserName(out BSTR pVal) mut => VT.get_UserName(ref this, out pVal);
			public HResult get_Domain(out BSTR pVal) mut => VT.get_Domain(ref this, out pVal);
			public HResult get_InitialProgram(out BSTR pVal) mut => VT.get_InitialProgram(ref this, out pVal);
			public HResult get_LoadBalanceResult(out ITsSbLoadBalanceResult* ppVal) mut => VT.get_LoadBalanceResult(ref this, out ppVal);
			public HResult get_FarmName(out BSTR pVal) mut => VT.get_FarmName(ref this, out pVal);
			public HResult PutContext(BSTR contextId, VARIANT context, VARIANT* existingContext) mut => VT.PutContext(ref this, contextId, context, existingContext);
			public HResult GetContext(BSTR contextId, out VARIANT context) mut => VT.GetContext(ref this, contextId, out context);
			public HResult get_Environment(out ITsSbEnvironment* ppEnvironment) mut => VT.get_Environment(ref this, out ppEnvironment);
			public HResult get_ConnectionError() mut => VT.get_ConnectionError(ref this);
			public HResult get_SamUserAccount(out BSTR pVal) mut => VT.get_SamUserAccount(ref this, out pVal);
			public HResult get_ClientConnectionPropertySet(out ITsSbClientConnectionPropertySet* ppPropertySet) mut => VT.get_ClientConnectionPropertySet(ref this, out ppPropertySet);
			public HResult get_IsFirstAssignment(out IntBool ppVal) mut => VT.get_IsFirstAssignment(ref this, out ppVal);
			public HResult get_RdFarmType(out RD_FARM_TYPE pRdFarmType) mut => VT.get_RdFarmType(ref this, out pRdFarmType);
			public HResult get_UserSidString(out int8* pszUserSidString) mut => VT.get_UserSidString(ref this, out pszUserSidString);
			public HResult GetDisconnectedSession(out ITsSbSession* ppSession) mut => VT.GetDisconnectedSession(ref this, out ppSession);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, out BSTR pVal) get_UserName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, out BSTR pVal) get_Domain;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, out BSTR pVal) get_InitialProgram;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, out ITsSbLoadBalanceResult* ppVal) get_LoadBalanceResult;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, out BSTR pVal) get_FarmName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, BSTR contextId, VARIANT context, VARIANT* existingContext) PutContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, BSTR contextId, out VARIANT context) GetContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, out ITsSbEnvironment* ppEnvironment) get_Environment;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self) get_ConnectionError;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, out BSTR pVal) get_SamUserAccount;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, out ITsSbClientConnectionPropertySet* ppPropertySet) get_ClientConnectionPropertySet;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, out IntBool ppVal) get_IsFirstAssignment;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, out RD_FARM_TYPE pRdFarmType) get_RdFarmType;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, out int8* pszUserSidString) get_UserSidString;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbClientConnection self, out ITsSbSession* ppSession) GetDisconnectedSession;
			}
		}
		[CRepr]
		public struct ITsSbProvider : IUnknown
		{
			public const new Guid IID = .(0x87a4098f, 0x6d7b, 0x44dd, 0xbc, 0x17, 0x8c, 0xe4, 0x4e, 0x37, 0x0d, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateTargetObject(BSTR TargetName, BSTR EnvironmentName, out ITsSbTarget* ppTarget) mut => VT.CreateTargetObject(ref this, TargetName, EnvironmentName, out ppTarget);
			public HResult CreateLoadBalanceResultObject(BSTR TargetName, out ITsSbLoadBalanceResult* ppLBResult) mut => VT.CreateLoadBalanceResultObject(ref this, TargetName, out ppLBResult);
			public HResult CreateSessionObject(BSTR TargetName, BSTR UserName, BSTR Domain, uint32 SessionId, out ITsSbSession* ppSession) mut => VT.CreateSessionObject(ref this, TargetName, UserName, Domain, SessionId, out ppSession);
			public HResult CreatePluginPropertySet(out ITsSbPluginPropertySet* ppPropertySet) mut => VT.CreatePluginPropertySet(ref this, out ppPropertySet);
			public HResult CreateTargetPropertySetObject(out ITsSbTargetPropertySet* ppPropertySet) mut => VT.CreateTargetPropertySetObject(ref this, out ppPropertySet);
			public HResult CreateEnvironmentObject(BSTR Name, uint32 ServerWeight, out ITsSbEnvironment* ppEnvironment) mut => VT.CreateEnvironmentObject(ref this, Name, ServerWeight, out ppEnvironment);
			public HResult GetResourcePluginStore(out ITsSbResourcePluginStore* ppStore) mut => VT.GetResourcePluginStore(ref this, out ppStore);
			public HResult GetFilterPluginStore(out ITsSbFilterPluginStore* ppStore) mut => VT.GetFilterPluginStore(ref this, out ppStore);
			public HResult RegisterForNotification(uint32 notificationType, BSTR ResourceToMonitor, ref ITsSbResourceNotification pPluginNotification) mut => VT.RegisterForNotification(ref this, notificationType, ResourceToMonitor, ref pPluginNotification);
			public HResult UnRegisterForNotification(uint32 notificationType, BSTR ResourceToMonitor) mut => VT.UnRegisterForNotification(ref this, notificationType, ResourceToMonitor);
			public HResult GetInstanceOfGlobalStore(out ITsSbGlobalStore* ppGlobalStore) mut => VT.GetInstanceOfGlobalStore(ref this, out ppGlobalStore);
			public HResult CreateEnvironmentPropertySetObject(out ITsSbEnvironmentPropertySet* ppPropertySet) mut => VT.CreateEnvironmentPropertySetObject(ref this, out ppPropertySet);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvider self, BSTR TargetName, BSTR EnvironmentName, out ITsSbTarget* ppTarget) CreateTargetObject;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvider self, BSTR TargetName, out ITsSbLoadBalanceResult* ppLBResult) CreateLoadBalanceResultObject;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvider self, BSTR TargetName, BSTR UserName, BSTR Domain, uint32 SessionId, out ITsSbSession* ppSession) CreateSessionObject;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvider self, out ITsSbPluginPropertySet* ppPropertySet) CreatePluginPropertySet;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvider self, out ITsSbTargetPropertySet* ppPropertySet) CreateTargetPropertySetObject;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvider self, BSTR Name, uint32 ServerWeight, out ITsSbEnvironment* ppEnvironment) CreateEnvironmentObject;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvider self, out ITsSbResourcePluginStore* ppStore) GetResourcePluginStore;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvider self, out ITsSbFilterPluginStore* ppStore) GetFilterPluginStore;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvider self, uint32 notificationType, BSTR ResourceToMonitor, ref ITsSbResourceNotification pPluginNotification) RegisterForNotification;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvider self, uint32 notificationType, BSTR ResourceToMonitor) UnRegisterForNotification;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvider self, out ITsSbGlobalStore* ppGlobalStore) GetInstanceOfGlobalStore;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvider self, out ITsSbEnvironmentPropertySet* ppPropertySet) CreateEnvironmentPropertySetObject;
			}
		}
		[CRepr]
		public struct ITsSbResourcePluginStore : IUnknown
		{
			public const new Guid IID = .(0x5c38f65f, 0xbcf1, 0x4036, 0xa6, 0xbf, 0x9e, 0x3c, 0xcc, 0xae, 0x0b, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult QueryTarget(BSTR TargetName, BSTR FarmName, out ITsSbTarget* ppTarget) mut => VT.QueryTarget(ref this, TargetName, FarmName, out ppTarget);
			public HResult QuerySessionBySessionId(uint32 dwSessionId, BSTR TargetName, out ITsSbSession* ppSession) mut => VT.QuerySessionBySessionId(ref this, dwSessionId, TargetName, out ppSession);
			public HResult AddTargetToStore(ref ITsSbTarget pTarget) mut => VT.AddTargetToStore(ref this, ref pTarget);
			public HResult AddSessionToStore(ref ITsSbSession pSession) mut => VT.AddSessionToStore(ref this, ref pSession);
			public HResult AddEnvironmentToStore(ref ITsSbEnvironment pEnvironment) mut => VT.AddEnvironmentToStore(ref this, ref pEnvironment);
			public HResult RemoveEnvironmentFromStore(BSTR EnvironmentName, IntBool bIgnoreOwner) mut => VT.RemoveEnvironmentFromStore(ref this, EnvironmentName, bIgnoreOwner);
			public HResult EnumerateFarms(out uint32 pdwCount, out SAFEARRAY* pVal) mut => VT.EnumerateFarms(ref this, out pdwCount, out pVal);
			public HResult QueryEnvironment(BSTR EnvironmentName, out ITsSbEnvironment* ppEnvironment) mut => VT.QueryEnvironment(ref this, EnvironmentName, out ppEnvironment);
			public HResult EnumerateEnvironments(out uint32 pdwCount, ITsSbEnvironment*** pVal) mut => VT.EnumerateEnvironments(ref this, out pdwCount, pVal);
			public HResult SaveTarget(ref ITsSbTarget pTarget, IntBool bForceWrite) mut => VT.SaveTarget(ref this, ref pTarget, bForceWrite);
			public HResult SaveEnvironment(ref ITsSbEnvironment pEnvironment, IntBool bForceWrite) mut => VT.SaveEnvironment(ref this, ref pEnvironment, bForceWrite);
			public HResult SaveSession(ref ITsSbSession pSession) mut => VT.SaveSession(ref this, ref pSession);
			public HResult SetTargetProperty(BSTR TargetName, BSTR PropertyName, ref VARIANT pProperty) mut => VT.SetTargetProperty(ref this, TargetName, PropertyName, ref pProperty);
			public HResult SetEnvironmentProperty(BSTR EnvironmentName, BSTR PropertyName, ref VARIANT pProperty) mut => VT.SetEnvironmentProperty(ref this, EnvironmentName, PropertyName, ref pProperty);
			public HResult SetTargetState(BSTR targetName, TARGET_STATE newState, out TARGET_STATE pOldState) mut => VT.SetTargetState(ref this, targetName, newState, out pOldState);
			public HResult SetSessionState(ref ITsSbSession sbSession) mut => VT.SetSessionState(ref this, ref sbSession);
			public HResult EnumerateTargets(BSTR FarmName, BSTR EnvName, TS_SB_SORT_BY sortByFieldId, BSTR sortyByPropName, out uint32 pdwCount, ITsSbTarget*** pVal) mut => VT.EnumerateTargets(ref this, FarmName, EnvName, sortByFieldId, sortyByPropName, out pdwCount, pVal);
			public HResult EnumerateSessions(BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, ref TSSESSION_STATE pSessionState, out uint32 pdwCount, ITsSbSession*** ppVal) mut => VT.EnumerateSessions(ref this, targetName, userName, userDomain, poolName, initialProgram, ref pSessionState, out pdwCount, ppVal);
			public HResult GetFarmProperty(BSTR farmName, BSTR propertyName, ref VARIANT pVarValue) mut => VT.GetFarmProperty(ref this, farmName, propertyName, ref pVarValue);
			public HResult DeleteTarget(BSTR targetName, BSTR hostName) mut => VT.DeleteTarget(ref this, targetName, hostName);
			public HResult SetTargetPropertyWithVersionCheck(ref ITsSbTarget pTarget, BSTR PropertyName, ref VARIANT pProperty) mut => VT.SetTargetPropertyWithVersionCheck(ref this, ref pTarget, PropertyName, ref pProperty);
			public HResult SetEnvironmentPropertyWithVersionCheck(ref ITsSbEnvironment pEnvironment, BSTR PropertyName, ref VARIANT pProperty) mut => VT.SetEnvironmentPropertyWithVersionCheck(ref this, ref pEnvironment, PropertyName, ref pProperty);
			public HResult AcquireTargetLock(BSTR targetName, uint32 dwTimeout, out IUnknown* ppContext) mut => VT.AcquireTargetLock(ref this, targetName, dwTimeout, out ppContext);
			public HResult ReleaseTargetLock(ref IUnknown pContext) mut => VT.ReleaseTargetLock(ref this, ref pContext);
			public HResult TestAndSetServerState(BSTR PoolName, BSTR ServerFQDN, TARGET_STATE NewState, TARGET_STATE TestState, out TARGET_STATE pInitState) mut => VT.TestAndSetServerState(ref this, PoolName, ServerFQDN, NewState, TestState, out pInitState);
			public HResult SetServerWaitingToStart(BSTR PoolName, BSTR serverName) mut => VT.SetServerWaitingToStart(ref this, PoolName, serverName);
			public HResult GetServerState(BSTR PoolName, BSTR ServerFQDN, out TARGET_STATE pState) mut => VT.GetServerState(ref this, PoolName, ServerFQDN, out pState);
			public HResult SetServerDrainMode(BSTR ServerFQDN, uint32 DrainMode) mut => VT.SetServerDrainMode(ref this, ServerFQDN, DrainMode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR TargetName, BSTR FarmName, out ITsSbTarget* ppTarget) QueryTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, uint32 dwSessionId, BSTR TargetName, out ITsSbSession* ppSession) QuerySessionBySessionId;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, ref ITsSbTarget pTarget) AddTargetToStore;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, ref ITsSbSession pSession) AddSessionToStore;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, ref ITsSbEnvironment pEnvironment) AddEnvironmentToStore;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR EnvironmentName, IntBool bIgnoreOwner) RemoveEnvironmentFromStore;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, out uint32 pdwCount, out SAFEARRAY* pVal) EnumerateFarms;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR EnvironmentName, out ITsSbEnvironment* ppEnvironment) QueryEnvironment;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, out uint32 pdwCount, ITsSbEnvironment*** pVal) EnumerateEnvironments;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, ref ITsSbTarget pTarget, IntBool bForceWrite) SaveTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, ref ITsSbEnvironment pEnvironment, IntBool bForceWrite) SaveEnvironment;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, ref ITsSbSession pSession) SaveSession;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR TargetName, BSTR PropertyName, ref VARIANT pProperty) SetTargetProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR EnvironmentName, BSTR PropertyName, ref VARIANT pProperty) SetEnvironmentProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR targetName, TARGET_STATE newState, out TARGET_STATE pOldState) SetTargetState;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, ref ITsSbSession sbSession) SetSessionState;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR FarmName, BSTR EnvName, TS_SB_SORT_BY sortByFieldId, BSTR sortyByPropName, out uint32 pdwCount, ITsSbTarget*** pVal) EnumerateTargets;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, ref TSSESSION_STATE pSessionState, out uint32 pdwCount, ITsSbSession*** ppVal) EnumerateSessions;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR farmName, BSTR propertyName, ref VARIANT pVarValue) GetFarmProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR targetName, BSTR hostName) DeleteTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, ref ITsSbTarget pTarget, BSTR PropertyName, ref VARIANT pProperty) SetTargetPropertyWithVersionCheck;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, ref ITsSbEnvironment pEnvironment, BSTR PropertyName, ref VARIANT pProperty) SetEnvironmentPropertyWithVersionCheck;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR targetName, uint32 dwTimeout, out IUnknown* ppContext) AcquireTargetLock;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, ref IUnknown pContext) ReleaseTargetLock;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR PoolName, BSTR ServerFQDN, TARGET_STATE NewState, TARGET_STATE TestState, out TARGET_STATE pInitState) TestAndSetServerState;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR PoolName, BSTR serverName) SetServerWaitingToStart;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR PoolName, BSTR ServerFQDN, out TARGET_STATE pState) GetServerState;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbResourcePluginStore self, BSTR ServerFQDN, uint32 DrainMode) SetServerDrainMode;
			}
		}
		[CRepr]
		public struct ITsSbFilterPluginStore : IUnknown
		{
			public const new Guid IID = .(0x85b44b0f, 0xed78, 0x413f, 0x97, 0x02, 0xfa, 0x6d, 0x3b, 0x5e, 0xe7, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SaveProperties(ref ITsSbPropertySet pPropertySet) mut => VT.SaveProperties(ref this, ref pPropertySet);
			public HResult EnumerateProperties(out ITsSbPropertySet* ppPropertySet) mut => VT.EnumerateProperties(ref this, out ppPropertySet);
			public HResult DeleteProperties(BSTR propertyName) mut => VT.DeleteProperties(ref this, propertyName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbFilterPluginStore self, ref ITsSbPropertySet pPropertySet) SaveProperties;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbFilterPluginStore self, out ITsSbPropertySet* ppPropertySet) EnumerateProperties;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbFilterPluginStore self, BSTR propertyName) DeleteProperties;
			}
		}
		[CRepr]
		public struct ITsSbGlobalStore : IUnknown
		{
			public const new Guid IID = .(0x9ab60f7b, 0xbd72, 0x4d9f, 0x8a, 0x3a, 0xa0, 0xea, 0x55, 0x74, 0xe6, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult QueryTarget(BSTR ProviderName, BSTR TargetName, BSTR FarmName, out ITsSbTarget* ppTarget) mut => VT.QueryTarget(ref this, ProviderName, TargetName, FarmName, out ppTarget);
			public HResult QuerySessionBySessionId(BSTR ProviderName, uint32 dwSessionId, BSTR TargetName, out ITsSbSession* ppSession) mut => VT.QuerySessionBySessionId(ref this, ProviderName, dwSessionId, TargetName, out ppSession);
			public HResult EnumerateFarms(BSTR ProviderName, out uint32 pdwCount, out SAFEARRAY* pVal) mut => VT.EnumerateFarms(ref this, ProviderName, out pdwCount, out pVal);
			public HResult EnumerateTargets(BSTR ProviderName, BSTR FarmName, BSTR EnvName, out uint32 pdwCount, ITsSbTarget*** pVal) mut => VT.EnumerateTargets(ref this, ProviderName, FarmName, EnvName, out pdwCount, pVal);
			public HResult EnumerateEnvironmentsByProvider(BSTR ProviderName, out uint32 pdwCount, ITsSbEnvironment*** ppVal) mut => VT.EnumerateEnvironmentsByProvider(ref this, ProviderName, out pdwCount, ppVal);
			public HResult EnumerateSessions(BSTR ProviderName, BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, ref TSSESSION_STATE pSessionState, out uint32 pdwCount, ITsSbSession*** ppVal) mut => VT.EnumerateSessions(ref this, ProviderName, targetName, userName, userDomain, poolName, initialProgram, ref pSessionState, out pdwCount, ppVal);
			public HResult GetFarmProperty(BSTR farmName, BSTR propertyName, ref VARIANT pVarValue) mut => VT.GetFarmProperty(ref this, farmName, propertyName, ref pVarValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbGlobalStore self, BSTR ProviderName, BSTR TargetName, BSTR FarmName, out ITsSbTarget* ppTarget) QueryTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbGlobalStore self, BSTR ProviderName, uint32 dwSessionId, BSTR TargetName, out ITsSbSession* ppSession) QuerySessionBySessionId;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbGlobalStore self, BSTR ProviderName, out uint32 pdwCount, out SAFEARRAY* pVal) EnumerateFarms;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbGlobalStore self, BSTR ProviderName, BSTR FarmName, BSTR EnvName, out uint32 pdwCount, ITsSbTarget*** pVal) EnumerateTargets;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbGlobalStore self, BSTR ProviderName, out uint32 pdwCount, ITsSbEnvironment*** ppVal) EnumerateEnvironmentsByProvider;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbGlobalStore self, BSTR ProviderName, BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, ref TSSESSION_STATE pSessionState, out uint32 pdwCount, ITsSbSession*** ppVal) EnumerateSessions;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbGlobalStore self, BSTR farmName, BSTR propertyName, ref VARIANT pVarValue) GetFarmProperty;
			}
		}
		[CRepr]
		public struct ITsSbProvisioningPluginNotifySink : IUnknown
		{
			public const new Guid IID = .(0xaca87a8e, 0x818b, 0x4581, 0xa0, 0x32, 0x49, 0xc3, 0xdf, 0xb9, 0xc7, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnJobCreated(ref VM_NOTIFY_INFO pVmNotifyInfo) mut => VT.OnJobCreated(ref this, ref pVmNotifyInfo);
			public HResult OnVirtualMachineStatusChanged(ref VM_NOTIFY_ENTRY pVmNotifyEntry, VM_NOTIFY_STATUS VmNotifyStatus, HResult ErrorCode, BSTR ErrorDescr) mut => VT.OnVirtualMachineStatusChanged(ref this, ref pVmNotifyEntry, VmNotifyStatus, ErrorCode, ErrorDescr);
			public HResult OnJobCompleted(HResult ResultCode, BSTR ResultDescription) mut => VT.OnJobCompleted(ref this, ResultCode, ResultDescription);
			public HResult OnJobCancelled() mut => VT.OnJobCancelled(ref this);
			public HResult LockVirtualMachine(ref VM_NOTIFY_ENTRY pVmNotifyEntry) mut => VT.LockVirtualMachine(ref this, ref pVmNotifyEntry);
			public HResult OnVirtualMachineHostStatusChanged(BSTR VmHost, VM_HOST_NOTIFY_STATUS VmHostNotifyStatus, HResult ErrorCode, BSTR ErrorDescr) mut => VT.OnVirtualMachineHostStatusChanged(ref this, VmHost, VmHostNotifyStatus, ErrorCode, ErrorDescr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvisioningPluginNotifySink self, ref VM_NOTIFY_INFO pVmNotifyInfo) OnJobCreated;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvisioningPluginNotifySink self, ref VM_NOTIFY_ENTRY pVmNotifyEntry, VM_NOTIFY_STATUS VmNotifyStatus, HResult ErrorCode, BSTR ErrorDescr) OnVirtualMachineStatusChanged;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvisioningPluginNotifySink self, HResult ResultCode, BSTR ResultDescription) OnJobCompleted;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvisioningPluginNotifySink self) OnJobCancelled;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvisioningPluginNotifySink self, ref VM_NOTIFY_ENTRY pVmNotifyEntry) LockVirtualMachine;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvisioningPluginNotifySink self, BSTR VmHost, VM_HOST_NOTIFY_STATUS VmHostNotifyStatus, HResult ErrorCode, BSTR ErrorDescr) OnVirtualMachineHostStatusChanged;
			}
		}
		[CRepr]
		public struct ITsSbProvisioning : ITsSbPlugin
		{
			public const new Guid IID = .(0x2f6f0dbb, 0x9e4f, 0x462b, 0x9c, 0x3f, 0xfc, 0xcc, 0x3d, 0xcb, 0x62, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateVirtualMachines(BSTR JobXmlString, BSTR JobGuid, ref ITsSbProvisioningPluginNotifySink pSink) mut => VT.CreateVirtualMachines(ref this, JobXmlString, JobGuid, ref pSink);
			public HResult PatchVirtualMachines(BSTR JobXmlString, BSTR JobGuid, ref ITsSbProvisioningPluginNotifySink pSink, ref VM_PATCH_INFO pVMPatchInfo) mut => VT.PatchVirtualMachines(ref this, JobXmlString, JobGuid, ref pSink, ref pVMPatchInfo);
			public HResult DeleteVirtualMachines(BSTR JobXmlString, BSTR JobGuid, ref ITsSbProvisioningPluginNotifySink pSink) mut => VT.DeleteVirtualMachines(ref this, JobXmlString, JobGuid, ref pSink);
			public HResult CancelJob(BSTR JobGuid) mut => VT.CancelJob(ref this, JobGuid);

			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvisioning self, BSTR JobXmlString, BSTR JobGuid, ref ITsSbProvisioningPluginNotifySink pSink) CreateVirtualMachines;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvisioning self, BSTR JobXmlString, BSTR JobGuid, ref ITsSbProvisioningPluginNotifySink pSink, ref VM_PATCH_INFO pVMPatchInfo) PatchVirtualMachines;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvisioning self, BSTR JobXmlString, BSTR JobGuid, ref ITsSbProvisioningPluginNotifySink pSink) DeleteVirtualMachines;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbProvisioning self, BSTR JobGuid) CancelJob;
			}
		}
		[CRepr]
		public struct ITsSbGenericNotifySink : IUnknown
		{
			public const new Guid IID = .(0x4c4c8c4f, 0x300b, 0x46ad, 0x91, 0x64, 0x84, 0x68, 0xa7, 0xe7, 0x56, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnCompleted(HResult Status) mut => VT.OnCompleted(ref this, Status);
			public HResult GetWaitTimeout(out FileTime pftTimeout) mut => VT.GetWaitTimeout(ref this, out pftTimeout);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbGenericNotifySink self, HResult Status) OnCompleted;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITsSbGenericNotifySink self, out FileTime pftTimeout) GetWaitTimeout;
			}
		}
		[CRepr]
		public struct ItsPubPlugin : IUnknown
		{
			public const new Guid IID = .(0x70c04b05, 0xf347, 0x412b, 0x82, 0x2f, 0x36, 0xc9, 0x9c, 0x54, 0xca, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetResourceList(char16* userID, out int32 pceAppListSize, out pluginResource* resourceList) mut => VT.GetResourceList(ref this, userID, out pceAppListSize, out resourceList);
			public HResult GetResource(char16* alias, int32 flags, out pluginResource resource) mut => VT.GetResource(ref this, alias, flags, out resource);
			public HResult GetCacheLastUpdateTime(out uint64 lastUpdateTime) mut => VT.GetCacheLastUpdateTime(ref this, out lastUpdateTime);
			public HResult get_pluginName(out BSTR pVal) mut => VT.get_pluginName(ref this, out pVal);
			public HResult get_pluginVersion(out BSTR pVal) mut => VT.get_pluginVersion(ref this, out pVal);
			public HResult ResolveResource(out uint32 resourceType, char16* resourceLocation, char16* endPointName, char16* userID, char16* alias) mut => VT.ResolveResource(ref this, out resourceType, resourceLocation, endPointName, userID, alias);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ItsPubPlugin self, char16* userID, out int32 pceAppListSize, out pluginResource* resourceList) GetResourceList;
				public new function [CallingConvention(.Stdcall)] HResult(ref ItsPubPlugin self, char16* alias, int32 flags, out pluginResource resource) GetResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref ItsPubPlugin self, out uint64 lastUpdateTime) GetCacheLastUpdateTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref ItsPubPlugin self, out BSTR pVal) get_pluginName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ItsPubPlugin self, out BSTR pVal) get_pluginVersion;
				public new function [CallingConvention(.Stdcall)] HResult(ref ItsPubPlugin self, out uint32 resourceType, char16* resourceLocation, char16* endPointName, char16* userID, char16* alias) ResolveResource;
			}
		}
		[CRepr]
		public struct ItsPubPlugin2 : ItsPubPlugin
		{
			public const new Guid IID = .(0xfa4ce418, 0xaad7, 0x4ec6, 0xba, 0xd1, 0x0a, 0x32, 0x1b, 0xa4, 0x65, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetResource2List(char16* userID, out int32 pceAppListSize, out pluginResource2* resourceList) mut => VT.GetResource2List(ref this, userID, out pceAppListSize, out resourceList);
			public HResult GetResource2(char16* alias, int32 flags, out pluginResource2 resource) mut => VT.GetResource2(ref this, alias, flags, out resource);
			public HResult ResolvePersonalDesktop(char16* userId, char16* poolId, TSPUB_PLUGIN_PD_RESOLUTION_TYPE ePdResolutionType, out TSPUB_PLUGIN_PD_ASSIGNMENT_TYPE pPdAssignmentType, char16* endPointName) mut => VT.ResolvePersonalDesktop(ref this, userId, poolId, ePdResolutionType, out pPdAssignmentType, endPointName);
			public HResult DeletePersonalDesktopAssignment(char16* userId, char16* poolId, char16* endpointName) mut => VT.DeletePersonalDesktopAssignment(ref this, userId, poolId, endpointName);

			[CRepr]
			public struct VTable : ItsPubPlugin.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ItsPubPlugin2 self, char16* userID, out int32 pceAppListSize, out pluginResource2* resourceList) GetResource2List;
				public new function [CallingConvention(.Stdcall)] HResult(ref ItsPubPlugin2 self, char16* alias, int32 flags, out pluginResource2 resource) GetResource2;
				public new function [CallingConvention(.Stdcall)] HResult(ref ItsPubPlugin2 self, char16* userId, char16* poolId, TSPUB_PLUGIN_PD_RESOLUTION_TYPE ePdResolutionType, out TSPUB_PLUGIN_PD_ASSIGNMENT_TYPE pPdAssignmentType, char16* endPointName) ResolvePersonalDesktop;
				public new function [CallingConvention(.Stdcall)] HResult(ref ItsPubPlugin2 self, char16* userId, char16* poolId, char16* endpointName) DeletePersonalDesktopAssignment;
			}
		}
		[CRepr]
		public struct IWorkspaceResTypeRegistry : IDispatch
		{
			public const new Guid IID = .(0x1d428c79, 0x6e2e, 0x4351, 0xa3, 0x61, 0xc0, 0x40, 0x1a, 0x03, 0xa0, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddResourceType(int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) mut => VT.AddResourceType(ref this, fMachineWide, bstrFileExtension, bstrLauncher);
			public HResult DeleteResourceType(int16 fMachineWide, BSTR bstrFileExtension) mut => VT.DeleteResourceType(ref this, fMachineWide, bstrFileExtension);
			public HResult GetRegisteredFileExtensions(int16 fMachineWide, SAFEARRAY** psaFileExtensions) mut => VT.GetRegisteredFileExtensions(ref this, fMachineWide, psaFileExtensions);
			public HResult GetResourceTypeInfo(int16 fMachineWide, BSTR bstrFileExtension, BSTR* pbstrLauncher) mut => VT.GetResourceTypeInfo(ref this, fMachineWide, bstrFileExtension, pbstrLauncher);
			public HResult ModifyResourceType(int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) mut => VT.ModifyResourceType(ref this, fMachineWide, bstrFileExtension, bstrLauncher);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceResTypeRegistry self, int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) AddResourceType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceResTypeRegistry self, int16 fMachineWide, BSTR bstrFileExtension) DeleteResourceType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceResTypeRegistry self, int16 fMachineWide, SAFEARRAY** psaFileExtensions) GetRegisteredFileExtensions;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceResTypeRegistry self, int16 fMachineWide, BSTR bstrFileExtension, BSTR* pbstrLauncher) GetResourceTypeInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWorkspaceResTypeRegistry self, int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) ModifyResourceType;
			}
		}
		[CRepr]
		public struct IWTSPlugin : IUnknown
		{
			public const new Guid IID = .(0xa1230201, 0x1439, 0x4e62, 0xa4, 0x14, 0x19, 0x0d, 0x0a, 0xc3, 0xd4, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Initialize(ref IWTSVirtualChannelManager pChannelMgr) mut => VT.Initialize(ref this, ref pChannelMgr);
			public HResult Connected() mut => VT.Connected(ref this);
			public HResult Disconnected(uint32 dwDisconnectCode) mut => VT.Disconnected(ref this, dwDisconnectCode);
			public HResult Terminated() mut => VT.Terminated(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSPlugin self, ref IWTSVirtualChannelManager pChannelMgr) Initialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSPlugin self) Connected;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSPlugin self, uint32 dwDisconnectCode) Disconnected;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSPlugin self) Terminated;
			}
		}
		[CRepr]
		public struct IWTSListener : IUnknown
		{
			public const new Guid IID = .(0xa1230206, 0x9a39, 0x4d58, 0x86, 0x74, 0xcd, 0xb4, 0xdf, 0xf4, 0xe7, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetConfiguration(out IPropertyBag* ppPropertyBag) mut => VT.GetConfiguration(ref this, out ppPropertyBag);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSListener self, out IPropertyBag* ppPropertyBag) GetConfiguration;
			}
		}
		[CRepr]
		public struct IWTSListenerCallback : IUnknown
		{
			public const new Guid IID = .(0xa1230203, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnNewChannelConnection(ref IWTSVirtualChannel pChannel, BSTR data, out IntBool pbAccept, out IWTSVirtualChannelCallback* ppCallback) mut => VT.OnNewChannelConnection(ref this, ref pChannel, data, out pbAccept, out ppCallback);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSListenerCallback self, ref IWTSVirtualChannel pChannel, BSTR data, out IntBool pbAccept, out IWTSVirtualChannelCallback* ppCallback) OnNewChannelConnection;
			}
		}
		[CRepr]
		public struct IWTSVirtualChannelCallback : IUnknown
		{
			public const new Guid IID = .(0xa1230204, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnDataReceived(uint32 cbSize, uint8* pBuffer) mut => VT.OnDataReceived(ref this, cbSize, pBuffer);
			public HResult OnClose() mut => VT.OnClose(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSVirtualChannelCallback self, uint32 cbSize, uint8* pBuffer) OnDataReceived;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSVirtualChannelCallback self) OnClose;
			}
		}
		[CRepr]
		public struct IWTSVirtualChannelManager : IUnknown
		{
			public const new Guid IID = .(0xa1230205, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateListener(in uint8 pszChannelName, uint32 uFlags, ref IWTSListenerCallback pListenerCallback, out IWTSListener* ppListener) mut => VT.CreateListener(ref this, pszChannelName, uFlags, ref pListenerCallback, out ppListener);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSVirtualChannelManager self, in uint8 pszChannelName, uint32 uFlags, ref IWTSListenerCallback pListenerCallback, out IWTSListener* ppListener) CreateListener;
			}
		}
		[CRepr]
		public struct IWTSVirtualChannel : IUnknown
		{
			public const new Guid IID = .(0xa1230207, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Write(uint32 cbSize, uint8* pBuffer, ref IUnknown pReserved) mut => VT.Write(ref this, cbSize, pBuffer, ref pReserved);
			public HResult Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSVirtualChannel self, uint32 cbSize, uint8* pBuffer, ref IUnknown pReserved) Write;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSVirtualChannel self) Close;
			}
		}
		[CRepr]
		public struct IWTSPluginServiceProvider : IUnknown
		{
			public const new Guid IID = .(0xd3e07363, 0x087c, 0x476c, 0x86, 0xa7, 0xdb, 0xb1, 0x5f, 0x46, 0xdd, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetService(Guid ServiceId, out IUnknown* ppunkObject) mut => VT.GetService(ref this, ServiceId, out ppunkObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSPluginServiceProvider self, Guid ServiceId, out IUnknown* ppunkObject) GetService;
			}
		}
		[CRepr]
		public struct IWTSBitmapRenderer : IUnknown
		{
			public const new Guid IID = .(0x5b7acc97, 0xf3c9, 0x46f7, 0x8c, 0x5b, 0xfa, 0x68, 0x5d, 0x34, 0x41, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Render(Guid imageFormat, uint32 dwWidth, uint32 dwHeight, int32 cbStride, uint32 cbImageBuffer, uint8* pImageBuffer) mut => VT.Render(ref this, imageFormat, dwWidth, dwHeight, cbStride, cbImageBuffer, pImageBuffer);
			public HResult GetRendererStatistics(out BITMAP_RENDERER_STATISTICS pStatistics) mut => VT.GetRendererStatistics(ref this, out pStatistics);
			public HResult RemoveMapping() mut => VT.RemoveMapping(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSBitmapRenderer self, Guid imageFormat, uint32 dwWidth, uint32 dwHeight, int32 cbStride, uint32 cbImageBuffer, uint8* pImageBuffer) Render;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSBitmapRenderer self, out BITMAP_RENDERER_STATISTICS pStatistics) GetRendererStatistics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSBitmapRenderer self) RemoveMapping;
			}
		}
		[CRepr]
		public struct IWTSBitmapRendererCallback : IUnknown
		{
			public const new Guid IID = .(0xd782928e, 0xfe4e, 0x4e77, 0xae, 0x90, 0x9c, 0xd0, 0xb3, 0xe3, 0xb3, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnTargetSizeChanged(RectI rcNewSize) mut => VT.OnTargetSizeChanged(ref this, rcNewSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSBitmapRendererCallback self, RectI rcNewSize) OnTargetSizeChanged;
			}
		}
		[CRepr]
		public struct IWTSBitmapRenderService : IUnknown
		{
			public const new Guid IID = .(0xea326091, 0x05fe, 0x40c1, 0xb4, 0x9c, 0x3d, 0x2e, 0xf4, 0x62, 0x6a, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetMappedRenderer(uint64 mappingId, ref IWTSBitmapRendererCallback pMappedRendererCallback, out IWTSBitmapRenderer* ppMappedRenderer) mut => VT.GetMappedRenderer(ref this, mappingId, ref pMappedRendererCallback, out ppMappedRenderer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSBitmapRenderService self, uint64 mappingId, ref IWTSBitmapRendererCallback pMappedRendererCallback, out IWTSBitmapRenderer* ppMappedRenderer) GetMappedRenderer;
			}
		}
		[CRepr]
		public struct IWRdsGraphicsChannelEvents : IUnknown
		{
			public const new Guid IID = .(0x67f2368c, 0xd674, 0x4fae, 0x66, 0xa5, 0xd2, 0x06, 0x28, 0xa6, 0x40, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnDataReceived(uint32 cbSize, ref uint8 pBuffer) mut => VT.OnDataReceived(ref this, cbSize, ref pBuffer);
			public HResult OnClose() mut => VT.OnClose(ref this);
			public HResult OnChannelOpened(HResult OpenResult, ref IUnknown pOpenContext) mut => VT.OnChannelOpened(ref this, OpenResult, ref pOpenContext);
			public HResult OnDataSent(ref IUnknown pWriteContext, IntBool bCancelled, ref uint8 pBuffer, uint32 cbBuffer) mut => VT.OnDataSent(ref this, ref pWriteContext, bCancelled, ref pBuffer, cbBuffer);
			public HResult OnMetricsUpdate(uint32 bandwidth, uint32 RTT, uint64 lastSentByteIndex) mut => VT.OnMetricsUpdate(ref this, bandwidth, RTT, lastSentByteIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsGraphicsChannelEvents self, uint32 cbSize, ref uint8 pBuffer) OnDataReceived;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsGraphicsChannelEvents self) OnClose;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsGraphicsChannelEvents self, HResult OpenResult, ref IUnknown pOpenContext) OnChannelOpened;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsGraphicsChannelEvents self, ref IUnknown pWriteContext, IntBool bCancelled, ref uint8 pBuffer, uint32 cbBuffer) OnDataSent;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsGraphicsChannelEvents self, uint32 bandwidth, uint32 RTT, uint64 lastSentByteIndex) OnMetricsUpdate;
			}
		}
		[CRepr]
		public struct IWRdsGraphicsChannel : IUnknown
		{
			public const new Guid IID = .(0x684b7a0b, 0xedff, 0x43ad, 0xd5, 0xa2, 0x4a, 0x8d, 0x53, 0x88, 0xf4, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Write(uint32 cbSize, ref uint8 pBuffer, ref IUnknown pContext) mut => VT.Write(ref this, cbSize, ref pBuffer, ref pContext);
			public HResult Close() mut => VT.Close(ref this);
			public HResult Open(ref IWRdsGraphicsChannelEvents pChannelEvents, ref IUnknown pOpenContext) mut => VT.Open(ref this, ref pChannelEvents, ref pOpenContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsGraphicsChannel self, uint32 cbSize, ref uint8 pBuffer, ref IUnknown pContext) Write;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsGraphicsChannel self) Close;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsGraphicsChannel self, ref IWRdsGraphicsChannelEvents pChannelEvents, ref IUnknown pOpenContext) Open;
			}
		}
		[CRepr]
		public struct IWRdsGraphicsChannelManager : IUnknown
		{
			public const new Guid IID = .(0x0fd57159, 0xe83e, 0x476a, 0xa8, 0xb9, 0x4a, 0x79, 0x76, 0xe7, 0x1e, 0x18);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateChannel(in uint8 pszChannelName, WRdsGraphicsChannelType channelType, out IWRdsGraphicsChannel* ppVirtualChannel) mut => VT.CreateChannel(ref this, pszChannelName, channelType, out ppVirtualChannel);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsGraphicsChannelManager self, in uint8 pszChannelName, WRdsGraphicsChannelType channelType, out IWRdsGraphicsChannel* ppVirtualChannel) CreateChannel;
			}
		}
		[CRepr]
		public struct IWTSProtocolManager : IUnknown
		{
			public const new Guid IID = .(0xf9eaf6cc, 0xed79, 0x4f01, 0x82, 0x1d, 0x1f, 0x88, 0x1b, 0x9f, 0x66, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateListener(char16* wszListenerName, out IWTSProtocolListener* pProtocolListener) mut => VT.CreateListener(ref this, wszListenerName, out pProtocolListener);
			public HResult NotifyServiceStateChange(ref WTS_SERVICE_STATE pTSServiceStateChange) mut => VT.NotifyServiceStateChange(ref this, ref pTSServiceStateChange);
			public HResult NotifySessionOfServiceStart(ref WTS_SESSION_ID SessionId) mut => VT.NotifySessionOfServiceStart(ref this, ref SessionId);
			public HResult NotifySessionOfServiceStop(ref WTS_SESSION_ID SessionId) mut => VT.NotifySessionOfServiceStop(ref this, ref SessionId);
			public HResult NotifySessionStateChange(ref WTS_SESSION_ID SessionId, uint32 EventId) mut => VT.NotifySessionStateChange(ref this, ref SessionId, EventId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolManager self, char16* wszListenerName, out IWTSProtocolListener* pProtocolListener) CreateListener;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolManager self, ref WTS_SERVICE_STATE pTSServiceStateChange) NotifyServiceStateChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolManager self, ref WTS_SESSION_ID SessionId) NotifySessionOfServiceStart;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolManager self, ref WTS_SESSION_ID SessionId) NotifySessionOfServiceStop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolManager self, ref WTS_SESSION_ID SessionId, uint32 EventId) NotifySessionStateChange;
			}
		}
		[CRepr]
		public struct IWTSProtocolListener : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x45f0, 0x4394, 0x8f, 0x69, 0x32, 0xb2, 0xbc, 0x0e, 0xf4, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult StartListen(ref IWTSProtocolListenerCallback pCallback) mut => VT.StartListen(ref this, ref pCallback);
			public HResult StopListen() mut => VT.StopListen(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolListener self, ref IWTSProtocolListenerCallback pCallback) StartListen;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolListener self) StopListen;
			}
		}
		[CRepr]
		public struct IWTSProtocolListenerCallback : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x1a2d, 0x4de2, 0x97, 0xde, 0x4a, 0x35, 0xf2, 0x60, 0xf0, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnConnected(ref IWTSProtocolConnection pConnection, out IWTSProtocolConnectionCallback* pCallback) mut => VT.OnConnected(ref this, ref pConnection, out pCallback);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolListenerCallback self, ref IWTSProtocolConnection pConnection, out IWTSProtocolConnectionCallback* pCallback) OnConnected;
			}
		}
		[CRepr]
		public struct IWTSProtocolConnection : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x9095, 0x4648, 0x98, 0xbf, 0xef, 0x81, 0xc9, 0x14, 0x03, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetLogonErrorRedirector(out IWTSProtocolLogonErrorRedirector* ppLogonErrorRedir) mut => VT.GetLogonErrorRedirector(ref this, out ppLogonErrorRedir);
			public HResult SendPolicyData(ref WTS_POLICY_DATA pPolicyData) mut => VT.SendPolicyData(ref this, ref pPolicyData);
			public HResult AcceptConnection() mut => VT.AcceptConnection(ref this);
			public HResult GetClientData(out WTS_CLIENT_DATA pClientData) mut => VT.GetClientData(ref this, out pClientData);
			public HResult GetUserCredentials(out WTS_USER_CREDENTIAL pUserCreds) mut => VT.GetUserCredentials(ref this, out pUserCreds);
			public HResult GetLicenseConnection(out IWTSProtocolLicenseConnection* ppLicenseConnection) mut => VT.GetLicenseConnection(ref this, out ppLicenseConnection);
			public HResult AuthenticateClientToSession(out WTS_SESSION_ID SessionId) mut => VT.AuthenticateClientToSession(ref this, out SessionId);
			public HResult NotifySessionId(ref WTS_SESSION_ID SessionId) mut => VT.NotifySessionId(ref this, ref SessionId);
			public HResult GetProtocolHandles(out HANDLE_PTR pKeyboardHandle, out HANDLE_PTR pMouseHandle, out HANDLE_PTR pBeepHandle, out HANDLE_PTR pVideoHandle) mut => VT.GetProtocolHandles(ref this, out pKeyboardHandle, out pMouseHandle, out pBeepHandle, out pVideoHandle);
			public HResult ConnectNotify(uint32 SessionId) mut => VT.ConnectNotify(ref this, SessionId);
			public HResult IsUserAllowedToLogon(uint32 SessionId, HANDLE_PTR UserToken, char16* pDomainName, char16* pUserName) mut => VT.IsUserAllowedToLogon(ref this, SessionId, UserToken, pDomainName, pUserName);
			public HResult SessionArbitrationEnumeration(HANDLE_PTR hUserToken, IntBool bSingleSessionPerUserEnabled, uint32* pSessionIdArray, out uint32 pdwSessionIdentifierCount) mut => VT.SessionArbitrationEnumeration(ref this, hUserToken, bSingleSessionPerUserEnabled, pSessionIdArray, out pdwSessionIdentifierCount);
			public HResult LogonNotify(HANDLE_PTR hClientToken, char16* wszUserName, char16* wszDomainName, ref WTS_SESSION_ID SessionId) mut => VT.LogonNotify(ref this, hClientToken, wszUserName, wszDomainName, ref SessionId);
			public HResult GetUserData(ref WTS_POLICY_DATA pPolicyData, out WTS_USER_DATA pClientData) mut => VT.GetUserData(ref this, ref pPolicyData, out pClientData);
			public HResult DisconnectNotify() mut => VT.DisconnectNotify(ref this);
			public HResult Close() mut => VT.Close(ref this);
			public HResult GetProtocolStatus(out WTS_PROTOCOL_STATUS pProtocolStatus) mut => VT.GetProtocolStatus(ref this, out pProtocolStatus);
			public HResult GetLastInputTime(out uint64 pLastInputTime) mut => VT.GetLastInputTime(ref this, out pLastInputTime);
			public HResult SetErrorInfo(uint32 ulError) mut => VT.SetErrorInfo(ref this, ulError);
			public HResult SendBeep(uint32 Frequency, uint32 Duration) mut => VT.SendBeep(ref this, Frequency, Duration);
			public HResult CreateVirtualChannel(char8* szEndpointName, IntBool bStatic, uint32 RequestedPriority, out uint phChannel) mut => VT.CreateVirtualChannel(ref this, szEndpointName, bStatic, RequestedPriority, out phChannel);
			public HResult QueryProperty(Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) mut => VT.QueryProperty(ref this, QueryType, ulNumEntriesIn, ulNumEntriesOut, pPropertyEntriesIn, pPropertyEntriesOut);
			public HResult GetShadowConnection(out IWTSProtocolShadowConnection* ppShadowConnection) mut => VT.GetShadowConnection(ref this, out ppShadowConnection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, out IWTSProtocolLogonErrorRedirector* ppLogonErrorRedir) GetLogonErrorRedirector;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, ref WTS_POLICY_DATA pPolicyData) SendPolicyData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self) AcceptConnection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, out WTS_CLIENT_DATA pClientData) GetClientData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, out WTS_USER_CREDENTIAL pUserCreds) GetUserCredentials;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, out IWTSProtocolLicenseConnection* ppLicenseConnection) GetLicenseConnection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, out WTS_SESSION_ID SessionId) AuthenticateClientToSession;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, ref WTS_SESSION_ID SessionId) NotifySessionId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, out HANDLE_PTR pKeyboardHandle, out HANDLE_PTR pMouseHandle, out HANDLE_PTR pBeepHandle, out HANDLE_PTR pVideoHandle) GetProtocolHandles;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, uint32 SessionId) ConnectNotify;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, uint32 SessionId, HANDLE_PTR UserToken, char16* pDomainName, char16* pUserName) IsUserAllowedToLogon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, HANDLE_PTR hUserToken, IntBool bSingleSessionPerUserEnabled, uint32* pSessionIdArray, out uint32 pdwSessionIdentifierCount) SessionArbitrationEnumeration;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, HANDLE_PTR hClientToken, char16* wszUserName, char16* wszDomainName, ref WTS_SESSION_ID SessionId) LogonNotify;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, ref WTS_POLICY_DATA pPolicyData, out WTS_USER_DATA pClientData) GetUserData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self) DisconnectNotify;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self) Close;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, out WTS_PROTOCOL_STATUS pProtocolStatus) GetProtocolStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, out uint64 pLastInputTime) GetLastInputTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, uint32 ulError) SetErrorInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, uint32 Frequency, uint32 Duration) SendBeep;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, char8* szEndpointName, IntBool bStatic, uint32 RequestedPriority, out uint phChannel) CreateVirtualChannel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) QueryProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnection self, out IWTSProtocolShadowConnection* ppShadowConnection) GetShadowConnection;
			}
		}
		[CRepr]
		public struct IWTSProtocolConnectionCallback : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x75eb, 0x41fe, 0xb4, 0xfb, 0xe0, 0x86, 0x24, 0x2a, 0xfa, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnReady() mut => VT.OnReady(ref this);
			public HResult BrokenConnection(uint32 Reason, uint32 Source) mut => VT.BrokenConnection(ref this, Reason, Source);
			public HResult StopScreenUpdates() mut => VT.StopScreenUpdates(ref this);
			public HResult RedrawWindow(ref WTS_SMALL_RECT rect) mut => VT.RedrawWindow(ref this, ref rect);
			public HResult DisplayIOCtl(ref WTS_DISPLAY_IOCTL DisplayIOCtl) mut => VT.DisplayIOCtl(ref this, ref DisplayIOCtl);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnectionCallback self) OnReady;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnectionCallback self, uint32 Reason, uint32 Source) BrokenConnection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnectionCallback self) StopScreenUpdates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnectionCallback self, ref WTS_SMALL_RECT rect) RedrawWindow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolConnectionCallback self, ref WTS_DISPLAY_IOCTL DisplayIOCtl) DisplayIOCtl;
			}
		}
		[CRepr]
		public struct IWTSProtocolShadowConnection : IUnknown
		{
			public const new Guid IID = .(0xee3b0c14, 0x37fb, 0x456b, 0xba, 0xb3, 0x6d, 0x6c, 0xd5, 0x1e, 0x13, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Start(char16* pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, ref IWTSProtocolShadowCallback pShadowCallback) mut => VT.Start(ref this, pTargetServerName, TargetSessionId, HotKeyVk, HotkeyModifiers, ref pShadowCallback);
			public HResult Stop() mut => VT.Stop(ref this);
			public HResult DoTarget(uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, char16* pClientName) mut => VT.DoTarget(ref this, pParam1, Param1Size, pParam2, Param2Size, pParam3, Param3Size, pParam4, Param4Size, pClientName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolShadowConnection self, char16* pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, ref IWTSProtocolShadowCallback pShadowCallback) Start;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolShadowConnection self) Stop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolShadowConnection self, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, char16* pClientName) DoTarget;
			}
		}
		[CRepr]
		public struct IWTSProtocolShadowCallback : IUnknown
		{
			public const new Guid IID = .(0x503a2504, 0xaae5, 0x4ab1, 0x93, 0xe0, 0x6d, 0x1c, 0x4b, 0xc6, 0xf7, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult StopShadow() mut => VT.StopShadow(ref this);
			public HResult InvokeTargetShadow(char16* pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, char16* pClientName) mut => VT.InvokeTargetShadow(ref this, pTargetServerName, TargetSessionId, pParam1, Param1Size, pParam2, Param2Size, pParam3, Param3Size, pParam4, Param4Size, pClientName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolShadowCallback self) StopShadow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolShadowCallback self, char16* pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, char16* pClientName) InvokeTargetShadow;
			}
		}
		[CRepr]
		public struct IWTSProtocolLicenseConnection : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x178c, 0x4079, 0x8e, 0x4a, 0xfe, 0xa6, 0x49, 0x6a, 0x4d, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RequestLicensingCapabilities(out WTS_LICENSE_CAPABILITIES ppLicenseCapabilities, out uint32 pcbLicenseCapabilities) mut => VT.RequestLicensingCapabilities(ref this, out ppLicenseCapabilities, out pcbLicenseCapabilities);
			public HResult SendClientLicense(uint8* pClientLicense, uint32 cbClientLicense) mut => VT.SendClientLicense(ref this, pClientLicense, cbClientLicense);
			public HResult RequestClientLicense(uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, out uint32 pcbClientLicense) mut => VT.RequestClientLicense(ref this, Reserve1, Reserve2, ppClientLicense, out pcbClientLicense);
			public HResult ProtocolComplete(uint32 ulComplete) mut => VT.ProtocolComplete(ref this, ulComplete);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolLicenseConnection self, out WTS_LICENSE_CAPABILITIES ppLicenseCapabilities, out uint32 pcbLicenseCapabilities) RequestLicensingCapabilities;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolLicenseConnection self, uint8* pClientLicense, uint32 cbClientLicense) SendClientLicense;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolLicenseConnection self, uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, out uint32 pcbClientLicense) RequestClientLicense;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolLicenseConnection self, uint32 ulComplete) ProtocolComplete;
			}
		}
		[CRepr]
		public struct IWTSProtocolLogonErrorRedirector : IUnknown
		{
			public const new Guid IID = .(0xfd9b61a7, 0x2916, 0x4627, 0x8d, 0xee, 0x43, 0x28, 0x71, 0x1a, 0xd6, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnBeginPainting() mut => VT.OnBeginPainting(ref this);
			public HResult RedirectStatus(char16* pszMessage, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) mut => VT.RedirectStatus(ref this, pszMessage, out pResponse);
			public HResult RedirectMessage(char16* pszCaption, char16* pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) mut => VT.RedirectMessage(ref this, pszCaption, pszMessage, uType, out pResponse);
			public HResult RedirectLogonError(int32 ntsStatus, int32 ntsSubstatus, char16* pszCaption, char16* pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) mut => VT.RedirectLogonError(ref this, ntsStatus, ntsSubstatus, pszCaption, pszMessage, uType, out pResponse);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolLogonErrorRedirector self) OnBeginPainting;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolLogonErrorRedirector self, char16* pszMessage, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) RedirectStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolLogonErrorRedirector self, char16* pszCaption, char16* pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) RedirectMessage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWTSProtocolLogonErrorRedirector self, int32 ntsStatus, int32 ntsSubstatus, char16* pszCaption, char16* pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) RedirectLogonError;
			}
		}
		[CRepr]
		public struct IWRdsProtocolSettings : IUnknown
		{
			public const new Guid IID = .(0x654a5a6a, 0x2550, 0x47eb, 0xb6, 0xf7, 0xeb, 0xd6, 0x37, 0x47, 0x52, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetSettings(WRDS_SETTING_TYPE WRdsSettingType, WRDS_SETTING_LEVEL WRdsSettingLevel, out WRDS_SETTINGS pWRdsSettings) mut => VT.GetSettings(ref this, WRdsSettingType, WRdsSettingLevel, out pWRdsSettings);
			public HResult MergeSettings(ref WRDS_SETTINGS pWRdsSettings, WRDS_CONNECTION_SETTING_LEVEL WRdsConnectionSettingLevel, out WRDS_CONNECTION_SETTINGS pWRdsConnectionSettings) mut => VT.MergeSettings(ref this, ref pWRdsSettings, WRdsConnectionSettingLevel, out pWRdsConnectionSettings);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolSettings self, WRDS_SETTING_TYPE WRdsSettingType, WRDS_SETTING_LEVEL WRdsSettingLevel, out WRDS_SETTINGS pWRdsSettings) GetSettings;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolSettings self, ref WRDS_SETTINGS pWRdsSettings, WRDS_CONNECTION_SETTING_LEVEL WRdsConnectionSettingLevel, out WRDS_CONNECTION_SETTINGS pWRdsConnectionSettings) MergeSettings;
			}
		}
		[CRepr]
		public struct IWRdsProtocolManager : IUnknown
		{
			public const new Guid IID = .(0xdc796967, 0x3abb, 0x40cd, 0xa4, 0x46, 0x10, 0x52, 0x76, 0xb5, 0x89, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Initialize(ref IWRdsProtocolSettings pIWRdsSettings, ref WRDS_SETTINGS pWRdsSettings) mut => VT.Initialize(ref this, ref pIWRdsSettings, ref pWRdsSettings);
			public HResult CreateListener(char16* wszListenerName, out IWRdsProtocolListener* pProtocolListener) mut => VT.CreateListener(ref this, wszListenerName, out pProtocolListener);
			public HResult NotifyServiceStateChange(ref WTS_SERVICE_STATE pTSServiceStateChange) mut => VT.NotifyServiceStateChange(ref this, ref pTSServiceStateChange);
			public HResult NotifySessionOfServiceStart(ref WTS_SESSION_ID SessionId) mut => VT.NotifySessionOfServiceStart(ref this, ref SessionId);
			public HResult NotifySessionOfServiceStop(ref WTS_SESSION_ID SessionId) mut => VT.NotifySessionOfServiceStop(ref this, ref SessionId);
			public HResult NotifySessionStateChange(ref WTS_SESSION_ID SessionId, uint32 EventId) mut => VT.NotifySessionStateChange(ref this, ref SessionId, EventId);
			public HResult NotifySettingsChange(ref WRDS_SETTINGS pWRdsSettings) mut => VT.NotifySettingsChange(ref this, ref pWRdsSettings);
			public HResult Uninitialize() mut => VT.Uninitialize(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolManager self, ref IWRdsProtocolSettings pIWRdsSettings, ref WRDS_SETTINGS pWRdsSettings) Initialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolManager self, char16* wszListenerName, out IWRdsProtocolListener* pProtocolListener) CreateListener;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolManager self, ref WTS_SERVICE_STATE pTSServiceStateChange) NotifyServiceStateChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolManager self, ref WTS_SESSION_ID SessionId) NotifySessionOfServiceStart;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolManager self, ref WTS_SESSION_ID SessionId) NotifySessionOfServiceStop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolManager self, ref WTS_SESSION_ID SessionId, uint32 EventId) NotifySessionStateChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolManager self, ref WRDS_SETTINGS pWRdsSettings) NotifySettingsChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolManager self) Uninitialize;
			}
		}
		[CRepr]
		public struct IWRdsProtocolListener : IUnknown
		{
			public const new Guid IID = .(0xfcbc131b, 0xc686, 0x451d, 0xa7, 0x73, 0xe2, 0x79, 0xe2, 0x30, 0xf5, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetSettings(WRDS_LISTENER_SETTING_LEVEL WRdsListenerSettingLevel, out WRDS_LISTENER_SETTINGS pWRdsListenerSettings) mut => VT.GetSettings(ref this, WRdsListenerSettingLevel, out pWRdsListenerSettings);
			public HResult StartListen(ref IWRdsProtocolListenerCallback pCallback) mut => VT.StartListen(ref this, ref pCallback);
			public HResult StopListen() mut => VT.StopListen(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolListener self, WRDS_LISTENER_SETTING_LEVEL WRdsListenerSettingLevel, out WRDS_LISTENER_SETTINGS pWRdsListenerSettings) GetSettings;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolListener self, ref IWRdsProtocolListenerCallback pCallback) StartListen;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolListener self) StopListen;
			}
		}
		[CRepr]
		public struct IWRdsProtocolListenerCallback : IUnknown
		{
			public const new Guid IID = .(0x3ab27e5b, 0x4449, 0x4dc1, 0xb7, 0x4a, 0x91, 0x62, 0x1d, 0x4f, 0xe9, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnConnected(ref IWRdsProtocolConnection pConnection, ref WRDS_CONNECTION_SETTINGS pWRdsConnectionSettings, out IWRdsProtocolConnectionCallback* pCallback) mut => VT.OnConnected(ref this, ref pConnection, ref pWRdsConnectionSettings, out pCallback);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolListenerCallback self, ref IWRdsProtocolConnection pConnection, ref WRDS_CONNECTION_SETTINGS pWRdsConnectionSettings, out IWRdsProtocolConnectionCallback* pCallback) OnConnected;
			}
		}
		[CRepr]
		public struct IWRdsProtocolConnection : IUnknown
		{
			public const new Guid IID = .(0x324ed94f, 0xfdaf, 0x4ff6, 0x81, 0xa8, 0x42, 0xab, 0xe7, 0x55, 0x83, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetLogonErrorRedirector(out IWRdsProtocolLogonErrorRedirector* ppLogonErrorRedir) mut => VT.GetLogonErrorRedirector(ref this, out ppLogonErrorRedir);
			public HResult AcceptConnection() mut => VT.AcceptConnection(ref this);
			public HResult GetClientData(out WTS_CLIENT_DATA pClientData) mut => VT.GetClientData(ref this, out pClientData);
			public HResult GetClientMonitorData(out uint32 pNumMonitors, out uint32 pPrimaryMonitor) mut => VT.GetClientMonitorData(ref this, out pNumMonitors, out pPrimaryMonitor);
			public HResult GetUserCredentials(out WTS_USER_CREDENTIAL pUserCreds) mut => VT.GetUserCredentials(ref this, out pUserCreds);
			public HResult GetLicenseConnection(out IWRdsProtocolLicenseConnection* ppLicenseConnection) mut => VT.GetLicenseConnection(ref this, out ppLicenseConnection);
			public HResult AuthenticateClientToSession(out WTS_SESSION_ID SessionId) mut => VT.AuthenticateClientToSession(ref this, out SessionId);
			public HResult NotifySessionId(ref WTS_SESSION_ID SessionId, HANDLE_PTR SessionHandle) mut => VT.NotifySessionId(ref this, ref SessionId, SessionHandle);
			public HResult GetInputHandles(out HANDLE_PTR pKeyboardHandle, out HANDLE_PTR pMouseHandle, out HANDLE_PTR pBeepHandle) mut => VT.GetInputHandles(ref this, out pKeyboardHandle, out pMouseHandle, out pBeepHandle);
			public HResult GetVideoHandle(out HANDLE_PTR pVideoHandle) mut => VT.GetVideoHandle(ref this, out pVideoHandle);
			public HResult ConnectNotify(uint32 SessionId) mut => VT.ConnectNotify(ref this, SessionId);
			public HResult IsUserAllowedToLogon(uint32 SessionId, HANDLE_PTR UserToken, char16* pDomainName, char16* pUserName) mut => VT.IsUserAllowedToLogon(ref this, SessionId, UserToken, pDomainName, pUserName);
			public HResult SessionArbitrationEnumeration(HANDLE_PTR hUserToken, IntBool bSingleSessionPerUserEnabled, uint32* pSessionIdArray, out uint32 pdwSessionIdentifierCount) mut => VT.SessionArbitrationEnumeration(ref this, hUserToken, bSingleSessionPerUserEnabled, pSessionIdArray, out pdwSessionIdentifierCount);
			public HResult LogonNotify(HANDLE_PTR hClientToken, char16* wszUserName, char16* wszDomainName, ref WTS_SESSION_ID SessionId, out WRDS_CONNECTION_SETTINGS pWRdsConnectionSettings) mut => VT.LogonNotify(ref this, hClientToken, wszUserName, wszDomainName, ref SessionId, out pWRdsConnectionSettings);
			public HResult PreDisconnect(uint32 DisconnectReason) mut => VT.PreDisconnect(ref this, DisconnectReason);
			public HResult DisconnectNotify() mut => VT.DisconnectNotify(ref this);
			public HResult Close() mut => VT.Close(ref this);
			public HResult GetProtocolStatus(out WTS_PROTOCOL_STATUS pProtocolStatus) mut => VT.GetProtocolStatus(ref this, out pProtocolStatus);
			public HResult GetLastInputTime(out uint64 pLastInputTime) mut => VT.GetLastInputTime(ref this, out pLastInputTime);
			public HResult SetErrorInfo(uint32 ulError) mut => VT.SetErrorInfo(ref this, ulError);
			public HResult CreateVirtualChannel(char8* szEndpointName, IntBool bStatic, uint32 RequestedPriority, out uint phChannel) mut => VT.CreateVirtualChannel(ref this, szEndpointName, bStatic, RequestedPriority, out phChannel);
			public HResult QueryProperty(Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) mut => VT.QueryProperty(ref this, QueryType, ulNumEntriesIn, ulNumEntriesOut, pPropertyEntriesIn, pPropertyEntriesOut);
			public HResult GetShadowConnection(out IWRdsProtocolShadowConnection* ppShadowConnection) mut => VT.GetShadowConnection(ref this, out ppShadowConnection);
			public HResult NotifyCommandProcessCreated(uint32 SessionId) mut => VT.NotifyCommandProcessCreated(ref this, SessionId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, out IWRdsProtocolLogonErrorRedirector* ppLogonErrorRedir) GetLogonErrorRedirector;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self) AcceptConnection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, out WTS_CLIENT_DATA pClientData) GetClientData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, out uint32 pNumMonitors, out uint32 pPrimaryMonitor) GetClientMonitorData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, out WTS_USER_CREDENTIAL pUserCreds) GetUserCredentials;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, out IWRdsProtocolLicenseConnection* ppLicenseConnection) GetLicenseConnection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, out WTS_SESSION_ID SessionId) AuthenticateClientToSession;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, ref WTS_SESSION_ID SessionId, HANDLE_PTR SessionHandle) NotifySessionId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, out HANDLE_PTR pKeyboardHandle, out HANDLE_PTR pMouseHandle, out HANDLE_PTR pBeepHandle) GetInputHandles;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, out HANDLE_PTR pVideoHandle) GetVideoHandle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, uint32 SessionId) ConnectNotify;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, uint32 SessionId, HANDLE_PTR UserToken, char16* pDomainName, char16* pUserName) IsUserAllowedToLogon;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, HANDLE_PTR hUserToken, IntBool bSingleSessionPerUserEnabled, uint32* pSessionIdArray, out uint32 pdwSessionIdentifierCount) SessionArbitrationEnumeration;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, HANDLE_PTR hClientToken, char16* wszUserName, char16* wszDomainName, ref WTS_SESSION_ID SessionId, out WRDS_CONNECTION_SETTINGS pWRdsConnectionSettings) LogonNotify;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, uint32 DisconnectReason) PreDisconnect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self) DisconnectNotify;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self) Close;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, out WTS_PROTOCOL_STATUS pProtocolStatus) GetProtocolStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, out uint64 pLastInputTime) GetLastInputTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, uint32 ulError) SetErrorInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, char8* szEndpointName, IntBool bStatic, uint32 RequestedPriority, out uint phChannel) CreateVirtualChannel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) QueryProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, out IWRdsProtocolShadowConnection* ppShadowConnection) GetShadowConnection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnection self, uint32 SessionId) NotifyCommandProcessCreated;
			}
		}
		[CRepr]
		public struct IWRdsProtocolConnectionCallback : IUnknown
		{
			public const new Guid IID = .(0xf1d70332, 0xd070, 0x4ef1, 0xa0, 0x88, 0x78, 0x31, 0x35, 0x36, 0xc2, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnReady() mut => VT.OnReady(ref this);
			public HResult BrokenConnection(uint32 Reason, uint32 Source) mut => VT.BrokenConnection(ref this, Reason, Source);
			public HResult StopScreenUpdates() mut => VT.StopScreenUpdates(ref this);
			public HResult RedrawWindow(ref WTS_SMALL_RECT rect) mut => VT.RedrawWindow(ref this, ref rect);
			public HResult GetConnectionId(out uint32 pConnectionId) mut => VT.GetConnectionId(ref this, out pConnectionId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnectionCallback self) OnReady;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnectionCallback self, uint32 Reason, uint32 Source) BrokenConnection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnectionCallback self) StopScreenUpdates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnectionCallback self, ref WTS_SMALL_RECT rect) RedrawWindow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnectionCallback self, out uint32 pConnectionId) GetConnectionId;
			}
		}
		[CRepr]
		public struct IWRdsProtocolShadowConnection : IUnknown
		{
			public const new Guid IID = .(0x9ae85ce6, 0xcade, 0x4548, 0x8f, 0xeb, 0x99, 0x01, 0x65, 0x97, 0xf6, 0x0a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Start(char16* pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, ref IWRdsProtocolShadowCallback pShadowCallback) mut => VT.Start(ref this, pTargetServerName, TargetSessionId, HotKeyVk, HotkeyModifiers, ref pShadowCallback);
			public HResult Stop() mut => VT.Stop(ref this);
			public HResult DoTarget(uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, char16* pClientName) mut => VT.DoTarget(ref this, pParam1, Param1Size, pParam2, Param2Size, pParam3, Param3Size, pParam4, Param4Size, pClientName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolShadowConnection self, char16* pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, ref IWRdsProtocolShadowCallback pShadowCallback) Start;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolShadowConnection self) Stop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolShadowConnection self, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, char16* pClientName) DoTarget;
			}
		}
		[CRepr]
		public struct IWRdsProtocolShadowCallback : IUnknown
		{
			public const new Guid IID = .(0xe0667ce0, 0x0372, 0x40d6, 0xad, 0xb2, 0xa0, 0xf3, 0x32, 0x26, 0x74, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult StopShadow() mut => VT.StopShadow(ref this);
			public HResult InvokeTargetShadow(char16* pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, char16* pClientName) mut => VT.InvokeTargetShadow(ref this, pTargetServerName, TargetSessionId, pParam1, Param1Size, pParam2, Param2Size, pParam3, Param3Size, pParam4, Param4Size, pClientName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolShadowCallback self) StopShadow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolShadowCallback self, char16* pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, char16* pClientName) InvokeTargetShadow;
			}
		}
		[CRepr]
		public struct IWRdsProtocolLicenseConnection : IUnknown
		{
			public const new Guid IID = .(0x1d6a145f, 0xd095, 0x4424, 0x95, 0x7a, 0x40, 0x7f, 0xae, 0x82, 0x2d, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RequestLicensingCapabilities(out WTS_LICENSE_CAPABILITIES ppLicenseCapabilities, out uint32 pcbLicenseCapabilities) mut => VT.RequestLicensingCapabilities(ref this, out ppLicenseCapabilities, out pcbLicenseCapabilities);
			public HResult SendClientLicense(uint8* pClientLicense, uint32 cbClientLicense) mut => VT.SendClientLicense(ref this, pClientLicense, cbClientLicense);
			public HResult RequestClientLicense(uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, out uint32 pcbClientLicense) mut => VT.RequestClientLicense(ref this, Reserve1, Reserve2, ppClientLicense, out pcbClientLicense);
			public HResult ProtocolComplete(uint32 ulComplete) mut => VT.ProtocolComplete(ref this, ulComplete);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolLicenseConnection self, out WTS_LICENSE_CAPABILITIES ppLicenseCapabilities, out uint32 pcbLicenseCapabilities) RequestLicensingCapabilities;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolLicenseConnection self, uint8* pClientLicense, uint32 cbClientLicense) SendClientLicense;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolLicenseConnection self, uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, out uint32 pcbClientLicense) RequestClientLicense;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolLicenseConnection self, uint32 ulComplete) ProtocolComplete;
			}
		}
		[CRepr]
		public struct IWRdsProtocolLogonErrorRedirector : IUnknown
		{
			public const new Guid IID = .(0x519fe83b, 0x142a, 0x4120, 0xa3, 0xd5, 0xa4, 0x05, 0xd3, 0x15, 0x28, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnBeginPainting() mut => VT.OnBeginPainting(ref this);
			public HResult RedirectStatus(char16* pszMessage, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) mut => VT.RedirectStatus(ref this, pszMessage, out pResponse);
			public HResult RedirectMessage(char16* pszCaption, char16* pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) mut => VT.RedirectMessage(ref this, pszCaption, pszMessage, uType, out pResponse);
			public HResult RedirectLogonError(int32 ntsStatus, int32 ntsSubstatus, char16* pszCaption, char16* pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) mut => VT.RedirectLogonError(ref this, ntsStatus, ntsSubstatus, pszCaption, pszMessage, uType, out pResponse);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolLogonErrorRedirector self) OnBeginPainting;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolLogonErrorRedirector self, char16* pszMessage, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) RedirectStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolLogonErrorRedirector self, char16* pszCaption, char16* pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) RedirectMessage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolLogonErrorRedirector self, int32 ntsStatus, int32 ntsSubstatus, char16* pszCaption, char16* pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) RedirectLogonError;
			}
		}
		[CRepr]
		public struct IWRdsWddmIddProps : IUnknown
		{
			public const new Guid IID = .(0x1382df4d, 0xa289, 0x43d1, 0xa1, 0x84, 0x14, 0x47, 0x26, 0xf9, 0xaf, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetHardwareId(char16* pDisplayDriverHardwareId, uint32 Count) mut => VT.GetHardwareId(ref this, pDisplayDriverHardwareId, Count);
			public HResult OnDriverLoad(uint32 SessionId, HANDLE_PTR DriverHandle) mut => VT.OnDriverLoad(ref this, SessionId, DriverHandle);
			public HResult OnDriverUnload(uint32 SessionId) mut => VT.OnDriverUnload(ref this, SessionId);
			public HResult EnableWddmIdd(IntBool Enabled) mut => VT.EnableWddmIdd(ref this, Enabled);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsWddmIddProps self, char16* pDisplayDriverHardwareId, uint32 Count) GetHardwareId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsWddmIddProps self, uint32 SessionId, HANDLE_PTR DriverHandle) OnDriverLoad;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsWddmIddProps self, uint32 SessionId) OnDriverUnload;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsWddmIddProps self, IntBool Enabled) EnableWddmIdd;
			}
		}
		[CRepr]
		public struct IWRdsProtocolConnectionSettings : IUnknown
		{
			public const new Guid IID = .(0x83fcf5d3, 0xf6f4, 0xea94, 0x9c, 0xd2, 0x32, 0xf2, 0x80, 0xe1, 0xe5, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetConnectionSetting(Guid PropertyID, ref WTS_PROPERTY_VALUE pPropertyEntriesIn) mut => VT.SetConnectionSetting(ref this, PropertyID, ref pPropertyEntriesIn);
			public HResult GetConnectionSetting(Guid PropertyID, out WTS_PROPERTY_VALUE pPropertyEntriesOut) mut => VT.GetConnectionSetting(ref this, PropertyID, out pPropertyEntriesOut);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnectionSettings self, Guid PropertyID, ref WTS_PROPERTY_VALUE pPropertyEntriesIn) SetConnectionSetting;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsProtocolConnectionSettings self, Guid PropertyID, out WTS_PROPERTY_VALUE pPropertyEntriesOut) GetConnectionSetting;
			}
		}
		[CRepr]
		public struct IWRdsEnhancedFastReconnectArbitrator : IUnknown
		{
			public const new Guid IID = .(0x5718ae9b, 0x47f2, 0x499f, 0xb6, 0x34, 0xd8, 0x17, 0x5b, 0xd5, 0x11, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetSessionForEnhancedFastReconnect(ref int32 pSessionIdArray, uint32 dwSessionCount, out int32 pResultSessionId) mut => VT.GetSessionForEnhancedFastReconnect(ref this, ref pSessionIdArray, dwSessionCount, out pResultSessionId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWRdsEnhancedFastReconnectArbitrator self, ref int32 pSessionIdArray, uint32 dwSessionCount, out int32 pResultSessionId) GetSessionForEnhancedFastReconnect;
			}
		}
		[CRepr]
		public struct IRemoteDesktopClientSettings : IDispatch
		{
			public const new Guid IID = .(0x48a0f2a7, 0x2713, 0x431f, 0xbb, 0xac, 0x6f, 0x45, 0x58, 0xe7, 0xd6, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ApplySettings(BSTR rdpFileContents) mut => VT.ApplySettings(ref this, rdpFileContents);
			public HResult RetrieveSettings(BSTR* rdpFileContents) mut => VT.RetrieveSettings(ref this, rdpFileContents);
			public HResult GetRdpProperty(BSTR propertyName, out VARIANT value) mut => VT.GetRdpProperty(ref this, propertyName, out value);
			public HResult SetRdpProperty(BSTR propertyName, VARIANT value) mut => VT.SetRdpProperty(ref this, propertyName, value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientSettings self, BSTR rdpFileContents) ApplySettings;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientSettings self, BSTR* rdpFileContents) RetrieveSettings;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientSettings self, BSTR propertyName, out VARIANT value) GetRdpProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientSettings self, BSTR propertyName, VARIANT value) SetRdpProperty;
			}
		}
		[CRepr]
		public struct IRemoteDesktopClientActions : IDispatch
		{
			public const new Guid IID = .(0x7d54bc4e, 0x1028, 0x45d4, 0x8b, 0x0a, 0xb9, 0xb6, 0xbf, 0xfb, 0xa1, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SuspendScreenUpdates() mut => VT.SuspendScreenUpdates(ref this);
			public HResult ResumeScreenUpdates() mut => VT.ResumeScreenUpdates(ref this);
			public HResult ExecuteRemoteAction(RemoteActionType remoteAction) mut => VT.ExecuteRemoteAction(ref this, remoteAction);
			public HResult GetSnapshot(SnapshotEncodingType snapshotEncoding, SnapshotFormatType snapshotFormat, uint32 snapshotWidth, uint32 snapshotHeight, BSTR* snapshotData) mut => VT.GetSnapshot(ref this, snapshotEncoding, snapshotFormat, snapshotWidth, snapshotHeight, snapshotData);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientActions self) SuspendScreenUpdates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientActions self) ResumeScreenUpdates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientActions self, RemoteActionType remoteAction) ExecuteRemoteAction;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientActions self, SnapshotEncodingType snapshotEncoding, SnapshotFormatType snapshotFormat, uint32 snapshotWidth, uint32 snapshotHeight, BSTR* snapshotData) GetSnapshot;
			}
		}
		[CRepr]
		public struct IRemoteDesktopClientTouchPointer : IDispatch
		{
			public const new Guid IID = .(0x260ec22d, 0x8cbc, 0x44b5, 0x9e, 0x88, 0x2a, 0x37, 0xf6, 0xc9, 0x3a, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult put_Enabled(int16 enabled) mut => VT.put_Enabled(ref this, enabled);
			public HResult get_Enabled(out int16 enabled) mut => VT.get_Enabled(ref this, out enabled);
			public HResult put_EventsEnabled(int16 eventsEnabled) mut => VT.put_EventsEnabled(ref this, eventsEnabled);
			public HResult get_EventsEnabled(out int16 eventsEnabled) mut => VT.get_EventsEnabled(ref this, out eventsEnabled);
			public HResult put_PointerSpeed(uint32 pointerSpeed) mut => VT.put_PointerSpeed(ref this, pointerSpeed);
			public HResult get_PointerSpeed(out uint32 pointerSpeed) mut => VT.get_PointerSpeed(ref this, out pointerSpeed);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientTouchPointer self, int16 enabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientTouchPointer self, out int16 enabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientTouchPointer self, int16 eventsEnabled) put_EventsEnabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientTouchPointer self, out int16 eventsEnabled) get_EventsEnabled;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientTouchPointer self, uint32 pointerSpeed) put_PointerSpeed;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClientTouchPointer self, out uint32 pointerSpeed) get_PointerSpeed;
			}
		}
		[CRepr]
		public struct IRemoteDesktopClient : IDispatch
		{
			public const new Guid IID = .(0x57d25668, 0x625a, 0x4905, 0xbe, 0x4e, 0x30, 0x4c, 0xaa, 0x13, 0xf8, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Connect() mut => VT.Connect(ref this);
			public HResult Disconnect() mut => VT.Disconnect(ref this);
			public HResult Reconnect(uint32 width, uint32 height) mut => VT.Reconnect(ref this, width, height);
			public HResult get_Settings(IRemoteDesktopClientSettings** settings) mut => VT.get_Settings(ref this, settings);
			public HResult get_Actions(IRemoteDesktopClientActions** actions) mut => VT.get_Actions(ref this, actions);
			public HResult get_TouchPointer(IRemoteDesktopClientTouchPointer** touchPointer) mut => VT.get_TouchPointer(ref this, touchPointer);
			public HResult DeleteSavedCredentials(BSTR serverName) mut => VT.DeleteSavedCredentials(ref this, serverName);
			public HResult UpdateSessionDisplaySettings(uint32 width, uint32 height) mut => VT.UpdateSessionDisplaySettings(ref this, width, height);
			public HResult attachEvent(BSTR eventName, IDispatch* callback) mut => VT.attachEvent(ref this, eventName, callback);
			public HResult detachEvent(BSTR eventName, IDispatch* callback) mut => VT.detachEvent(ref this, eventName, callback);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClient self) Connect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClient self) Disconnect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClient self, uint32 width, uint32 height) Reconnect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClient self, IRemoteDesktopClientSettings** settings) get_Settings;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClient self, IRemoteDesktopClientActions** actions) get_Actions;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClient self, IRemoteDesktopClientTouchPointer** touchPointer) get_TouchPointer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClient self, BSTR serverName) DeleteSavedCredentials;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClient self, uint32 width, uint32 height) UpdateSessionDisplaySettings;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClient self, BSTR eventName, IDispatch* callback) attachEvent;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteDesktopClient self, BSTR eventName, IDispatch* callback) detachEvent;
			}
		}
		[CRepr]
		public struct IRemoteSystemAdditionalInfoProvider : IUnknown
		{
			public const new Guid IID = .(0xeeaa3d5f, 0xec63, 0x4d27, 0xaf, 0x38, 0xe8, 0x6b, 0x1d, 0x72, 0x92, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetAdditionalInfo(out HSTRING deduplicationId, in Guid riid, void** mapView) mut => VT.GetAdditionalInfo(ref this, out deduplicationId, riid, mapView);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRemoteSystemAdditionalInfoProvider self, out HSTRING deduplicationId, in Guid riid, void** mapView) GetAdditionalInfo;
			}
		}
		
		// --- Functions ---
		
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSStopRemoteControlSession(uint32 LogonId);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSStartRemoteControlSessionW(char16* pTargetServerName, uint32 TargetLogonId, uint8 HotkeyVk, uint16 HotkeyModifiers);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSStartRemoteControlSessionA(char8* pTargetServerName, uint32 TargetLogonId, uint8 HotkeyVk, uint16 HotkeyModifiers);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSConnectSessionA(uint32 LogonId, uint32 TargetLogonId, char8* pPassword, IntBool bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSConnectSessionW(uint32 LogonId, uint32 TargetLogonId, char16* pPassword, IntBool bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSEnumerateServersW(char16* pDomainName, uint32 Reserved, uint32 Version, out WTS_SERVER_INFOW* ppServerInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSEnumerateServersA(char8* pDomainName, uint32 Reserved, uint32 Version, out WTS_SERVER_INFOA* ppServerInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle WTSOpenServerW(char16* pServerName);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle WTSOpenServerA(char8* pServerName);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle WTSOpenServerExW(char16* pServerName);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle WTSOpenServerExA(char8* pServerName);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WTSCloseServer(Handle hServer);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSEnumerateSessionsW(Handle hServer, uint32 Reserved, uint32 Version, out WTS_SESSION_INFOW* ppSessionInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSEnumerateSessionsA(Handle hServer, uint32 Reserved, uint32 Version, out WTS_SESSION_INFOA* ppSessionInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSEnumerateSessionsExW(Handle hServer, out uint32 pLevel, uint32 Filter, out WTS_SESSION_INFO_1W* ppSessionInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSEnumerateSessionsExA(Handle hServer, out uint32 pLevel, uint32 Filter, out WTS_SESSION_INFO_1A* ppSessionInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSEnumerateProcessesW(Handle hServer, uint32 Reserved, uint32 Version, out WTS_PROCESS_INFOW* ppProcessInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSEnumerateProcessesA(Handle hServer, uint32 Reserved, uint32 Version, out WTS_PROCESS_INFOA* ppProcessInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSTerminateProcess(Handle hServer, uint32 ProcessId, uint32 ExitCode);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSQuerySessionInformationW(Handle hServer, uint32 SessionId, WTS_INFO_CLASS WTSInfoClass, out char16* ppBuffer, out uint32 pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSQuerySessionInformationA(Handle hServer, uint32 SessionId, WTS_INFO_CLASS WTSInfoClass, out char8* ppBuffer, out uint32 pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSQueryUserConfigW(char16* pServerName, char16* pUserName, WTS_CONFIG_CLASS WTSConfigClass, out char16* ppBuffer, out uint32 pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSQueryUserConfigA(char8* pServerName, char8* pUserName, WTS_CONFIG_CLASS WTSConfigClass, out char8* ppBuffer, out uint32 pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSSetUserConfigW(char16* pServerName, char16* pUserName, WTS_CONFIG_CLASS WTSConfigClass, char16* pBuffer, uint32 DataLength);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSSetUserConfigA(char8* pServerName, char8* pUserName, WTS_CONFIG_CLASS WTSConfigClass, char8* pBuffer, uint32 DataLength);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSSendMessageW(Handle hServer, uint32 SessionId, char16* pTitle, uint32 TitleLength, char16* pMessage, uint32 MessageLength, MESSAGEBOX_STYLE Style, uint32 Timeout, out MESSAGEBOX_RESULT pResponse, IntBool bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSSendMessageA(Handle hServer, uint32 SessionId, char8* pTitle, uint32 TitleLength, char8* pMessage, uint32 MessageLength, MESSAGEBOX_STYLE Style, uint32 Timeout, out MESSAGEBOX_RESULT pResponse, IntBool bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSDisconnectSession(Handle hServer, uint32 SessionId, IntBool bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSLogoffSession(Handle hServer, uint32 SessionId, IntBool bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSShutdownSystem(Handle hServer, uint32 ShutdownFlag);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSWaitSystemEvent(Handle hServer, uint32 EventMask, out uint32 pEventFlags);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HwtsVirtualChannelHandle WTSVirtualChannelOpen(Handle hServer, uint32 SessionId, char8* pVirtualName);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HwtsVirtualChannelHandle WTSVirtualChannelOpenEx(uint32 SessionId, char8* pVirtualName, uint32 flags);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSVirtualChannelClose(Handle hChannelHandle);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSVirtualChannelRead(Handle hChannelHandle, uint32 TimeOut, char8* Buffer, uint32 BufferSize, out uint32 pBytesRead);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSVirtualChannelWrite(Handle hChannelHandle, char8* Buffer, uint32 Length, out uint32 pBytesWritten);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSVirtualChannelPurgeInput(Handle hChannelHandle);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSVirtualChannelPurgeOutput(Handle hChannelHandle);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSVirtualChannelQuery(Handle hChannelHandle, WTS_VIRTUAL_CLASS param1, void** ppBuffer, out uint32 pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WTSFreeMemory(void* pMemory);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSRegisterSessionNotification(HWnd hWnd, uint32 dwFlags);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSUnRegisterSessionNotification(HWnd hWnd);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSRegisterSessionNotificationEx(Handle hServer, HWnd hWnd, uint32 dwFlags);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSUnRegisterSessionNotificationEx(Handle hServer, HWnd hWnd);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSQueryUserToken(uint32 SessionId, out Handle phToken);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSFreeMemoryExW(WTS_TYPE_CLASS WTSTypeClass, void* pMemory, uint32 NumberOfEntries);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSFreeMemoryExA(WTS_TYPE_CLASS WTSTypeClass, void* pMemory, uint32 NumberOfEntries);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSEnumerateProcessesExW(Handle hServer, out uint32 pLevel, uint32 SessionId, out char16* ppProcessInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSEnumerateProcessesExA(Handle hServer, out uint32 pLevel, uint32 SessionId, out char8* ppProcessInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSEnumerateListenersW(Handle hServer, void* pReserved, uint32 Reserved, uint16** pListeners, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSEnumerateListenersA(Handle hServer, void* pReserved, uint32 Reserved, int8** pListeners, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSQueryListenerConfigW(Handle hServer, void* pReserved, uint32 Reserved, char16* pListenerName, out WTSLISTENERCONFIGW pBuffer);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSQueryListenerConfigA(Handle hServer, void* pReserved, uint32 Reserved, char8* pListenerName, out WTSLISTENERCONFIGA pBuffer);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSCreateListenerW(Handle hServer, void* pReserved, uint32 Reserved, char16* pListenerName, ref WTSLISTENERCONFIGW pBuffer, uint32 flag);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSCreateListenerA(Handle hServer, void* pReserved, uint32 Reserved, char8* pListenerName, ref WTSLISTENERCONFIGA pBuffer, uint32 flag);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSSetListenerSecurityW(Handle hServer, void* pReserved, uint32 Reserved, char16* pListenerName, uint32 SecurityInformation, ref SECURITY_DESCRIPTOR pSecurityDescriptor);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSSetListenerSecurityA(Handle hServer, void* pReserved, uint32 Reserved, char8* pListenerName, uint32 SecurityInformation, ref SECURITY_DESCRIPTOR pSecurityDescriptor);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSGetListenerSecurityW(Handle hServer, void* pReserved, uint32 Reserved, char16* pListenerName, uint32 SecurityInformation, SECURITY_DESCRIPTOR* pSecurityDescriptor, uint32 nLength, out uint32 lpnLengthNeeded);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSGetListenerSecurityA(Handle hServer, void* pReserved, uint32 Reserved, char8* pListenerName, uint32 SecurityInformation, SECURITY_DESCRIPTOR* pSecurityDescriptor, uint32 nLength, out uint32 lpnLengthNeeded);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSEnableChildSessions(IntBool bEnable);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSIsChildSessionsEnabled(out IntBool pbEnabled);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WTSGetChildSessionId(out uint32 pSessionId);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WTSSetRenderHint(out uint64 pRenderHintID, HWnd hwndOwner, uint32 renderHintType, uint32 cbHintDataLength, uint8* pHintData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ProcessIdToSessionId(uint32 dwProcessId, out uint32 pSessionId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WTSGetActiveConsoleSessionId();
	}
}
