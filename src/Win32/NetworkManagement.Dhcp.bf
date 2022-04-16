using System;

// namespace NetworkManagement.Dhcp
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 OPTION_PAD = 0;
		public const uint32 OPTION_SUBNET_MASK = 1;
		public const uint32 OPTION_TIME_OFFSET = 2;
		public const uint32 OPTION_ROUTER_ADDRESS = 3;
		public const uint32 OPTION_TIME_SERVERS = 4;
		public const uint32 OPTION_IEN116_NAME_SERVERS = 5;
		public const uint32 OPTION_DOMAIN_NAME_SERVERS = 6;
		public const uint32 OPTION_LOG_SERVERS = 7;
		public const uint32 OPTION_COOKIE_SERVERS = 8;
		public const uint32 OPTION_LPR_SERVERS = 9;
		public const uint32 OPTION_IMPRESS_SERVERS = 10;
		public const uint32 OPTION_RLP_SERVERS = 11;
		public const uint32 OPTION_HOST_NAME = 12;
		public const uint32 OPTION_BOOT_FILE_SIZE = 13;
		public const uint32 OPTION_MERIT_DUMP_FILE = 14;
		public const uint32 OPTION_DOMAIN_NAME = 15;
		public const uint32 OPTION_SWAP_SERVER = 16;
		public const uint32 OPTION_ROOT_DISK = 17;
		public const uint32 OPTION_EXTENSIONS_PATH = 18;
		public const uint32 OPTION_BE_A_ROUTER = 19;
		public const uint32 OPTION_NON_LOCAL_SOURCE_ROUTING = 20;
		public const uint32 OPTION_POLICY_FILTER_FOR_NLSR = 21;
		public const uint32 OPTION_MAX_REASSEMBLY_SIZE = 22;
		public const uint32 OPTION_DEFAULT_TTL = 23;
		public const uint32 OPTION_PMTU_AGING_TIMEOUT = 24;
		public const uint32 OPTION_PMTU_PLATEAU_TABLE = 25;
		public const uint32 OPTION_MTU = 26;
		public const uint32 OPTION_ALL_SUBNETS_MTU = 27;
		public const uint32 OPTION_BROADCAST_ADDRESS = 28;
		public const uint32 OPTION_PERFORM_MASK_DISCOVERY = 29;
		public const uint32 OPTION_BE_A_MASK_SUPPLIER = 30;
		public const uint32 OPTION_PERFORM_ROUTER_DISCOVERY = 31;
		public const uint32 OPTION_ROUTER_SOLICITATION_ADDR = 32;
		public const uint32 OPTION_STATIC_ROUTES = 33;
		public const uint32 OPTION_TRAILERS = 34;
		public const uint32 OPTION_ARP_CACHE_TIMEOUT = 35;
		public const uint32 OPTION_ETHERNET_ENCAPSULATION = 36;
		public const uint32 OPTION_TTL = 37;
		public const uint32 OPTION_KEEP_ALIVE_INTERVAL = 38;
		public const uint32 OPTION_KEEP_ALIVE_DATA_SIZE = 39;
		public const uint32 OPTION_NETWORK_INFO_SERVICE_DOM = 40;
		public const uint32 OPTION_NETWORK_INFO_SERVERS = 41;
		public const uint32 OPTION_NETWORK_TIME_SERVERS = 42;
		public const uint32 OPTION_VENDOR_SPEC_INFO = 43;
		public const uint32 OPTION_NETBIOS_NAME_SERVER = 44;
		public const uint32 OPTION_NETBIOS_DATAGRAM_SERVER = 45;
		public const uint32 OPTION_NETBIOS_NODE_TYPE = 46;
		public const uint32 OPTION_NETBIOS_SCOPE_OPTION = 47;
		public const uint32 OPTION_XWINDOW_FONT_SERVER = 48;
		public const uint32 OPTION_XWINDOW_DISPLAY_MANAGER = 49;
		public const uint32 OPTION_REQUESTED_ADDRESS = 50;
		public const uint32 OPTION_LEASE_TIME = 51;
		public const uint32 OPTION_OK_TO_OVERLAY = 52;
		public const uint32 OPTION_MESSAGE_TYPE = 53;
		public const uint32 OPTION_SERVER_IDENTIFIER = 54;
		public const uint32 OPTION_PARAMETER_REQUEST_LIST = 55;
		public const uint32 OPTION_MESSAGE = 56;
		public const uint32 OPTION_MESSAGE_LENGTH = 57;
		public const uint32 OPTION_RENEWAL_TIME = 58;
		public const uint32 OPTION_REBIND_TIME = 59;
		public const uint32 OPTION_CLIENT_CLASS_INFO = 60;
		public const uint32 OPTION_CLIENT_ID = 61;
		public const uint32 OPTION_TFTP_SERVER_NAME = 66;
		public const uint32 OPTION_BOOTFILE_NAME = 67;
		public const uint32 OPTION_MSFT_IE_PROXY = 252;
		public const uint32 OPTION_END = 255;
		public const uint32 DHCPCAPI_REQUEST_PERSISTENT = 1;
		public const uint32 DHCPCAPI_REQUEST_SYNCHRONOUS = 2;
		public const uint32 DHCPCAPI_REQUEST_ASYNCHRONOUS = 4;
		public const uint32 DHCPCAPI_REQUEST_CANCEL = 8;
		public const uint32 DHCPCAPI_REQUEST_MASK = 15;
		public const uint32 DHCPCAPI_REGISTER_HANDLE_EVENT = 1;
		public const uint32 DHCPCAPI_DEREGISTER_HANDLE_EVENT = 1;
		public const uint32 ERROR_DHCP_REGISTRY_INIT_FAILED = 20000;
		public const uint32 ERROR_DHCP_DATABASE_INIT_FAILED = 20001;
		public const uint32 ERROR_DHCP_RPC_INIT_FAILED = 20002;
		public const uint32 ERROR_DHCP_NETWORK_INIT_FAILED = 20003;
		public const uint32 ERROR_DHCP_SUBNET_EXITS = 20004;
		public const uint32 ERROR_DHCP_SUBNET_NOT_PRESENT = 20005;
		public const uint32 ERROR_DHCP_PRIMARY_NOT_FOUND = 20006;
		public const uint32 ERROR_DHCP_ELEMENT_CANT_REMOVE = 20007;
		public const uint32 ERROR_DHCP_OPTION_EXITS = 20009;
		public const uint32 ERROR_DHCP_OPTION_NOT_PRESENT = 20010;
		public const uint32 ERROR_DHCP_ADDRESS_NOT_AVAILABLE = 20011;
		public const uint32 ERROR_DHCP_RANGE_FULL = 20012;
		public const uint32 ERROR_DHCP_JET_ERROR = 20013;
		public const uint32 ERROR_DHCP_CLIENT_EXISTS = 20014;
		public const uint32 ERROR_DHCP_INVALID_DHCP_MESSAGE = 20015;
		public const uint32 ERROR_DHCP_INVALID_DHCP_CLIENT = 20016;
		public const uint32 ERROR_DHCP_SERVICE_PAUSED = 20017;
		public const uint32 ERROR_DHCP_NOT_RESERVED_CLIENT = 20018;
		public const uint32 ERROR_DHCP_RESERVED_CLIENT = 20019;
		public const uint32 ERROR_DHCP_RANGE_TOO_SMALL = 20020;
		public const uint32 ERROR_DHCP_IPRANGE_EXITS = 20021;
		public const uint32 ERROR_DHCP_RESERVEDIP_EXITS = 20022;
		public const uint32 ERROR_DHCP_INVALID_RANGE = 20023;
		public const uint32 ERROR_DHCP_RANGE_EXTENDED = 20024;
		public const uint32 ERROR_EXTEND_TOO_SMALL = 20025;
		public const int32 WARNING_EXTENDED_LESS = 20026;
		public const uint32 ERROR_DHCP_JET_CONV_REQUIRED = 20027;
		public const uint32 ERROR_SERVER_INVALID_BOOT_FILE_TABLE = 20028;
		public const uint32 ERROR_SERVER_UNKNOWN_BOOT_FILE_NAME = 20029;
		public const uint32 ERROR_DHCP_SUPER_SCOPE_NAME_TOO_LONG = 20030;
		public const uint32 ERROR_DHCP_IP_ADDRESS_IN_USE = 20032;
		public const uint32 ERROR_DHCP_LOG_FILE_PATH_TOO_LONG = 20033;
		public const uint32 ERROR_DHCP_UNSUPPORTED_CLIENT = 20034;
		public const uint32 ERROR_DHCP_JET97_CONV_REQUIRED = 20036;
		public const uint32 ERROR_DHCP_ROGUE_INIT_FAILED = 20037;
		public const uint32 ERROR_DHCP_ROGUE_SAMSHUTDOWN = 20038;
		public const uint32 ERROR_DHCP_ROGUE_NOT_AUTHORIZED = 20039;
		public const uint32 ERROR_DHCP_ROGUE_DS_UNREACHABLE = 20040;
		public const uint32 ERROR_DHCP_ROGUE_DS_CONFLICT = 20041;
		public const uint32 ERROR_DHCP_ROGUE_NOT_OUR_ENTERPRISE = 20042;
		public const uint32 ERROR_DHCP_ROGUE_STANDALONE_IN_DS = 20043;
		public const uint32 ERROR_DHCP_CLASS_NOT_FOUND = 20044;
		public const uint32 ERROR_DHCP_CLASS_ALREADY_EXISTS = 20045;
		public const uint32 ERROR_DHCP_SCOPE_NAME_TOO_LONG = 20046;
		public const uint32 ERROR_DHCP_DEFAULT_SCOPE_EXITS = 20047;
		public const uint32 ERROR_DHCP_CANT_CHANGE_ATTRIBUTE = 20048;
		public const uint32 ERROR_DHCP_IPRANGE_CONV_ILLEGAL = 20049;
		public const uint32 ERROR_DHCP_NETWORK_CHANGED = 20050;
		public const uint32 ERROR_DHCP_CANNOT_MODIFY_BINDINGS = 20051;
		public const uint32 ERROR_DHCP_SUBNET_EXISTS = 20052;
		public const uint32 ERROR_DHCP_MSCOPE_EXISTS = 20053;
		public const uint32 ERROR_MSCOPE_RANGE_TOO_SMALL = 20054;
		public const uint32 ERROR_DHCP_EXEMPTION_EXISTS = 20055;
		public const uint32 ERROR_DHCP_EXEMPTION_NOT_PRESENT = 20056;
		public const uint32 ERROR_DHCP_INVALID_PARAMETER_OPTION32 = 20057;
		public const uint32 ERROR_DDS_NO_DS_AVAILABLE = 20070;
		public const uint32 ERROR_DDS_NO_DHCP_ROOT = 20071;
		public const uint32 ERROR_DDS_UNEXPECTED_ERROR = 20072;
		public const uint32 ERROR_DDS_TOO_MANY_ERRORS = 20073;
		public const uint32 ERROR_DDS_DHCP_SERVER_NOT_FOUND = 20074;
		public const uint32 ERROR_DDS_OPTION_ALREADY_EXISTS = 20075;
		public const uint32 ERROR_DDS_OPTION_DOES_NOT_EXIST = 20076;
		public const uint32 ERROR_DDS_CLASS_EXISTS = 20077;
		public const uint32 ERROR_DDS_CLASS_DOES_NOT_EXIST = 20078;
		public const uint32 ERROR_DDS_SERVER_ALREADY_EXISTS = 20079;
		public const uint32 ERROR_DDS_SERVER_DOES_NOT_EXIST = 20080;
		public const uint32 ERROR_DDS_SERVER_ADDRESS_MISMATCH = 20081;
		public const uint32 ERROR_DDS_SUBNET_EXISTS = 20082;
		public const uint32 ERROR_DDS_SUBNET_HAS_DIFF_SSCOPE = 20083;
		public const uint32 ERROR_DDS_SUBNET_NOT_PRESENT = 20084;
		public const uint32 ERROR_DDS_RESERVATION_NOT_PRESENT = 20085;
		public const uint32 ERROR_DDS_RESERVATION_CONFLICT = 20086;
		public const uint32 ERROR_DDS_POSSIBLE_RANGE_CONFLICT = 20087;
		public const uint32 ERROR_DDS_RANGE_DOES_NOT_EXIST = 20088;
		public const uint32 ERROR_DHCP_DELETE_BUILTIN_CLASS = 20089;
		public const uint32 ERROR_DHCP_INVALID_SUBNET_PREFIX = 20091;
		public const uint32 ERROR_DHCP_INVALID_DELAY = 20092;
		public const uint32 ERROR_DHCP_LINKLAYER_ADDRESS_EXISTS = 20093;
		public const uint32 ERROR_DHCP_LINKLAYER_ADDRESS_RESERVATION_EXISTS = 20094;
		public const uint32 ERROR_DHCP_LINKLAYER_ADDRESS_DOES_NOT_EXIST = 20095;
		public const uint32 ERROR_DHCP_HARDWARE_ADDRESS_TYPE_ALREADY_EXEMPT = 20101;
		public const uint32 ERROR_DHCP_UNDEFINED_HARDWARE_ADDRESS_TYPE = 20102;
		public const uint32 ERROR_DHCP_OPTION_TYPE_MISMATCH = 20103;
		public const uint32 ERROR_DHCP_POLICY_BAD_PARENT_EXPR = 20104;
		public const uint32 ERROR_DHCP_POLICY_EXISTS = 20105;
		public const uint32 ERROR_DHCP_POLICY_RANGE_EXISTS = 20106;
		public const uint32 ERROR_DHCP_POLICY_RANGE_BAD = 20107;
		public const uint32 ERROR_DHCP_RANGE_INVALID_IN_SERVER_POLICY = 20108;
		public const uint32 ERROR_DHCP_INVALID_POLICY_EXPRESSION = 20109;
		public const uint32 ERROR_DHCP_INVALID_PROCESSING_ORDER = 20110;
		public const uint32 ERROR_DHCP_POLICY_NOT_FOUND = 20111;
		public const uint32 ERROR_SCOPE_RANGE_POLICY_RANGE_CONFLICT = 20112;
		public const uint32 ERROR_DHCP_FO_SCOPE_ALREADY_IN_RELATIONSHIP = 20113;
		public const uint32 ERROR_DHCP_FO_RELATIONSHIP_EXISTS = 20114;
		public const uint32 ERROR_DHCP_FO_RELATIONSHIP_DOES_NOT_EXIST = 20115;
		public const uint32 ERROR_DHCP_FO_SCOPE_NOT_IN_RELATIONSHIP = 20116;
		public const uint32 ERROR_DHCP_FO_RELATION_IS_SECONDARY = 20117;
		public const uint32 ERROR_DHCP_FO_NOT_SUPPORTED = 20118;
		public const uint32 ERROR_DHCP_FO_TIME_OUT_OF_SYNC = 20119;
		public const uint32 ERROR_DHCP_FO_STATE_NOT_NORMAL = 20120;
		public const uint32 ERROR_DHCP_NO_ADMIN_PERMISSION = 20121;
		public const uint32 ERROR_DHCP_SERVER_NOT_REACHABLE = 20122;
		public const uint32 ERROR_DHCP_SERVER_NOT_RUNNING = 20123;
		public const uint32 ERROR_DHCP_SERVER_NAME_NOT_RESOLVED = 20124;
		public const uint32 ERROR_DHCP_FO_RELATIONSHIP_NAME_TOO_LONG = 20125;
		public const uint32 ERROR_DHCP_REACHED_END_OF_SELECTION = 20126;
		public const uint32 ERROR_DHCP_FO_ADDSCOPE_LEASES_NOT_SYNCED = 20127;
		public const uint32 ERROR_DHCP_FO_MAX_RELATIONSHIPS = 20128;
		public const uint32 ERROR_DHCP_FO_IPRANGE_TYPE_CONV_ILLEGAL = 20129;
		public const uint32 ERROR_DHCP_FO_MAX_ADD_SCOPES = 20130;
		public const uint32 ERROR_DHCP_FO_BOOT_NOT_SUPPORTED = 20131;
		public const uint32 ERROR_DHCP_FO_RANGE_PART_OF_REL = 20132;
		public const uint32 ERROR_DHCP_FO_SCOPE_SYNC_IN_PROGRESS = 20133;
		public const uint32 ERROR_DHCP_FO_FEATURE_NOT_SUPPORTED = 20134;
		public const uint32 ERROR_DHCP_POLICY_FQDN_RANGE_UNSUPPORTED = 20135;
		public const uint32 ERROR_DHCP_POLICY_FQDN_OPTION_UNSUPPORTED = 20136;
		public const uint32 ERROR_DHCP_POLICY_EDIT_FQDN_UNSUPPORTED = 20137;
		public const uint32 ERROR_DHCP_NAP_NOT_SUPPORTED = 20138;
		public const uint32 ERROR_LAST_DHCP_SERVER_ERROR = 20139;
		public const uint32 DHCP_SUBNET_INFO_VQ_FLAG_QUARANTINE = 1;
		public const uint32 MAX_PATTERN_LENGTH = 255;
		public const uint32 MAC_ADDRESS_LENGTH = 6;
		public const uint32 HWTYPE_ETHERNET_10MB = 1;
		public const uint32 FILTER_STATUS_NONE = 1;
		public const uint32 FILTER_STATUS_FULL_MATCH_IN_ALLOW_LIST = 2;
		public const uint32 FILTER_STATUS_FULL_MATCH_IN_DENY_LIST = 4;
		public const uint32 FILTER_STATUS_WILDCARD_MATCH_IN_ALLOW_LIST = 8;
		public const uint32 FILTER_STATUS_WILDCARD_MATCH_IN_DENY_LIST = 16;
		public const uint32 Set_APIProtocolSupport = 1;
		public const uint32 Set_DatabaseName = 2;
		public const uint32 Set_DatabasePath = 4;
		public const uint32 Set_BackupPath = 8;
		public const uint32 Set_BackupInterval = 16;
		public const uint32 Set_DatabaseLoggingFlag = 32;
		public const uint32 Set_RestoreFlag = 64;
		public const uint32 Set_DatabaseCleanupInterval = 128;
		public const uint32 Set_DebugFlag = 256;
		public const uint32 Set_PingRetries = 512;
		public const uint32 Set_BootFileTable = 1024;
		public const uint32 Set_AuditLogState = 2048;
		public const uint32 Set_QuarantineON = 4096;
		public const uint32 Set_QuarantineDefFail = 8192;
		public const uint32 CLIENT_TYPE_UNSPECIFIED = 0;
		public const uint32 CLIENT_TYPE_DHCP = 1;
		public const uint32 CLIENT_TYPE_BOOTP = 2;
		public const uint32 CLIENT_TYPE_RESERVATION_FLAG = 4;
		public const uint32 CLIENT_TYPE_NONE = 100;
		public const uint32 Set_UnicastFlag = 1;
		public const uint32 Set_RapidCommitFlag = 2;
		public const uint32 Set_PreferredLifetime = 4;
		public const uint32 Set_ValidLifetime = 8;
		public const uint32 Set_T1 = 16;
		public const uint32 Set_T2 = 32;
		public const uint32 Set_PreferredLifetimeIATA = 64;
		public const uint32 Set_ValidLifetimeIATA = 128;
		public const uint32 V5_ADDRESS_STATE_OFFERED = 0;
		public const uint32 V5_ADDRESS_STATE_ACTIVE = 1;
		public const uint32 V5_ADDRESS_STATE_DECLINED = 2;
		public const uint32 V5_ADDRESS_STATE_DOOM = 3;
		public const uint32 V5_ADDRESS_BIT_DELETED = 128;
		public const uint32 V5_ADDRESS_BIT_UNREGISTERED = 64;
		public const uint32 V5_ADDRESS_BIT_BOTH_REC = 32;
		public const uint32 V5_ADDRESS_EX_BIT_DISABLE_PTR_RR = 1;
		public const uint32 DNS_FLAG_ENABLED = 1;
		public const uint32 DNS_FLAG_UPDATE_DOWNLEVEL = 2;
		public const uint32 DNS_FLAG_CLEANUP_EXPIRED = 4;
		public const uint32 DNS_FLAG_UPDATE_BOTH_ALWAYS = 16;
		public const uint32 DNS_FLAG_UPDATE_DHCID = 32;
		public const uint32 DNS_FLAG_DISABLE_PTR_UPDATE = 64;
		public const uint32 DNS_FLAG_HAS_DNS_SUFFIX = 128;
		public const uint32 DHCP_OPT_ENUM_IGNORE_VENDOR = 1;
		public const uint32 DHCP_OPT_ENUM_USE_CLASSNAME = 2;
		public const uint32 DHCP_FLAGS_DONT_ACCESS_DS = 1;
		public const uint32 DHCP_FLAGS_DONT_DO_RPC = 2;
		public const uint32 DHCP_FLAGS_OPTION_IS_VENDOR = 3;
		public const uint32 DHCP_ATTRIB_BOOL_IS_ROGUE = 1;
		public const uint32 DHCP_ATTRIB_BOOL_IS_DYNBOOTP = 2;
		public const uint32 DHCP_ATTRIB_BOOL_IS_PART_OF_DSDC = 3;
		public const uint32 DHCP_ATTRIB_BOOL_IS_BINDING_AWARE = 4;
		public const uint32 DHCP_ATTRIB_BOOL_IS_ADMIN = 5;
		public const uint32 DHCP_ATTRIB_ULONG_RESTORE_STATUS = 6;
		public const uint32 DHCP_ATTRIB_TYPE_BOOL = 1;
		public const uint32 DHCP_ATTRIB_TYPE_ULONG = 2;
		public const uint32 DHCP_ENDPOINT_FLAG_CANT_MODIFY = 1;
		public const uint32 QUARANTIN_OPTION_BASE = 43220;
		public const uint32 QUARANTINE_SCOPE_QUARPROFILE_OPTION = 43221;
		public const uint32 QUARANTINE_CONFIG_OPTION = 43222;
		public const uint32 ADDRESS_TYPE_IANA = 0;
		public const uint32 ADDRESS_TYPE_IATA = 1;
		public const uint32 DHCP_MIN_DELAY = 0;
		public const uint32 DHCP_MAX_DELAY = 1000;
		public const uint32 DHCP_FAILOVER_DELETE_SCOPES = 1;
		public const uint32 DHCP_FAILOVER_MAX_NUM_ADD_SCOPES = 400;
		public const uint32 DHCP_FAILOVER_MAX_NUM_REL = 31;
		public const uint32 MCLT = 1;
		public const uint32 SAFEPERIOD = 2;
		public const uint32 CHANGESTATE = 4;
		public const uint32 PERCENTAGE = 8;
		public const uint32 MODE = 16;
		public const uint32 PREVSTATE = 32;
		public const uint32 SHAREDSECRET = 64;
		public const uint32 DHCP_CONTROL_START = 1;
		public const uint32 DHCP_CONTROL_STOP = 2;
		public const uint32 DHCP_CONTROL_PAUSE = 3;
		public const uint32 DHCP_CONTROL_CONTINUE = 4;
		public const uint32 DHCP_DROP_DUPLICATE = 1;
		public const uint32 DHCP_DROP_NOMEM = 2;
		public const uint32 DHCP_DROP_INTERNAL_ERROR = 3;
		public const uint32 DHCP_DROP_TIMEOUT = 4;
		public const uint32 DHCP_DROP_UNAUTH = 5;
		public const uint32 DHCP_DROP_PAUSED = 6;
		public const uint32 DHCP_DROP_NO_SUBNETS = 7;
		public const uint32 DHCP_DROP_INVALID = 8;
		public const uint32 DHCP_DROP_WRONG_SERVER = 9;
		public const uint32 DHCP_DROP_NOADDRESS = 10;
		public const uint32 DHCP_DROP_PROCESSED = 11;
		public const uint32 DHCP_DROP_GEN_FAILURE = 256;
		public const uint32 DHCP_SEND_PACKET = 268435456;
		public const uint32 DHCP_PROB_CONFLICT = 536870913;
		public const uint32 DHCP_PROB_DECLINE = 536870914;
		public const uint32 DHCP_PROB_RELEASE = 536870915;
		public const uint32 DHCP_PROB_NACKED = 536870916;
		public const uint32 DHCP_GIVE_ADDRESS_NEW = 805306369;
		public const uint32 DHCP_GIVE_ADDRESS_OLD = 805306370;
		public const uint32 DHCP_CLIENT_BOOTP = 805306371;
		public const uint32 DHCP_CLIENT_DHCP = 805306372;
		public const uint32 DHCPV6_OPTION_CLIENTID = 1;
		public const uint32 DHCPV6_OPTION_SERVERID = 2;
		public const uint32 DHCPV6_OPTION_IA_NA = 3;
		public const uint32 DHCPV6_OPTION_IA_TA = 4;
		public const uint32 DHCPV6_OPTION_ORO = 6;
		public const uint32 DHCPV6_OPTION_PREFERENCE = 7;
		public const uint32 DHCPV6_OPTION_UNICAST = 12;
		public const uint32 DHCPV6_OPTION_RAPID_COMMIT = 14;
		public const uint32 DHCPV6_OPTION_USER_CLASS = 15;
		public const uint32 DHCPV6_OPTION_VENDOR_CLASS = 16;
		public const uint32 DHCPV6_OPTION_VENDOR_OPTS = 17;
		public const uint32 DHCPV6_OPTION_RECONF_MSG = 19;
		public const uint32 DHCPV6_OPTION_SIP_SERVERS_NAMES = 21;
		public const uint32 DHCPV6_OPTION_SIP_SERVERS_ADDRS = 22;
		public const uint32 DHCPV6_OPTION_DNS_SERVERS = 23;
		public const uint32 DHCPV6_OPTION_DOMAIN_LIST = 24;
		public const uint32 DHCPV6_OPTION_IA_PD = 25;
		public const uint32 DHCPV6_OPTION_NIS_SERVERS = 27;
		public const uint32 DHCPV6_OPTION_NISP_SERVERS = 28;
		public const uint32 DHCPV6_OPTION_NIS_DOMAIN_NAME = 29;
		public const uint32 DHCPV6_OPTION_NISP_DOMAIN_NAME = 30;
		
		// --- Enums ---
		
		public enum StatusCode : int32
		{
			NO_ERROR = 0,
			UNSPECIFIED_FAILURE = 1,
			NO_BINDING = 3,
			NOPREFIX_AVAIL = 6,
		}
		public enum DHCP_FORCE_FLAG : int32
		{
			FullForce = 0,
			NoForce = 1,
			FailoverForce = 2,
		}
		public enum DHCP_SUBNET_STATE : int32
		{
			Enabled = 0,
			Disabled = 1,
			EnabledSwitched = 2,
			DisabledSwitched = 3,
			InvalidState = 4,
		}
		public enum DHCP_SUBNET_ELEMENT_TYPE : int32
		{
			IpRanges = 0,
			SecondaryHosts = 1,
			ReservedIps = 2,
			ExcludedIpRanges = 3,
			IpUsedClusters = 4,
			IpRangesDhcpOnly = 5,
			IpRangesDhcpBootp = 6,
			IpRangesBootpOnly = 7,
		}
		public enum DHCP_FILTER_LIST_TYPE : int32
		{
			Deny = 0,
			Allow = 1,
		}
		public enum DHCP_OPTION_DATA_TYPE : int32
		{
			ByteOption = 0,
			WordOption = 1,
			DWordOption = 2,
			DWordDWordOption = 3,
			IpAddressOption = 4,
			StringDataOption = 5,
			BinaryDataOption = 6,
			EncapsulatedDataOption = 7,
			Ipv6AddressOption = 8,
		}
		public enum DHCP_OPTION_TYPE : int32
		{
			UnaryElementTypeOption = 0,
			ArrayTypeOption = 1,
		}
		public enum DHCP_OPTION_SCOPE_TYPE : int32
		{
			DefaultOptions = 0,
			GlobalOptions = 1,
			SubnetOptions = 2,
			ReservedOptions = 3,
			MScopeOptions = 4,
		}
		public enum DHCP_OPTION_SCOPE_TYPE6 : int32
		{
			DefaultOptions6 = 0,
			ScopeOptions6 = 1,
			ReservedOptions6 = 2,
			GlobalOptions6 = 3,
		}
		public enum QuarantineStatus : int32
		{
			NOQUARANTINE = 0,
			RESTRICTEDACCESS = 1,
			DROPPACKET = 2,
			PROBATION = 3,
			EXEMPT = 4,
			DEFAULTQUARSETTING = 5,
			NOQUARINFO = 6,
		}
		public enum DHCP_SEARCH_INFO_TYPE : int32
		{
			IpAddress = 0,
			HardwareAddress = 1,
			Name = 2,
		}
		public enum DHCP_PROPERTY_TYPE : int32
		{
			Byte = 0,
			Word = 1,
			Dword = 2,
			String = 3,
			Binary = 4,
		}
		public enum DHCP_PROPERTY_ID : int32
		{
			PolicyDnsSuffix = 0,
			ClientAddressStateEx = 1,
		}
		public enum DHCP_SCAN_FLAG : int32
		{
			RegistryFix = 0,
			DatabaseFix = 1,
		}
		public enum DHCP_SUBNET_ELEMENT_TYPE_V6 : int32
		{
			Dhcpv6IpRanges = 0,
			Dhcpv6ReservedIps = 1,
			Dhcpv6ExcludedIpRanges = 2,
		}
		public enum DHCP_SEARCH_INFO_TYPE_V6 : int32
		{
			IpAddress = 0,
			DUID = 1,
			Name = 2,
		}
		public enum DHCP_POL_ATTR_TYPE : int32
		{
			HWAddr = 0,
			Option = 1,
			SubOption = 2,
			Fqdn = 3,
			FqdnSingleLabel = 4,
		}
		public enum DHCP_POL_COMPARATOR : int32
		{
			Equal = 0,
			NotEqual = 1,
			BeginsWith = 2,
			NotBeginWith = 3,
			EndsWith = 4,
			NotEndWith = 5,
		}
		public enum DHCP_POL_LOGIC_OPER : int32
		{
			Or = 0,
			And = 1,
		}
		public enum DHCP_POLICY_FIELDS_TO_UPDATE : int32
		{
			Name = 1,
			Order = 2,
			Expr = 4,
			Ranges = 8,
			Descr = 16,
			Status = 32,
			DnsSuffix = 64,
		}
		public enum DHCPV6_STATELESS_PARAM_TYPE : int32
		{
			PurgeInterval = 1,
			Status = 2,
		}
		public enum DHCP_FAILOVER_MODE : int32
		{
			LoadBalance = 0,
			HotStandby = 1,
		}
		public enum DHCP_FAILOVER_SERVER : int32
		{
			PrimaryServer = 0,
			SecondaryServer = 1,
		}
		public enum FSM_STATE : int32
		{
			NO_STATE = 0,
			INIT = 1,
			STARTUP = 2,
			NORMAL = 3,
			COMMUNICATION_INT = 4,
			PARTNER_DOWN = 5,
			POTENTIAL_CONFLICT = 6,
			CONFLICT_DONE = 7,
			RESOLUTION_INT = 8,
			RECOVER = 9,
			RECOVER_WAIT = 10,
			RECOVER_DONE = 11,
			PAUSED = 12,
			SHUTDOWN = 13,
		}
		
		// --- Function Pointers ---
		
		public function uint32 LPDHCP_CONTROL(uint32 dwControlCode, void* lpReserved);
		public function uint32 LPDHCP_NEWPKT(out uint8* Packet, out uint32 PacketSize, uint32 IpAddress, void* Reserved, void** PktContext, out int32 ProcessIt);
		public function uint32 LPDHCP_DROP_SEND(out uint8* Packet, out uint32 PacketSize, uint32 ControlCode, uint32 IpAddress, void* Reserved, void* PktContext);
		public function uint32 LPDHCP_PROB(out uint8 Packet, uint32 PacketSize, uint32 ControlCode, uint32 IpAddress, uint32 AltAddress, void* Reserved, void* PktContext);
		public function uint32 LPDHCP_GIVE_ADDRESS(out uint8 Packet, uint32 PacketSize, uint32 ControlCode, uint32 IpAddress, uint32 AltAddress, uint32 AddrType, uint32 LeaseTime, void* Reserved, void* PktContext);
		public function uint32 LPDHCP_HANDLE_OPTIONS(out uint8 Packet, uint32 PacketSize, void* Reserved, void* PktContext, out DHCP_SERVER_OPTIONS ServerOptions);
		public function uint32 LPDHCP_DELETE_CLIENT(uint32 IpAddress, out uint8 HwAddress, uint32 HwAddressLength, uint32 Reserved, uint32 ClientType);
		public function uint32 LPDHCP_ENTRY_POINT_FUNC(char16* ChainDlls, uint32 CalloutVersion, out DHCP_CALLOUT_TABLE CalloutTbl);
		
		// --- Structs ---
		
		[CRepr]
		public struct DHCPV6CAPI_PARAMS
		{
			public uint32 Flags;
			public uint32 OptionId;
			public IntBool IsVendor;
			public uint8* Data;
			public uint32 nBytesData;
		}
		[CRepr]
		public struct DHCPV6CAPI_PARAMS_ARRAY
		{
			public uint32 nParams;
			public DHCPV6CAPI_PARAMS* Params;
		}
		[CRepr]
		public struct DHCPV6CAPI_CLASSID
		{
			public uint32 Flags;
			public uint8* Data;
			public uint32 nBytesData;
		}
		[CRepr]
		public struct DHCPV6Prefix
		{
			public uint8[16] prefix;
			public uint32 prefixLength;
			public uint32 preferredLifeTime;
			public uint32 validLifeTime;
			public StatusCode status;
		}
		[CRepr]
		public struct DHCPV6PrefixLeaseInformation
		{
			public uint32 nPrefixes;
			public DHCPV6Prefix* prefixArray;
			public uint32 iaid;
			public int64 T1;
			public int64 T2;
			public int64 MaxLeaseExpirationTime;
			public int64 LastRenewalTime;
			public StatusCode status;
			public uint8* ServerId;
			public uint32 ServerIdLen;
		}
		[CRepr]
		public struct DHCPAPI_PARAMS
		{
			public uint32 Flags;
			public uint32 OptionId;
			public IntBool IsVendor;
			public uint8* Data;
			public uint32 nBytesData;
		}
		[CRepr]
		public struct DHCPCAPI_PARAMS_ARRAY
		{
			public uint32 nParams;
			public DHCPAPI_PARAMS* Params;
		}
		[CRepr]
		public struct DHCPCAPI_CLASSID
		{
			public uint32 Flags;
			public uint8* Data;
			public uint32 nBytesData;
		}
		[CRepr]
		public struct DHCP_SERVER_OPTIONS
		{
			public uint8* MessageType;
			public uint32* SubnetMask;
			public uint32* RequestedAddress;
			public uint32* RequestLeaseTime;
			public uint8* OverlayFields;
			public uint32* RouterAddress;
			public uint32* Server;
			public uint8* ParameterRequestList;
			public uint32 ParameterRequestListLength;
			public char8* MachineName;
			public uint32 MachineNameLength;
			public uint8 ClientHardwareAddressType;
			public uint8 ClientHardwareAddressLength;
			public uint8* ClientHardwareAddress;
			public char8* ClassIdentifier;
			public uint32 ClassIdentifierLength;
			public uint8* VendorClass;
			public uint32 VendorClassLength;
			public uint32 DNSFlags;
			public uint32 DNSNameLength;
			public uint8* DNSName;
			public bool DSDomainNameRequested;
			public char8* DSDomainName;
			public uint32 DSDomainNameLen;
			public uint32* ScopeId;
		}
		[CRepr]
		public struct DHCP_CALLOUT_TABLE
		{
			public LPDHCP_CONTROL DhcpControlHook;
			public LPDHCP_NEWPKT DhcpNewPktHook;
			public LPDHCP_DROP_SEND DhcpPktDropHook;
			public LPDHCP_DROP_SEND DhcpPktSendHook;
			public LPDHCP_PROB DhcpAddressDelHook;
			public LPDHCP_GIVE_ADDRESS DhcpAddressOfferHook;
			public LPDHCP_HANDLE_OPTIONS DhcpHandleOptionsHook;
			public LPDHCP_DELETE_CLIENT DhcpDeleteClientHook;
			public void* DhcpExtensionHook;
			public void* DhcpReservedHook;
		}
		[CRepr]
		public struct DATE_TIME
		{
			public uint32 dwLowDateTime;
			public uint32 dwHighDateTime;
		}
		[CRepr]
		public struct DHCP_IP_RANGE
		{
			public uint32 StartAddress;
			public uint32 EndAddress;
		}
		[CRepr]
		public struct DHCP_BINARY_DATA
		{
			public uint32 DataLength;
			public uint8* Data;
		}
		[CRepr]
		public struct DHCP_HOST_INFO
		{
			public uint32 IpAddress;
			public char16* NetBiosName;
			public char16* HostName;
		}
		[CRepr]
		public struct DWORD_DWORD
		{
			public uint32 DWord1;
			public uint32 DWord2;
		}
		[CRepr]
		public struct DHCP_SUBNET_INFO
		{
			public uint32 SubnetAddress;
			public uint32 SubnetMask;
			public char16* SubnetName;
			public char16* SubnetComment;
			public DHCP_HOST_INFO PrimaryHost;
			public DHCP_SUBNET_STATE SubnetState;
		}
		[CRepr]
		public struct DHCP_SUBNET_INFO_VQ
		{
			public uint32 SubnetAddress;
			public uint32 SubnetMask;
			public char16* SubnetName;
			public char16* SubnetComment;
			public DHCP_HOST_INFO PrimaryHost;
			public DHCP_SUBNET_STATE SubnetState;
			public uint32 QuarantineOn;
			public uint32 Reserved1;
			public uint32 Reserved2;
			public int64 Reserved3;
			public int64 Reserved4;
		}
		[CRepr]
		public struct DHCP_IP_ARRAY
		{
			public uint32 NumElements;
			public uint32* Elements;
		}
		[CRepr]
		public struct DHCP_IP_CLUSTER
		{
			public uint32 ClusterAddress;
			public uint32 ClusterMask;
		}
		[CRepr]
		public struct DHCP_IP_RESERVATION
		{
			public uint32 ReservedIpAddress;
			public DHCP_BINARY_DATA* ReservedForClient;
		}
		[CRepr]
		public struct DHCP_SUBNET_ELEMENT_DATA
		{
			public DHCP_SUBNET_ELEMENT_TYPE ElementType;
			public DHCP_SUBNET_ELEMENT_UNION Element;
			
			[CRepr, Union]
			public struct DHCP_SUBNET_ELEMENT_UNION
			{
				public DHCP_IP_RANGE* IpRange;
				public DHCP_HOST_INFO* SecondaryHost;
				public DHCP_IP_RESERVATION* ReservedIp;
				public DHCP_IP_RANGE* ExcludeIpRange;
				public DHCP_IP_CLUSTER* IpUsedCluster;
			}
		}
		[CRepr, Union]
		public struct DHCP_SUBNET_ELEMENT_UNION {}
		[CRepr]
		public struct DHCP_SUBNET_ELEMENT_INFO_ARRAY
		{
			public uint32 NumElements;
			public DHCP_SUBNET_ELEMENT_DATA* Elements;
		}
		[CRepr]
		public struct DHCP_IPV6_ADDRESS
		{
			public uint64 HighOrderBits;
			public uint64 LowOrderBits;
		}
		[CRepr]
		public struct DHCP_ADDR_PATTERN
		{
			public IntBool MatchHWType;
			public uint8 HWType;
			public IntBool IsWildcard;
			public uint8 Length;
			public uint8[255] Pattern;
		}
		[CRepr]
		public struct DHCP_FILTER_ADD_INFO
		{
			public DHCP_ADDR_PATTERN AddrPatt;
			public char16* Comment;
			public DHCP_FILTER_LIST_TYPE ListType;
		}
		[CRepr]
		public struct DHCP_FILTER_GLOBAL_INFO
		{
			public IntBool EnforceAllowList;
			public IntBool EnforceDenyList;
		}
		[CRepr]
		public struct DHCP_FILTER_RECORD
		{
			public DHCP_ADDR_PATTERN AddrPatt;
			public char16* Comment;
		}
		[CRepr]
		public struct DHCP_FILTER_ENUM_INFO
		{
			public uint32 NumElements;
			public DHCP_FILTER_RECORD* pEnumRecords;
		}
		[CRepr]
		public struct DHCP_OPTION_DATA_ELEMENT
		{
			public DHCP_OPTION_DATA_TYPE OptionType;
			public DHCP_OPTION_ELEMENT_UNION Element;
			
			[CRepr, Union]
			public struct DHCP_OPTION_ELEMENT_UNION
			{
				public uint8 ByteOption;
				public uint16 WordOption;
				public uint32 DWordOption;
				public DWORD_DWORD DWordDWordOption;
				public uint32 IpAddressOption;
				public char16* StringDataOption;
				public DHCP_BINARY_DATA BinaryDataOption;
				public DHCP_BINARY_DATA EncapsulatedDataOption;
				public char16* Ipv6AddressDataOption;
			}
		}
		[CRepr, Union]
		public struct DHCP_OPTION_ELEMENT_UNION {}
		[CRepr]
		public struct DHCP_OPTION_DATA
		{
			public uint32 NumElements;
			public DHCP_OPTION_DATA_ELEMENT* Elements;
		}
		[CRepr]
		public struct DHCP_OPTION
		{
			public uint32 OptionID;
			public char16* OptionName;
			public char16* OptionComment;
			public DHCP_OPTION_DATA DefaultValue;
			public DHCP_OPTION_TYPE OptionType;
		}
		[CRepr]
		public struct DHCP_OPTION_ARRAY
		{
			public uint32 NumElements;
			public DHCP_OPTION* Options;
		}
		[CRepr]
		public struct DHCP_OPTION_VALUE
		{
			public uint32 OptionID;
			public DHCP_OPTION_DATA Value;
		}
		[CRepr]
		public struct DHCP_OPTION_VALUE_ARRAY
		{
			public uint32 NumElements;
			public DHCP_OPTION_VALUE* Values;
		}
		[CRepr]
		public struct DHCP_RESERVED_SCOPE
		{
			public uint32 ReservedIpAddress;
			public uint32 ReservedIpSubnetAddress;
		}
		[CRepr]
		public struct DHCP_OPTION_SCOPE_INFO
		{
			public DHCP_OPTION_SCOPE_TYPE ScopeType;
			public _DHCP_OPTION_SCOPE_UNION ScopeInfo;
			
			[CRepr, Union]
			public struct _DHCP_OPTION_SCOPE_UNION
			{
				public void* DefaultScopeInfo;
				public void* GlobalScopeInfo;
				public uint32 SubnetScopeInfo;
				public DHCP_RESERVED_SCOPE ReservedScopeInfo;
				public char16* MScopeInfo;
			}
		}
		[CRepr]
		public struct DHCP_RESERVED_SCOPE6
		{
			public DHCP_IPV6_ADDRESS ReservedIpAddress;
			public DHCP_IPV6_ADDRESS ReservedIpSubnetAddress;
		}
		[CRepr]
		public struct DHCP_OPTION_SCOPE_INFO6
		{
			public DHCP_OPTION_SCOPE_TYPE6 ScopeType;
			public DHCP_OPTION_SCOPE_UNION6 ScopeInfo;
			
			[CRepr, Union]
			public struct DHCP_OPTION_SCOPE_UNION6
			{
				public void* DefaultScopeInfo;
				public DHCP_IPV6_ADDRESS SubnetScopeInfo;
				public DHCP_RESERVED_SCOPE6 ReservedScopeInfo;
			}
		}
		[CRepr, Union]
		public struct DHCP_OPTION_SCOPE_UNION6 {}
		[CRepr]
		public struct DHCP_OPTION_LIST
		{
			public uint32 NumOptions;
			public DHCP_OPTION_VALUE* Options;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO
		{
			public uint32 ClientIpAddress;
			public uint32 SubnetMask;
			public DHCP_BINARY_DATA ClientHardwareAddress;
			public char16* ClientName;
			public char16* ClientComment;
			public DATE_TIME ClientLeaseExpires;
			public DHCP_HOST_INFO OwnerHost;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO_ARRAY
		{
			public uint32 NumElements;
			public DHCP_CLIENT_INFO** Clients;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO_VQ
		{
			public uint32 ClientIpAddress;
			public uint32 SubnetMask;
			public DHCP_BINARY_DATA ClientHardwareAddress;
			public char16* ClientName;
			public char16* ClientComment;
			public DATE_TIME ClientLeaseExpires;
			public DHCP_HOST_INFO OwnerHost;
			public uint8 bClientType;
			public uint8 AddressState;
			public QuarantineStatus Status;
			public DATE_TIME ProbationEnds;
			public IntBool QuarantineCapable;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO_ARRAY_VQ
		{
			public uint32 NumElements;
			public DHCP_CLIENT_INFO_VQ** Clients;
		}
		[CRepr]
		public struct DHCP_CLIENT_FILTER_STATUS_INFO
		{
			public uint32 ClientIpAddress;
			public uint32 SubnetMask;
			public DHCP_BINARY_DATA ClientHardwareAddress;
			public char16* ClientName;
			public char16* ClientComment;
			public DATE_TIME ClientLeaseExpires;
			public DHCP_HOST_INFO OwnerHost;
			public uint8 bClientType;
			public uint8 AddressState;
			public QuarantineStatus Status;
			public DATE_TIME ProbationEnds;
			public IntBool QuarantineCapable;
			public uint32 FilterStatus;
		}
		[CRepr]
		public struct DHCP_CLIENT_FILTER_STATUS_INFO_ARRAY
		{
			public uint32 NumElements;
			public DHCP_CLIENT_FILTER_STATUS_INFO** Clients;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO_PB
		{
			public uint32 ClientIpAddress;
			public uint32 SubnetMask;
			public DHCP_BINARY_DATA ClientHardwareAddress;
			public char16* ClientName;
			public char16* ClientComment;
			public DATE_TIME ClientLeaseExpires;
			public DHCP_HOST_INFO OwnerHost;
			public uint8 bClientType;
			public uint8 AddressState;
			public QuarantineStatus Status;
			public DATE_TIME ProbationEnds;
			public IntBool QuarantineCapable;
			public uint32 FilterStatus;
			public char16* PolicyName;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO_PB_ARRAY
		{
			public uint32 NumElements;
			public DHCP_CLIENT_INFO_PB** Clients;
		}
		[CRepr]
		public struct DHCP_SEARCH_INFO
		{
			public DHCP_SEARCH_INFO_TYPE SearchType;
			public DHCP_CLIENT_SEARCH_UNION SearchInfo;
			
			[CRepr, Union]
			public struct DHCP_CLIENT_SEARCH_UNION
			{
				public uint32 ClientIpAddress;
				public DHCP_BINARY_DATA ClientHardwareAddress;
				public char16* ClientName;
			}
		}
		[CRepr, Union]
		public struct DHCP_CLIENT_SEARCH_UNION {}
		[CRepr]
		public struct DHCP_PROPERTY
		{
			public DHCP_PROPERTY_ID ID;
			public DHCP_PROPERTY_TYPE Type;
			public _DHCP_PROPERTY_VALUE_UNION Value;
			
			[CRepr, Union]
			public struct _DHCP_PROPERTY_VALUE_UNION
			{
				public uint8 ByteValue;
				public uint16 WordValue;
				public uint32 DWordValue;
				public char16* StringValue;
				public DHCP_BINARY_DATA BinaryValue;
			}
		}
		[CRepr]
		public struct DHCP_PROPERTY_ARRAY
		{
			public uint32 NumElements;
			public DHCP_PROPERTY* Elements;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO_EX
		{
			public uint32 ClientIpAddress;
			public uint32 SubnetMask;
			public DHCP_BINARY_DATA ClientHardwareAddress;
			public char16* ClientName;
			public char16* ClientComment;
			public DATE_TIME ClientLeaseExpires;
			public DHCP_HOST_INFO OwnerHost;
			public uint8 bClientType;
			public uint8 AddressState;
			public QuarantineStatus Status;
			public DATE_TIME ProbationEnds;
			public IntBool QuarantineCapable;
			public uint32 FilterStatus;
			public char16* PolicyName;
			public DHCP_PROPERTY_ARRAY* Properties;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO_EX_ARRAY
		{
			public uint32 NumElements;
			public DHCP_CLIENT_INFO_EX** Clients;
		}
		[CRepr]
		public struct SCOPE_MIB_INFO
		{
			public uint32 Subnet;
			public uint32 NumAddressesInuse;
			public uint32 NumAddressesFree;
			public uint32 NumPendingOffers;
		}
		[CRepr]
		public struct DHCP_MIB_INFO
		{
			public uint32 Discovers;
			public uint32 Offers;
			public uint32 Requests;
			public uint32 Acks;
			public uint32 Naks;
			public uint32 Declines;
			public uint32 Releases;
			public DATE_TIME ServerStartTime;
			public uint32 Scopes;
			public SCOPE_MIB_INFO* ScopeInfo;
		}
		[CRepr]
		public struct SCOPE_MIB_INFO_VQ
		{
			public uint32 Subnet;
			public uint32 NumAddressesInuse;
			public uint32 NumAddressesFree;
			public uint32 NumPendingOffers;
			public uint32 QtnNumLeases;
			public uint32 QtnPctQtnLeases;
			public uint32 QtnProbationLeases;
			public uint32 QtnNonQtnLeases;
			public uint32 QtnExemptLeases;
			public uint32 QtnCapableClients;
		}
		[CRepr]
		public struct DHCP_MIB_INFO_VQ
		{
			public uint32 Discovers;
			public uint32 Offers;
			public uint32 Requests;
			public uint32 Acks;
			public uint32 Naks;
			public uint32 Declines;
			public uint32 Releases;
			public DATE_TIME ServerStartTime;
			public uint32 QtnNumLeases;
			public uint32 QtnPctQtnLeases;
			public uint32 QtnProbationLeases;
			public uint32 QtnNonQtnLeases;
			public uint32 QtnExemptLeases;
			public uint32 QtnCapableClients;
			public uint32 QtnIASErrors;
			public uint32 Scopes;
			public SCOPE_MIB_INFO_VQ* ScopeInfo;
		}
		[CRepr]
		public struct SCOPE_MIB_INFO_V5
		{
			public uint32 Subnet;
			public uint32 NumAddressesInuse;
			public uint32 NumAddressesFree;
			public uint32 NumPendingOffers;
		}
		[CRepr]
		public struct DHCP_MIB_INFO_V5
		{
			public uint32 Discovers;
			public uint32 Offers;
			public uint32 Requests;
			public uint32 Acks;
			public uint32 Naks;
			public uint32 Declines;
			public uint32 Releases;
			public DATE_TIME ServerStartTime;
			public uint32 QtnNumLeases;
			public uint32 QtnPctQtnLeases;
			public uint32 QtnProbationLeases;
			public uint32 QtnNonQtnLeases;
			public uint32 QtnExemptLeases;
			public uint32 QtnCapableClients;
			public uint32 QtnIASErrors;
			public uint32 DelayedOffers;
			public uint32 ScopesWithDelayedOffers;
			public uint32 Scopes;
			public SCOPE_MIB_INFO_V5* ScopeInfo;
		}
		[CRepr]
		public struct DHCP_SERVER_CONFIG_INFO
		{
			public uint32 APIProtocolSupport;
			public char16* DatabaseName;
			public char16* DatabasePath;
			public char16* BackupPath;
			public uint32 BackupInterval;
			public uint32 DatabaseLoggingFlag;
			public uint32 RestoreFlag;
			public uint32 DatabaseCleanupInterval;
			public uint32 DebugFlag;
		}
		[CRepr]
		public struct DHCP_SCAN_ITEM
		{
			public uint32 IpAddress;
			public DHCP_SCAN_FLAG ScanFlag;
		}
		[CRepr]
		public struct DHCP_SCAN_LIST
		{
			public uint32 NumScanItems;
			public DHCP_SCAN_ITEM* ScanItems;
		}
		[CRepr]
		public struct DHCP_CLASS_INFO
		{
			public char16* ClassName;
			public char16* ClassComment;
			public uint32 ClassDataLength;
			public IntBool IsVendor;
			public uint32 Flags;
			public uint8* ClassData;
		}
		[CRepr]
		public struct DHCP_CLASS_INFO_ARRAY
		{
			public uint32 NumElements;
			public DHCP_CLASS_INFO* Classes;
		}
		[CRepr]
		public struct DHCP_CLASS_INFO_V6
		{
			public char16* ClassName;
			public char16* ClassComment;
			public uint32 ClassDataLength;
			public IntBool IsVendor;
			public uint32 EnterpriseNumber;
			public uint32 Flags;
			public uint8* ClassData;
		}
		[CRepr]
		public struct DHCP_CLASS_INFO_ARRAY_V6
		{
			public uint32 NumElements;
			public DHCP_CLASS_INFO_V6* Classes;
		}
		[CRepr]
		public struct DHCP_SERVER_SPECIFIC_STRINGS
		{
			public char16* DefaultVendorClassName;
			public char16* DefaultUserClassName;
		}
		[CRepr]
		public struct DHCP_IP_RESERVATION_V4
		{
			public uint32 ReservedIpAddress;
			public DHCP_BINARY_DATA* ReservedForClient;
			public uint8 bAllowedClientTypes;
		}
		[CRepr]
		public struct DHCP_IP_RESERVATION_INFO
		{
			public uint32 ReservedIpAddress;
			public DHCP_BINARY_DATA ReservedForClient;
			public char16* ReservedClientName;
			public char16* ReservedClientDesc;
			public uint8 bAllowedClientTypes;
			public uint8 fOptionsPresent;
		}
		[CRepr]
		public struct DHCP_RESERVATION_INFO_ARRAY
		{
			public uint32 NumElements;
			public DHCP_IP_RESERVATION_INFO** Elements;
		}
		[CRepr]
		public struct DHCP_SUBNET_ELEMENT_DATA_V4
		{
			public DHCP_SUBNET_ELEMENT_TYPE ElementType;
			public DHCP_SUBNET_ELEMENT_UNION_V4 Element;
			
			[CRepr, Union]
			public struct DHCP_SUBNET_ELEMENT_UNION_V4
			{
				public DHCP_IP_RANGE* IpRange;
				public DHCP_HOST_INFO* SecondaryHost;
				public DHCP_IP_RESERVATION_V4* ReservedIp;
				public DHCP_IP_RANGE* ExcludeIpRange;
				public DHCP_IP_CLUSTER* IpUsedCluster;
			}
		}
		[CRepr, Union]
		public struct DHCP_SUBNET_ELEMENT_UNION_V4 {}
		[CRepr]
		public struct DHCP_SUBNET_ELEMENT_INFO_ARRAY_V4
		{
			public uint32 NumElements;
			public DHCP_SUBNET_ELEMENT_DATA_V4* Elements;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO_V4
		{
			public uint32 ClientIpAddress;
			public uint32 SubnetMask;
			public DHCP_BINARY_DATA ClientHardwareAddress;
			public char16* ClientName;
			public char16* ClientComment;
			public DATE_TIME ClientLeaseExpires;
			public DHCP_HOST_INFO OwnerHost;
			public uint8 bClientType;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO_ARRAY_V4
		{
			public uint32 NumElements;
			public DHCP_CLIENT_INFO_V4** Clients;
		}
		[CRepr]
		public struct DHCP_SERVER_CONFIG_INFO_V4
		{
			public uint32 APIProtocolSupport;
			public char16* DatabaseName;
			public char16* DatabasePath;
			public char16* BackupPath;
			public uint32 BackupInterval;
			public uint32 DatabaseLoggingFlag;
			public uint32 RestoreFlag;
			public uint32 DatabaseCleanupInterval;
			public uint32 DebugFlag;
			public uint32 dwPingRetries;
			public uint32 cbBootTableString;
			public char16* wszBootTableString;
			public IntBool fAuditLog;
		}
		[CRepr]
		public struct DHCP_SERVER_CONFIG_INFO_VQ
		{
			public uint32 APIProtocolSupport;
			public char16* DatabaseName;
			public char16* DatabasePath;
			public char16* BackupPath;
			public uint32 BackupInterval;
			public uint32 DatabaseLoggingFlag;
			public uint32 RestoreFlag;
			public uint32 DatabaseCleanupInterval;
			public uint32 DebugFlag;
			public uint32 dwPingRetries;
			public uint32 cbBootTableString;
			public char16* wszBootTableString;
			public IntBool fAuditLog;
			public IntBool QuarantineOn;
			public uint32 QuarDefFail;
			public IntBool QuarRuntimeStatus;
		}
		[CRepr]
		public struct DHCP_SERVER_CONFIG_INFO_V6
		{
			public IntBool UnicastFlag;
			public IntBool RapidCommitFlag;
			public uint32 PreferredLifetime;
			public uint32 ValidLifetime;
			public uint32 T1;
			public uint32 T2;
			public uint32 PreferredLifetimeIATA;
			public uint32 ValidLifetimeIATA;
			public IntBool fAuditLog;
		}
		[CRepr]
		public struct DHCP_SUPER_SCOPE_TABLE_ENTRY
		{
			public uint32 SubnetAddress;
			public uint32 SuperScopeNumber;
			public uint32 NextInSuperScope;
			public char16* SuperScopeName;
		}
		[CRepr]
		public struct DHCP_SUPER_SCOPE_TABLE
		{
			public uint32 cEntries;
			public DHCP_SUPER_SCOPE_TABLE_ENTRY* pEntries;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO_V5
		{
			public uint32 ClientIpAddress;
			public uint32 SubnetMask;
			public DHCP_BINARY_DATA ClientHardwareAddress;
			public char16* ClientName;
			public char16* ClientComment;
			public DATE_TIME ClientLeaseExpires;
			public DHCP_HOST_INFO OwnerHost;
			public uint8 bClientType;
			public uint8 AddressState;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO_ARRAY_V5
		{
			public uint32 NumElements;
			public DHCP_CLIENT_INFO_V5** Clients;
		}
		[CRepr]
		public struct DHCP_ALL_OPTIONS
		{
			public uint32 Flags;
			public DHCP_OPTION_ARRAY* NonVendorOptions;
			public uint32 NumVendorOptions;
			public _Anonymous_e__Struct* VendorOptions;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public DHCP_OPTION Option;
				public char16* VendorName;
				public char16* ClassName;
			}
		}
		[CRepr]
		public struct DHCP_ALL_OPTION_VALUES
		{
			public uint32 Flags;
			public uint32 NumElements;
			public _Anonymous_e__Struct* Options;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public char16* ClassName;
				public char16* VendorName;
				public IntBool IsVendor;
				public DHCP_OPTION_VALUE_ARRAY* OptionsArray;
			}
		}
		[CRepr]
		public struct DHCP_ALL_OPTION_VALUES_PB
		{
			public uint32 Flags;
			public uint32 NumElements;
			public _Anonymous_e__Struct* Options;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public char16* PolicyName;
				public char16* VendorName;
				public IntBool IsVendor;
				public DHCP_OPTION_VALUE_ARRAY* OptionsArray;
			}
		}
		[CRepr]
		public struct DHCPDS_SERVER
		{
			public uint32 Version;
			public char16* ServerName;
			public uint32 ServerAddress;
			public uint32 Flags;
			public uint32 State;
			public char16* DsLocation;
			public uint32 DsLocType;
		}
		[CRepr]
		public struct DHCPDS_SERVERS
		{
			public uint32 Flags;
			public uint32 NumElements;
			public DHCPDS_SERVER* Servers;
		}
		[CRepr]
		public struct DHCP_ATTRIB
		{
			public uint32 DhcpAttribId;
			public uint32 DhcpAttribType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public IntBool DhcpAttribBool;
				public uint32 DhcpAttribUlong;
			}
		}
		[CRepr]
		public struct DHCP_ATTRIB_ARRAY
		{
			public uint32 NumElements;
			public DHCP_ATTRIB* DhcpAttribs;
		}
		[CRepr]
		public struct DHCP_BOOTP_IP_RANGE
		{
			public uint32 StartAddress;
			public uint32 EndAddress;
			public uint32 BootpAllocated;
			public uint32 MaxBootpAllowed;
		}
		[CRepr]
		public struct DHCP_SUBNET_ELEMENT_DATA_V5
		{
			public DHCP_SUBNET_ELEMENT_TYPE ElementType;
			public _DHCP_SUBNET_ELEMENT_UNION_V5 Element;
			
			[CRepr, Union]
			public struct _DHCP_SUBNET_ELEMENT_UNION_V5
			{
				public DHCP_BOOTP_IP_RANGE* IpRange;
				public DHCP_HOST_INFO* SecondaryHost;
				public DHCP_IP_RESERVATION_V4* ReservedIp;
				public DHCP_IP_RANGE* ExcludeIpRange;
				public DHCP_IP_CLUSTER* IpUsedCluster;
			}
		}
		[CRepr]
		public struct DHCP_SUBNET_ELEMENT_INFO_ARRAY_V5
		{
			public uint32 NumElements;
			public DHCP_SUBNET_ELEMENT_DATA_V5* Elements;
		}
		[CRepr]
		public struct DHCP_PERF_STATS
		{
			public uint32 dwNumPacketsReceived;
			public uint32 dwNumPacketsDuplicate;
			public uint32 dwNumPacketsExpired;
			public uint32 dwNumMilliSecondsProcessed;
			public uint32 dwNumPacketsInActiveQueue;
			public uint32 dwNumPacketsInPingQueue;
			public uint32 dwNumDiscoversReceived;
			public uint32 dwNumOffersSent;
			public uint32 dwNumRequestsReceived;
			public uint32 dwNumInformsReceived;
			public uint32 dwNumAcksSent;
			public uint32 dwNumNacksSent;
			public uint32 dwNumDeclinesReceived;
			public uint32 dwNumReleasesReceived;
			public uint32 dwNumDelayedOfferInQueue;
			public uint32 dwNumPacketsProcessed;
			public uint32 dwNumPacketsInQuarWaitingQueue;
			public uint32 dwNumPacketsInQuarReadyQueue;
			public uint32 dwNumPacketsInQuarDecisionQueue;
		}
		[CRepr]
		public struct DHCP_BIND_ELEMENT
		{
			public uint32 Flags;
			public IntBool fBoundToDHCPServer;
			public uint32 AdapterPrimaryAddress;
			public uint32 AdapterSubnetAddress;
			public char16* IfDescription;
			public uint32 IfIdSize;
			public uint8* IfId;
		}
		[CRepr]
		public struct DHCP_BIND_ELEMENT_ARRAY
		{
			public uint32 NumElements;
			public DHCP_BIND_ELEMENT* Elements;
		}
		[CRepr]
		public struct DHCPV6_BIND_ELEMENT
		{
			public uint32 Flags;
			public IntBool fBoundToDHCPServer;
			public DHCP_IPV6_ADDRESS AdapterPrimaryAddress;
			public DHCP_IPV6_ADDRESS AdapterSubnetAddress;
			public char16* IfDescription;
			public uint32 IpV6IfIndex;
			public uint32 IfIdSize;
			public uint8* IfId;
		}
		[CRepr]
		public struct DHCPV6_BIND_ELEMENT_ARRAY
		{
			public uint32 NumElements;
			public DHCPV6_BIND_ELEMENT* Elements;
		}
		[CRepr]
		public struct DHCP_IP_RANGE_V6
		{
			public DHCP_IPV6_ADDRESS StartAddress;
			public DHCP_IPV6_ADDRESS EndAddress;
		}
		[CRepr]
		public struct DHCP_HOST_INFO_V6
		{
			public DHCP_IPV6_ADDRESS IpAddress;
			public char16* NetBiosName;
			public char16* HostName;
		}
		[CRepr]
		public struct DHCP_SUBNET_INFO_V6
		{
			public DHCP_IPV6_ADDRESS SubnetAddress;
			public uint32 Prefix;
			public uint16 Preference;
			public char16* SubnetName;
			public char16* SubnetComment;
			public uint32 State;
			public uint32 ScopeId;
		}
		[CRepr]
		public struct SCOPE_MIB_INFO_V6
		{
			public DHCP_IPV6_ADDRESS Subnet;
			public uint64 NumAddressesInuse;
			public uint64 NumAddressesFree;
			public uint64 NumPendingAdvertises;
		}
		[CRepr]
		public struct DHCP_MIB_INFO_V6
		{
			public uint32 Solicits;
			public uint32 Advertises;
			public uint32 Requests;
			public uint32 Renews;
			public uint32 Rebinds;
			public uint32 Replies;
			public uint32 Confirms;
			public uint32 Declines;
			public uint32 Releases;
			public uint32 Informs;
			public DATE_TIME ServerStartTime;
			public uint32 Scopes;
			public SCOPE_MIB_INFO_V6* ScopeInfo;
		}
		[CRepr]
		public struct DHCP_IP_RESERVATION_V6
		{
			public DHCP_IPV6_ADDRESS ReservedIpAddress;
			public DHCP_BINARY_DATA* ReservedForClient;
			public uint32 InterfaceId;
		}
		[CRepr]
		public struct DHCP_SUBNET_ELEMENT_DATA_V6
		{
			public DHCP_SUBNET_ELEMENT_TYPE_V6 ElementType;
			public DHCP_SUBNET_ELEMENT_UNION_V6 Element;
			
			[CRepr, Union]
			public struct DHCP_SUBNET_ELEMENT_UNION_V6
			{
				public DHCP_IP_RANGE_V6* IpRange;
				public DHCP_IP_RESERVATION_V6* ReservedIp;
				public DHCP_IP_RANGE_V6* ExcludeIpRange;
			}
		}
		[CRepr, Union]
		public struct DHCP_SUBNET_ELEMENT_UNION_V6 {}
		[CRepr]
		public struct DHCP_SUBNET_ELEMENT_INFO_ARRAY_V6
		{
			public uint32 NumElements;
			public DHCP_SUBNET_ELEMENT_DATA_V6* Elements;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO_V6
		{
			public DHCP_IPV6_ADDRESS ClientIpAddress;
			public DHCP_BINARY_DATA ClientDUID;
			public uint32 AddressType;
			public uint32 IAID;
			public char16* ClientName;
			public char16* ClientComment;
			public DATE_TIME ClientValidLeaseExpires;
			public DATE_TIME ClientPrefLeaseExpires;
			public DHCP_HOST_INFO_V6 OwnerHost;
		}
		[CRepr]
		public struct DHCPV6_IP_ARRAY
		{
			public uint32 NumElements;
			public DHCP_IPV6_ADDRESS* Elements;
		}
		[CRepr]
		public struct DHCP_CLIENT_INFO_ARRAY_V6
		{
			public uint32 NumElements;
			public DHCP_CLIENT_INFO_V6** Clients;
		}
		[CRepr]
		public struct DHCP_SEARCH_INFO_V6
		{
			public DHCP_SEARCH_INFO_TYPE_V6 SearchType;
			public _DHCP_CLIENT_SEARCH_UNION_V6 SearchInfo;
			
			[CRepr, Union]
			public struct _DHCP_CLIENT_SEARCH_UNION_V6
			{
				public DHCP_IPV6_ADDRESS ClientIpAddress;
				public DHCP_BINARY_DATA ClientDUID;
				public char16* ClientName;
			}
		}
		[CRepr]
		public struct DHCP_POL_COND
		{
			public uint32 ParentExpr;
			public DHCP_POL_ATTR_TYPE Type;
			public uint32 OptionID;
			public uint32 SubOptionID;
			public char16* VendorName;
			public DHCP_POL_COMPARATOR Operator;
			public uint8* Value;
			public uint32 ValueLength;
		}
		[CRepr]
		public struct DHCP_POL_COND_ARRAY
		{
			public uint32 NumElements;
			public DHCP_POL_COND* Elements;
		}
		[CRepr]
		public struct DHCP_POL_EXPR
		{
			public uint32 ParentExpr;
			public DHCP_POL_LOGIC_OPER Operator;
		}
		[CRepr]
		public struct DHCP_POL_EXPR_ARRAY
		{
			public uint32 NumElements;
			public DHCP_POL_EXPR* Elements;
		}
		[CRepr]
		public struct DHCP_IP_RANGE_ARRAY
		{
			public uint32 NumElements;
			public DHCP_IP_RANGE* Elements;
		}
		[CRepr]
		public struct DHCP_POLICY
		{
			public char16* PolicyName;
			public IntBool IsGlobalPolicy;
			public uint32 Subnet;
			public uint32 ProcessingOrder;
			public DHCP_POL_COND_ARRAY* Conditions;
			public DHCP_POL_EXPR_ARRAY* Expressions;
			public DHCP_IP_RANGE_ARRAY* Ranges;
			public char16* Description;
			public IntBool Enabled;
		}
		[CRepr]
		public struct DHCP_POLICY_ARRAY
		{
			public uint32 NumElements;
			public DHCP_POLICY* Elements;
		}
		[CRepr]
		public struct DHCP_POLICY_EX
		{
			public char16* PolicyName;
			public IntBool IsGlobalPolicy;
			public uint32 Subnet;
			public uint32 ProcessingOrder;
			public DHCP_POL_COND_ARRAY* Conditions;
			public DHCP_POL_EXPR_ARRAY* Expressions;
			public DHCP_IP_RANGE_ARRAY* Ranges;
			public char16* Description;
			public IntBool Enabled;
			public DHCP_PROPERTY_ARRAY* Properties;
		}
		[CRepr]
		public struct DHCP_POLICY_EX_ARRAY
		{
			public uint32 NumElements;
			public DHCP_POLICY_EX* Elements;
		}
		[CRepr]
		public struct DHCPV6_STATELESS_PARAMS
		{
			public IntBool Status;
			public uint32 PurgeInterval;
		}
		[CRepr]
		public struct DHCPV6_STATELESS_SCOPE_STATS
		{
			public DHCP_IPV6_ADDRESS SubnetAddress;
			public uint64 NumStatelessClientsAdded;
			public uint64 NumStatelessClientsRemoved;
		}
		[CRepr]
		public struct DHCPV6_STATELESS_STATS
		{
			public uint32 NumScopes;
			public DHCPV6_STATELESS_SCOPE_STATS* ScopeStats;
		}
		[CRepr]
		public struct DHCP_FAILOVER_RELATIONSHIP
		{
			public uint32 PrimaryServer;
			public uint32 SecondaryServer;
			public DHCP_FAILOVER_MODE Mode;
			public DHCP_FAILOVER_SERVER ServerType;
			public FSM_STATE State;
			public FSM_STATE PrevState;
			public uint32 Mclt;
			public uint32 SafePeriod;
			public char16* RelationshipName;
			public char16* PrimaryServerName;
			public char16* SecondaryServerName;
			public DHCP_IP_ARRAY* pScopes;
			public uint8 Percentage;
			public char16* SharedSecret;
		}
		[CRepr]
		public struct DHCP_FAILOVER_RELATIONSHIP_ARRAY
		{
			public uint32 NumElements;
			public DHCP_FAILOVER_RELATIONSHIP* pRelationships;
		}
		[CRepr]
		public struct DHCPV4_FAILOVER_CLIENT_INFO
		{
			public uint32 ClientIpAddress;
			public uint32 SubnetMask;
			public DHCP_BINARY_DATA ClientHardwareAddress;
			public char16* ClientName;
			public char16* ClientComment;
			public DATE_TIME ClientLeaseExpires;
			public DHCP_HOST_INFO OwnerHost;
			public uint8 bClientType;
			public uint8 AddressState;
			public QuarantineStatus Status;
			public DATE_TIME ProbationEnds;
			public IntBool QuarantineCapable;
			public uint32 SentPotExpTime;
			public uint32 AckPotExpTime;
			public uint32 RecvPotExpTime;
			public uint32 StartTime;
			public uint32 CltLastTransTime;
			public uint32 LastBndUpdTime;
			public uint32 BndMsgStatus;
			public char16* PolicyName;
			public uint8 Flags;
		}
		[CRepr]
		public struct DHCPV4_FAILOVER_CLIENT_INFO_ARRAY
		{
			public uint32 NumElements;
			public DHCPV4_FAILOVER_CLIENT_INFO** Clients;
		}
		[CRepr]
		public struct DHCPV4_FAILOVER_CLIENT_INFO_EX
		{
			public uint32 ClientIpAddress;
			public uint32 SubnetMask;
			public DHCP_BINARY_DATA ClientHardwareAddress;
			public char16* ClientName;
			public char16* ClientComment;
			public DATE_TIME ClientLeaseExpires;
			public DHCP_HOST_INFO OwnerHost;
			public uint8 bClientType;
			public uint8 AddressState;
			public QuarantineStatus Status;
			public DATE_TIME ProbationEnds;
			public IntBool QuarantineCapable;
			public uint32 SentPotExpTime;
			public uint32 AckPotExpTime;
			public uint32 RecvPotExpTime;
			public uint32 StartTime;
			public uint32 CltLastTransTime;
			public uint32 LastBndUpdTime;
			public uint32 BndMsgStatus;
			public char16* PolicyName;
			public uint8 Flags;
			public uint32 AddressStateEx;
		}
		[CRepr]
		public struct DHCP_FAILOVER_STATISTICS
		{
			public uint32 NumAddr;
			public uint32 AddrFree;
			public uint32 AddrInUse;
			public uint32 PartnerAddrFree;
			public uint32 ThisAddrFree;
			public uint32 PartnerAddrInUse;
			public uint32 ThisAddrInUse;
		}
		
		// --- Functions ---
		
		[Import("dhcpcsvc6.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void Dhcpv6CApiInitialize(out uint32 Version);
		[Import("dhcpcsvc6.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void Dhcpv6CApiCleanup();
		[Import("dhcpcsvc6.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 Dhcpv6RequestParams(IntBool forceNewInform, void* reserved, char16* adapterName, out DHCPV6CAPI_CLASSID classId, DHCPV6CAPI_PARAMS_ARRAY recdParams, out uint8 buffer, out uint32 pSize);
		[Import("dhcpcsvc6.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 Dhcpv6RequestPrefix(char16* adapterName, out DHCPV6CAPI_CLASSID pclassId, out DHCPV6PrefixLeaseInformation prefixleaseInfo, out uint32 pdwTimeToWait);
		[Import("dhcpcsvc6.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 Dhcpv6RenewPrefix(char16* adapterName, out DHCPV6CAPI_CLASSID pclassId, out DHCPV6PrefixLeaseInformation prefixleaseInfo, out uint32 pdwTimeToWait, uint32 bValidatePrefix);
		[Import("dhcpcsvc6.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 Dhcpv6ReleasePrefix(char16* adapterName, out DHCPV6CAPI_CLASSID classId, out DHCPV6PrefixLeaseInformation leaseInfo);
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpCApiInitialize(out uint32 Version);
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DhcpCApiCleanup();
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpRequestParams(uint32 Flags, void* Reserved, char16* AdapterName, out DHCPCAPI_CLASSID ClassId, DHCPCAPI_PARAMS_ARRAY SendParams, DHCPCAPI_PARAMS_ARRAY RecdParams, out uint8 Buffer, out uint32 pSize, char16* RequestIdStr);
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpUndoRequestParams(uint32 Flags, void* Reserved, char16* AdapterName, char16* RequestIdStr);
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpRegisterParamChange(uint32 Flags, void* Reserved, char16* AdapterName, out DHCPCAPI_CLASSID ClassId, DHCPCAPI_PARAMS_ARRAY Params, void* Handle);
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpDeRegisterParamChange(uint32 Flags, void* Reserved, void* Event);
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpRemoveDNSRegistrations();
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetOriginalSubnetMask(char16* sAdapterName, out uint32 dwSubnetMask);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpAddFilterV4(char16* ServerIpAddress, ref DHCP_FILTER_ADD_INFO AddFilterInfo, IntBool ForceFlag);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpDeleteFilterV4(char16* ServerIpAddress, ref DHCP_ADDR_PATTERN DeleteFilterInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetFilterV4(char16* ServerIpAddress, ref DHCP_FILTER_GLOBAL_INFO GlobalFilterInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetFilterV4(char16* ServerIpAddress, out DHCP_FILTER_GLOBAL_INFO GlobalFilterInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumFilterV4(char16* ServerIpAddress, out DHCP_ADDR_PATTERN ResumeHandle, uint32 PreferredMaximum, DHCP_FILTER_LIST_TYPE ListType, out DHCP_FILTER_ENUM_INFO* EnumFilterInfo, out uint32 ElementsRead, out uint32 ElementsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpCreateSubnet(char16* ServerIpAddress, uint32 SubnetAddress, in DHCP_SUBNET_INFO SubnetInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetSubnetInfo(char16* ServerIpAddress, uint32 SubnetAddress, in DHCP_SUBNET_INFO SubnetInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetSubnetInfo(char16* ServerIpAddress, uint32 SubnetAddress, out DHCP_SUBNET_INFO* SubnetInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumSubnets(char16* ServerIpAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_IP_ARRAY* EnumInfo, out uint32 ElementsRead, out uint32 ElementsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpAddSubnetElement(char16* ServerIpAddress, uint32 SubnetAddress, in DHCP_SUBNET_ELEMENT_DATA AddElementInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumSubnetElements(char16* ServerIpAddress, uint32 SubnetAddress, DHCP_SUBNET_ELEMENT_TYPE EnumElementType, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_SUBNET_ELEMENT_INFO_ARRAY* EnumElementInfo, out uint32 ElementsRead, out uint32 ElementsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpRemoveSubnetElement(char16* ServerIpAddress, uint32 SubnetAddress, in DHCP_SUBNET_ELEMENT_DATA RemoveElementInfo, DHCP_FORCE_FLAG ForceFlag);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpDeleteSubnet(char16* ServerIpAddress, uint32 SubnetAddress, DHCP_FORCE_FLAG ForceFlag);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpCreateOption(char16* ServerIpAddress, uint32 OptionID, in DHCP_OPTION OptionInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetOptionInfo(char16* ServerIpAddress, uint32 OptionID, in DHCP_OPTION OptionInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetOptionInfo(char16* ServerIpAddress, uint32 OptionID, out DHCP_OPTION* OptionInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumOptions(char16* ServerIpAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_OPTION_ARRAY* Options, out uint32 OptionsRead, out uint32 OptionsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpRemoveOption(char16* ServerIpAddress, uint32 OptionID);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetOptionValue(char16* ServerIpAddress, uint32 OptionID, in DHCP_OPTION_SCOPE_INFO ScopeInfo, in DHCP_OPTION_DATA OptionValue);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetOptionValues(char16* ServerIpAddress, in DHCP_OPTION_SCOPE_INFO ScopeInfo, in DHCP_OPTION_VALUE_ARRAY OptionValues);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetOptionValue(char16* ServerIpAddress, uint32 OptionID, in DHCP_OPTION_SCOPE_INFO ScopeInfo, out DHCP_OPTION_VALUE* OptionValue);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumOptionValues(char16* ServerIpAddress, in DHCP_OPTION_SCOPE_INFO ScopeInfo, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_OPTION_VALUE_ARRAY* OptionValues, out uint32 OptionsRead, out uint32 OptionsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpRemoveOptionValue(char16* ServerIpAddress, uint32 OptionID, in DHCP_OPTION_SCOPE_INFO ScopeInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpCreateClientInfoVQ(char16* ServerIpAddress, in DHCP_CLIENT_INFO_VQ ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetClientInfoVQ(char16* ServerIpAddress, in DHCP_CLIENT_INFO_VQ ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetClientInfoVQ(char16* ServerIpAddress, in DHCP_SEARCH_INFO SearchInfo, out DHCP_CLIENT_INFO_VQ* ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumSubnetClientsVQ(char16* ServerIpAddress, uint32 SubnetAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_CLIENT_INFO_ARRAY_VQ* ClientInfo, out uint32 ClientsRead, out uint32 ClientsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumSubnetClientsFilterStatusInfo(char16* ServerIpAddress, uint32 SubnetAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_CLIENT_FILTER_STATUS_INFO_ARRAY* ClientInfo, out uint32 ClientsRead, out uint32 ClientsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpCreateClientInfo(char16* ServerIpAddress, in DHCP_CLIENT_INFO ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetClientInfo(char16* ServerIpAddress, in DHCP_CLIENT_INFO ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetClientInfo(char16* ServerIpAddress, in DHCP_SEARCH_INFO SearchInfo, out DHCP_CLIENT_INFO* ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpDeleteClientInfo(char16* ServerIpAddress, in DHCP_SEARCH_INFO ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumSubnetClients(char16* ServerIpAddress, uint32 SubnetAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_CLIENT_INFO_ARRAY* ClientInfo, out uint32 ClientsRead, out uint32 ClientsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetClientOptions(char16* ServerIpAddress, uint32 ClientIpAddress, uint32 ClientSubnetMask, out DHCP_OPTION_LIST* ClientOptions);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetMibInfo(char16* ServerIpAddress, out DHCP_MIB_INFO* MibInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerSetConfig(char16* ServerIpAddress, uint32 FieldsToSet, out DHCP_SERVER_CONFIG_INFO ConfigInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerGetConfig(char16* ServerIpAddress, out DHCP_SERVER_CONFIG_INFO* ConfigInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpScanDatabase(char16* ServerIpAddress, uint32 SubnetAddress, uint32 FixFlag, out DHCP_SCAN_LIST* ScanList);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DhcpRpcFreeMemory(void* BufferPointer);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetVersion(char16* ServerIpAddress, out uint32 MajorVersion, out uint32 MinorVersion);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpAddSubnetElementV4(char16* ServerIpAddress, uint32 SubnetAddress, in DHCP_SUBNET_ELEMENT_DATA_V4 AddElementInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumSubnetElementsV4(char16* ServerIpAddress, uint32 SubnetAddress, DHCP_SUBNET_ELEMENT_TYPE EnumElementType, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_SUBNET_ELEMENT_INFO_ARRAY_V4* EnumElementInfo, out uint32 ElementsRead, out uint32 ElementsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpRemoveSubnetElementV4(char16* ServerIpAddress, uint32 SubnetAddress, in DHCP_SUBNET_ELEMENT_DATA_V4 RemoveElementInfo, DHCP_FORCE_FLAG ForceFlag);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpCreateClientInfoV4(char16* ServerIpAddress, in DHCP_CLIENT_INFO_V4 ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetClientInfoV4(char16* ServerIpAddress, in DHCP_CLIENT_INFO_V4 ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetClientInfoV4(char16* ServerIpAddress, in DHCP_SEARCH_INFO SearchInfo, out DHCP_CLIENT_INFO_V4* ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumSubnetClientsV4(char16* ServerIpAddress, uint32 SubnetAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_CLIENT_INFO_ARRAY_V4* ClientInfo, out uint32 ClientsRead, out uint32 ClientsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerSetConfigV4(char16* ServerIpAddress, uint32 FieldsToSet, out DHCP_SERVER_CONFIG_INFO_V4 ConfigInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerGetConfigV4(char16* ServerIpAddress, out DHCP_SERVER_CONFIG_INFO_V4* ConfigInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetSuperScopeV4(char16* ServerIpAddress, uint32 SubnetAddress, char16* SuperScopeName, IntBool ChangeExisting);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpDeleteSuperScopeV4(char16* ServerIpAddress, char16* SuperScopeName);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetSuperScopeInfoV4(char16* ServerIpAddress, out DHCP_SUPER_SCOPE_TABLE* SuperScopeTable);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumSubnetClientsV5(char16* ServerIpAddress, uint32 SubnetAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_CLIENT_INFO_ARRAY_V5* ClientInfo, out uint32 ClientsRead, out uint32 ClientsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpCreateOptionV5(char16* ServerIpAddress, uint32 Flags, uint32 OptionId, char16* ClassName, char16* VendorName, out DHCP_OPTION OptionInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetOptionInfoV5(char16* ServerIpAddress, uint32 Flags, uint32 OptionID, char16* ClassName, char16* VendorName, out DHCP_OPTION OptionInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetOptionInfoV5(char16* ServerIpAddress, uint32 Flags, uint32 OptionID, char16* ClassName, char16* VendorName, out DHCP_OPTION* OptionInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumOptionsV5(char16* ServerIpAddress, uint32 Flags, char16* ClassName, char16* VendorName, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_OPTION_ARRAY* Options, out uint32 OptionsRead, out uint32 OptionsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpRemoveOptionV5(char16* ServerIpAddress, uint32 Flags, uint32 OptionID, char16* ClassName, char16* VendorName);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetOptionValueV5(char16* ServerIpAddress, uint32 Flags, uint32 OptionId, char16* ClassName, char16* VendorName, out DHCP_OPTION_SCOPE_INFO ScopeInfo, out DHCP_OPTION_DATA OptionValue);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetOptionValuesV5(char16* ServerIpAddress, uint32 Flags, char16* ClassName, char16* VendorName, out DHCP_OPTION_SCOPE_INFO ScopeInfo, out DHCP_OPTION_VALUE_ARRAY OptionValues);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetOptionValueV5(char16* ServerIpAddress, uint32 Flags, uint32 OptionID, char16* ClassName, char16* VendorName, out DHCP_OPTION_SCOPE_INFO ScopeInfo, out DHCP_OPTION_VALUE* OptionValue);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetOptionValueV6(char16* ServerIpAddress, uint32 Flags, uint32 OptionID, char16* ClassName, char16* VendorName, out DHCP_OPTION_SCOPE_INFO6 ScopeInfo, out DHCP_OPTION_VALUE* OptionValue);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumOptionValuesV5(char16* ServerIpAddress, uint32 Flags, char16* ClassName, char16* VendorName, out DHCP_OPTION_SCOPE_INFO ScopeInfo, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_OPTION_VALUE_ARRAY* OptionValues, out uint32 OptionsRead, out uint32 OptionsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpRemoveOptionValueV5(char16* ServerIpAddress, uint32 Flags, uint32 OptionID, char16* ClassName, char16* VendorName, out DHCP_OPTION_SCOPE_INFO ScopeInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpCreateClass(char16* ServerIpAddress, uint32 ReservedMustBeZero, out DHCP_CLASS_INFO ClassInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpModifyClass(char16* ServerIpAddress, uint32 ReservedMustBeZero, out DHCP_CLASS_INFO ClassInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpDeleteClass(char16* ServerIpAddress, uint32 ReservedMustBeZero, char16* ClassName);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetClassInfo(char16* ServerIpAddress, uint32 ReservedMustBeZero, out DHCP_CLASS_INFO PartialClassInfo, out DHCP_CLASS_INFO* FilledClassInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumClasses(char16* ServerIpAddress, uint32 ReservedMustBeZero, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_CLASS_INFO_ARRAY* ClassInfoArray, out uint32 nRead, out uint32 nTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetAllOptions(char16* ServerIpAddress, uint32 Flags, out DHCP_ALL_OPTIONS* OptionStruct);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetAllOptionsV6(char16* ServerIpAddress, uint32 Flags, out DHCP_ALL_OPTIONS* OptionStruct);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetAllOptionValues(char16* ServerIpAddress, uint32 Flags, out DHCP_OPTION_SCOPE_INFO ScopeInfo, out DHCP_ALL_OPTION_VALUES* Values);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetAllOptionValuesV6(char16* ServerIpAddress, uint32 Flags, out DHCP_OPTION_SCOPE_INFO6 ScopeInfo, out DHCP_ALL_OPTION_VALUES* Values);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumServers(uint32 Flags, void* IdInfo, out DHCPDS_SERVERS* Servers, void* CallbackFn, void* CallbackData);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpAddServer(uint32 Flags, void* IdInfo, out DHCPDS_SERVER NewServer, void* CallbackFn, void* CallbackData);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpDeleteServer(uint32 Flags, void* IdInfo, out DHCPDS_SERVER NewServer, void* CallbackFn, void* CallbackData);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetServerBindingInfo(char16* ServerIpAddress, uint32 Flags, out DHCP_BIND_ELEMENT_ARRAY* BindElementsInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetServerBindingInfo(char16* ServerIpAddress, uint32 Flags, out DHCP_BIND_ELEMENT_ARRAY BindElementInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpAddSubnetElementV5(char16* ServerIpAddress, uint32 SubnetAddress, in DHCP_SUBNET_ELEMENT_DATA_V5 AddElementInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumSubnetElementsV5(char16* ServerIpAddress, uint32 SubnetAddress, DHCP_SUBNET_ELEMENT_TYPE EnumElementType, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_SUBNET_ELEMENT_INFO_ARRAY_V5* EnumElementInfo, out uint32 ElementsRead, out uint32 ElementsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpRemoveSubnetElementV5(char16* ServerIpAddress, uint32 SubnetAddress, in DHCP_SUBNET_ELEMENT_DATA_V5 RemoveElementInfo, DHCP_FORCE_FLAG ForceFlag);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4EnumSubnetReservations(char16* ServerIpAddress, uint32 SubnetAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_RESERVATION_INFO_ARRAY* EnumElementInfo, out uint32 ElementsRead, out uint32 ElementsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpCreateOptionV6(char16* ServerIpAddress, uint32 Flags, uint32 OptionId, char16* ClassName, char16* VendorName, out DHCP_OPTION OptionInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpRemoveOptionV6(char16* ServerIpAddress, uint32 Flags, uint32 OptionID, char16* ClassName, char16* VendorName);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumOptionsV6(char16* ServerIpAddress, uint32 Flags, char16* ClassName, char16* VendorName, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_OPTION_ARRAY* Options, out uint32 OptionsRead, out uint32 OptionsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpRemoveOptionValueV6(char16* ServerIpAddress, uint32 Flags, uint32 OptionID, char16* ClassName, char16* VendorName, out DHCP_OPTION_SCOPE_INFO6 ScopeInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetOptionInfoV6(char16* ServerIpAddress, uint32 Flags, uint32 OptionID, char16* ClassName, char16* VendorName, out DHCP_OPTION* OptionInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetOptionInfoV6(char16* ServerIpAddress, uint32 Flags, uint32 OptionID, char16* ClassName, char16* VendorName, out DHCP_OPTION OptionInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetOptionValueV6(char16* ServerIpAddress, uint32 Flags, uint32 OptionId, char16* ClassName, char16* VendorName, out DHCP_OPTION_SCOPE_INFO6 ScopeInfo, out DHCP_OPTION_DATA OptionValue);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetSubnetInfoVQ(char16* ServerIpAddress, uint32 SubnetAddress, out DHCP_SUBNET_INFO_VQ* SubnetInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpCreateSubnetVQ(char16* ServerIpAddress, uint32 SubnetAddress, in DHCP_SUBNET_INFO_VQ SubnetInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetSubnetInfoVQ(char16* ServerIpAddress, uint32 SubnetAddress, in DHCP_SUBNET_INFO_VQ SubnetInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumOptionValuesV6(char16* ServerIpAddress, uint32 Flags, char16* ClassName, char16* VendorName, out DHCP_OPTION_SCOPE_INFO6 ScopeInfo, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_OPTION_VALUE_ARRAY* OptionValues, out uint32 OptionsRead, out uint32 OptionsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpDsInit();
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DhcpDsCleanup();
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetThreadOptions(uint32 Flags, void* Reserved);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetThreadOptions(out uint32 pFlags, void* Reserved);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerQueryAttribute(char16* ServerIpAddr, uint32 dwReserved, uint32 DhcpAttribId, out DHCP_ATTRIB* pDhcpAttrib);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerQueryAttributes(char16* ServerIpAddr, uint32 dwReserved, uint32 dwAttribCount, out uint32 pDhcpAttribs, out DHCP_ATTRIB_ARRAY* pDhcpAttribArr);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerRedoAuthorization(char16* ServerIpAddr, uint32 dwReserved);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpAuditLogSetParams(char16* ServerIpAddress, uint32 Flags, char16* AuditLogDir, uint32 DiskCheckInterval, uint32 MaxLogFilesSize, uint32 MinSpaceOnDisk);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpAuditLogGetParams(char16* ServerIpAddress, uint32 Flags, char16** AuditLogDir, out uint32 DiskCheckInterval, out uint32 MaxLogFilesSize, out uint32 MinSpaceOnDisk);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerQueryDnsRegCredentials(char16* ServerIpAddress, uint32 UnameSize, char16* Uname, uint32 DomainSize, char16* Domain);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerSetDnsRegCredentials(char16* ServerIpAddress, char16* Uname, char16* Domain, char16* Passwd);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerSetDnsRegCredentialsV5(char16* ServerIpAddress, char16* Uname, char16* Domain, char16* Passwd);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerBackupDatabase(char16* ServerIpAddress, char16* Path);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerRestoreDatabase(char16* ServerIpAddress, char16* Path);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerSetConfigVQ(char16* ServerIpAddress, uint32 FieldsToSet, out DHCP_SERVER_CONFIG_INFO_VQ ConfigInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerGetConfigVQ(char16* ServerIpAddress, out DHCP_SERVER_CONFIG_INFO_VQ* ConfigInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetServerSpecificStrings(char16* ServerIpAddress, out DHCP_SERVER_SPECIFIC_STRINGS* ServerSpecificStrings);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DhcpServerAuditlogParamsFree(out DHCP_SERVER_CONFIG_INFO_VQ ConfigInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpCreateSubnetV6(char16* ServerIpAddress, DHCP_IPV6_ADDRESS SubnetAddress, out DHCP_SUBNET_INFO_V6 SubnetInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpDeleteSubnetV6(char16* ServerIpAddress, DHCP_IPV6_ADDRESS SubnetAddress, DHCP_FORCE_FLAG ForceFlag);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumSubnetsV6(char16* ServerIpAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCPV6_IP_ARRAY* EnumInfo, out uint32 ElementsRead, out uint32 ElementsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpAddSubnetElementV6(char16* ServerIpAddress, DHCP_IPV6_ADDRESS SubnetAddress, out DHCP_SUBNET_ELEMENT_DATA_V6 AddElementInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpRemoveSubnetElementV6(char16* ServerIpAddress, DHCP_IPV6_ADDRESS SubnetAddress, out DHCP_SUBNET_ELEMENT_DATA_V6 RemoveElementInfo, DHCP_FORCE_FLAG ForceFlag);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumSubnetElementsV6(char16* ServerIpAddress, DHCP_IPV6_ADDRESS SubnetAddress, DHCP_SUBNET_ELEMENT_TYPE_V6 EnumElementType, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_SUBNET_ELEMENT_INFO_ARRAY_V6* EnumElementInfo, out uint32 ElementsRead, out uint32 ElementsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetSubnetInfoV6(char16* ServerIpAddress, DHCP_IPV6_ADDRESS SubnetAddress, out DHCP_SUBNET_INFO_V6* SubnetInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumSubnetClientsV6(char16* ServerIpAddress, DHCP_IPV6_ADDRESS SubnetAddress, out DHCP_IPV6_ADDRESS ResumeHandle, uint32 PreferredMaximum, out DHCP_CLIENT_INFO_ARRAY_V6* ClientInfo, out uint32 ClientsRead, out uint32 ClientsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerGetConfigV6(char16* ServerIpAddress, out DHCP_OPTION_SCOPE_INFO6 ScopeInfo, out DHCP_SERVER_CONFIG_INFO_V6* ConfigInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpServerSetConfigV6(char16* ServerIpAddress, out DHCP_OPTION_SCOPE_INFO6 ScopeInfo, uint32 FieldsToSet, out DHCP_SERVER_CONFIG_INFO_V6 ConfigInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetSubnetInfoV6(char16* ServerIpAddress, DHCP_IPV6_ADDRESS SubnetAddress, out DHCP_SUBNET_INFO_V6 SubnetInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetMibInfoV6(char16* ServerIpAddress, out DHCP_MIB_INFO_V6* MibInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetServerBindingInfoV6(char16* ServerIpAddress, uint32 Flags, out DHCPV6_BIND_ELEMENT_ARRAY* BindElementsInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetServerBindingInfoV6(char16* ServerIpAddress, uint32 Flags, out DHCPV6_BIND_ELEMENT_ARRAY BindElementInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetClientInfoV6(char16* ServerIpAddress, in DHCP_CLIENT_INFO_V6 ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetClientInfoV6(char16* ServerIpAddress, in DHCP_SEARCH_INFO_V6 SearchInfo, out DHCP_CLIENT_INFO_V6* ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpDeleteClientInfoV6(char16* ServerIpAddress, in DHCP_SEARCH_INFO_V6 ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpCreateClassV6(char16* ServerIpAddress, uint32 ReservedMustBeZero, out DHCP_CLASS_INFO_V6 ClassInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpModifyClassV6(char16* ServerIpAddress, uint32 ReservedMustBeZero, out DHCP_CLASS_INFO_V6 ClassInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpDeleteClassV6(char16* ServerIpAddress, uint32 ReservedMustBeZero, char16* ClassName);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpEnumClassesV6(char16* ServerIpAddress, uint32 ReservedMustBeZero, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_CLASS_INFO_ARRAY_V6* ClassInfoArray, out uint32 nRead, out uint32 nTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpSetSubnetDelayOffer(char16* ServerIpAddress, uint32 SubnetAddress, uint16 TimeDelayInMilliseconds);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetSubnetDelayOffer(char16* ServerIpAddress, uint32 SubnetAddress, out uint16 TimeDelayInMilliseconds);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpGetMibInfoV5(char16* ServerIpAddress, out DHCP_MIB_INFO_V5* MibInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpAddSecurityGroup(char16* pServer);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4GetOptionValue(char16* ServerIpAddress, uint32 Flags, uint32 OptionID, char16* PolicyName, char16* VendorName, out DHCP_OPTION_SCOPE_INFO ScopeInfo, out DHCP_OPTION_VALUE* OptionValue);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4SetOptionValue(char16* ServerIpAddress, uint32 Flags, uint32 OptionId, char16* PolicyName, char16* VendorName, out DHCP_OPTION_SCOPE_INFO ScopeInfo, out DHCP_OPTION_DATA OptionValue);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4SetOptionValues(char16* ServerIpAddress, uint32 Flags, char16* PolicyName, char16* VendorName, out DHCP_OPTION_SCOPE_INFO ScopeInfo, out DHCP_OPTION_VALUE_ARRAY OptionValues);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4RemoveOptionValue(char16* ServerIpAddress, uint32 Flags, uint32 OptionID, char16* PolicyName, char16* VendorName, out DHCP_OPTION_SCOPE_INFO ScopeInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4GetAllOptionValues(char16* ServerIpAddress, uint32 Flags, out DHCP_OPTION_SCOPE_INFO ScopeInfo, out DHCP_ALL_OPTION_VALUES_PB* Values);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4FailoverCreateRelationship(char16* ServerIpAddress, ref DHCP_FAILOVER_RELATIONSHIP pRelationship);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4FailoverSetRelationship(char16* ServerIpAddress, uint32 Flags, ref DHCP_FAILOVER_RELATIONSHIP pRelationship);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4FailoverDeleteRelationship(char16* ServerIpAddress, char16* pRelationshipName);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4FailoverGetRelationship(char16* ServerIpAddress, char16* pRelationshipName, out DHCP_FAILOVER_RELATIONSHIP* pRelationship);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4FailoverEnumRelationship(char16* ServerIpAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_FAILOVER_RELATIONSHIP_ARRAY* pRelationship, out uint32 RelationshipRead, out uint32 RelationshipTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4FailoverAddScopeToRelationship(char16* ServerIpAddress, ref DHCP_FAILOVER_RELATIONSHIP pRelationship);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4FailoverDeleteScopeFromRelationship(char16* ServerIpAddress, ref DHCP_FAILOVER_RELATIONSHIP pRelationship);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4FailoverGetScopeRelationship(char16* ServerIpAddress, uint32 ScopeId, out DHCP_FAILOVER_RELATIONSHIP* pRelationship);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4FailoverGetScopeStatistics(char16* ServerIpAddress, uint32 ScopeId, out DHCP_FAILOVER_STATISTICS* pStats);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4FailoverGetClientInfo(char16* ServerIpAddress, in DHCP_SEARCH_INFO SearchInfo, out DHCPV4_FAILOVER_CLIENT_INFO* ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4FailoverGetSystemTime(char16* ServerIpAddress, out uint32 pTime, out uint32 pMaxAllowedDeltaTime);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4FailoverGetAddressStatus(char16* ServerIpAddress, uint32 SubnetAddress, out uint32 pStatus);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4FailoverTriggerAddrAllocation(char16* ServerIpAddress, char16* pFailRelName);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpHlprCreateV4Policy(char16* PolicyName, IntBool fGlobalPolicy, uint32 Subnet, uint32 ProcessingOrder, DHCP_POL_LOGIC_OPER RootOperator, char16* Description, IntBool Enabled, out DHCP_POLICY* Policy);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpHlprCreateV4PolicyEx(char16* PolicyName, IntBool fGlobalPolicy, uint32 Subnet, uint32 ProcessingOrder, DHCP_POL_LOGIC_OPER RootOperator, char16* Description, IntBool Enabled, out DHCP_POLICY_EX* Policy);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpHlprAddV4PolicyExpr(out DHCP_POLICY Policy, uint32 ParentExpr, DHCP_POL_LOGIC_OPER Operator, out uint32 ExprIndex);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpHlprAddV4PolicyCondition(out DHCP_POLICY Policy, uint32 ParentExpr, DHCP_POL_ATTR_TYPE Type, uint32 OptionID, uint32 SubOptionID, char16* VendorName, DHCP_POL_COMPARATOR Operator, ref uint8 Value, uint32 ValueLength, out uint32 ConditionIndex);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpHlprAddV4PolicyRange(out DHCP_POLICY Policy, ref DHCP_IP_RANGE Range);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpHlprResetV4PolicyExpr(out DHCP_POLICY Policy);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpHlprModifyV4PolicyExpr(out DHCP_POLICY Policy, DHCP_POL_LOGIC_OPER Operator);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DhcpHlprFreeV4Policy(out DHCP_POLICY Policy);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DhcpHlprFreeV4PolicyArray(out DHCP_POLICY_ARRAY PolicyArray);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DhcpHlprFreeV4PolicyEx(out DHCP_POLICY_EX PolicyEx);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DhcpHlprFreeV4PolicyExArray(out DHCP_POLICY_EX_ARRAY PolicyExArray);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DhcpHlprFreeV4DhcpProperty(out DHCP_PROPERTY Property);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DhcpHlprFreeV4DhcpPropertyArray(out DHCP_PROPERTY_ARRAY PropertyArray);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern DHCP_PROPERTY* DhcpHlprFindV4DhcpProperty(ref DHCP_PROPERTY_ARRAY PropertyArray, DHCP_PROPERTY_ID ID, DHCP_PROPERTY_TYPE Type);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DhcpHlprIsV4PolicySingleUC(ref DHCP_POLICY Policy);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4QueryPolicyEnforcement(char16* ServerIpAddress, IntBool fGlobalPolicy, uint32 SubnetAddress, out IntBool Enabled);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4SetPolicyEnforcement(char16* ServerIpAddress, IntBool fGlobalPolicy, uint32 SubnetAddress, IntBool Enable);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DhcpHlprIsV4PolicyWellFormed(ref DHCP_POLICY pPolicy);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpHlprIsV4PolicyValid(ref DHCP_POLICY pPolicy);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4CreatePolicy(char16* ServerIpAddress, ref DHCP_POLICY pPolicy);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4GetPolicy(char16* ServerIpAddress, IntBool fGlobalPolicy, uint32 SubnetAddress, char16* PolicyName, out DHCP_POLICY* Policy);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4SetPolicy(char16* ServerIpAddress, uint32 FieldsModified, IntBool fGlobalPolicy, uint32 SubnetAddress, char16* PolicyName, ref DHCP_POLICY Policy);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4DeletePolicy(char16* ServerIpAddress, IntBool fGlobalPolicy, uint32 SubnetAddress, char16* PolicyName);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4EnumPolicies(char16* ServerIpAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, IntBool fGlobalPolicy, uint32 SubnetAddress, out DHCP_POLICY_ARRAY* EnumInfo, out uint32 ElementsRead, out uint32 ElementsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4AddPolicyRange(char16* ServerIpAddress, uint32 SubnetAddress, char16* PolicyName, ref DHCP_IP_RANGE Range);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4RemovePolicyRange(char16* ServerIpAddress, uint32 SubnetAddress, char16* PolicyName, ref DHCP_IP_RANGE Range);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV6SetStatelessStoreParams(char16* ServerIpAddress, IntBool fServerLevel, DHCP_IPV6_ADDRESS SubnetAddress, uint32 FieldModified, ref DHCPV6_STATELESS_PARAMS Params);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV6GetStatelessStoreParams(char16* ServerIpAddress, IntBool fServerLevel, DHCP_IPV6_ADDRESS SubnetAddress, out DHCPV6_STATELESS_PARAMS* Params);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV6GetStatelessStatistics(char16* ServerIpAddress, out DHCPV6_STATELESS_STATS* StatelessStats);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4CreateClientInfo(char16* ServerIpAddress, in DHCP_CLIENT_INFO_PB ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4EnumSubnetClients(char16* ServerIpAddress, uint32 SubnetAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_CLIENT_INFO_PB_ARRAY* ClientInfo, out uint32 ClientsRead, out uint32 ClientsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4GetClientInfo(char16* ServerIpAddress, in DHCP_SEARCH_INFO SearchInfo, out DHCP_CLIENT_INFO_PB* ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV6CreateClientInfo(char16* ServerIpAddress, in DHCP_CLIENT_INFO_V6 ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4GetFreeIPAddress(char16* ServerIpAddress, uint32 ScopeId, uint32 StartIP, uint32 EndIP, uint32 NumFreeAddrReq, out DHCP_IP_ARRAY* IPAddrList);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV6GetFreeIPAddress(char16* ServerIpAddress, DHCP_IPV6_ADDRESS ScopeId, DHCP_IPV6_ADDRESS StartIP, DHCP_IPV6_ADDRESS EndIP, uint32 NumFreeAddrReq, out DHCPV6_IP_ARRAY* IPAddrList);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4CreateClientInfoEx(char16* ServerIpAddress, in DHCP_CLIENT_INFO_EX ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4EnumSubnetClientsEx(char16* ServerIpAddress, uint32 SubnetAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, out DHCP_CLIENT_INFO_EX_ARRAY* ClientInfo, out uint32 ClientsRead, out uint32 ClientsTotal);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4GetClientInfoEx(char16* ServerIpAddress, in DHCP_SEARCH_INFO SearchInfo, out DHCP_CLIENT_INFO_EX* ClientInfo);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4CreatePolicyEx(char16* ServerIpAddress, ref DHCP_POLICY_EX PolicyEx);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4GetPolicyEx(char16* ServerIpAddress, IntBool GlobalPolicy, uint32 SubnetAddress, char16* PolicyName, out DHCP_POLICY_EX* Policy);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4SetPolicyEx(char16* ServerIpAddress, uint32 FieldsModified, IntBool GlobalPolicy, uint32 SubnetAddress, char16* PolicyName, ref DHCP_POLICY_EX Policy);
		[Import("dhcpsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DhcpV4EnumPoliciesEx(char16* ServerIpAddress, out uint32 ResumeHandle, uint32 PreferredMaximum, IntBool GlobalPolicy, uint32 SubnetAddress, out DHCP_POLICY_EX_ARRAY* EnumInfo, out uint32 ElementsRead, out uint32 ElementsTotal);
	}
}
