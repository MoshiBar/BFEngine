using System;
using System.IO;
using static System.Windows;

// namespace Security
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 CVT_SECONDS = 1;
		
		// --- Typedefs ---
		
		public typealias HDIAGNOSTIC_DATA_QUERY_SESSION = int;
		public typealias HDIAGNOSTIC_REPORT = int;
		public typealias HDIAGNOSTIC_EVENT_TAG_DESCRIPTION = int;
		public typealias HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION = int;
		public typealias HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION = int;
		public typealias HDIAGNOSTIC_RECORD = int;
		public typealias NCRYPT_DESCRIPTOR_HANDLE = int;
		public typealias NCRYPT_STREAM_HANDLE = int;
		public typealias SAFER_LEVEL_HANDLE = int;
		public typealias SC_HANDLE = int;
		
		// --- Enums ---
		
		public enum TOKEN_PRIVILEGES_ATTRIBUTES : uint32
		{
			ENABLED = 2,
			ENABLED_BY_DEFAULT = 1,
			REMOVED = 4,
			USED_FOR_ACCESS = 2147483648,
		}
		public enum LOGON32_PROVIDER : uint32
		{
			DEFAULT = 0,
			WINNT50 = 3,
			WINNT40 = 2,
		}
		public enum CREATE_RESTRICTED_TOKEN_FLAGS : uint32
		{
			DISABLE_MAX_PRIVILEGE = 1,
			SANDBOX_INERT = 2,
			LUA_TOKEN = 4,
			WRITE_RESTRICTED = 8,
		}
		public enum LOGON32_LOGON : uint32
		{
			BATCH = 4,
			INTERACTIVE = 2,
			NETWORK = 3,
			NETWORK_CLEARTEXT = 8,
			NEW_CREDENTIALS = 9,
			SERVICE = 5,
			UNLOCK = 7,
		}
		[AllowDuplicates]
		public enum ACE_FLAGS : uint32
		{
			CONTAINER_INHERIT_ACE = 2,
			FAILED_ACCESS_ACE_FLAG = 128,
			INHERIT_ONLY_ACE = 8,
			INHERITED_ACE = 16,
			NO_PROPAGATE_INHERIT_ACE = 4,
			OBJECT_INHERIT_ACE = 1,
			SUCCESSFUL_ACCESS_ACE_FLAG = 64,
			SUB_CONTAINERS_AND_OBJECTS_INHERIT = 3,
			SUB_CONTAINERS_ONLY_INHERIT = 2,
			SUB_OBJECTS_ONLY_INHERIT = 1,
			INHERIT_NO_PROPAGATE = 4,
			INHERIT_ONLY = 8,
			NO_INHERITANCE = 0,
			INHERIT_ONLY_ACE_ = 8,
		}
		public enum OBJECT_SECURITY_INFORMATION : uint32
		{
			ATTRIBUTE_SECURITY_INFORMATION = 32,
			BACKUP_SECURITY_INFORMATION = 65536,
			DACL_SECURITY_INFORMATION = 4,
			GROUP_SECURITY_INFORMATION = 2,
			LABEL_SECURITY_INFORMATION = 16,
			OWNER_SECURITY_INFORMATION = 1,
			PROTECTED_DACL_SECURITY_INFORMATION = 2147483648,
			PROTECTED_SACL_SECURITY_INFORMATION = 1073741824,
			SACL_SECURITY_INFORMATION = 8,
			SCOPE_SECURITY_INFORMATION = 64,
			UNPROTECTED_DACL_SECURITY_INFORMATION = 536870912,
			UNPROTECTED_SACL_SECURITY_INFORMATION = 268435456,
		}
		public enum SECURITY_AUTO_INHERIT_FLAGS : uint32
		{
			AVOID_OWNER_CHECK = 16,
			AVOID_OWNER_RESTRICTION = 4096,
			AVOID_PRIVILEGE_CHECK = 8,
			DACL_AUTO_INHERIT = 1,
			DEFAULT_DESCRIPTOR_FOR_OBJECT = 4,
			DEFAULT_GROUP_FROM_PARENT = 64,
			DEFAULT_OWNER_FROM_PARENT = 32,
			MACL_NO_EXECUTE_UP = 1024,
			MACL_NO_READ_UP = 512,
			MACL_NO_WRITE_UP = 256,
			SACL_AUTO_INHERIT = 2,
		}
		public enum ACE_REVISION : uint32
		{
			REVISION = 2,
			REVISION_DS = 4,
		}
		public enum TOKEN_MANDATORY_POLICY_ID : uint32
		{
			OFF = 0,
			NO_WRITE_UP = 1,
			NEW_PROCESS_MIN = 2,
			VALID_MASK = 3,
		}
		public enum SYSTEM_AUDIT_OBJECT_ACE_FLAGS : uint32
		{
			OBJECT_TYPE_PRESENT = 1,
			INHERITED_OBJECT_TYPE_PRESENT = 2,
		}
		public enum CLAIM_SECURITY_ATTRIBUTE_FLAGS : uint32
		{
			NON_INHERITABLE = 1,
			VALUE_CASE_SENSITIVE = 2,
			USE_FOR_DENY_ONLY = 4,
			DISABLED_BY_DEFAULT = 8,
			DISABLED = 16,
			MANDATORY = 32,
		}
		public enum CLAIM_SECURITY_ATTRIBUTE_VALUE_TYPE : uint16
		{
			INT64 = 1,
			UINT64 = 2,
			STRING = 3,
			OCTET_STRING = 16,
			FQBN = 4,
			SID = 5,
			Boolean = 6,
		}
		public enum TOKEN_ACCESS_MASK : uint32
		{
			DELETE = 65536,
			READ_CONTROL = 131072,
			WRITE_DAC = 262144,
			WRITE_OWNER = 524288,
			ACCESS_SYSTEM_SECURITY = 16777216,
			ASSIGN_PRIMARY = 1,
			DUPLICATE = 2,
			IMPERSONATE = 4,
			QUERY = 8,
			QUERY_SOURCE = 16,
			ADJUST_PRIVILEGES = 32,
			ADJUST_GROUPS = 64,
			ADJUST_DEFAULT = 128,
			ADJUST_SESSIONID = 256,
			ALL_ACCESS = 983295,
		}
		public enum ENUM_PERIOD : int32
		{
			INVALID = -1,
			SECONDS = 0,
			MINUTES = 1,
			HOURS = 2,
			DAYS = 3,
			WEEKS = 4,
			MONTHS = 5,
			YEARS = 6,
		}
		public enum SID_NAME_USE : int32
		{
			User = 1,
			Group = 2,
			Domain = 3,
			Alias = 4,
			WellKnownGroup = 5,
			DeletedAccount = 6,
			Invalid = 7,
			Unknown = 8,
			Computer = 9,
			Label = 10,
			LogonSession = 11,
		}
		public enum WELL_KNOWN_SID_TYPE : int32
		{
			NullSid = 0,
			WorldSid = 1,
			LocalSid = 2,
			CreatorOwnerSid = 3,
			CreatorGroupSid = 4,
			CreatorOwnerServerSid = 5,
			CreatorGroupServerSid = 6,
			NtAuthoritySid = 7,
			DialupSid = 8,
			NetworkSid = 9,
			BatchSid = 10,
			InteractiveSid = 11,
			ServiceSid = 12,
			AnonymousSid = 13,
			ProxySid = 14,
			EnterpriseControllersSid = 15,
			SelfSid = 16,
			AuthenticatedUserSid = 17,
			RestrictedCodeSid = 18,
			TerminalServerSid = 19,
			RemoteLogonIdSid = 20,
			LogonIdsSid = 21,
			LocalSystemSid = 22,
			LocalServiceSid = 23,
			NetworkServiceSid = 24,
			BuiltinDomainSid = 25,
			BuiltinAdministratorsSid = 26,
			BuiltinUsersSid = 27,
			BuiltinGuestsSid = 28,
			BuiltinPowerUsersSid = 29,
			BuiltinAccountOperatorsSid = 30,
			BuiltinSystemOperatorsSid = 31,
			BuiltinPrintOperatorsSid = 32,
			BuiltinBackupOperatorsSid = 33,
			BuiltinReplicatorSid = 34,
			BuiltinPreWindows2000CompatibleAccessSid = 35,
			BuiltinRemoteDesktopUsersSid = 36,
			BuiltinNetworkConfigurationOperatorsSid = 37,
			AccountAdministratorSid = 38,
			AccountGuestSid = 39,
			AccountKrbtgtSid = 40,
			AccountDomainAdminsSid = 41,
			AccountDomainUsersSid = 42,
			AccountDomainGuestsSid = 43,
			AccountComputersSid = 44,
			AccountControllersSid = 45,
			AccountCertAdminsSid = 46,
			AccountSchemaAdminsSid = 47,
			AccountEnterpriseAdminsSid = 48,
			AccountPolicyAdminsSid = 49,
			AccountRasAndIasServersSid = 50,
			NTLMAuthenticationSid = 51,
			DigestAuthenticationSid = 52,
			SChannelAuthenticationSid = 53,
			ThisOrganizationSid = 54,
			OtherOrganizationSid = 55,
			BuiltinIncomingForestTrustBuildersSid = 56,
			BuiltinPerfMonitoringUsersSid = 57,
			BuiltinPerfLoggingUsersSid = 58,
			BuiltinAuthorizationAccessSid = 59,
			BuiltinTerminalServerLicenseServersSid = 60,
			BuiltinDCOMUsersSid = 61,
			BuiltinIUsersSid = 62,
			IUserSid = 63,
			BuiltinCryptoOperatorsSid = 64,
			UntrustedLabelSid = 65,
			LowLabelSid = 66,
			MediumLabelSid = 67,
			HighLabelSid = 68,
			SystemLabelSid = 69,
			WriteRestrictedCodeSid = 70,
			CreatorOwnerRightsSid = 71,
			CacheablePrincipalsGroupSid = 72,
			NonCacheablePrincipalsGroupSid = 73,
			EnterpriseReadonlyControllersSid = 74,
			AccountReadonlyControllersSid = 75,
			BuiltinEventLogReadersGroup = 76,
			NewEnterpriseReadonlyControllersSid = 77,
			BuiltinCertSvcDComAccessGroup = 78,
			MediumPlusLabelSid = 79,
			LocalLogonSid = 80,
			ConsoleLogonSid = 81,
			ThisOrganizationCertificateSid = 82,
			ApplicationPackageAuthoritySid = 83,
			BuiltinAnyPackageSid = 84,
			CapabilityInternetClientSid = 85,
			CapabilityInternetClientServerSid = 86,
			CapabilityPrivateNetworkClientServerSid = 87,
			CapabilityPicturesLibrarySid = 88,
			CapabilityVideosLibrarySid = 89,
			CapabilityMusicLibrarySid = 90,
			CapabilityDocumentsLibrarySid = 91,
			CapabilitySharedUserCertificatesSid = 92,
			CapabilityEnterpriseAuthenticationSid = 93,
			CapabilityRemovableStorageSid = 94,
			BuiltinRDSRemoteAccessServersSid = 95,
			BuiltinRDSEndpointServersSid = 96,
			BuiltinRDSManagementServersSid = 97,
			UserModeDriversSid = 98,
			BuiltinHyperVAdminsSid = 99,
			AccountCloneableControllersSid = 100,
			BuiltinAccessControlAssistanceOperatorsSid = 101,
			BuiltinRemoteManagementUsersSid = 102,
			AuthenticationAuthorityAssertedSid = 103,
			AuthenticationServiceAssertedSid = 104,
			LocalAccountSid = 105,
			LocalAccountAndAdministratorSid = 106,
			AccountProtectedUsersSid = 107,
			CapabilityAppointmentsSid = 108,
			CapabilityContactsSid = 109,
			AccountDefaultSystemManagedSid = 110,
			BuiltinDefaultSystemManagedGroupSid = 111,
			BuiltinStorageReplicaAdminsSid = 112,
			AccountKeyAdminsSid = 113,
			AccountEnterpriseKeyAdminsSid = 114,
			AuthenticationKeyTrustSid = 115,
			AuthenticationKeyPropertyMFASid = 116,
			AuthenticationKeyPropertyAttestationSid = 117,
			AuthenticationFreshKeyAuthSid = 118,
			BuiltinDeviceOwnersSid = 119,
		}
		public enum ACL_INFORMATION_CLASS : int32
		{
			RevisionInformation = 1,
			SizeInformation = 2,
		}
		public enum AUDIT_EVENT_TYPE : int32
		{
			ObjectAccess = 0,
			DirectoryServiceAccess = 1,
		}
		public enum SECURITY_IMPERSONATION_LEVEL : int32
		{
			Anonymous = 0,
			Identification = 1,
			Impersonation = 2,
			Delegation = 3,
		}
		public enum TOKEN_TYPE : int32
		{
			Primary = 1,
			Impersonation = 2,
		}
		public enum TOKEN_ELEVATION_TYPE : int32
		{
			Default = 1,
			Full = 2,
			Limited = 3,
		}
		public enum TOKEN_INFORMATION_CLASS : int32
		{
			TokenUser = 1,
			TokenGroups = 2,
			TokenPrivileges = 3,
			TokenOwner = 4,
			TokenPrimaryGroup = 5,
			TokenDefaultDacl = 6,
			TokenSource = 7,
			TokenType = 8,
			TokenImpersonationLevel = 9,
			TokenStatistics = 10,
			TokenRestrictedSids = 11,
			TokenSessionId = 12,
			TokenGroupsAndPrivileges = 13,
			TokenSessionReference = 14,
			TokenSandBoxInert = 15,
			TokenAuditPolicy = 16,
			TokenOrigin = 17,
			TokenElevationType = 18,
			TokenLinkedToken = 19,
			TokenElevation = 20,
			TokenHasRestrictions = 21,
			TokenAccessInformation = 22,
			TokenVirtualizationAllowed = 23,
			TokenVirtualizationEnabled = 24,
			TokenIntegrityLevel = 25,
			TokenUIAccess = 26,
			TokenMandatoryPolicy = 27,
			TokenLogonSid = 28,
			TokenIsAppContainer = 29,
			TokenCapabilities = 30,
			TokenAppContainerSid = 31,
			TokenAppContainerNumber = 32,
			TokenUserClaimAttributes = 33,
			TokenDeviceClaimAttributes = 34,
			TokenRestrictedUserClaimAttributes = 35,
			TokenRestrictedDeviceClaimAttributes = 36,
			TokenDeviceGroups = 37,
			TokenRestrictedDeviceGroups = 38,
			TokenSecurityAttributes = 39,
			TokenIsRestricted = 40,
			TokenProcessTrustLevel = 41,
			TokenPrivateNameSpace = 42,
			TokenSingletonAttributes = 43,
			TokenBnoIsolation = 44,
			TokenChildProcessFlags = 45,
			TokenIsLessPrivilegedAppContainer = 46,
			TokenIsSandboxed = 47,
			MaxTokenInfoClass = 48,
		}
		public enum MANDATORY_LEVEL : int32
		{
			Untrusted = 0,
			Low = 1,
			Medium = 2,
			High = 3,
			System = 4,
			SecureProcess = 5,
			Count = 6,
		}
		
		// --- Function Pointers ---
		
		public function NTSTATUS PLSA_AP_CALL_PACKAGE_UNTRUSTED(void** ClientRequest, void* ProtocolSubmitBuffer, void* ClientBufferBase, uint32 SubmitBufferLength, void** ProtocolReturnBuffer, out uint32 ReturnBufferLength, out int32 ProtocolStatus);
		public function uint32 SEC_THREAD_START(void* lpThreadParameter);
		
		// --- Structs ---

		[CRepr]
		public struct LLFILETIME
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public int64 ll;
				public FileTime ft;
			}
		}
		[CRepr]
		public struct GENERIC_MAPPING
		{
			public uint32 GenericRead;
			public uint32 GenericWrite;
			public uint32 GenericExecute;
			public uint32 GenericAll;
		}
		[CRepr]
		public struct LUID_AND_ATTRIBUTES
		{
			public LUID Luid;
			public TOKEN_PRIVILEGES_ATTRIBUTES Attributes;
		}
		[CRepr]
		public struct SID_IDENTIFIER_AUTHORITY
		{
			public uint8[6] Value;
		}
		[CRepr]
		public struct SID
		{
			public uint8 Revision;
			public uint8 SubAuthorityCount;
			public SID_IDENTIFIER_AUTHORITY IdentifierAuthority;
			public uint32[0] SubAuthority;
		}
		[CRepr, Union]
		public struct SE_SID
		{
			public SID Sid;
			public uint8[68] Buffer;
		}
		[CRepr]
		public struct SID_AND_ATTRIBUTES
		{
			public PSID Sid;
			public uint32 Attributes;
		}
		[CRepr]
		public struct SID_AND_ATTRIBUTES_HASH
		{
			public uint32 SidCount;
			public SID_AND_ATTRIBUTES* SidAttr;
			public uint[32] Hash;
		}
		[CRepr]
		public struct ACL
		{
			public uint8 AclRevision;
			public uint8 Sbz1;
			public uint16 AclSize;
			public uint16 AceCount;
			public uint16 Sbz2;
		}
		[CRepr]
		public struct ACE_HEADER
		{
			public uint8 AceType;
			public uint8 AceFlags;
			public uint16 AceSize;
		}
		[CRepr]
		public struct ACCESS_ALLOWED_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 SidStart;
		}
		[CRepr]
		public struct ACCESS_DENIED_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 SidStart;
		}
		[CRepr]
		public struct SYSTEM_AUDIT_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 SidStart;
		}
		[CRepr]
		public struct SYSTEM_ALARM_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 SidStart;
		}
		[CRepr]
		public struct SYSTEM_RESOURCE_ATTRIBUTE_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 SidStart;
		}
		[CRepr]
		public struct SYSTEM_SCOPED_POLICY_ID_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 SidStart;
		}
		[CRepr]
		public struct SYSTEM_MANDATORY_LABEL_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 SidStart;
		}
		[CRepr]
		public struct SYSTEM_PROCESS_TRUST_LABEL_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 SidStart;
		}
		[CRepr]
		public struct SYSTEM_ACCESS_FILTER_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 SidStart;
		}
		[CRepr]
		public struct ACCESS_ALLOWED_OBJECT_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public SYSTEM_AUDIT_OBJECT_ACE_FLAGS Flags;
			public Guid ObjectType;
			public Guid InheritedObjectType;
			public uint32 SidStart;
		}
		[CRepr]
		public struct ACCESS_DENIED_OBJECT_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public SYSTEM_AUDIT_OBJECT_ACE_FLAGS Flags;
			public Guid ObjectType;
			public Guid InheritedObjectType;
			public uint32 SidStart;
		}
		[CRepr]
		public struct SYSTEM_AUDIT_OBJECT_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public SYSTEM_AUDIT_OBJECT_ACE_FLAGS Flags;
			public Guid ObjectType;
			public Guid InheritedObjectType;
			public uint32 SidStart;
		}
		[CRepr]
		public struct SYSTEM_ALARM_OBJECT_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 Flags;
			public Guid ObjectType;
			public Guid InheritedObjectType;
			public uint32 SidStart;
		}
		[CRepr]
		public struct ACCESS_ALLOWED_CALLBACK_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 SidStart;
		}
		[CRepr]
		public struct ACCESS_DENIED_CALLBACK_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 SidStart;
		}
		[CRepr]
		public struct SYSTEM_AUDIT_CALLBACK_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 SidStart;
		}
		[CRepr]
		public struct SYSTEM_ALARM_CALLBACK_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public uint32 SidStart;
		}
		[CRepr]
		public struct ACCESS_ALLOWED_CALLBACK_OBJECT_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public SYSTEM_AUDIT_OBJECT_ACE_FLAGS Flags;
			public Guid ObjectType;
			public Guid InheritedObjectType;
			public uint32 SidStart;
		}
		[CRepr]
		public struct ACCESS_DENIED_CALLBACK_OBJECT_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public SYSTEM_AUDIT_OBJECT_ACE_FLAGS Flags;
			public Guid ObjectType;
			public Guid InheritedObjectType;
			public uint32 SidStart;
		}
		[CRepr]
		public struct SYSTEM_AUDIT_CALLBACK_OBJECT_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public SYSTEM_AUDIT_OBJECT_ACE_FLAGS Flags;
			public Guid ObjectType;
			public Guid InheritedObjectType;
			public uint32 SidStart;
		}
		[CRepr]
		public struct SYSTEM_ALARM_CALLBACK_OBJECT_ACE
		{
			public ACE_HEADER Header;
			public uint32 Mask;
			public SYSTEM_AUDIT_OBJECT_ACE_FLAGS Flags;
			public Guid ObjectType;
			public Guid InheritedObjectType;
			public uint32 SidStart;
		}
		[CRepr]
		public struct ACL_REVISION_INFORMATION
		{
			public uint32 AclRevision;
		}
		[CRepr]
		public struct ACL_SIZE_INFORMATION
		{
			public uint32 AceCount;
			public uint32 AclBytesInUse;
			public uint32 AclBytesFree;
		}
		[CRepr]
		public struct SECURITY_DESCRIPTOR
		{
			public uint8 Revision;
			public uint8 Sbz1;
			public uint16 Control;
			public PSID Owner;
			public PSID Group;
			public ACL* Sacl;
			public ACL* Dacl;
		}
		[CRepr]
		public struct OBJECT_TYPE_LIST
		{
			public uint16 Level;
			public uint16 Sbz;
			public Guid* ObjectType;
		}
		[CRepr]
		public struct PRIVILEGE_SET
		{
			public uint32 PrivilegeCount;
			public uint32 Control;
			public LUID_AND_ATTRIBUTES[0] Privilege;
		}
		[CRepr]
		public struct ACCESS_REASONS
		{
			public uint32[32] Data;
		}
		[CRepr]
		public struct SE_SECURITY_DESCRIPTOR
		{
			public uint32 Size;
			public uint32 Flags;
			public SECURITY_DESCRIPTOR* SecurityDescriptor;
		}
		[CRepr]
		public struct SE_ACCESS_REQUEST
		{
			public uint32 Size;
			public SE_SECURITY_DESCRIPTOR* SeSecurityDescriptor;
			public uint32 DesiredAccess;
			public uint32 PreviouslyGrantedAccess;
			public PSID PrincipalSelfSid;
			public GENERIC_MAPPING* GenericMapping;
			public uint32 ObjectTypeListCount;
			public OBJECT_TYPE_LIST* ObjectTypeList;
		}
		[CRepr]
		public struct SE_ACCESS_REPLY
		{
			public uint32 Size;
			public uint32 ResultListCount;
			public uint32* GrantedAccess;
			public uint32* AccessStatus;
			public ACCESS_REASONS* AccessReason;
			public PRIVILEGE_SET** Privileges;
		}
		[CRepr]
		public struct TOKEN_USER
		{
			public SID_AND_ATTRIBUTES User;
		}
		[CRepr]
		public struct TOKEN_GROUPS
		{
			public uint32 GroupCount;
			public SID_AND_ATTRIBUTES[0] Groups;
		}
		[CRepr]
		public struct TOKEN_PRIVILEGES
		{
			public uint32 PrivilegeCount;
			public LUID_AND_ATTRIBUTES[0] Privileges;
		}
		[CRepr]
		public struct TOKEN_OWNER
		{
			public PSID Owner;
		}
		[CRepr]
		public struct TOKEN_PRIMARY_GROUP
		{
			public PSID PrimaryGroup;
		}
		[CRepr]
		public struct TOKEN_DEFAULT_DACL
		{
			public ACL* DefaultDacl;
		}
		[CRepr]
		public struct TOKEN_USER_CLAIMS
		{
			public void* UserClaims;
		}
		[CRepr]
		public struct TOKEN_DEVICE_CLAIMS
		{
			public void* DeviceClaims;
		}
		[CRepr]
		public struct TOKEN_GROUPS_AND_PRIVILEGES
		{
			public uint32 SidCount;
			public uint32 SidLength;
			public SID_AND_ATTRIBUTES* Sids;
			public uint32 RestrictedSidCount;
			public uint32 RestrictedSidLength;
			public SID_AND_ATTRIBUTES* RestrictedSids;
			public uint32 PrivilegeCount;
			public uint32 PrivilegeLength;
			public LUID_AND_ATTRIBUTES* Privileges;
			public LUID AuthenticationId;
		}
		[CRepr]
		public struct TOKEN_LINKED_TOKEN
		{
			public Handle LinkedToken;
		}
		[CRepr]
		public struct TOKEN_ELEVATION
		{
			public uint32 TokenIsElevated;
		}
		[CRepr]
		public struct TOKEN_MANDATORY_LABEL
		{
			public SID_AND_ATTRIBUTES Label;
		}
		[CRepr]
		public struct TOKEN_MANDATORY_POLICY
		{
			public TOKEN_MANDATORY_POLICY_ID Policy;
		}
		[CRepr]
		public struct TOKEN_ACCESS_INFORMATION
		{
			public SID_AND_ATTRIBUTES_HASH* SidHash;
			public SID_AND_ATTRIBUTES_HASH* RestrictedSidHash;
			public TOKEN_PRIVILEGES* Privileges;
			public LUID AuthenticationId;
			public TOKEN_TYPE TokenType;
			public SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
			public TOKEN_MANDATORY_POLICY MandatoryPolicy;
			public uint32 Flags;
			public uint32 AppContainerNumber;
			public PSID PackageSid;
			public SID_AND_ATTRIBUTES_HASH* CapabilitiesHash;
			public PSID TrustLevelSid;
			public void* SecurityAttributes;
		}
		[CRepr]
		public struct TOKEN_AUDIT_POLICY
		{
			public uint8[30] PerUserPolicy;
		}
		[CRepr]
		public struct TOKEN_SOURCE
		{
			public char8[8] SourceName;
			public LUID SourceIdentifier;
		}
		[CRepr]
		public struct TOKEN_STATISTICS
		{
			public LUID TokenId;
			public LUID AuthenticationId;
			public LARGE_INTEGER ExpirationTime;
			public TOKEN_TYPE TokenType;
			public SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
			public uint32 DynamicCharged;
			public uint32 DynamicAvailable;
			public uint32 GroupCount;
			public uint32 PrivilegeCount;
			public LUID ModifiedId;
		}
		[CRepr]
		public struct TOKEN_CONTROL
		{
			public LUID TokenId;
			public LUID AuthenticationId;
			public LUID ModifiedId;
			public TOKEN_SOURCE TokenSource;
		}
		[CRepr]
		public struct TOKEN_ORIGIN
		{
			public LUID OriginatingLogonSession;
		}
		[CRepr]
		public struct TOKEN_APPCONTAINER_INFORMATION
		{
			public PSID TokenAppContainer;
		}
		[CRepr]
		public struct CLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE
		{
			public uint64 Version;
			public char16* Name;
		}
		[CRepr]
		public struct CLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE
		{
			public void* pValue;
			public uint32 ValueLength;
		}
		[CRepr]
		public struct CLAIM_SECURITY_ATTRIBUTE_V1
		{
			public char16* Name;
			public CLAIM_SECURITY_ATTRIBUTE_VALUE_TYPE ValueType;
			public uint16 Reserved;
			public uint32 Flags;
			public uint32 ValueCount;
			public _Values_e__Union Values;
			
			[CRepr, Union]
			public struct _Values_e__Union
			{
				public int64* pInt64;
				public uint64* pUint64;
				public char16** ppString;
				public CLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE* pFqbn;
				public CLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE* pOctetString;
			}
		}
		[CRepr]
		public struct CLAIM_SECURITY_ATTRIBUTE_RELATIVE_V1
		{
			public uint32 Name;
			public CLAIM_SECURITY_ATTRIBUTE_VALUE_TYPE ValueType;
			public uint16 Reserved;
			public CLAIM_SECURITY_ATTRIBUTE_FLAGS Flags;
			public uint32 ValueCount;
			public _Values_e__Union Values;
			
			[CRepr, Union]
			public struct _Values_e__Union
			{
				public uint32[0] pInt64;
				public uint32[0] pUint64;
				public uint32[0] ppString;
				public uint32[0] pFqbn;
				public uint32[0] pOctetString;
			}
		}
		[CRepr]
		public struct CLAIM_SECURITY_ATTRIBUTES_INFORMATION
		{
			public uint16 Version;
			public uint16 Reserved;
			public uint32 AttributeCount;
			public _Attribute_e__Union Attribute;
			
			[CRepr, Union]
			public struct _Attribute_e__Union
			{
				public CLAIM_SECURITY_ATTRIBUTE_V1* pAttributeV1;
			}
		}
		[CRepr]
		public struct SECURITY_QUALITY_OF_SERVICE
		{
			public uint32 Length;
			public SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
			public uint8 ContextTrackingMode;
			public bool EffectiveOnly;
		}
		[CRepr]
		public struct SE_IMPERSONATION_STATE
		{
			public void* Token;
			public bool CopyOnOpen;
			public bool EffectiveOnly;
			public SECURITY_IMPERSONATION_LEVEL Level;
		}
		[CRepr]
		public struct SECURITY_CAPABILITIES
		{
			public PSID AppContainerSid;
			public SID_AND_ATTRIBUTES* Capabilities;
			public uint32 CapabilityCount;
			public uint32 Reserved;
		}
		[CRepr]
		public struct QUOTA_LIMITS
		{
			public uint PagedPoolLimit;
			public uint NonPagedPoolLimit;
			public uint MinimumWorkingSetSize;
			public uint MaximumWorkingSetSize;
			public uint PagefileLimit;
			public LARGE_INTEGER TimeLimit;
		}
		
		// --- Functions ---
		
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AccessCheck(ref SECURITY_DESCRIPTOR pSecurityDescriptor, Handle ClientToken, uint32 DesiredAccess, ref GENERIC_MAPPING GenericMapping, PRIVILEGE_SET* PrivilegeSet, out uint32 PrivilegeSetLength, out uint32 GrantedAccess, out int32 AccessStatus);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AccessCheckAndAuditAlarmW(char16* SubsystemName, void* HandleId, char16* ObjectTypeName, char16* ObjectName, ref SECURITY_DESCRIPTOR SecurityDescriptor, uint32 DesiredAccess, ref GENERIC_MAPPING GenericMapping, IntBool ObjectCreation, out uint32 GrantedAccess, out int32 AccessStatus, out int32 pfGenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AccessCheckByType(ref SECURITY_DESCRIPTOR pSecurityDescriptor, PSID PrincipalSelfSid, Handle ClientToken, uint32 DesiredAccess, OBJECT_TYPE_LIST* ObjectTypeList, uint32 ObjectTypeListLength, ref GENERIC_MAPPING GenericMapping, PRIVILEGE_SET* PrivilegeSet, out uint32 PrivilegeSetLength, out uint32 GrantedAccess, out int32 AccessStatus);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AccessCheckByTypeResultList(ref SECURITY_DESCRIPTOR pSecurityDescriptor, PSID PrincipalSelfSid, Handle ClientToken, uint32 DesiredAccess, OBJECT_TYPE_LIST* ObjectTypeList, uint32 ObjectTypeListLength, ref GENERIC_MAPPING GenericMapping, PRIVILEGE_SET* PrivilegeSet, out uint32 PrivilegeSetLength, uint32* GrantedAccessList, uint32* AccessStatusList);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AccessCheckByTypeAndAuditAlarmW(char16* SubsystemName, void* HandleId, char16* ObjectTypeName, char16* ObjectName, ref SECURITY_DESCRIPTOR SecurityDescriptor, PSID PrincipalSelfSid, uint32 DesiredAccess, AUDIT_EVENT_TYPE AuditType, uint32 Flags, OBJECT_TYPE_LIST* ObjectTypeList, uint32 ObjectTypeListLength, ref GENERIC_MAPPING GenericMapping, IntBool ObjectCreation, out uint32 GrantedAccess, out int32 AccessStatus, out int32 pfGenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AccessCheckByTypeResultListAndAuditAlarmW(char16* SubsystemName, void* HandleId, char16* ObjectTypeName, char16* ObjectName, ref SECURITY_DESCRIPTOR SecurityDescriptor, PSID PrincipalSelfSid, uint32 DesiredAccess, AUDIT_EVENT_TYPE AuditType, uint32 Flags, OBJECT_TYPE_LIST* ObjectTypeList, uint32 ObjectTypeListLength, ref GENERIC_MAPPING GenericMapping, IntBool ObjectCreation, uint32* GrantedAccessList, uint32* AccessStatusList, out int32 pfGenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AccessCheckByTypeResultListAndAuditAlarmByHandleW(char16* SubsystemName, void* HandleId, Handle ClientToken, char16* ObjectTypeName, char16* ObjectName, ref SECURITY_DESCRIPTOR SecurityDescriptor, PSID PrincipalSelfSid, uint32 DesiredAccess, AUDIT_EVENT_TYPE AuditType, uint32 Flags, OBJECT_TYPE_LIST* ObjectTypeList, uint32 ObjectTypeListLength, ref GENERIC_MAPPING GenericMapping, IntBool ObjectCreation, uint32* GrantedAccessList, uint32* AccessStatusList, out int32 pfGenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddAccessAllowedAce(out ACL pAcl, uint32 dwAceRevision, uint32 AccessMask, PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddAccessAllowedAceEx(out ACL pAcl, uint32 dwAceRevision, ACE_FLAGS AceFlags, uint32 AccessMask, PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddAccessAllowedObjectAce(out ACL pAcl, uint32 dwAceRevision, ACE_FLAGS AceFlags, uint32 AccessMask, Guid* ObjectTypeGuid, Guid* InheritedObjectTypeGuid, PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddAccessDeniedAce(out ACL pAcl, uint32 dwAceRevision, uint32 AccessMask, PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddAccessDeniedAceEx(out ACL pAcl, uint32 dwAceRevision, ACE_FLAGS AceFlags, uint32 AccessMask, PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddAccessDeniedObjectAce(out ACL pAcl, uint32 dwAceRevision, ACE_FLAGS AceFlags, uint32 AccessMask, Guid* ObjectTypeGuid, Guid* InheritedObjectTypeGuid, PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddAce(out ACL pAcl, uint32 dwAceRevision, uint32 dwStartingAceIndex, void* pAceList, uint32 nAceListLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddAuditAccessAce(out ACL pAcl, uint32 dwAceRevision, uint32 dwAccessMask, PSID pSid, IntBool bAuditSuccess, IntBool bAuditFailure);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddAuditAccessAceEx(out ACL pAcl, uint32 dwAceRevision, ACE_FLAGS AceFlags, uint32 dwAccessMask, PSID pSid, IntBool bAuditSuccess, IntBool bAuditFailure);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddAuditAccessObjectAce(out ACL pAcl, uint32 dwAceRevision, ACE_FLAGS AceFlags, uint32 AccessMask, Guid* ObjectTypeGuid, Guid* InheritedObjectTypeGuid, PSID pSid, IntBool bAuditSuccess, IntBool bAuditFailure);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddMandatoryAce(out ACL pAcl, ACE_REVISION dwAceRevision, ACE_FLAGS AceFlags, uint32 MandatoryPolicy, PSID pLabelSid);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddResourceAttributeAce(out ACL pAcl, uint32 dwAceRevision, ACE_FLAGS AceFlags, uint32 AccessMask, PSID pSid, ref CLAIM_SECURITY_ATTRIBUTES_INFORMATION pAttributeInfo, out uint32 pReturnLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddScopedPolicyIDAce(out ACL pAcl, uint32 dwAceRevision, ACE_FLAGS AceFlags, uint32 AccessMask, PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AdjustTokenGroups(Handle TokenHandle, IntBool ResetToDefault, TOKEN_GROUPS* NewState, uint32 BufferLength, TOKEN_GROUPS* PreviousState, uint32* ReturnLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AdjustTokenPrivileges(Handle TokenHandle, IntBool DisableAllPrivileges, TOKEN_PRIVILEGES* NewState, uint32 BufferLength, TOKEN_PRIVILEGES* PreviousState, uint32* ReturnLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AllocateAndInitializeSid(ref SID_IDENTIFIER_AUTHORITY pIdentifierAuthority, uint8 nSubAuthorityCount, uint32 nSubAuthority0, uint32 nSubAuthority1, uint32 nSubAuthority2, uint32 nSubAuthority3, uint32 nSubAuthority4, uint32 nSubAuthority5, uint32 nSubAuthority6, uint32 nSubAuthority7, out PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AllocateLocallyUniqueId(out LUID Luid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AreAllAccessesGranted(uint32 GrantedAccess, uint32 DesiredAccess);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AreAnyAccessesGranted(uint32 GrantedAccess, uint32 DesiredAccess);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CheckTokenMembership(Handle TokenHandle, PSID SidToCheck, out IntBool IsMember);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CheckTokenCapability(Handle TokenHandle, PSID CapabilitySidToCheck, out IntBool HasCapability);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetAppContainerAce(ref ACL Acl, uint32 StartingAceIndex, void** AppContainerAce, uint32* AppContainerAceIndex);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CheckTokenMembershipEx(Handle TokenHandle, PSID SidToCheck, uint32 Flags, out IntBool IsMember);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ConvertToAutoInheritPrivateObjectSecurity(SECURITY_DESCRIPTOR* ParentDescriptor, ref SECURITY_DESCRIPTOR CurrentSecurityDescriptor, out SECURITY_DESCRIPTOR* NewSecurityDescriptor, Guid* ObjectType, bool IsDirectoryObject, ref GENERIC_MAPPING GenericMapping);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CopySid(uint32 nDestinationSidLength, PSID pDestinationSid, PSID pSourceSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreatePrivateObjectSecurity(SECURITY_DESCRIPTOR* ParentDescriptor, SECURITY_DESCRIPTOR* CreatorDescriptor, out SECURITY_DESCRIPTOR* NewDescriptor, IntBool IsDirectoryObject, Handle Token, ref GENERIC_MAPPING GenericMapping);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreatePrivateObjectSecurityEx(SECURITY_DESCRIPTOR* ParentDescriptor, SECURITY_DESCRIPTOR* CreatorDescriptor, out SECURITY_DESCRIPTOR* NewDescriptor, Guid* ObjectType, IntBool IsContainerObject, SECURITY_AUTO_INHERIT_FLAGS AutoInheritFlags, Handle Token, ref GENERIC_MAPPING GenericMapping);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreatePrivateObjectSecurityWithMultipleInheritance(SECURITY_DESCRIPTOR* ParentDescriptor, SECURITY_DESCRIPTOR* CreatorDescriptor, out SECURITY_DESCRIPTOR* NewDescriptor, Guid** ObjectTypes, uint32 GuidCount, IntBool IsContainerObject, SECURITY_AUTO_INHERIT_FLAGS AutoInheritFlags, Handle Token, ref GENERIC_MAPPING GenericMapping);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreateRestrictedToken(Handle ExistingTokenHandle, CREATE_RESTRICTED_TOKEN_FLAGS Flags, uint32 DisableSidCount, SID_AND_ATTRIBUTES* SidsToDisable, uint32 DeletePrivilegeCount, LUID_AND_ATTRIBUTES* PrivilegesToDelete, uint32 RestrictedSidCount, SID_AND_ATTRIBUTES* SidsToRestrict, out Handle NewTokenHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreateWellKnownSid(WELL_KNOWN_SID_TYPE WellKnownSidType, PSID DomainSid, PSID pSid, out uint32 cbSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EqualDomainSid(PSID pSid1, PSID pSid2, out IntBool pfEqual);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DeleteAce(out ACL pAcl, uint32 dwAceIndex);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DestroyPrivateObjectSecurity(ref SECURITY_DESCRIPTOR* ObjectDescriptor);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DuplicateToken(Handle ExistingTokenHandle, SECURITY_IMPERSONATION_LEVEL ImpersonationLevel, out Handle DuplicateTokenHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DuplicateTokenEx(Handle hExistingToken, TOKEN_ACCESS_MASK dwDesiredAccess, SecurityAttributes* lpTokenAttributes, SECURITY_IMPERSONATION_LEVEL ImpersonationLevel, TOKEN_TYPE TokenType, out Handle phNewToken);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EqualPrefixSid(PSID pSid1, PSID pSid2);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EqualSid(PSID pSid1, PSID pSid2);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool FindFirstFreeAce(ref ACL pAcl, void** pAce);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* FreeSid(PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetAce(ref ACL pAcl, uint32 dwAceIndex, void** pAce);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetAclInformation(ref ACL pAcl, void* pAclInformation, uint32 nAclInformationLength, ACL_INFORMATION_CLASS dwAclInformationClass);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetFileSecurityW(char16* lpFileName, uint32 RequestedInformation, SECURITY_DESCRIPTOR* pSecurityDescriptor, uint32 nLength, out uint32 lpnLengthNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetKernelObjectSecurity(Handle Handle, uint32 RequestedInformation, SECURITY_DESCRIPTOR* pSecurityDescriptor, uint32 nLength, out uint32 lpnLengthNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetLengthSid(PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPrivateObjectSecurity(ref SECURITY_DESCRIPTOR ObjectDescriptor, uint32 SecurityInformation, SECURITY_DESCRIPTOR* ResultantDescriptor, uint32 DescriptorLength, out uint32 ReturnLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetSecurityDescriptorControl(ref SECURITY_DESCRIPTOR pSecurityDescriptor, out uint16 pControl, out uint32 lpdwRevision);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetSecurityDescriptorDacl(ref SECURITY_DESCRIPTOR pSecurityDescriptor, out int32 lpbDaclPresent, out ACL* pDacl, out int32 lpbDaclDefaulted);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetSecurityDescriptorGroup(ref SECURITY_DESCRIPTOR pSecurityDescriptor, out PSID pGroup, out int32 lpbGroupDefaulted);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSecurityDescriptorLength(ref SECURITY_DESCRIPTOR pSecurityDescriptor);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetSecurityDescriptorOwner(ref SECURITY_DESCRIPTOR pSecurityDescriptor, out PSID pOwner, out int32 lpbOwnerDefaulted);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSecurityDescriptorRMControl(ref SECURITY_DESCRIPTOR SecurityDescriptor, out uint8 RMControl);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetSecurityDescriptorSacl(ref SECURITY_DESCRIPTOR pSecurityDescriptor, out int32 lpbSaclPresent, out ACL* pSacl, out int32 lpbSaclDefaulted);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SID_IDENTIFIER_AUTHORITY* GetSidIdentifierAuthority(PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSidLengthRequired(uint8 nSubAuthorityCount);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32* GetSidSubAuthority(PSID pSid, uint32 nSubAuthority);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* GetSidSubAuthorityCount(PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetTokenInformation(Handle TokenHandle, TOKEN_INFORMATION_CLASS TokenInformationClass, void* TokenInformation, uint32 TokenInformationLength, out uint32 ReturnLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetWindowsAccountDomainSid(PSID pSid, PSID pDomainSid, out uint32 cbDomainSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ImpersonateAnonymousToken(Handle ThreadHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ImpersonateLoggedOnUser(Handle hToken);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ImpersonateSelf(SECURITY_IMPERSONATION_LEVEL ImpersonationLevel);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool InitializeAcl(out ACL pAcl, uint32 nAclLength, uint32 dwAclRevision);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool InitializeSecurityDescriptor(out SECURITY_DESCRIPTOR pSecurityDescriptor, uint32 dwRevision);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool InitializeSid(PSID Sid, ref SID_IDENTIFIER_AUTHORITY pIdentifierAuthority, uint8 nSubAuthorityCount);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsTokenRestricted(Handle TokenHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsValidAcl(ref ACL pAcl);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsValidSecurityDescriptor(ref SECURITY_DESCRIPTOR pSecurityDescriptor);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsValidSid(PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsWellKnownSid(PSID pSid, WELL_KNOWN_SID_TYPE WellKnownSidType);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MakeAbsoluteSD(ref SECURITY_DESCRIPTOR pSelfRelativeSecurityDescriptor, SECURITY_DESCRIPTOR* pAbsoluteSecurityDescriptor, out uint32 lpdwAbsoluteSecurityDescriptorSize, ACL* pDacl, out uint32 lpdwDaclSize, ACL* pSacl, out uint32 lpdwSaclSize, PSID pOwner, out uint32 lpdwOwnerSize, PSID pPrimaryGroup, out uint32 lpdwPrimaryGroupSize);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MakeSelfRelativeSD(ref SECURITY_DESCRIPTOR pAbsoluteSecurityDescriptor, SECURITY_DESCRIPTOR* pSelfRelativeSecurityDescriptor, out uint32 lpdwBufferLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void MapGenericMask(out uint32 AccessMask, ref GENERIC_MAPPING GenericMapping);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ObjectCloseAuditAlarmW(char16* SubsystemName, void* HandleId, IntBool GenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ObjectDeleteAuditAlarmW(char16* SubsystemName, void* HandleId, IntBool GenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ObjectOpenAuditAlarmW(char16* SubsystemName, void* HandleId, char16* ObjectTypeName, char16* ObjectName, ref SECURITY_DESCRIPTOR pSecurityDescriptor, Handle ClientToken, uint32 DesiredAccess, uint32 GrantedAccess, PRIVILEGE_SET* Privileges, IntBool ObjectCreation, IntBool AccessGranted, out int32 GenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ObjectPrivilegeAuditAlarmW(char16* SubsystemName, void* HandleId, Handle ClientToken, uint32 DesiredAccess, ref PRIVILEGE_SET Privileges, IntBool AccessGranted);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool PrivilegeCheck(Handle ClientToken, out PRIVILEGE_SET RequiredPrivileges, out int32 pfResult);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool PrivilegedServiceAuditAlarmW(char16* SubsystemName, char16* ServiceName, Handle ClientToken, ref PRIVILEGE_SET Privileges, IntBool AccessGranted);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void QuerySecurityAccessMask(uint32 SecurityInformation, out uint32 DesiredAccess);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool RevertToSelf();
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetAclInformation(out ACL pAcl, void* pAclInformation, uint32 nAclInformationLength, ACL_INFORMATION_CLASS dwAclInformationClass);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetFileSecurityW(char16* lpFileName, uint32 SecurityInformation, ref SECURITY_DESCRIPTOR pSecurityDescriptor);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetKernelObjectSecurity(Handle Handle, uint32 SecurityInformation, ref SECURITY_DESCRIPTOR SecurityDescriptor);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetPrivateObjectSecurity(uint32 SecurityInformation, ref SECURITY_DESCRIPTOR ModificationDescriptor, out SECURITY_DESCRIPTOR* ObjectsSecurityDescriptor, ref GENERIC_MAPPING GenericMapping, Handle Token);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetPrivateObjectSecurityEx(uint32 SecurityInformation, ref SECURITY_DESCRIPTOR ModificationDescriptor, out SECURITY_DESCRIPTOR* ObjectsSecurityDescriptor, SECURITY_AUTO_INHERIT_FLAGS AutoInheritFlags, ref GENERIC_MAPPING GenericMapping, Handle Token);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SetSecurityAccessMask(uint32 SecurityInformation, out uint32 DesiredAccess);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetSecurityDescriptorControl(ref SECURITY_DESCRIPTOR pSecurityDescriptor, uint16 ControlBitsOfInterest, uint16 ControlBitsToSet);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetSecurityDescriptorDacl(out SECURITY_DESCRIPTOR pSecurityDescriptor, IntBool bDaclPresent, ACL* pDacl, IntBool bDaclDefaulted);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetSecurityDescriptorGroup(out SECURITY_DESCRIPTOR pSecurityDescriptor, PSID pGroup, IntBool bGroupDefaulted);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetSecurityDescriptorOwner(out SECURITY_DESCRIPTOR pSecurityDescriptor, PSID pOwner, IntBool bOwnerDefaulted);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetSecurityDescriptorRMControl(out SECURITY_DESCRIPTOR SecurityDescriptor, uint8* RMControl);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetSecurityDescriptorSacl(out SECURITY_DESCRIPTOR pSecurityDescriptor, IntBool bSaclPresent, ACL* pSacl, IntBool bSaclDefaulted);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetTokenInformation(Handle TokenHandle, TOKEN_INFORMATION_CLASS TokenInformationClass, void* TokenInformation, uint32 TokenInformationLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetCachedSigningLevel(Handle* SourceFiles, uint32 SourceFileCount, uint32 Flags, Handle TargetFile);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetCachedSigningLevel(Handle File, out uint32 Flags, out uint32 SigningLevel, uint8* Thumbprint, uint32* ThumbprintSize, uint32* ThumbprintAlgorithm);
		[Import("api-ms-win-security-base-l1-2-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DeriveCapabilitySidsFromName(char16* CapName, PSID** CapabilityGroupSids, out uint32 CapabilityGroupSidCount, PSID** CapabilitySids, out uint32 CapabilitySidCount);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern bool RtlNormalizeSecurityDescriptor(out SECURITY_DESCRIPTOR* SecurityDescriptor, uint32 SecurityDescriptorLength, SECURITY_DESCRIPTOR** NewSecurityDescriptor, uint32* NewSecurityDescriptorLength, bool CheckOnly);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetUserObjectSecurity(Handle hObj, ref OBJECT_SECURITY_INFORMATION pSIRequested, ref SECURITY_DESCRIPTOR pSID);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetUserObjectSecurity(Handle hObj, ref uint32 pSIRequested, SECURITY_DESCRIPTOR* pSID, uint32 nLength, out uint32 lpnLengthNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AccessCheckAndAuditAlarmA(char8* SubsystemName, void* HandleId, char8* ObjectTypeName, char8* ObjectName, ref SECURITY_DESCRIPTOR SecurityDescriptor, uint32 DesiredAccess, ref GENERIC_MAPPING GenericMapping, IntBool ObjectCreation, out uint32 GrantedAccess, out int32 AccessStatus, out int32 pfGenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AccessCheckByTypeAndAuditAlarmA(char8* SubsystemName, void* HandleId, char8* ObjectTypeName, char8* ObjectName, ref SECURITY_DESCRIPTOR SecurityDescriptor, PSID PrincipalSelfSid, uint32 DesiredAccess, AUDIT_EVENT_TYPE AuditType, uint32 Flags, OBJECT_TYPE_LIST* ObjectTypeList, uint32 ObjectTypeListLength, ref GENERIC_MAPPING GenericMapping, IntBool ObjectCreation, out uint32 GrantedAccess, out int32 AccessStatus, out int32 pfGenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AccessCheckByTypeResultListAndAuditAlarmA(char8* SubsystemName, void* HandleId, char8* ObjectTypeName, char8* ObjectName, ref SECURITY_DESCRIPTOR SecurityDescriptor, PSID PrincipalSelfSid, uint32 DesiredAccess, AUDIT_EVENT_TYPE AuditType, uint32 Flags, OBJECT_TYPE_LIST* ObjectTypeList, uint32 ObjectTypeListLength, ref GENERIC_MAPPING GenericMapping, IntBool ObjectCreation, uint32* GrantedAccess, uint32* AccessStatusList, out int32 pfGenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AccessCheckByTypeResultListAndAuditAlarmByHandleA(char8* SubsystemName, void* HandleId, Handle ClientToken, char8* ObjectTypeName, char8* ObjectName, ref SECURITY_DESCRIPTOR SecurityDescriptor, PSID PrincipalSelfSid, uint32 DesiredAccess, AUDIT_EVENT_TYPE AuditType, uint32 Flags, OBJECT_TYPE_LIST* ObjectTypeList, uint32 ObjectTypeListLength, ref GENERIC_MAPPING GenericMapping, IntBool ObjectCreation, uint32* GrantedAccess, uint32* AccessStatusList, out int32 pfGenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ObjectOpenAuditAlarmA(char8* SubsystemName, void* HandleId, char8* ObjectTypeName, char8* ObjectName, ref SECURITY_DESCRIPTOR pSecurityDescriptor, Handle ClientToken, uint32 DesiredAccess, uint32 GrantedAccess, PRIVILEGE_SET* Privileges, IntBool ObjectCreation, IntBool AccessGranted, out int32 GenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ObjectPrivilegeAuditAlarmA(char8* SubsystemName, void* HandleId, Handle ClientToken, uint32 DesiredAccess, ref PRIVILEGE_SET Privileges, IntBool AccessGranted);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ObjectCloseAuditAlarmA(char8* SubsystemName, void* HandleId, IntBool GenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ObjectDeleteAuditAlarmA(char8* SubsystemName, void* HandleId, IntBool GenerateOnClose);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool PrivilegedServiceAuditAlarmA(char8* SubsystemName, char8* ServiceName, Handle ClientToken, ref PRIVILEGE_SET Privileges, IntBool AccessGranted);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddConditionalAce(out ACL pAcl, uint32 dwAceRevision, ACE_FLAGS AceFlags, uint8 AceType, uint32 AccessMask, PSID pSid, char16* ConditionStr, out uint32 ReturnLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetFileSecurityA(char8* lpFileName, uint32 SecurityInformation, ref SECURITY_DESCRIPTOR pSecurityDescriptor);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetFileSecurityA(char8* lpFileName, uint32 RequestedInformation, SECURITY_DESCRIPTOR* pSecurityDescriptor, uint32 nLength, out uint32 lpnLengthNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LookupAccountSidA(char8* lpSystemName, PSID Sid, uint8* Name, out uint32 cchName, uint8* ReferencedDomainName, out uint32 cchReferencedDomainName, out SID_NAME_USE peUse);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LookupAccountSidW(char16* lpSystemName, PSID Sid, char16* Name, out uint32 cchName, char16* ReferencedDomainName, out uint32 cchReferencedDomainName, out SID_NAME_USE peUse);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LookupAccountNameA(char8* lpSystemName, char8* lpAccountName, PSID Sid, out uint32 cbSid, uint8* ReferencedDomainName, out uint32 cchReferencedDomainName, out SID_NAME_USE peUse);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LookupAccountNameW(char16* lpSystemName, char16* lpAccountName, PSID Sid, out uint32 cbSid, char16* ReferencedDomainName, out uint32 cchReferencedDomainName, out SID_NAME_USE peUse);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LookupPrivilegeValueA(char8* lpSystemName, char8* lpName, out LUID lpLuid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LookupPrivilegeValueW(char16* lpSystemName, char16* lpName, out LUID lpLuid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LookupPrivilegeNameA(char8* lpSystemName, ref LUID lpLuid, uint8* lpName, out uint32 cchName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LookupPrivilegeNameW(char16* lpSystemName, ref LUID lpLuid, char16* lpName, out uint32 cchName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LookupPrivilegeDisplayNameA(char8* lpSystemName, char8* lpName, uint8* lpDisplayName, out uint32 cchDisplayName, out uint32 lpLanguageId);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LookupPrivilegeDisplayNameW(char16* lpSystemName, char16* lpName, char16* lpDisplayName, out uint32 cchDisplayName, out uint32 lpLanguageId);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LogonUserA(char8* lpszUsername, char8* lpszDomain, char8* lpszPassword, LOGON32_LOGON dwLogonType, LOGON32_PROVIDER dwLogonProvider, out Handle phToken);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LogonUserW(char16* lpszUsername, char16* lpszDomain, char16* lpszPassword, LOGON32_LOGON dwLogonType, LOGON32_PROVIDER dwLogonProvider, out Handle phToken);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LogonUserExA(char8* lpszUsername, char8* lpszDomain, char8* lpszPassword, LOGON32_LOGON dwLogonType, LOGON32_PROVIDER dwLogonProvider, Handle* phToken, PSID* ppLogonSid, void** ppProfileBuffer, uint32* pdwProfileLength, QUOTA_LIMITS* pQuotaLimits);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LogonUserExW(char16* lpszUsername, char16* lpszDomain, char16* lpszPassword, LOGON32_LOGON dwLogonType, LOGON32_PROVIDER dwLogonProvider, Handle* phToken, PSID* ppLogonSid, void** ppProfileBuffer, uint32* pdwProfileLength, QUOTA_LIMITS* pQuotaLimits);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS RtlConvertSidToUnicodeString(out UnicodeString UnicodeString, PSID Sid, bool AllocateDestinationString);
	}
}
