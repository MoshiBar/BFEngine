using System;
using System.IO;
using static Win32.Win32;
using static System.Windows;

// namespace System.Registry
namespace Win32.System
{
	static class Registry
	{
		// --- Constants ---
		
		public const HKey HKEY_CLASSES_ROOT = (.)-2147483648;
		public const HKey HKEY_CURRENT_USER = (.)-2147483647;
		public const HKey HKEY_LOCAL_MACHINE = (.)-2147483646;
		public const HKey HKEY_USERS = (.)-2147483645;
		public const HKey HKEY_PERFORMANCE_DATA = (.)-2147483644;
		public const HKey HKEY_PERFORMANCE_TEXT = (.)-2147483568;
		public const HKey HKEY_PERFORMANCE_NLSTEXT = (.)-2147483552;
		public const HKey HKEY_CURRENT_CONFIG = (.)-2147483643;
		public const HKey HKEY_DYN_DATA = (.)-2147483642;
		public const HKey HKEY_CURRENT_USER_LOCAL_SETTINGS = (.)-2147483641;
		public const uint32 RRF_SUBKEY_WOW6464KEY = 65536;
		public const uint32 RRF_SUBKEY_WOW6432KEY = 131072;
		public const uint32 RRF_WOW64_MASK = 196608;
		public const uint32 RRF_NOEXPAND = 268435456;
		public const uint32 RRF_ZEROONFAILURE = 536870912;
		public const uint32 REG_PROCESS_APPKEY = 1;
		public const uint32 REG_USE_CURRENT_SECURITY_CONTEXT = 2;
		public const uint32 PROVIDER_KEEPS_VALUE_LENGTH = 1;
		public const uint32 REG_MUI_STRING_TRUNCATE = 1;
		public const uint32 REG_SECURE_CONNECTION = 1;
		public const uint32 REGSTR_MAX_VALUE_LENGTH = 256;
		public const uint32 IT_COMPACT = 0;
		public const uint32 IT_TYPICAL = 1;
		public const uint32 IT_PORTABLE = 2;
		public const uint32 IT_CUSTOM = 3;
		public const uint32 DRIVERSIGN_NONE = 0;
		public const uint32 DRIVERSIGN_WARNING = 1;
		public const uint32 DRIVERSIGN_BLOCKING = 2;
		public const int32 DOSOPTGF_DEFCLEAN = 1;
		public const int32 DOSOPTF_DEFAULT = 1;
		public const int32 DOSOPTF_SUPPORTED = 2;
		public const int32 DOSOPTF_ALWAYSUSE = 4;
		public const int32 DOSOPTF_USESPMODE = 8;
		public const int32 DOSOPTF_PROVIDESUMB = 16;
		public const int32 DOSOPTF_NEEDSETUP = 32;
		public const int32 DOSOPTF_INDOSSTART = 64;
		public const int32 DOSOPTF_MULTIPLE = 128;
		public const int32 SUF_FIRSTTIME = 1;
		public const int32 SUF_EXPRESS = 2;
		public const int32 SUF_BATCHINF = 4;
		public const int32 SUF_CLEAN = 8;
		public const int32 SUF_INSETUP = 16;
		public const int32 SUF_NETSETUP = 32;
		public const int32 SUF_NETHDBOOT = 64;
		public const int32 SUF_NETRPLBOOT = 128;
		public const int32 SUF_SBSCOPYOK = 256;
		public const uint32 VPDF_DISABLEPWRMGMT = 1;
		public const uint32 VPDF_FORCEAPM10MODE = 2;
		public const uint32 VPDF_SKIPINTELSLCHECK = 4;
		public const uint32 VPDF_DISABLEPWRSTATUSPOLL = 8;
		public const uint32 VPDF_DISABLERINGRESUME = 16;
		public const uint32 VPDF_SHOWMULTIBATT = 32;
		public const uint32 BIF_SHOWSIMILARDRIVERS = 1;
		public const uint32 BIF_RAWDEVICENEEDSDRIVER = 2;
		public const int32 PCMCIA_OPT_HAVE_SOCKET = 1;
		public const int32 PCMCIA_OPT_AUTOMEM = 4;
		public const int32 PCMCIA_OPT_NO_SOUND = 8;
		public const int32 PCMCIA_OPT_NO_AUDIO = 16;
		public const int32 PCMCIA_OPT_NO_APMREMOVE = 32;
		public const uint32 PCMCIA_DEF_MEMBEGIN = 786432;
		public const uint32 PCMCIA_DEF_MEMEND = 16777215;
		public const uint32 PCMCIA_DEF_MEMLEN = 4096;
		public const uint32 PCMCIA_DEF_MIN_REGION = 65536;
		public const int32 PCI_OPTIONS_USE_BIOS = 1;
		public const int32 PCI_OPTIONS_USE_IRQ_STEERING = 2;
		public const int32 AGP_FLAG_NO_1X_RATE = 1;
		public const int32 AGP_FLAG_NO_2X_RATE = 2;
		public const int32 AGP_FLAG_NO_4X_RATE = 4;
		public const int32 AGP_FLAG_NO_8X_RATE = 8;
		public const int32 AGP_FLAG_REVERSE_INITIALIZATION = 128;
		public const int32 AGP_FLAG_NO_SBA_ENABLE = 256;
		public const int32 AGP_FLAG_NO_FW_ENABLE = 512;
		public const int32 AGP_FLAG_SPECIAL_TARGET = 1048575;
		public const int32 AGP_FLAG_SPECIAL_RESERVE = 1015808;
		public const uint32 REGSTR_VAL_MAX_HCID_LEN = 1024;
		public const uint32 REGDF_NOTDETIO = 1;
		public const uint32 REGDF_NOTDETMEM = 2;
		public const uint32 REGDF_NOTDETIRQ = 4;
		public const uint32 REGDF_NOTDETDMA = 8;
		public const uint32 REGDF_NEEDFULLCONFIG = 16;
		public const uint32 REGDF_GENFORCEDCONFIG = 32;
		public const uint32 REGDF_NODETCONFIG = 32768;
		public const uint32 REGDF_CONFLICTIO = 65536;
		public const uint32 REGDF_CONFLICTMEM = 131072;
		public const uint32 REGDF_CONFLICTIRQ = 262144;
		public const uint32 REGDF_CONFLICTDMA = 524288;
		public const uint32 REGDF_MAPIRQ2TO9 = 1048576;
		public const uint32 REGDF_NOTVERIFIED = 2147483648;
		public const uint32 APMMENUSUSPEND_DISABLED = 0;
		public const uint32 APMMENUSUSPEND_ENABLED = 1;
		public const uint32 APMMENUSUSPEND_UNDOCKED = 2;
		public const uint32 APMMENUSUSPEND_NOCHANGE = 128;
		public const uint32 APMTIMEOUT_DISABLED = 0;
		public const uint32 CONFIGFLAG_DISABLED = 1;
		public const uint32 CONFIGFLAG_REMOVED = 2;
		public const uint32 CONFIGFLAG_MANUAL_INSTALL = 4;
		public const uint32 CONFIGFLAG_IGNORE_BOOT_LC = 8;
		public const uint32 CONFIGFLAG_NET_BOOT = 16;
		public const uint32 CONFIGFLAG_REINSTALL = 32;
		public const uint32 CONFIGFLAG_FAILEDINSTALL = 64;
		public const uint32 CONFIGFLAG_CANTSTOPACHILD = 128;
		public const uint32 CONFIGFLAG_OKREMOVEROM = 256;
		public const uint32 CONFIGFLAG_NOREMOVEEXIT = 512;
		public const uint32 CONFIGFLAG_FINISH_INSTALL = 1024;
		public const uint32 CONFIGFLAG_NEEDS_FORCED_CONFIG = 2048;
		public const uint32 CONFIGFLAG_NETBOOT_CARD = 4096;
		public const uint32 CONFIGFLAG_PARTIAL_LOG_CONF = 8192;
		public const uint32 CONFIGFLAG_SUPPRESS_SURPRISE = 16384;
		public const uint32 CONFIGFLAG_VERIFY_HARDWARE = 32768;
		public const uint32 CONFIGFLAG_FINISHINSTALL_UI = 65536;
		public const uint32 CONFIGFLAG_FINISHINSTALL_ACTION = 131072;
		public const uint32 CONFIGFLAG_BOOT_DEVICE = 262144;
		public const uint32 CONFIGFLAG_NEEDS_CLASS_CONFIG = 524288;
		public const uint32 CSCONFIGFLAG_BITS = 7;
		public const uint32 CSCONFIGFLAG_DISABLED = 1;
		public const uint32 CSCONFIGFLAG_DO_NOT_CREATE = 2;
		public const uint32 CSCONFIGFLAG_DO_NOT_START = 4;
		public const uint32 DMSTATEFLAG_APPLYTOALL = 1;
		public const uint32 NUM_RESOURCE_MAP = 256;
		public const uint32 MF_FLAGS_EVEN_IF_NO_RESOURCE = 1;
		public const uint32 MF_FLAGS_NO_CREATE_IF_NO_RESOURCE = 2;
		public const uint32 MF_FLAGS_FILL_IN_UNKNOWN_RESOURCE = 4;
		public const uint32 MF_FLAGS_CREATE_BUT_NO_SHOW_DISABLED = 8;
		public const uint32 EISAFLAG_NO_IO_MERGE = 1;
		public const uint32 EISAFLAG_SLOT_IO_FIRST = 2;
		public const uint32 EISA_NO_MAX_FUNCTION = 255;
		public const uint32 NUM_EISA_RANGES = 4;
		public const uint32 PCIC_DEFAULT_IRQMASK = 20152;
		public const uint32 PCIC_DEFAULT_NUMSOCKETS = 0;
		public const uint32 DTRESULTOK = 0;
		public const uint32 DTRESULTFIX = 1;
		public const uint32 DTRESULTPROB = 2;
		public const uint32 DTRESULTPART = 3;
		public const uint32 PIR_OPTION_ENABLED = 1;
		public const uint32 PIR_OPTION_REGISTRY = 2;
		public const uint32 PIR_OPTION_MSSPEC = 4;
		public const uint32 PIR_OPTION_REALMODE = 8;
		public const uint32 PIR_OPTION_DEFAULT = 15;
		public const uint32 PIR_STATUS_ERROR = 0;
		public const uint32 PIR_STATUS_ENABLED = 1;
		public const uint32 PIR_STATUS_DISABLED = 2;
		public const uint32 PIR_STATUS_MAX = 3;
		public const uint32 PIR_STATUS_TABLE_REGISTRY = 0;
		public const uint32 PIR_STATUS_TABLE_MSSPEC = 1;
		public const uint32 PIR_STATUS_TABLE_REALMODE = 2;
		public const uint32 PIR_STATUS_TABLE_NONE = 3;
		public const uint32 PIR_STATUS_TABLE_ERROR = 4;
		public const uint32 PIR_STATUS_TABLE_BAD = 5;
		public const uint32 PIR_STATUS_TABLE_SUCCESS = 6;
		public const uint32 PIR_STATUS_TABLE_MAX = 7;
		public const uint32 PIR_STATUS_MINIPORT_NORMAL = 0;
		public const uint32 PIR_STATUS_MINIPORT_COMPATIBLE = 1;
		public const uint32 PIR_STATUS_MINIPORT_OVERRIDE = 2;
		public const uint32 PIR_STATUS_MINIPORT_NONE = 3;
		public const uint32 PIR_STATUS_MINIPORT_ERROR = 4;
		public const uint32 PIR_STATUS_MINIPORT_NOKEY = 5;
		public const uint32 PIR_STATUS_MINIPORT_SUCCESS = 6;
		public const uint32 PIR_STATUS_MINIPORT_INVALID = 7;
		public const uint32 PIR_STATUS_MINIPORT_MAX = 8;
		public const uint32 LASTGOOD_OPERATION = 255;
		public const uint32 LASTGOOD_OPERATION_NOPOSTPROC = 0;
		public const uint32 LASTGOOD_OPERATION_DELETE = 1;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum REG_VALUE_TYPE : uint32
		{
			NONE = 0,
			SZ = 1,
			EXPAND_SZ = 2,
			BINARY = 3,
			DWORD = 4,
			DWORD_LITTLE_ENDIAN = 4,
			DWORD_BIG_ENDIAN = 5,
			LINK = 6,
			MULTI_SZ = 7,
			RESOURCE_LIST = 8,
			FULL_RESOURCE_DESCRIPTOR = 9,
			RESOURCE_REQUIREMENTS_LIST = 10,
			QWORD = 11,
			QWORD_LITTLE_ENDIAN = 11,
		}
		[AllowDuplicates]
		public enum REG_SAM_FLAGS : uint32
		{
			QUERY_VALUE = 1,
			SET_VALUE = 2,
			CREATE_SUB_KEY = 4,
			ENUMERATE_SUB_KEYS = 8,
			NOTIFY = 16,
			CREATE_LINK = 32,
			WOW64_32KEY = 512,
			WOW64_64KEY = 256,
			WOW64_RES = 768,
			READ = 131097,
			WRITE = 131078,
			EXECUTE = 131097,
			ALL_ACCESS = 983103,
		}
		[AllowDuplicates]
		public enum REG_OPEN_CREATE_OPTIONS : uint32
		{
			RESERVED = 0,
			NON_VOLATILE = 0,
			VOLATILE = 1,
			CREATE_LINK = 2,
			BACKUP_RESTORE = 4,
			OPEN_LINK = 8,
			DONT_VIRTUALIZE = 16,
		}
		public enum REG_CREATE_KEY_DISPOSITION : uint32
		{
			CREATED_NEW_KEY = 1,
			OPENED_EXISTING_KEY = 2,
		}
		public enum REG_SAVE_FORMAT : uint32
		{
			STANDARD_FORMAT = 1,
			LATEST_FORMAT = 2,
			NO_COMPRESSION = 4,
		}
		public enum REG_RESTORE_KEY_FLAGS : int32
		{
			FORCE_RESTORE = 8,
			WHOLE_HIVE_VOLATILE = 1,
		}
		public enum REG_NOTIFY_FILTER : uint32
		{
			CHANGE_NAME = 1,
			CHANGE_ATTRIBUTES = 2,
			CHANGE_LAST_SET = 4,
			CHANGE_SECURITY = 8,
			THREAD_AGNOSTIC = 268435456,
		}
		public enum RRF_RT : uint32
		{
			ANY = 65535,
			DWORD = 24,
			QWORD = 72,
			REG_BINARY = 8,
			REG_DWORD = 16,
			REG_EXPAND_SZ = 4,
			REG_MULTI_SZ = 32,
			REG_NONE = 1,
			REG_QWORD = 64,
			REG_SZ = 2,
		}
		
		// --- Function Pointers ---
		
		public function uint32 PQUERYHANDLER(void* keycontext, out val_context val_list, uint32 num_vals, void* outputbuffer, out uint32 total_outlen, uint32 input_blen);
		
		// --- Structs ---
		
		[CRepr]
		public struct val_context
		{
			public int32 valuelen;
			public void* value_context;
			public void* val_buff_ptr;
		}
		[CRepr]
		public struct pvalueA
		{
			public char8* pv_valuename;
			public int32 pv_valuelen;
			public void* pv_value_context;
			public uint32 pv_type;
		}
		[CRepr]
		public struct pvalueW
		{
			public char16* pv_valuename;
			public int32 pv_valuelen;
			public void* pv_value_context;
			public uint32 pv_type;
		}
		[CRepr]
		public struct provider_info
		{
			public PQUERYHANDLER pi_R0_1val;
			public PQUERYHANDLER pi_R0_allvals;
			public PQUERYHANDLER pi_R3_1val;
			public PQUERYHANDLER pi_R3_allvals;
			public uint32 pi_flags;
			public void* pi_key_context;
		}
		[CRepr]
		public struct VALENTA
		{
			public char8* ve_valuename;
			public uint32 ve_valuelen;
			public uint ve_valueptr;
			public REG_VALUE_TYPE ve_type;
		}
		[CRepr]
		public struct VALENTW
		{
			public char16* ve_valuename;
			public uint32 ve_valuelen;
			public uint ve_valueptr;
			public REG_VALUE_TYPE ve_type;
		}
		[CRepr]
		public struct DSKTLSYSTEMTIME
		{
			public uint16 wYear;
			public uint16 wMonth;
			public uint16 wDayOfWeek;
			public uint16 wDay;
			public uint16 wHour;
			public uint16 wMinute;
			public uint16 wSecond;
			public uint16 wMilliseconds;
			public uint16 wResult;
		}
		
		// --- Functions ---
		
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegCloseKey(HKey hKey);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegOverridePredefKey(HKey hKey, HKey hNewHKey);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegOpenUserClassesRoot(Handle hToken, uint32 dwOptions, uint32 samDesired, out HKey phkResult);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegOpenCurrentUser(uint32 samDesired, out HKey phkResult);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDisablePredefinedCache();
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDisablePredefinedCacheEx();
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegConnectRegistryA(char8* lpMachineName, HKey hKey, out HKey phkResult);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegConnectRegistryW(char16* lpMachineName, HKey hKey, out HKey phkResult);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegConnectRegistryExA(char8* lpMachineName, HKey hKey, uint32 Flags, out HKey phkResult);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegConnectRegistryExW(char16* lpMachineName, HKey hKey, uint32 Flags, out HKey phkResult);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegCreateKeyA(HKey hKey, char8* lpSubKey, out HKey phkResult);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegCreateKeyW(HKey hKey, char16* lpSubKey, out HKey phkResult);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegCreateKeyExA(HKey hKey, char8* lpSubKey, uint32 Reserved, char8* lpClass, REG_OPEN_CREATE_OPTIONS dwOptions, REG_SAM_FLAGS samDesired, SecurityAttributes* lpSecurityAttributes, out HKey phkResult, REG_CREATE_KEY_DISPOSITION* lpdwDisposition);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegCreateKeyExW(HKey hKey, char16* lpSubKey, uint32 Reserved, char16* lpClass, REG_OPEN_CREATE_OPTIONS dwOptions, REG_SAM_FLAGS samDesired, SecurityAttributes* lpSecurityAttributes, out HKey phkResult, REG_CREATE_KEY_DISPOSITION* lpdwDisposition);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegCreateKeyTransactedA(HKey hKey, char8* lpSubKey, uint32 Reserved, char8* lpClass, REG_OPEN_CREATE_OPTIONS dwOptions, REG_SAM_FLAGS samDesired, SecurityAttributes* lpSecurityAttributes, out HKey phkResult, REG_CREATE_KEY_DISPOSITION* lpdwDisposition, Handle hTransaction, void* pExtendedParemeter);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegCreateKeyTransactedW(HKey hKey, char16* lpSubKey, uint32 Reserved, char16* lpClass, REG_OPEN_CREATE_OPTIONS dwOptions, REG_SAM_FLAGS samDesired, SecurityAttributes* lpSecurityAttributes, out HKey phkResult, REG_CREATE_KEY_DISPOSITION* lpdwDisposition, Handle hTransaction, void* pExtendedParemeter);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDeleteKeyA(HKey hKey, char8* lpSubKey);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDeleteKeyW(HKey hKey, char16* lpSubKey);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDeleteKeyExA(HKey hKey, char8* lpSubKey, uint32 samDesired, uint32 Reserved);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDeleteKeyExW(HKey hKey, char16* lpSubKey, uint32 samDesired, uint32 Reserved);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDeleteKeyTransactedA(HKey hKey, char8* lpSubKey, uint32 samDesired, uint32 Reserved, Handle hTransaction, void* pExtendedParameter);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDeleteKeyTransactedW(HKey hKey, char16* lpSubKey, uint32 samDesired, uint32 Reserved, Handle hTransaction, void* pExtendedParameter);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RegDisableReflectionKey(HKey hBase);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RegEnableReflectionKey(HKey hBase);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RegQueryReflectionKey(HKey hBase, out IntBool bIsReflectionDisabled);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDeleteValueA(HKey hKey, char8* lpValueName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDeleteValueW(HKey hKey, char16* lpValueName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegEnumKeyA(HKey hKey, uint32 dwIndex, uint8* lpName, uint32 cchName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegEnumKeyW(HKey hKey, uint32 dwIndex, char16* lpName, uint32 cchName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegEnumKeyExA(HKey hKey, uint32 dwIndex, uint8* lpName, out uint32 lpcchName, out uint32 lpReserved, uint8* lpClass, uint32* lpcchClass, FileTime* lpftLastWriteTime);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegEnumKeyExW(HKey hKey, uint32 dwIndex, char16* lpName, out uint32 lpcchName, out uint32 lpReserved, char16* lpClass, uint32* lpcchClass, FileTime* lpftLastWriteTime);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegEnumValueA(HKey hKey, uint32 dwIndex, uint8* lpValueName, out uint32 lpcchValueName, out uint32 lpReserved, uint32* lpType, uint8* lpData, uint32* lpcbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegEnumValueW(HKey hKey, uint32 dwIndex, char16* lpValueName, out uint32 lpcchValueName, out uint32 lpReserved, uint32* lpType, uint8* lpData, uint32* lpcbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegFlushKey(HKey hKey);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegGetKeySecurity(HKey hKey, uint32 SecurityInformation, SECURITY_DESCRIPTOR* pSecurityDescriptor, out uint32 lpcbSecurityDescriptor);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegLoadKeyA(HKey hKey, char8* lpSubKey, char8* lpFile);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegLoadKeyW(HKey hKey, char16* lpSubKey, char16* lpFile);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegNotifyChangeKeyValue(HKey hKey, IntBool bWatchSubtree, REG_NOTIFY_FILTER dwNotifyFilter, Handle hEvent, IntBool fAsynchronous);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegOpenKeyA(HKey hKey, char8* lpSubKey, out HKey phkResult);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegOpenKeyW(HKey hKey, char16* lpSubKey, out HKey phkResult);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegOpenKeyExA(HKey hKey, char8* lpSubKey, uint32 ulOptions, REG_SAM_FLAGS samDesired, out HKey phkResult);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegOpenKeyExW(HKey hKey, char16* lpSubKey, uint32 ulOptions, REG_SAM_FLAGS samDesired, out HKey phkResult);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegOpenKeyTransactedA(HKey hKey, char8* lpSubKey, uint32 ulOptions, REG_SAM_FLAGS samDesired, out HKey phkResult, Handle hTransaction, void* pExtendedParemeter);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegOpenKeyTransactedW(HKey hKey, char16* lpSubKey, uint32 ulOptions, REG_SAM_FLAGS samDesired, out HKey phkResult, Handle hTransaction, void* pExtendedParemeter);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegQueryInfoKeyA(HKey hKey, uint8* lpClass, uint32* lpcchClass, out uint32 lpReserved, uint32* lpcSubKeys, uint32* lpcbMaxSubKeyLen, uint32* lpcbMaxClassLen, uint32* lpcValues, uint32* lpcbMaxValueNameLen, uint32* lpcbMaxValueLen, uint32* lpcbSecurityDescriptor, FileTime* lpftLastWriteTime);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegQueryInfoKeyW(HKey hKey, char16* lpClass, uint32* lpcchClass, out uint32 lpReserved, uint32* lpcSubKeys, uint32* lpcbMaxSubKeyLen, uint32* lpcbMaxClassLen, uint32* lpcValues, uint32* lpcbMaxValueNameLen, uint32* lpcbMaxValueLen, uint32* lpcbSecurityDescriptor, FileTime* lpftLastWriteTime);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegQueryValueA(HKey hKey, char8* lpSubKey, char8* lpData, int32* lpcbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegQueryValueW(HKey hKey, char16* lpSubKey, char16* lpData, int32* lpcbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegQueryMultipleValuesA(HKey hKey, VALENTA* val_list, uint32 num_vals, char8* lpValueBuf, uint32* ldwTotsize);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegQueryMultipleValuesW(HKey hKey, VALENTW* val_list, uint32 num_vals, char16* lpValueBuf, uint32* ldwTotsize);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegQueryValueExA(HKey hKey, char8* lpValueName, out uint32 lpReserved, REG_VALUE_TYPE* lpType, uint8* lpData, uint32* lpcbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegQueryValueExW(HKey hKey, char16* lpValueName, out uint32 lpReserved, REG_VALUE_TYPE* lpType, uint8* lpData, uint32* lpcbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegReplaceKeyA(HKey hKey, char8* lpSubKey, char8* lpNewFile, char8* lpOldFile);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegReplaceKeyW(HKey hKey, char16* lpSubKey, char16* lpNewFile, char16* lpOldFile);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegRestoreKeyA(HKey hKey, char8* lpFile, REG_RESTORE_KEY_FLAGS dwFlags);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegRestoreKeyW(HKey hKey, char16* lpFile, REG_RESTORE_KEY_FLAGS dwFlags);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegRenameKey(HKey hKey, char16* lpSubKeyName, char16* lpNewKeyName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegSaveKeyA(HKey hKey, char8* lpFile, SecurityAttributes* lpSecurityAttributes);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegSaveKeyW(HKey hKey, char16* lpFile, SecurityAttributes* lpSecurityAttributes);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegSetKeySecurity(HKey hKey, uint32 SecurityInformation, ref SECURITY_DESCRIPTOR pSecurityDescriptor);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegSetValueA(HKey hKey, char8* lpSubKey, REG_VALUE_TYPE dwType, char8* lpData, uint32 cbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegSetValueW(HKey hKey, char16* lpSubKey, REG_VALUE_TYPE dwType, char16* lpData, uint32 cbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegSetValueExA(HKey hKey, char8* lpValueName, uint32 Reserved, REG_VALUE_TYPE dwType, uint8* lpData, uint32 cbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegSetValueExW(HKey hKey, char16* lpValueName, uint32 Reserved, REG_VALUE_TYPE dwType, uint8* lpData, uint32 cbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegUnLoadKeyA(HKey hKey, char8* lpSubKey);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegUnLoadKeyW(HKey hKey, char16* lpSubKey);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDeleteKeyValueA(HKey hKey, char8* lpSubKey, char8* lpValueName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDeleteKeyValueW(HKey hKey, char16* lpSubKey, char16* lpValueName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegSetKeyValueA(HKey hKey, char8* lpSubKey, char8* lpValueName, uint32 dwType, void* lpData, uint32 cbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegSetKeyValueW(HKey hKey, char16* lpSubKey, char16* lpValueName, uint32 dwType, void* lpData, uint32 cbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDeleteTreeA(HKey hKey, char8* lpSubKey);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegDeleteTreeW(HKey hKey, char16* lpSubKey);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegCopyTreeA(HKey hKeySrc, char8* lpSubKey, HKey hKeyDest);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegGetValueA(HKey hkey, char8* lpSubKey, char8* lpValue, RRF_RT dwFlags, uint32* pdwType, void* pvData, uint32* pcbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegGetValueW(HKey hkey, char16* lpSubKey, char16* lpValue, RRF_RT dwFlags, uint32* pdwType, void* pvData, uint32* pcbData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegCopyTreeW(HKey hKeySrc, char16* lpSubKey, HKey hKeyDest);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegLoadMUIStringA(HKey hKey, char8* pszValue, char8* pszOutBuf, uint32 cbOutBuf, uint32* pcbData, uint32 Flags, char8* pszDirectory);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegLoadMUIStringW(HKey hKey, char16* pszValue, char16* pszOutBuf, uint32 cbOutBuf, uint32* pcbData, uint32 Flags, char16* pszDirectory);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegLoadAppKeyA(char8* lpFile, out HKey phkResult, uint32 samDesired, uint32 dwOptions, uint32 Reserved);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegLoadAppKeyW(char16* lpFile, out HKey phkResult, uint32 samDesired, uint32 dwOptions, uint32 Reserved);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegSaveKeyExA(HKey hKey, char8* lpFile, SecurityAttributes* lpSecurityAttributes, REG_SAVE_FORMAT Flags);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS RegSaveKeyExW(HKey hKey, char16* lpFile, SecurityAttributes* lpSecurityAttributes, REG_SAVE_FORMAT Flags);
		[Import("api-ms-win-core-state-helpers-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS GetRegistryValueWithFallbackW(HKey hkeyPrimary, char16* pwszPrimarySubKey, HKey hkeyFallback, char16* pwszFallbackSubKey, char16* pwszValue, uint32 dwFlags, uint32* pdwType, void* pvData, uint32 cbDataIn, uint32* pcbDataOut);
	}
}
