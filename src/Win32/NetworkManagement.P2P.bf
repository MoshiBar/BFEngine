using System;

// namespace NetworkManagement.P2P
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 NS_PNRPNAME = 38;
		public const uint32 NS_PNRPCLOUD = 39;
		public const uint32 PNRPINFO_HINT = 1;
		public const Guid NS_PROVIDER_PNRPNAME = .(0x03fe89cd, 0x766d, 0x4976, 0xb9, 0xc1, 0xbb, 0x9b, 0xc4, 0x2c, 0x7b, 0x4d);
		public const Guid NS_PROVIDER_PNRPCLOUD = .(0x03fe89ce, 0x766d, 0x4976, 0xb9, 0xc1, 0xbb, 0x9b, 0xc4, 0x2c, 0x7b, 0x4d);
		public const Guid SVCID_PNRPCLOUD = .(0xc2239ce6, 0x00c0, 0x4fbf, 0xba, 0xd6, 0x18, 0x13, 0x93, 0x85, 0xa4, 0x9a);
		public const Guid SVCID_PNRPNAME_V1 = .(0xc2239ce5, 0x00c0, 0x4fbf, 0xba, 0xd6, 0x18, 0x13, 0x93, 0x85, 0xa4, 0x9a);
		public const Guid SVCID_PNRPNAME_V2 = .(0xc2239ce7, 0x00c0, 0x4fbf, 0xba, 0xd6, 0x18, 0x13, 0x93, 0x85, 0xa4, 0x9a);
		public const uint32 PNRP_MAX_ENDPOINT_ADDRESSES = 10;
		public const uint32 PNRP_MAX_EXTENDED_PAYLOAD_BYTES = 4096;
		public const uint32 WSA_PNRP_ERROR_BASE = 11500;
		public const uint32 WSA_PNRP_CLOUD_NOT_FOUND = 11501;
		public const uint32 WSA_PNRP_CLOUD_DISABLED = 11502;
		public const uint32 WSA_PNRP_INVALID_IDENTITY = 11503;
		public const uint32 WSA_PNRP_TOO_MUCH_LOAD = 11504;
		public const uint32 WSA_PNRP_CLOUD_IS_SEARCH_ONLY = 11505;
		public const uint32 WSA_PNRP_CLIENT_INVALID_COMPARTMENT_ID = 11506;
		public const uint32 WSA_PNRP_DUPLICATE_PEER_NAME = 11508;
		public const uint32 WSA_PNRP_CLOUD_IS_DEAD = 11509;
		public const HResult PEER_E_CLOUD_NOT_FOUND = -2147013395;
		public const HResult PEER_E_CLOUD_DISABLED = -2147013394;
		public const HResult PEER_E_INVALID_IDENTITY = -2147013393;
		public const HResult PEER_E_TOO_MUCH_LOAD = -2147013392;
		public const HResult PEER_E_CLOUD_IS_SEARCH_ONLY = -2147013391;
		public const HResult PEER_E_CLIENT_INVALID_COMPARTMENT_ID = -2147013390;
		public const HResult PEER_E_DUPLICATE_PEER_NAME = -2147013388;
		public const HResult PEER_E_CLOUD_IS_DEAD = -2147013387;
		public const HResult PEER_E_NOT_FOUND = -2147023728;
		public const HResult PEER_E_DISK_FULL = -2147024784;
		public const HResult PEER_E_ALREADY_EXISTS = -2147024713;
		public const Guid PEER_GROUP_ROLE_ADMIN = .(0x04387127, 0xaa56, 0x450a, 0x8c, 0xe5, 0x4f, 0x56, 0x5c, 0x67, 0x90, 0xf4);
		public const Guid PEER_GROUP_ROLE_MEMBER = .(0xf12dc4c7, 0x0857, 0x4ca0, 0x93, 0xfc, 0xb1, 0xbb, 0x19, 0xa3, 0xd8, 0xc2);
		public const Guid PEER_GROUP_ROLE_INVITING_MEMBER = .(0x4370fd89, 0xdc18, 0x4cfb, 0x8d, 0xbf, 0x98, 0x53, 0xa8, 0xa9, 0xf9, 0x05);
		public const Guid PEER_COLLAB_OBJECTID_USER_PICTURE = .(0xdd15f41f, 0xfc4e, 0x4922, 0xb0, 0x35, 0x4c, 0x06, 0xa7, 0x54, 0xd0, 0x1d);
		public const uint32 FACILITY_DRT = 98;
		public const HResult DRT_E_TIMEOUT = -2141057023;
		public const HResult DRT_E_INVALID_KEY_SIZE = -2141057022;
		public const HResult DRT_E_INVALID_CERT_CHAIN = -2141057020;
		public const HResult DRT_E_INVALID_MESSAGE = -2141057019;
		public const HResult DRT_E_NO_MORE = -2141057018;
		public const HResult DRT_E_INVALID_MAX_ADDRESSES = -2141057017;
		public const HResult DRT_E_SEARCH_IN_PROGRESS = -2141057016;
		public const HResult DRT_E_INVALID_KEY = -2141057015;
		public const HResult DRT_S_RETRY = 6426640;
		public const HResult DRT_E_INVALID_MAX_ENDPOINTS = -2141057007;
		public const HResult DRT_E_INVALID_SEARCH_RANGE = -2141057006;
		public const HResult DRT_E_INVALID_PORT = -2141052928;
		public const HResult DRT_E_INVALID_TRANSPORT_PROVIDER = -2141052927;
		public const HResult DRT_E_INVALID_SECURITY_PROVIDER = -2141052926;
		public const HResult DRT_E_STILL_IN_USE = -2141052925;
		public const HResult DRT_E_INVALID_BOOTSTRAP_PROVIDER = -2141052924;
		public const HResult DRT_E_INVALID_ADDRESS = -2141052923;
		public const HResult DRT_E_INVALID_SCOPE = -2141052922;
		public const HResult DRT_E_TRANSPORT_SHUTTING_DOWN = -2141052921;
		public const HResult DRT_E_NO_ADDRESSES_AVAILABLE = -2141052920;
		public const HResult DRT_E_DUPLICATE_KEY = -2141052919;
		public const HResult DRT_E_TRANSPORTPROVIDER_IN_USE = -2141052918;
		public const HResult DRT_E_TRANSPORTPROVIDER_NOT_ATTACHED = -2141052917;
		public const HResult DRT_E_SECURITYPROVIDER_IN_USE = -2141052916;
		public const HResult DRT_E_SECURITYPROVIDER_NOT_ATTACHED = -2141052915;
		public const HResult DRT_E_BOOTSTRAPPROVIDER_IN_USE = -2141052914;
		public const HResult DRT_E_BOOTSTRAPPROVIDER_NOT_ATTACHED = -2141052913;
		public const HResult DRT_E_TRANSPORT_ALREADY_BOUND = -2141052671;
		public const HResult DRT_E_TRANSPORT_NOT_BOUND = -2141052670;
		public const HResult DRT_E_TRANSPORT_UNEXPECTED = -2141052669;
		public const HResult DRT_E_TRANSPORT_INVALID_ARGUMENT = -2141052668;
		public const HResult DRT_E_TRANSPORT_NO_DEST_ADDRESSES = -2141052667;
		public const HResult DRT_E_TRANSPORT_EXECUTING_CALLBACK = -2141052666;
		public const HResult DRT_E_TRANSPORT_ALREADY_EXISTS_FOR_SCOPE = -2141052665;
		public const HResult DRT_E_INVALID_SETTINGS = -2141052664;
		public const HResult DRT_E_INVALID_SEARCH_INFO = -2141052663;
		public const HResult DRT_E_FAULTED = -2141052662;
		public const HResult DRT_E_TRANSPORT_STILL_BOUND = -2141052661;
		public const HResult DRT_E_INSUFFICIENT_BUFFER = -2141052660;
		public const HResult DRT_E_INVALID_INSTANCE_PREFIX = -2141052659;
		public const HResult DRT_E_INVALID_SECURITY_MODE = -2141052658;
		public const HResult DRT_E_CAPABILITY_MISMATCH = -2141052657;
		public const uint32 DRT_PAYLOAD_REVOKED = 1;
		public const uint32 DRT_MIN_ROUTING_ADDRESSES = 1;
		public const uint32 DRT_MAX_ROUTING_ADDRESSES = 20;
		public const uint32 DRT_MAX_PAYLOAD_SIZE = 5120;
		public const uint32 DRT_MAX_INSTANCE_PREFIX_LEN = 128;
		public const uint32 DRT_LINK_LOCAL_ISATAP_SCOPEID = 4294967295;
		public const int32 PEERDIST_PUBLICATION_OPTIONS_VERSION_1 = 1;
		public const int32 PEERDIST_PUBLICATION_OPTIONS_VERSION = 2;
		public const int32 PEERDIST_PUBLICATION_OPTIONS_VERSION_2 = 2;
		public const uint32 PEERDIST_READ_TIMEOUT_LOCAL_CACHE_ONLY = 0;
		public const uint32 PEERDIST_READ_TIMEOUT_DEFAULT = 4294967294;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum PEERDIST_RETRIEVAL_OPTIONS_CONTENTINFO_VERSION_VALUE : uint32
		{
			VERSION_1 = 1,
			VERSION_2 = 2,
			VERSION = 2,
		}
		public enum PNRP_SCOPE : int32
		{
			SCOPE_ANY = 0,
			GLOBAL_SCOPE = 1,
			SITE_LOCAL_SCOPE = 2,
			LINK_LOCAL_SCOPE = 3,
		}
		public enum PNRP_CLOUD_STATE : int32
		{
			VIRTUAL = 0,
			SYNCHRONISING = 1,
			ACTIVE = 2,
			DEAD = 3,
			DISABLED = 4,
			NO_NET = 5,
			ALONE = 6,
		}
		public enum PNRP_CLOUD_FLAGS : int32
		{
			NO_FLAGS = 0,
			NAME_LOCAL = 1,
			RESOLVE_ONLY = 2,
			FULL_PARTICIPANT = 4,
		}
		public enum PNRP_REGISTERED_ID_STATE : int32
		{
			OK = 1,
			PROBLEM = 2,
		}
		public enum PNRP_RESOLVE_CRITERIA : int32
		{
			DEFAULT = 0,
			REMOTE_PEER_NAME = 1,
			NEAREST_REMOTE_PEER_NAME = 2,
			NON_CURRENT_PROCESS_PEER_NAME = 3,
			NEAREST_NON_CURRENT_PROCESS_PEER_NAME = 4,
			ANY_PEER_NAME = 5,
			NEAREST_PEER_NAME = 6,
		}
		public enum PNRP_EXTENDED_PAYLOAD_TYPE : int32
		{
			NONE = 0,
			BINARY = 1,
			STRING = 2,
		}
		public enum PEER_RECORD_CHANGE_TYPE : int32
		{
			ADDED = 1,
			UPDATED = 2,
			DELETED = 3,
			EXPIRED = 4,
		}
		public enum PEER_CONNECTION_STATUS : int32
		{
			CONNECTED = 1,
			DISCONNECTED = 2,
			CONNECTION_FAILED = 3,
		}
		public enum PEER_CONNECTION_FLAGS : int32
		{
			NEIGHBOR = 1,
			DIRECT = 2,
		}
		public enum PEER_RECORD_FLAGS : int32
		{
			AUTOREFRESH = 1,
			DELETED = 2,
		}
		public enum PEER_GRAPH_EVENT_TYPE : int32
		{
			STATUS_CHANGED = 1,
			PROPERTY_CHANGED = 2,
			RECORD_CHANGED = 3,
			DIRECT_CONNECTION = 4,
			NEIGHBOR_CONNECTION = 5,
			INCOMING_DATA = 6,
			CONNECTION_REQUIRED = 7,
			NODE_CHANGED = 8,
			SYNCHRONIZED = 9,
		}
		public enum PEER_NODE_CHANGE_TYPE : int32
		{
			CONNECTED = 1,
			DISCONNECTED = 2,
			UPDATED = 3,
		}
		public enum PEER_GRAPH_STATUS_FLAGS : int32
		{
			LISTENING = 1,
			HAS_CONNECTIONS = 2,
			SYNCHRONIZED = 4,
		}
		public enum PEER_GRAPH_PROPERTY_FLAGS : int32
		{
			HEARTBEATS = 1,
			DEFER_EXPIRATION = 2,
		}
		public enum PEER_GRAPH_SCOPE : int32
		{
			ANY = 0,
			GLOBAL = 1,
			SITELOCAL = 2,
			LINKLOCAL = 3,
			LOOPBACK = 4,
		}
		public enum PEER_GROUP_EVENT_TYPE : int32
		{
			STATUS_CHANGED = 1,
			PROPERTY_CHANGED = 2,
			RECORD_CHANGED = 3,
			DIRECT_CONNECTION = 4,
			NEIGHBOR_CONNECTION = 5,
			INCOMING_DATA = 6,
			MEMBER_CHANGED = 8,
			CONNECTION_FAILED = 10,
			AUTHENTICATION_FAILED = 11,
		}
		public enum PEER_GROUP_STATUS : int32
		{
			LISTENING = 1,
			HAS_CONNECTIONS = 2,
		}
		public enum PEER_GROUP_PROPERTY_FLAGS : int32
		{
			MEMBER_DATA_OPTIONAL = 1,
			DISABLE_PRESENCE = 2,
			DEFER_EXPIRATION = 4,
		}
		public enum PEER_GROUP_AUTHENTICATION_SCHEME : int32
		{
			GMC_AUTHENTICATION = 1,
			PASSWORD_AUTHENTICATION = 2,
		}
		public enum PEER_MEMBER_FLAGS : int32
		{
			PRESENT = 1,
		}
		public enum PEER_MEMBER_CHANGE_TYPE : int32
		{
			CONNECTED = 1,
			DISCONNECTED = 2,
			UPDATED = 3,
			JOINED = 4,
			LEFT = 5,
		}
		public enum PEER_GROUP_ISSUE_CREDENTIAL_FLAGS : int32
		{
			STORE_CREDENTIALS = 1,
		}
		public enum PEER_SIGNIN_FLAGS : int32
		{
			NONE = 0,
			NEAR_ME = 1,
			INTERNET = 2,
			ALL = 3,
		}
		public enum PEER_WATCH_PERMISSION : int32
		{
			BLOCKED = 0,
			ALLOWED = 1,
		}
		public enum PEER_PUBLICATION_SCOPE : int32
		{
			NONE = 0,
			NEAR_ME = 1,
			INTERNET = 2,
			ALL = 3,
		}
		public enum PEER_INVITATION_RESPONSE_TYPE : int32
		{
			DECLINED = 0,
			ACCEPTED = 1,
			EXPIRED = 2,
			ERROR = 3,
		}
		public enum PEER_APPLICATION_REGISTRATION_TYPE : int32
		{
			CURRENT_USER = 0,
			ALL_USERS = 1,
		}
		public enum PEER_PRESENCE_STATUS : int32
		{
			OFFLINE = 0,
			OUT_TO_LUNCH = 1,
			AWAY = 2,
			BE_RIGHT_BACK = 3,
			IDLE = 4,
			BUSY = 5,
			ON_THE_PHONE = 6,
			ONLINE = 7,
		}
		public enum PEER_CHANGE_TYPE : int32
		{
			ADDED = 0,
			DELETED = 1,
			UPDATED = 2,
		}
		public enum PEER_COLLAB_EVENT_TYPE : int32
		{
			WATCHLIST_CHANGED = 1,
			ENDPOINT_CHANGED = 2,
			ENDPOINT_PRESENCE_CHANGED = 3,
			ENDPOINT_APPLICATION_CHANGED = 4,
			ENDPOINT_OBJECT_CHANGED = 5,
			MY_ENDPOINT_CHANGED = 6,
			MY_PRESENCE_CHANGED = 7,
			MY_APPLICATION_CHANGED = 8,
			MY_OBJECT_CHANGED = 9,
			PEOPLE_NEAR_ME_CHANGED = 10,
			REQUEST_STATUS_CHANGED = 11,
		}
		public enum DRT_SCOPE : int32
		{
			GLOBAL_SCOPE = 1,
			SITE_LOCAL_SCOPE = 2,
			LINK_LOCAL_SCOPE = 3,
		}
		public enum DRT_STATUS : int32
		{
			ACTIVE = 0,
			ALONE = 1,
			NO_NETWORK = 10,
			FAULTED = 20,
		}
		public enum DRT_MATCH_TYPE : int32
		{
			EXACT = 0,
			NEAR = 1,
			INTERMEDIATE = 2,
		}
		public enum DRT_LEAFSET_KEY_CHANGE_TYPE : int32
		{
			ADDED = 0,
			DELETED = 1,
		}
		public enum DRT_EVENT_TYPE : int32
		{
			STATUS_CHANGED = 0,
			LEAFSET_KEY_CHANGED = 1,
			REGISTRATION_STATE_CHANGED = 2,
		}
		public enum DRT_SECURITY_MODE : int32
		{
			RESOLVE = 0,
			MEMBERSHIP = 1,
			CONFIDENTIALPAYLOAD = 2,
		}
		public enum DRT_REGISTRATION_STATE : int32
		{
			STATE_UNRESOLVEABLE = 1,
		}
		public enum DRT_ADDRESS_FLAGS : int32
		{
			ACCEPTED = 1,
			REJECTED = 2,
			UNREACHABLE = 4,
			LOOP = 8,
			TOO_BUSY = 16,
			BAD_VALIDATE_ID = 32,
			SUSPECT_UNREGISTERED_ID = 64,
			INQUIRE = 128,
		}
		public enum PEERDIST_STATUS : int32
		{
			DISABLED = 0,
			UNAVAILABLE = 1,
			AVAILABLE = 2,
		}
		public enum PEERDIST_CLIENT_INFO_BY_HANDLE_CLASS : int32
		{
			PeerDistClientBasicInfo = 0,
			MaximumPeerDistClientInfoByHandlesClass = 1,
		}
		
		// --- Function Pointers ---
		
		public function HResult PFNPEER_VALIDATE_RECORD(void* hGraph, void* pvContext, ref PEER_RECORD pRecord, PEER_RECORD_CHANGE_TYPE changeType);
		public function HResult PFNPEER_SECURE_RECORD(void* hGraph, void* pvContext, ref PEER_RECORD pRecord, PEER_RECORD_CHANGE_TYPE changeType, out PEER_DATA* ppSecurityData);
		public function HResult PFNPEER_FREE_SECURITY_DATA(void* hGraph, void* pvContext, ref PEER_DATA pSecurityData);
		public function HResult PFNPEER_ON_PASSWORD_AUTH_FAILED(void* hGraph, void* pvContext);
		public function void DRT_BOOTSTRAP_RESOLVE_CALLBACK(HResult hr, void* pvContext, out SOCKET_ADDRESS_LIST pAddresses, IntBool fFatalError);
		
		// --- Structs ---
		
		[CRepr]
		public struct PNRP_CLOUD_ID
		{
			public int32 AddressFamily;
			public PNRP_SCOPE Scope;
			public uint32 ScopeId;
		}
		[CRepr]
		public struct PNRPINFO_V1
		{
			public uint32 dwSize;
			public char16* lpwszIdentity;
			public uint32 nMaxResolve;
			public uint32 dwTimeout;
			public uint32 dwLifetime;
			public PNRP_RESOLVE_CRITERIA enResolveCriteria;
			public uint32 dwFlags;
			public SOCKET_ADDRESS saHint;
			public PNRP_REGISTERED_ID_STATE enNameState;
		}
		[CRepr]
		public struct PNRPINFO_V2
		{
			public uint32 dwSize;
			public char16* lpwszIdentity;
			public uint32 nMaxResolve;
			public uint32 dwTimeout;
			public uint32 dwLifetime;
			public PNRP_RESOLVE_CRITERIA enResolveCriteria;
			public uint32 dwFlags;
			public SOCKET_ADDRESS saHint;
			public PNRP_REGISTERED_ID_STATE enNameState;
			public PNRP_EXTENDED_PAYLOAD_TYPE enExtendedPayloadType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public BLOB blobPayload;
				public char16* pwszPayload;
			}
		}
		[CRepr]
		public struct PNRPCLOUDINFO
		{
			public uint32 dwSize;
			public PNRP_CLOUD_ID Cloud;
			public PNRP_CLOUD_STATE enCloudState;
			public PNRP_CLOUD_FLAGS enCloudFlags;
		}
		[CRepr]
		public struct PEER_VERSION_DATA
		{
			public uint16 wVersion;
			public uint16 wHighestVersion;
		}
		[CRepr]
		public struct PEER_DATA
		{
			public uint32 cbData;
			public uint8* pbData;
		}
		[CRepr]
		public struct PEER_RECORD
		{
			public uint32 dwSize;
			public Guid type;
			public Guid id;
			public uint32 dwVersion;
			public uint32 dwFlags;
			public char16* pwzCreatorId;
			public char16* pwzModifiedById;
			public char16* pwzAttributes;
			public FileTime ftCreation;
			public FileTime ftExpiration;
			public FileTime ftLastModified;
			public PEER_DATA securityData;
			public PEER_DATA data;
		}
		[CRepr]
		public struct PEER_ADDRESS
		{
			public uint32 dwSize;
			public SOCKADDR_IN6 sin6;
		}
		[CRepr]
		public struct PEER_CONNECTION_INFO
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint64 ullConnectionId;
			public uint64 ullNodeId;
			public char16* pwzPeerId;
			public PEER_ADDRESS address;
		}
		[CRepr]
		public struct PEER_EVENT_INCOMING_DATA
		{
			public uint32 dwSize;
			public uint64 ullConnectionId;
			public Guid type;
			public PEER_DATA data;
		}
		[CRepr]
		public struct PEER_EVENT_RECORD_CHANGE_DATA
		{
			public uint32 dwSize;
			public PEER_RECORD_CHANGE_TYPE changeType;
			public Guid recordId;
			public Guid recordType;
		}
		[CRepr]
		public struct PEER_EVENT_CONNECTION_CHANGE_DATA
		{
			public uint32 dwSize;
			public PEER_CONNECTION_STATUS status;
			public uint64 ullConnectionId;
			public uint64 ullNodeId;
			public uint64 ullNextConnectionId;
			public HResult hrConnectionFailedReason;
		}
		[CRepr]
		public struct PEER_EVENT_SYNCHRONIZED_DATA
		{
			public uint32 dwSize;
			public Guid recordType;
		}
		[CRepr]
		public struct PEER_GRAPH_PROPERTIES
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 dwScope;
			public uint32 dwMaxRecordSize;
			public char16* pwzGraphId;
			public char16* pwzCreatorId;
			public char16* pwzFriendlyName;
			public char16* pwzComment;
			public uint32 ulPresenceLifetime;
			public uint32 cPresenceMax;
		}
		[CRepr]
		public struct PEER_NODE_INFO
		{
			public uint32 dwSize;
			public uint64 ullNodeId;
			public char16* pwzPeerId;
			public uint32 cAddresses;
			public PEER_ADDRESS* pAddresses;
			public char16* pwzAttributes;
		}
		[CRepr]
		public struct PEER_EVENT_NODE_CHANGE_DATA
		{
			public uint32 dwSize;
			public PEER_NODE_CHANGE_TYPE changeType;
			public uint64 ullNodeId;
			public char16* pwzPeerId;
		}
		[CRepr]
		public struct PEER_GRAPH_EVENT_REGISTRATION
		{
			public PEER_GRAPH_EVENT_TYPE eventType;
			public Guid* pType;
		}
		[CRepr]
		public struct PEER_GRAPH_EVENT_DATA
		{
			public PEER_GRAPH_EVENT_TYPE eventType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PEER_GRAPH_STATUS_FLAGS dwStatus;
				public PEER_EVENT_INCOMING_DATA incomingData;
				public PEER_EVENT_RECORD_CHANGE_DATA recordChangeData;
				public PEER_EVENT_CONNECTION_CHANGE_DATA connectionChangeData;
				public PEER_EVENT_NODE_CHANGE_DATA nodeChangeData;
				public PEER_EVENT_SYNCHRONIZED_DATA synchronizedData;
			}
		}
		[CRepr]
		public struct PEER_SECURITY_INTERFACE
		{
			public uint32 dwSize;
			public char16* pwzSspFilename;
			public char16* pwzPackageName;
			public uint32 cbSecurityInfo;
			public uint8* pbSecurityInfo;
			public void* pvContext;
			public PFNPEER_VALIDATE_RECORD pfnValidateRecord;
			public PFNPEER_SECURE_RECORD pfnSecureRecord;
			public PFNPEER_FREE_SECURITY_DATA pfnFreeSecurityData;
			public PFNPEER_ON_PASSWORD_AUTH_FAILED pfnAuthFailed;
		}
		[CRepr]
		public struct PEER_CREDENTIAL_INFO
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public char16* pwzFriendlyName;
			public CERT_PUBLIC_KEY_INFO* pPublicKey;
			public char16* pwzIssuerPeerName;
			public char16* pwzIssuerFriendlyName;
			public FileTime ftValidityStart;
			public FileTime ftValidityEnd;
			public uint32 cRoles;
			public Guid* pRoles;
		}
		[CRepr]
		public struct PEER_MEMBER
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public char16* pwzIdentity;
			public char16* pwzAttributes;
			public uint64 ullNodeId;
			public uint32 cAddresses;
			public PEER_ADDRESS* pAddresses;
			public PEER_CREDENTIAL_INFO* pCredentialInfo;
		}
		[CRepr]
		public struct PEER_INVITATION_INFO
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public char16* pwzCloudName;
			public uint32 dwScope;
			public uint32 dwCloudFlags;
			public char16* pwzGroupPeerName;
			public char16* pwzIssuerPeerName;
			public char16* pwzSubjectPeerName;
			public char16* pwzGroupFriendlyName;
			public char16* pwzIssuerFriendlyName;
			public char16* pwzSubjectFriendlyName;
			public FileTime ftValidityStart;
			public FileTime ftValidityEnd;
			public uint32 cRoles;
			public Guid* pRoles;
			public uint32 cClassifiers;
			public char16** ppwzClassifiers;
			public CERT_PUBLIC_KEY_INFO* pSubjectPublicKey;
			public PEER_GROUP_AUTHENTICATION_SCHEME authScheme;
		}
		[CRepr]
		public struct PEER_GROUP_PROPERTIES
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public char16* pwzCloud;
			public char16* pwzClassifier;
			public char16* pwzGroupPeerName;
			public char16* pwzCreatorPeerName;
			public char16* pwzFriendlyName;
			public char16* pwzComment;
			public uint32 ulMemberDataLifetime;
			public uint32 ulPresenceLifetime;
			public uint32 dwAuthenticationSchemes;
			public char16* pwzGroupPassword;
			public Guid groupPasswordRole;
		}
		[CRepr]
		public struct PEER_EVENT_MEMBER_CHANGE_DATA
		{
			public uint32 dwSize;
			public PEER_MEMBER_CHANGE_TYPE changeType;
			public char16* pwzIdentity;
		}
		[CRepr]
		public struct PEER_GROUP_EVENT_REGISTRATION
		{
			public PEER_GROUP_EVENT_TYPE eventType;
			public Guid* pType;
		}
		[CRepr]
		public struct PEER_GROUP_EVENT_DATA
		{
			public PEER_GROUP_EVENT_TYPE eventType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PEER_GROUP_STATUS dwStatus;
				public PEER_EVENT_INCOMING_DATA incomingData;
				public PEER_EVENT_RECORD_CHANGE_DATA recordChangeData;
				public PEER_EVENT_CONNECTION_CHANGE_DATA connectionChangeData;
				public PEER_EVENT_MEMBER_CHANGE_DATA memberChangeData;
				public HResult hrConnectionFailedReason;
			}
		}
		[CRepr]
		public struct PEER_NAME_PAIR
		{
			public uint32 dwSize;
			public char16* pwzPeerName;
			public char16* pwzFriendlyName;
		}
		[CRepr]
		public struct PEER_APPLICATION
		{
			public Guid id;
			public PEER_DATA data;
			public char16* pwzDescription;
		}
		[CRepr]
		public struct PEER_OBJECT
		{
			public Guid id;
			public PEER_DATA data;
			public uint32 dwPublicationScope;
		}
		[CRepr]
		public struct PEER_CONTACT
		{
			public char16* pwzPeerName;
			public char16* pwzNickName;
			public char16* pwzDisplayName;
			public char16* pwzEmailAddress;
			public IntBool fWatch;
			public PEER_WATCH_PERMISSION WatcherPermissions;
			public PEER_DATA credentials;
		}
		[CRepr]
		public struct PEER_ENDPOINT
		{
			public PEER_ADDRESS address;
			public char16* pwzEndpointName;
		}
		[CRepr]
		public struct PEER_PEOPLE_NEAR_ME
		{
			public char16* pwzNickName;
			public PEER_ENDPOINT endpoint;
			public Guid id;
		}
		[CRepr]
		public struct PEER_INVITATION
		{
			public Guid applicationId;
			public PEER_DATA applicationData;
			public char16* pwzMessage;
		}
		[CRepr]
		public struct PEER_INVITATION_RESPONSE
		{
			public PEER_INVITATION_RESPONSE_TYPE action;
			public char16* pwzMessage;
			public HResult hrExtendedInfo;
		}
		[CRepr]
		public struct PEER_APP_LAUNCH_INFO
		{
			public PEER_CONTACT* pContact;
			public PEER_ENDPOINT* pEndpoint;
			public PEER_INVITATION* pInvitation;
		}
		[CRepr]
		public struct PEER_APPLICATION_REGISTRATION_INFO
		{
			public PEER_APPLICATION application;
			public char16* pwzApplicationToLaunch;
			public char16* pwzApplicationArguments;
			public uint32 dwPublicationScope;
		}
		[CRepr]
		public struct PEER_PRESENCE_INFO
		{
			public PEER_PRESENCE_STATUS status;
			public char16* pwzDescriptiveText;
		}
		[CRepr]
		public struct PEER_COLLAB_EVENT_REGISTRATION
		{
			public PEER_COLLAB_EVENT_TYPE eventType;
			public Guid* pInstance;
		}
		[CRepr]
		public struct PEER_EVENT_WATCHLIST_CHANGED_DATA
		{
			public PEER_CONTACT* pContact;
			public PEER_CHANGE_TYPE changeType;
		}
		[CRepr]
		public struct PEER_EVENT_PRESENCE_CHANGED_DATA
		{
			public PEER_CONTACT* pContact;
			public PEER_ENDPOINT* pEndpoint;
			public PEER_CHANGE_TYPE changeType;
			public PEER_PRESENCE_INFO* pPresenceInfo;
		}
		[CRepr]
		public struct PEER_EVENT_APPLICATION_CHANGED_DATA
		{
			public PEER_CONTACT* pContact;
			public PEER_ENDPOINT* pEndpoint;
			public PEER_CHANGE_TYPE changeType;
			public PEER_APPLICATION* pApplication;
		}
		[CRepr]
		public struct PEER_EVENT_OBJECT_CHANGED_DATA
		{
			public PEER_CONTACT* pContact;
			public PEER_ENDPOINT* pEndpoint;
			public PEER_CHANGE_TYPE changeType;
			public PEER_OBJECT* pObject;
		}
		[CRepr]
		public struct PEER_EVENT_ENDPOINT_CHANGED_DATA
		{
			public PEER_CONTACT* pContact;
			public PEER_ENDPOINT* pEndpoint;
		}
		[CRepr]
		public struct PEER_EVENT_PEOPLE_NEAR_ME_CHANGED_DATA
		{
			public PEER_CHANGE_TYPE changeType;
			public PEER_PEOPLE_NEAR_ME* pPeopleNearMe;
		}
		[CRepr]
		public struct PEER_EVENT_REQUEST_STATUS_CHANGED_DATA
		{
			public PEER_ENDPOINT* pEndpoint;
			public HResult hrChange;
		}
		[CRepr]
		public struct PEER_COLLAB_EVENT_DATA
		{
			public PEER_COLLAB_EVENT_TYPE eventType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PEER_EVENT_WATCHLIST_CHANGED_DATA watchListChangedData;
				public PEER_EVENT_PRESENCE_CHANGED_DATA presenceChangedData;
				public PEER_EVENT_APPLICATION_CHANGED_DATA applicationChangedData;
				public PEER_EVENT_OBJECT_CHANGED_DATA objectChangedData;
				public PEER_EVENT_ENDPOINT_CHANGED_DATA endpointChangedData;
				public PEER_EVENT_PEOPLE_NEAR_ME_CHANGED_DATA peopleNearMeChangedData;
				public PEER_EVENT_REQUEST_STATUS_CHANGED_DATA requestStatusChangedData;
			}
		}
		[CRepr]
		public struct PEER_PNRP_ENDPOINT_INFO
		{
			public char16* pwzPeerName;
			public uint32 cAddresses;
			public SOCKADDR** ppAddresses;
			public char16* pwzComment;
			public PEER_DATA payload;
		}
		[CRepr]
		public struct PEER_PNRP_CLOUD_INFO
		{
			public char16* pwzCloudName;
			public PNRP_SCOPE dwScope;
			public uint32 dwScopeId;
		}
		[CRepr]
		public struct PEER_PNRP_REGISTRATION_INFO
		{
			public char16* pwzCloudName;
			public char16* pwzPublishingIdentity;
			public uint32 cAddresses;
			public SOCKADDR** ppAddresses;
			public uint16 wPort;
			public char16* pwzComment;
			public PEER_DATA payload;
		}
		[CRepr]
		public struct DRT_DATA
		{
			public uint32 cb;
			public uint8* pb;
		}
		[CRepr]
		public struct DRT_REGISTRATION
		{
			public DRT_DATA key;
			public DRT_DATA appData;
		}
		[CRepr]
		public struct DRT_SECURITY_PROVIDER
		{
			public void* pvContext;
			public int Attach;
			public int Detach;
			public int RegisterKey;
			public int UnregisterKey;
			public int ValidateAndUnpackPayload;
			public int SecureAndPackPayload;
			public int FreeData;
			public int EncryptData;
			public int DecryptData;
			public int GetSerializedCredential;
			public int ValidateRemoteCredential;
			public int SignData;
			public int VerifyData;
		}
		[CRepr]
		public struct DRT_BOOTSTRAP_PROVIDER
		{
			public void* pvContext;
			public int Attach;
			public int Detach;
			public int InitResolve;
			public int IssueResolve;
			public int EndResolve;
			public int Register;
			public int Unregister;
		}
		[CRepr]
		public struct DRT_SETTINGS
		{
			public uint32 dwSize;
			public uint32 cbKey;
			public uint8 bProtocolMajorVersion;
			public uint8 bProtocolMinorVersion;
			public uint32 ulMaxRoutingAddresses;
			public char16* pwzDrtInstancePrefix;
			public void* hTransport;
			public DRT_SECURITY_PROVIDER* pSecurityProvider;
			public DRT_BOOTSTRAP_PROVIDER* pBootstrapProvider;
			public DRT_SECURITY_MODE eSecurityMode;
		}
		[CRepr]
		public struct DRT_SEARCH_INFO
		{
			public uint32 dwSize;
			public IntBool fIterative;
			public IntBool fAllowCurrentInstanceMatch;
			public IntBool fAnyMatchInRange;
			public uint32 cMaxEndpoints;
			public DRT_DATA* pMaximumKey;
			public DRT_DATA* pMinimumKey;
		}
		[CRepr]
		public struct DRT_ADDRESS
		{
			public SOCKADDR_STORAGE socketAddress;
			public uint32 flags;
			public int32 nearness;
			public uint32 latency;
		}
		[CRepr]
		public struct DRT_ADDRESS_LIST
		{
			public uint32 AddressCount;
			public DRT_ADDRESS[0] AddressList;
		}
		[CRepr]
		public struct DRT_SEARCH_RESULT
		{
			public uint32 dwSize;
			public DRT_MATCH_TYPE type;
			public void* pvContext;
			public DRT_REGISTRATION registration;
		}
		[CRepr]
		public struct DRT_EVENT_DATA
		{
			public DRT_EVENT_TYPE type;
			public HResult hr;
			public void* pvContext;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _leafsetKeyChange_e__Struct leafsetKeyChange;
				public _registrationStateChange_e__Struct registrationStateChange;
				public _statusChange_e__Struct statusChange;
				
				[CRepr]
				public struct _statusChange_e__Struct
				{
					public DRT_STATUS status;
					public _bootstrapAddresses_e__Struct bootstrapAddresses;
					
					[CRepr]
					public struct _bootstrapAddresses_e__Struct
					{
						public uint32 cntAddress;
						public SOCKADDR_STORAGE* pAddresses;
					}
				}
				[CRepr]
				public struct _leafsetKeyChange_e__Struct
				{
					public DRT_LEAFSET_KEY_CHANGE_TYPE change;
					public DRT_DATA localKey;
					public DRT_DATA remoteKey;
				}
				[CRepr]
				public struct _registrationStateChange_e__Struct
				{
					public DRT_REGISTRATION_STATE state;
					public DRT_DATA localKey;
				}
			}
		}
		[CRepr]
		public struct PEERDIST_PUBLICATION_OPTIONS
		{
			public uint32 dwVersion;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct PEERDIST_CONTENT_TAG
		{
			public uint8[16] Data;
		}
		[CRepr]
		public struct PEERDIST_RETRIEVAL_OPTIONS
		{
			public uint32 cbSize;
			public uint32 dwContentInfoMinVersion;
			public uint32 dwContentInfoMaxVersion;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct PEERDIST_STATUS_INFO
		{
			public uint32 cbSize;
			public PEERDIST_STATUS status;
			public PEERDIST_RETRIEVAL_OPTIONS_CONTENTINFO_VERSION_VALUE dwMinVer;
			public PEERDIST_RETRIEVAL_OPTIONS_CONTENTINFO_VERSION_VALUE dwMaxVer;
		}
		[CRepr]
		public struct PEERDIST_CLIENT_BASIC_INFO
		{
			public IntBool fFlashCrowd;
		}
		
		// --- Functions ---
		
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphStartup(uint16 wVersionRequested, out PEER_VERSION_DATA pVersionData);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphShutdown();
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PeerGraphFreeData(void* pvData);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphGetItemCount(void* hPeerEnum, out uint32 pCount);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphGetNextItem(void* hPeerEnum, out uint32 pCount, void*** pppvItems);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphEndEnumeration(void* hPeerEnum);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphCreate(ref PEER_GRAPH_PROPERTIES pGraphProperties, char16* pwzDatabaseName, PEER_SECURITY_INTERFACE* pSecurityInterface, void** phGraph);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphOpen(char16* pwzGraphId, char16* pwzPeerId, char16* pwzDatabaseName, PEER_SECURITY_INTERFACE* pSecurityInterface, uint32 cRecordTypeSyncPrecedence, Guid* pRecordTypeSyncPrecedence, void** phGraph);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphListen(void* hGraph, uint32 dwScope, uint32 dwScopeId, uint16 wPort);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphConnect(void* hGraph, char16* pwzPeerId, ref PEER_ADDRESS pAddress, out uint64 pullConnectionId);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphClose(void* hGraph);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphDelete(char16* pwzGraphId, char16* pwzPeerId, char16* pwzDatabaseName);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphGetStatus(void* hGraph, out uint32 pdwStatus);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphGetProperties(void* hGraph, out PEER_GRAPH_PROPERTIES* ppGraphProperties);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphSetProperties(void* hGraph, ref PEER_GRAPH_PROPERTIES pGraphProperties);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphRegisterEvent(void* hGraph, Handle hEvent, uint32 cEventRegistrations, PEER_GRAPH_EVENT_REGISTRATION* pEventRegistrations, void** phPeerEvent);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphUnregisterEvent(void* hPeerEvent);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphGetEventData(void* hPeerEvent, out PEER_GRAPH_EVENT_DATA* ppEventData);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphGetRecord(void* hGraph, in Guid pRecordId, out PEER_RECORD* ppRecord);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphAddRecord(void* hGraph, ref PEER_RECORD pRecord, out Guid pRecordId);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphUpdateRecord(void* hGraph, ref PEER_RECORD pRecord);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphDeleteRecord(void* hGraph, in Guid pRecordId, IntBool fLocal);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphEnumRecords(void* hGraph, Guid* pRecordType, char16* pwzPeerId, void** phPeerEnum);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphSearchRecords(void* hGraph, char16* pwzCriteria, void** phPeerEnum);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphExportDatabase(void* hGraph, char16* pwzFilePath);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphImportDatabase(void* hGraph, char16* pwzFilePath);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphValidateDeferredRecords(void* hGraph, uint32 cRecordIds, Guid* pRecordIds);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphOpenDirectConnection(void* hGraph, char16* pwzPeerId, ref PEER_ADDRESS pAddress, out uint64 pullConnectionId);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphSendData(void* hGraph, uint64 ullConnectionId, in Guid pType, uint32 cbData, void* pvData);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphCloseDirectConnection(void* hGraph, uint64 ullConnectionId);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphEnumConnections(void* hGraph, uint32 dwFlags, void** phPeerEnum);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphEnumNodes(void* hGraph, char16* pwzPeerId, void** phPeerEnum);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphSetPresence(void* hGraph, IntBool fPresent);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphGetNodeInfo(void* hGraph, uint64 ullNodeId, out PEER_NODE_INFO* ppNodeInfo);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphSetNodeAttributes(void* hGraph, char16* pwzAttributes);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphPeerTimeToUniversalTime(void* hGraph, ref FileTime pftPeerTime, out FileTime pftUniversalTime);
		[Import("p2pgraph.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGraphUniversalTimeToPeerTime(void* hGraph, ref FileTime pftUniversalTime, out FileTime pftPeerTime);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PeerFreeData(void* pvData);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGetItemCount(void* hPeerEnum, out uint32 pCount);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGetNextItem(void* hPeerEnum, out uint32 pCount, void*** pppvItems);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerEndEnumeration(void* hPeerEnum);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupStartup(uint16 wVersionRequested, out PEER_VERSION_DATA pVersionData);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupShutdown();
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupCreate(ref PEER_GROUP_PROPERTIES pProperties, void** phGroup);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupOpen(char16* pwzIdentity, char16* pwzGroupPeerName, char16* pwzCloud, void** phGroup);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupJoin(char16* pwzIdentity, char16* pwzInvitation, char16* pwzCloud, void** phGroup);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupPasswordJoin(char16* pwzIdentity, char16* pwzInvitation, char16* pwzPassword, char16* pwzCloud, void** phGroup);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupConnect(void* hGroup);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupConnectByAddress(void* hGroup, uint32 cAddresses, PEER_ADDRESS* pAddresses);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupClose(void* hGroup);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupDelete(char16* pwzIdentity, char16* pwzGroupPeerName);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupCreateInvitation(void* hGroup, char16* pwzIdentityInfo, FileTime* pftExpiration, uint32 cRoles, Guid* pRoles, out char16* ppwzInvitation);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupCreatePasswordInvitation(void* hGroup, out char16* ppwzInvitation);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupParseInvitation(char16* pwzInvitation, out PEER_INVITATION_INFO* ppInvitationInfo);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupGetStatus(void* hGroup, out uint32 pdwStatus);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupGetProperties(void* hGroup, out PEER_GROUP_PROPERTIES* ppProperties);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupSetProperties(void* hGroup, ref PEER_GROUP_PROPERTIES pProperties);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupEnumMembers(void* hGroup, uint32 dwFlags, char16* pwzIdentity, void** phPeerEnum);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupOpenDirectConnection(void* hGroup, char16* pwzIdentity, ref PEER_ADDRESS pAddress, out uint64 pullConnectionId);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupCloseDirectConnection(void* hGroup, uint64 ullConnectionId);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupEnumConnections(void* hGroup, uint32 dwFlags, void** phPeerEnum);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupSendData(void* hGroup, uint64 ullConnectionId, in Guid pType, uint32 cbData, void* pvData);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupRegisterEvent(void* hGroup, Handle hEvent, uint32 cEventRegistration, PEER_GROUP_EVENT_REGISTRATION* pEventRegistrations, void** phPeerEvent);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupUnregisterEvent(void* hPeerEvent);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupGetEventData(void* hPeerEvent, out PEER_GROUP_EVENT_DATA* ppEventData);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupGetRecord(void* hGroup, in Guid pRecordId, out PEER_RECORD* ppRecord);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupAddRecord(void* hGroup, ref PEER_RECORD pRecord, out Guid pRecordId);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupUpdateRecord(void* hGroup, ref PEER_RECORD pRecord);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupDeleteRecord(void* hGroup, in Guid pRecordId);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupEnumRecords(void* hGroup, Guid* pRecordType, void** phPeerEnum);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupSearchRecords(void* hGroup, char16* pwzCriteria, void** phPeerEnum);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupExportDatabase(void* hGroup, char16* pwzFilePath);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupImportDatabase(void* hGroup, char16* pwzFilePath);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupIssueCredentials(void* hGroup, char16* pwzSubjectIdentity, PEER_CREDENTIAL_INFO* pCredentialInfo, uint32 dwFlags, char16** ppwzInvitation);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupExportConfig(void* hGroup, char16* pwzPassword, out char16* ppwzXML);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupImportConfig(char16* pwzXML, char16* pwzPassword, IntBool fOverwrite, out char16* ppwzIdentity, out char16* ppwzGroup);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupPeerTimeToUniversalTime(void* hGroup, ref FileTime pftPeerTime, out FileTime pftUniversalTime);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupUniversalTimeToPeerTime(void* hGroup, ref FileTime pftUniversalTime, out FileTime pftPeerTime);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerGroupResumePasswordAuthentication(void* hGroup, void* hPeerEventHandle);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerIdentityCreate(char16* pwzClassifier, char16* pwzFriendlyName, uint hCryptProv, out char16* ppwzIdentity);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerIdentityGetFriendlyName(char16* pwzIdentity, out char16* ppwzFriendlyName);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerIdentitySetFriendlyName(char16* pwzIdentity, char16* pwzFriendlyName);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerIdentityGetCryptKey(char16* pwzIdentity, out uint phCryptProv);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerIdentityDelete(char16* pwzIdentity);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerEnumIdentities(void** phPeerEnum);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerEnumGroups(char16* pwzIdentity, void** phPeerEnum);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCreatePeerName(char16* pwzIdentity, char16* pwzClassifier, out char16* ppwzPeerName);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerIdentityGetXML(char16* pwzIdentity, out char16* ppwzIdentityXML);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerIdentityExport(char16* pwzIdentity, char16* pwzPassword, out char16* ppwzExportXML);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerIdentityImport(char16* pwzImportXML, char16* pwzPassword, out char16* ppwzIdentity);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerIdentityGetDefault(out char16* ppwzPeerName);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabStartup(uint16 wVersionRequested);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabShutdown();
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabSignin(HWnd hwndParent, uint32 dwSigninOptions);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabSignout(uint32 dwSigninOptions);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabGetSigninOptions(out uint32 pdwSigninOptions);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabAsyncInviteContact(PEER_CONTACT* pcContact, ref PEER_ENDPOINT pcEndpoint, ref PEER_INVITATION pcInvitation, Handle hEvent, Handle* phInvitation);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabGetInvitationResponse(Handle hInvitation, out PEER_INVITATION_RESPONSE* ppInvitationResponse);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabCancelInvitation(Handle hInvitation);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabCloseHandle(Handle hInvitation);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabInviteContact(PEER_CONTACT* pcContact, ref PEER_ENDPOINT pcEndpoint, ref PEER_INVITATION pcInvitation, out PEER_INVITATION_RESPONSE* ppResponse);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabAsyncInviteEndpoint(ref PEER_ENDPOINT pcEndpoint, ref PEER_INVITATION pcInvitation, Handle hEvent, Handle* phInvitation);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabInviteEndpoint(ref PEER_ENDPOINT pcEndpoint, ref PEER_INVITATION pcInvitation, out PEER_INVITATION_RESPONSE* ppResponse);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabGetAppLaunchInfo(out PEER_APP_LAUNCH_INFO* ppLaunchInfo);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabRegisterApplication(ref PEER_APPLICATION_REGISTRATION_INFO pcApplication, PEER_APPLICATION_REGISTRATION_TYPE registrationType);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabUnregisterApplication(in Guid pApplicationId, PEER_APPLICATION_REGISTRATION_TYPE registrationType);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabGetApplicationRegistrationInfo(in Guid pApplicationId, PEER_APPLICATION_REGISTRATION_TYPE registrationType, out PEER_APPLICATION_REGISTRATION_INFO* ppApplication);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabEnumApplicationRegistrationInfo(PEER_APPLICATION_REGISTRATION_TYPE registrationType, void** phPeerEnum);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabGetPresenceInfo(PEER_ENDPOINT* pcEndpoint, out PEER_PRESENCE_INFO* ppPresenceInfo);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabEnumApplications(PEER_ENDPOINT* pcEndpoint, Guid* pApplicationId, void** phPeerEnum);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabEnumObjects(PEER_ENDPOINT* pcEndpoint, Guid* pObjectId, void** phPeerEnum);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabEnumEndpoints(PEER_CONTACT* pcContact, void** phPeerEnum);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabRefreshEndpointData(ref PEER_ENDPOINT pcEndpoint);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabDeleteEndpointData(ref PEER_ENDPOINT pcEndpoint);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabQueryContactData(PEER_ENDPOINT* pcEndpoint, out char16* ppwzContactData);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabSubscribeEndpointData(in PEER_ENDPOINT pcEndpoint);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabUnsubscribeEndpointData(in PEER_ENDPOINT pcEndpoint);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabSetPresenceInfo(ref PEER_PRESENCE_INFO pcPresenceInfo);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabGetEndpointName(out char16* ppwzEndpointName);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabSetEndpointName(char16* pwzEndpointName);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabSetObject(ref PEER_OBJECT pcObject);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabDeleteObject(in Guid pObjectId);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabRegisterEvent(Handle hEvent, uint32 cEventRegistration, PEER_COLLAB_EVENT_REGISTRATION* pEventRegistrations, void** phPeerEvent);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabGetEventData(void* hPeerEvent, out PEER_COLLAB_EVENT_DATA* ppEventData);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabUnregisterEvent(void* hPeerEvent);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabEnumPeopleNearMe(void** phPeerEnum);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabAddContact(char16* pwzContactData, PEER_CONTACT** ppContact);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabDeleteContact(char16* pwzPeerName);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabGetContact(char16* pwzPeerName, out PEER_CONTACT* ppContact);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabUpdateContact(ref PEER_CONTACT pContact);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabEnumContacts(void** phPeerEnum);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabExportContact(char16* pwzPeerName, out char16* ppwzContactData);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerCollabParseContact(char16* pwzContactData, out PEER_CONTACT* ppContact);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerNameToPeerHostName(char16* pwzPeerName, out char16* ppwzHostName);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerHostNameToPeerName(char16* pwzHostName, out char16* ppwzPeerName);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerPnrpStartup(uint16 wVersionRequested);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerPnrpShutdown();
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerPnrpRegister(char16* pcwzPeerName, PEER_PNRP_REGISTRATION_INFO* pRegistrationInfo, void** phRegistration);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerPnrpUpdateRegistration(void* hRegistration, ref PEER_PNRP_REGISTRATION_INFO pRegistrationInfo);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerPnrpUnregister(void* hRegistration);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerPnrpResolve(char16* pcwzPeerName, char16* pcwzCloudName, out uint32 pcEndpoints, out PEER_PNRP_ENDPOINT_INFO* ppEndpoints);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerPnrpStartResolve(char16* pcwzPeerName, char16* pcwzCloudName, uint32 cMaxEndpoints, Handle hEvent, void** phResolve);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerPnrpGetCloudInfo(out uint32 pcNumClouds, out PEER_PNRP_CLOUD_INFO* ppCloudInfo);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerPnrpGetEndpoint(void* hResolve, out PEER_PNRP_ENDPOINT_INFO* ppEndpoint);
		[Import("p2p.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PeerPnrpEndResolve(void* hResolve);
		[Import("drtprov.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtCreatePnrpBootstrapResolver(IntBool fPublish, char16* pwzPeerName, char16* pwzCloudName, char16* pwzPublishingIdentity, out DRT_BOOTSTRAP_PROVIDER* ppResolver);
		[Import("drtprov.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DrtDeletePnrpBootstrapResolver(ref DRT_BOOTSTRAP_PROVIDER pResolver);
		[Import("drtprov.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtCreateDnsBootstrapResolver(uint16 port, char16* pwszAddress, out DRT_BOOTSTRAP_PROVIDER* ppModule);
		[Import("drtprov.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DrtDeleteDnsBootstrapResolver(ref DRT_BOOTSTRAP_PROVIDER pResolver);
		[Import("drttransport.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtCreateIpv6UdpTransport(DRT_SCOPE @scope, uint32 dwScopeId, uint32 dwLocalityThreshold, out uint16 pwPort, void** phTransport);
		[Import("drttransport.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtDeleteIpv6UdpTransport(void* hTransport);
		[Import("drtprov.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtCreateDerivedKeySecurityProvider(in CERT_CONTEXT pRootCert, CERT_CONTEXT* pLocalCert, out DRT_SECURITY_PROVIDER* ppSecurityProvider);
		[Import("drtprov.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtCreateDerivedKey(in CERT_CONTEXT pLocalCert, out DRT_DATA pKey);
		[Import("drtprov.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DrtDeleteDerivedKeySecurityProvider(ref DRT_SECURITY_PROVIDER pSecurityProvider);
		[Import("drtprov.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtCreateNullSecurityProvider(out DRT_SECURITY_PROVIDER* ppSecurityProvider);
		[Import("drtprov.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DrtDeleteNullSecurityProvider(ref DRT_SECURITY_PROVIDER pSecurityProvider);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtOpen(in DRT_SETTINGS pSettings, Handle hEvent, void* pvContext, void** phDrt);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DrtClose(void* hDrt);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtGetEventDataSize(void* hDrt, out uint32 pulEventDataLen);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtGetEventData(void* hDrt, uint32 ulEventDataLen, out DRT_EVENT_DATA pEventData);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtRegisterKey(void* hDrt, ref DRT_REGISTRATION pRegistration, void* pvKeyContext, void** phKeyRegistration);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtUpdateKey(void* hKeyRegistration, ref DRT_DATA pAppData);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DrtUnregisterKey(void* hKeyRegistration);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtStartSearch(void* hDrt, ref DRT_DATA pKey, DRT_SEARCH_INFO* pInfo, uint32 timeout, Handle hEvent, void* pvContext, void** hSearchContext);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtContinueSearch(void* hSearchContext);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtGetSearcHResultSize(void* hSearchContext, out uint32 pulSearcHResultSize);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtGetSearcHResult(void* hSearchContext, uint32 ulSearcHResultSize, out DRT_SEARCH_RESULT pSearcHResult);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtGetSearchPathSize(void* hSearchContext, out uint32 pulSearchPathSize);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtGetSearchPath(void* hSearchContext, uint32 ulSearchPathSize, out DRT_ADDRESS_LIST pSearchPath);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtEndSearch(void* hSearchContext);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtGetInstanceName(void* hDrt, uint32 ulcbInstanceNameSize, char16* pwzDrtInstanceName);
		[Import("drt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DrtGetInstanceNameSize(void* hDrt, out uint32 pulcbInstanceNameSize);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistStartup(uint32 dwVersionRequested, out int phPeerDist, uint32* pdwSupportedVersion);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistShutdown(int hPeerDist);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistGetStatus(int hPeerDist, out PEERDIST_STATUS pPeerDistStatus);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistRegisterForStatusChangeNotification(int hPeerDist, Handle hCompletionPort, uint ulCompletionKey, ref OVERLAPPED lpOverlapped, out PEERDIST_STATUS pPeerDistStatus);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistUnregisterForStatusChangeNotification(int hPeerDist);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistServerPublishStream(int hPeerDist, uint32 cbContentIdentifier, ref uint8 pContentIdentifier, uint64 cbContentLength, PEERDIST_PUBLICATION_OPTIONS* pPublishOptions, Handle hCompletionPort, uint ulCompletionKey, out int phStream);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistServerPublishAddToStream(int hPeerDist, int hStream, uint32 cbNumberOfBytes, ref uint8 pBuffer, ref OVERLAPPED lpOverlapped);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistServerPublishCompleteStream(int hPeerDist, int hStream, ref OVERLAPPED lpOverlapped);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistServerCloseStreamHandle(int hPeerDist, int hStream);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistServerUnpublish(int hPeerDist, uint32 cbContentIdentifier, ref uint8 pContentIdentifier);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistServerOpenContentInformation(int hPeerDist, uint32 cbContentIdentifier, ref uint8 pContentIdentifier, uint64 ullContentOffset, uint64 cbContentLength, Handle hCompletionPort, uint ulCompletionKey, out int phContentInfo);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistServerRetrieveContentInformation(int hPeerDist, int hContentInfo, uint32 cbMaxNumberOfBytes, out uint8 pBuffer, ref OVERLAPPED lpOverlapped);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistServerCloseContentInformation(int hPeerDist, int hContentInfo);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistServerCancelAsyncOperation(int hPeerDist, uint32 cbContentIdentifier, ref uint8 pContentIdentifier, ref OVERLAPPED pOverlapped);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistClientOpenContent(int hPeerDist, ref PEERDIST_CONTENT_TAG pContentTag, Handle hCompletionPort, uint ulCompletionKey, out int phContentHandle);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistClientCloseContent(int hPeerDist, int hContentHandle);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistClientAddContentInformation(int hPeerDist, int hContentHandle, uint32 cbNumberOfBytes, ref uint8 pBuffer, ref OVERLAPPED lpOverlapped);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistClientCompleteContentInformation(int hPeerDist, int hContentHandle, ref OVERLAPPED lpOverlapped);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistClientAddData(int hPeerDist, int hContentHandle, uint32 cbNumberOfBytes, ref uint8 pBuffer, ref OVERLAPPED lpOverlapped);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistClientBlockRead(int hPeerDist, int hContentHandle, uint32 cbMaxNumberOfBytes, uint8* pBuffer, uint32 dwTimeoutInMilliseconds, ref OVERLAPPED lpOverlapped);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistClientStreamRead(int hPeerDist, int hContentHandle, uint32 cbMaxNumberOfBytes, uint8* pBuffer, uint32 dwTimeoutInMilliseconds, ref OVERLAPPED lpOverlapped);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistClientFlushContent(int hPeerDist, ref PEERDIST_CONTENT_TAG pContentTag, Handle hCompletionPort, uint ulCompletionKey, ref OVERLAPPED lpOverlapped);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistClientCancelAsyncOperation(int hPeerDist, int hContentHandle, OVERLAPPED* pOverlapped);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistGetStatusEx(int hPeerDist, out PEERDIST_STATUS_INFO pPeerDistStatus);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistRegisterForStatusChangeNotificationEx(int hPeerDist, Handle hCompletionPort, uint ulCompletionKey, ref OVERLAPPED lpOverlapped, out PEERDIST_STATUS_INFO pPeerDistStatus);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool PeerDistGetOverlappedResult(ref OVERLAPPED lpOverlapped, out uint32 lpNumberOfBytesTransferred, IntBool bWait);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistServerOpenContentInformationEx(int hPeerDist, uint32 cbContentIdentifier, ref uint8 pContentIdentifier, uint64 ullContentOffset, uint64 cbContentLength, ref PEERDIST_RETRIEVAL_OPTIONS pRetrievalOptions, Handle hCompletionPort, uint ulCompletionKey, out int phContentInfo);
		[Import("peerdist.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PeerDistClientGetInformationByHandle(int hPeerDist, int hContentHandle, PEERDIST_CLIENT_INFO_BY_HANDLE_CLASS PeerDistClientInfoClass, uint32 dwBufferSize, void* lpInformation);
	}
}
