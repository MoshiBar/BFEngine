using System;

// namespace Storage.DistributedFileSystem
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 FSCTL_DFS_BASE = 6;
		public const uint32 DFS_VOLUME_STATES = 15;
		public const uint32 DFS_VOLUME_STATE_OK = 1;
		public const uint32 DFS_VOLUME_STATE_INCONSISTENT = 2;
		public const uint32 DFS_VOLUME_STATE_OFFLINE = 3;
		public const uint32 DFS_VOLUME_STATE_ONLINE = 4;
		public const uint32 DFS_VOLUME_STATE_RESYNCHRONIZE = 16;
		public const uint32 DFS_VOLUME_STATE_STANDBY = 32;
		public const uint32 DFS_VOLUME_STATE_FORCE_SYNC = 64;
		public const uint32 DFS_VOLUME_FLAVORS = 768;
		public const uint32 DFS_VOLUME_FLAVOR_UNUSED1 = 0;
		public const uint32 DFS_VOLUME_FLAVOR_STANDALONE = 256;
		public const uint32 DFS_VOLUME_FLAVOR_AD_BLOB = 512;
		public const uint32 DFS_STORAGE_FLAVOR_UNUSED2 = 768;
		public const uint32 DFS_STORAGE_STATES = 15;
		public const uint32 DFS_STORAGE_STATE_OFFLINE = 1;
		public const uint32 DFS_STORAGE_STATE_ONLINE = 2;
		public const uint32 DFS_STORAGE_STATE_ACTIVE = 4;
		public const uint32 DFS_PROPERTY_FLAG_INSITE_REFERRALS = 1;
		public const uint32 DFS_PROPERTY_FLAG_ROOT_SCALABILITY = 2;
		public const uint32 DFS_PROPERTY_FLAG_SITE_COSTING = 4;
		public const uint32 DFS_PROPERTY_FLAG_TARGET_FAILBACK = 8;
		public const uint32 DFS_PROPERTY_FLAG_CLUSTER_ENABLED = 16;
		public const uint32 DFS_PROPERTY_FLAG_ABDE = 32;
		public const uint32 DFS_ADD_VOLUME = 1;
		public const uint32 DFS_RESTORE_VOLUME = 2;
		public const uint32 NET_DFS_SETDC_FLAGS = 0;
		public const uint32 NET_DFS_SETDC_TIMEOUT = 1;
		public const uint32 NET_DFS_SETDC_INITPKT = 2;
		public const uint32 DFS_SITE_PRIMARY = 1;
		public const uint32 DFS_MOVE_FLAG_REPLACE_IF_EXISTS = 1;
		public const uint32 DFS_FORCE_REMOVE = 2147483648;
		public const uint32 FSCTL_DFS_GET_PKT_ENTRY_STATE = 401340;
		
		// --- Enums ---
		
		public enum DFS_TARGET_PRIORITY_CLASS : int32
		{
			InvalidPriorityClass = -1,
			SiteCostNormalPriorityClass = 0,
			GlobalHighPriorityClass = 1,
			SiteCostHighPriorityClass = 2,
			SiteCostLowPriorityClass = 3,
			GlobalLowPriorityClass = 4,
		}
		public enum DFS_NAMESPACE_VERSION_ORIGIN : int32
		{
			COMBINED = 0,
			SERVER = 1,
			DOMAIN = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct DFS_TARGET_PRIORITY
		{
			public DFS_TARGET_PRIORITY_CLASS TargetPriorityClass;
			public uint16 TargetPriorityRank;
			public uint16 Reserved;
		}
		[CRepr]
		public struct DFS_INFO_1
		{
			public char16* EntryPath;
		}
		[CRepr]
		public struct DFS_INFO_1_32
		{
			public uint32 EntryPath;
		}
		[CRepr]
		public struct DFS_INFO_2
		{
			public char16* EntryPath;
			public char16* Comment;
			public uint32 State;
			public uint32 NumberOfStorages;
		}
		[CRepr]
		public struct DFS_INFO_2_32
		{
			public uint32 EntryPath;
			public uint32 Comment;
			public uint32 State;
			public uint32 NumberOfStorages;
		}
		[CRepr]
		public struct DFS_STORAGE_INFO
		{
			public uint32 State;
			public char16* ServerName;
			public char16* ShareName;
		}
		[CRepr]
		public struct DFS_STORAGE_INFO_0_32
		{
			public uint32 State;
			public uint32 ServerName;
			public uint32 ShareName;
		}
		[CRepr]
		public struct DFS_STORAGE_INFO_1
		{
			public uint32 State;
			public char16* ServerName;
			public char16* ShareName;
			public DFS_TARGET_PRIORITY TargetPriority;
		}
		[CRepr]
		public struct DFS_INFO_3
		{
			public char16* EntryPath;
			public char16* Comment;
			public uint32 State;
			public uint32 NumberOfStorages;
			public DFS_STORAGE_INFO* Storage;
		}
		[CRepr]
		public struct DFS_INFO_3_32
		{
			public uint32 EntryPath;
			public uint32 Comment;
			public uint32 State;
			public uint32 NumberOfStorages;
			public uint32 Storage;
		}
		[CRepr]
		public struct DFS_INFO_4
		{
			public char16* EntryPath;
			public char16* Comment;
			public uint32 State;
			public uint32 Timeout;
			public Guid Guid;
			public uint32 NumberOfStorages;
			public DFS_STORAGE_INFO* Storage;
		}
		[CRepr]
		public struct DFS_INFO_4_32
		{
			public uint32 EntryPath;
			public uint32 Comment;
			public uint32 State;
			public uint32 Timeout;
			public Guid Guid;
			public uint32 NumberOfStorages;
			public uint32 Storage;
		}
		[CRepr]
		public struct DFS_INFO_5
		{
			public char16* EntryPath;
			public char16* Comment;
			public uint32 State;
			public uint32 Timeout;
			public Guid Guid;
			public uint32 PropertyFlags;
			public uint32 MetadataSize;
			public uint32 NumberOfStorages;
		}
		[CRepr]
		public struct DFS_INFO_6
		{
			public char16* EntryPath;
			public char16* Comment;
			public uint32 State;
			public uint32 Timeout;
			public Guid Guid;
			public uint32 PropertyFlags;
			public uint32 MetadataSize;
			public uint32 NumberOfStorages;
			public DFS_STORAGE_INFO_1* Storage;
		}
		[CRepr]
		public struct DFS_INFO_7
		{
			public Guid GenerationGuid;
		}
		[CRepr]
		public struct DFS_INFO_8
		{
			public char16* EntryPath;
			public char16* Comment;
			public uint32 State;
			public uint32 Timeout;
			public Guid Guid;
			public uint32 PropertyFlags;
			public uint32 MetadataSize;
			public uint32 SdLengthReserved;
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
			public uint32 NumberOfStorages;
		}
		[CRepr]
		public struct DFS_INFO_9
		{
			public char16* EntryPath;
			public char16* Comment;
			public uint32 State;
			public uint32 Timeout;
			public Guid Guid;
			public uint32 PropertyFlags;
			public uint32 MetadataSize;
			public uint32 SdLengthReserved;
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
			public uint32 NumberOfStorages;
			public DFS_STORAGE_INFO_1* Storage;
		}
		[CRepr]
		public struct DFS_INFO_50
		{
			public uint32 NamespaceMajorVersion;
			public uint32 NamespaceMinorVersion;
			public uint64 NamespaceCapabilities;
		}
		[CRepr]
		public struct DFS_INFO_100
		{
			public char16* Comment;
		}
		[CRepr]
		public struct DFS_INFO_101
		{
			public uint32 State;
		}
		[CRepr]
		public struct DFS_INFO_102
		{
			public uint32 Timeout;
		}
		[CRepr]
		public struct DFS_INFO_103
		{
			public uint32 PropertyFlagMask;
			public uint32 PropertyFlags;
		}
		[CRepr]
		public struct DFS_INFO_104
		{
			public DFS_TARGET_PRIORITY TargetPriority;
		}
		[CRepr]
		public struct DFS_INFO_105
		{
			public char16* Comment;
			public uint32 State;
			public uint32 Timeout;
			public uint32 PropertyFlagMask;
			public uint32 PropertyFlags;
		}
		[CRepr]
		public struct DFS_INFO_106
		{
			public uint32 State;
			public DFS_TARGET_PRIORITY TargetPriority;
		}
		[CRepr]
		public struct DFS_INFO_107
		{
			public char16* Comment;
			public uint32 State;
			public uint32 Timeout;
			public uint32 PropertyFlagMask;
			public uint32 PropertyFlags;
			public uint32 SdLengthReserved;
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
		}
		[CRepr]
		public struct DFS_INFO_150
		{
			public uint32 SdLengthReserved;
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
		}
		[CRepr]
		public struct DFS_INFO_200
		{
			public char16* FtDfsName;
		}
		[CRepr]
		public struct DFS_INFO_300
		{
			public uint32 Flags;
			public char16* DfsName;
		}
		[CRepr]
		public struct DFS_SITENAME_INFO
		{
			public uint32 SiteFlags;
			public char16* SiteName;
		}
		[CRepr]
		public struct DFS_SITELIST_INFO
		{
			public uint32 cSites;
			public DFS_SITENAME_INFO[0] Site;
		}
		[CRepr]
		public struct DFS_SUPPORTED_NAMESPACE_VERSION_INFO
		{
			public uint32 DomainDfsMajorVersion;
			public uint32 DomainDfsMinorVersion;
			public uint64 DomainDfsCapabilities;
			public uint32 StandaloneDfsMajorVersion;
			public uint32 StandaloneDfsMinorVersion;
			public uint64 StandaloneDfsCapabilities;
		}
		[CRepr]
		public struct DFS_GET_PKT_ENTRY_STATE_ARG
		{
			public uint16 DfsEntryPathLen;
			public uint16 ServerNameLen;
			public uint16 ShareNameLen;
			public uint32 Level;
			public char16[0] Buffer;
		}
		
		// --- Functions ---
		
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsAdd(char16* DfsEntryPath, char16* ServerName, char16* ShareName, char16* Comment, uint32 Flags);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsAddStdRoot(char16* ServerName, char16* RootShare, char16* Comment, uint32 Flags);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsRemoveStdRoot(char16* ServerName, char16* RootShare, uint32 Flags);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsAddFtRoot(char16* ServerName, char16* RootShare, char16* FtDfsName, char16* Comment, uint32 Flags);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsRemoveFtRoot(char16* ServerName, char16* RootShare, char16* FtDfsName, uint32 Flags);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsRemoveFtRootForced(char16* DomainName, char16* ServerName, char16* RootShare, char16* FtDfsName, uint32 Flags);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsRemove(char16* DfsEntryPath, char16* ServerName, char16* ShareName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsEnum(char16* DfsName, uint32 Level, uint32 PrefMaxLen, out uint8* Buffer, out uint32 EntriesRead, out uint32 ResumeHandle);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsGetInfo(char16* DfsEntryPath, char16* ServerName, char16* ShareName, uint32 Level, out uint8* Buffer);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsSetInfo(char16* DfsEntryPath, char16* ServerName, char16* ShareName, uint32 Level, ref uint8 Buffer);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsGetClientInfo(char16* DfsEntryPath, char16* ServerName, char16* ShareName, uint32 Level, out uint8* Buffer);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsSetClientInfo(char16* DfsEntryPath, char16* ServerName, char16* ShareName, uint32 Level, ref uint8 Buffer);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsMove(char16* OldDfsEntryPath, char16* NewDfsEntryPath, uint32 Flags);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsAddRootTarget(char16* pDfsPath, char16* pTargetPath, uint32 MajorVersion, char16* pComment, uint32 Flags);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsRemoveRootTarget(char16* pDfsPath, char16* pTargetPath, uint32 Flags);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsGetSecurity(char16* DfsEntryPath, uint32 SecurityInformation, out SECURITY_DESCRIPTOR* ppSecurityDescriptor, out uint32 lpcbSecurityDescriptor);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsSetSecurity(char16* DfsEntryPath, uint32 SecurityInformation, ref SECURITY_DESCRIPTOR pSecurityDescriptor);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsGetStdContainerSecurity(char16* MachineName, uint32 SecurityInformation, out SECURITY_DESCRIPTOR* ppSecurityDescriptor, out uint32 lpcbSecurityDescriptor);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsSetStdContainerSecurity(char16* MachineName, uint32 SecurityInformation, ref SECURITY_DESCRIPTOR pSecurityDescriptor);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsGetFtContainerSecurity(char16* DomainName, uint32 SecurityInformation, out SECURITY_DESCRIPTOR* ppSecurityDescriptor, out uint32 lpcbSecurityDescriptor);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsSetFtContainerSecurity(char16* DomainName, uint32 SecurityInformation, ref SECURITY_DESCRIPTOR pSecurityDescriptor);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetDfsGetSupportedNamespaceVersion(DFS_NAMESPACE_VERSION_ORIGIN Origin, char16* pName, out DFS_SUPPORTED_NAMESPACE_VERSION_INFO* ppVersionInfo);
	}
}
