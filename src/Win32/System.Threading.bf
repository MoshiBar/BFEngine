using System;
using System.IO;
using static Win32.System.SystemInformation;
using static Win32.System.SystemServices;
using static Win32.Win32;
using static System.Windows.COM_IUnknown;
using static System.Windows;

// namespace System.Threading
namespace Win32.System
{
	public static class Threading
	{
		// --- Constants ---
		
		public const uint32 WAIT_OBJECT_0 = 0;
		public const uint32 WAIT_ABANDONED = 128;
		public const uint32 WAIT_ABANDONED_0 = 128;
		public const uint32 WAIT_IO_COMPLETION = 192;
		public const uint32 PRIVATE_NAMESPACE_FLAG_DESTROY = 1;
		public const uint32 PROC_THREAD_ATTRIBUTE_REPLACE_VALUE = 1;
		public const uint32 THREAD_POWER_THROTTLING_CURRENT_VERSION = 1;
		public const uint32 THREAD_POWER_THROTTLING_EXECUTION_SPEED = 1;
		public const uint32 THREAD_POWER_THROTTLING_VALID_FLAGS = 1;
		public const uint32 PME_CURRENT_VERSION = 1;
		public const uint32 PME_FAILFAST_ON_COMMIT_FAIL_DISABLE = 0;
		public const uint32 PME_FAILFAST_ON_COMMIT_FAIL_ENABLE = 1;
		public const uint32 PROCESS_POWER_THROTTLING_CURRENT_VERSION = 1;
		public const uint32 PROCESS_POWER_THROTTLING_EXECUTION_SPEED = 1;
		public const uint32 PROCESS_POWER_THROTTLING_IGNORE_TIMER_RESOLUTION = 4;
		public const uint32 PROCESS_LEAP_SECOND_INFO_FLAG_ENABLE_SIXTY_SECOND = 1;
		public const uint32 PROCESS_LEAP_SECOND_INFO_VALID_FLAGS = 1;
		public const uint32 INIT_ONCE_CHECK_ONLY = 1;
		public const uint32 INIT_ONCE_ASYNC = 2;
		public const uint32 INIT_ONCE_INIT_FAILED = 4;
		public const uint32 INIT_ONCE_CTX_RESERVED_BITS = 2;
		public const uint32 CONDITION_VARIABLE_LOCKMODE_SHARED = 1;
		public const uint32 MUTEX_MODIFY_STATE = 1;
		public const uint32 CREATE_MUTEX_INITIAL_OWNER = 1;
		public const uint32 CREATE_WAITABLE_TIMER_MANUAL_RESET = 1;
		public const uint32 CREATE_WAITABLE_TIMER_HIGH_RESOLUTION = 2;
		public const uint32 SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY = 1;
		public const uint32 SYNCHRONIZATION_BARRIER_FLAGS_BLOCK_ONLY = 2;
		public const uint32 SYNCHRONIZATION_BARRIER_FLAGS_NO_DELETE = 4;
		
		// --- Typedefs ---
		
		public typealias TimerQueueHandle = int;
		public typealias PTP_POOL = int;
		public typealias NamespaceHandle = int;
		public typealias BoundaryDescriptorHandle = int;
		public typealias LPPROC_THREAD_ATTRIBUTE_LIST = void*;
		
		// --- Enums ---
		
		public enum THREAD_CREATION_FLAGS : uint32
		{
			THREAD_CREATE_RUN_IMMEDIATELY = 0,
			THREAD_CREATE_SUSPENDED = 4,
			STACK_SIZE_PARAM_IS_A_RESERVATION = 65536,
		}
		[AllowDuplicates]
		public enum THREAD_PRIORITY : int32
		{
			MODE_BACKGROUND_BEGIN = 65536,
			MODE_BACKGROUND_END = 131072,
			PRIORITY_ABOVE_NORMAL = 1,
			PRIORITY_BELOW_NORMAL = -1,
			PRIORITY_HIGHEST = 2,
			PRIORITY_IDLE = -15,
			PRIORITY_MIN = -2,
			PRIORITY_LOWEST = -2,
			PRIORITY_NORMAL = 0,
			PRIORITY_TIME_CRITICAL = 15,
		}
		public enum WORKER_THREAD_FLAGS : uint32
		{
			EXECUTEDEFAULT = 0,
			EXECUTEINIOTHREAD = 1,
			EXECUTEINPERSISTENTTHREAD = 128,
			EXECUTEINWAITTHREAD = 4,
			EXECUTELONGFUNCTION = 16,
			EXECUTEONLYONCE = 8,
			TRANSFER_IMPERSONATION = 256,
			EXECUTEINTIMERTHREAD = 32,
		}
		public enum CREATE_EVENT : uint32
		{
			INITIAL_SET = 2,
			MANUAL_RESET = 1,
		}
		public enum CREATE_PROCESS_LOGON_FLAGS : uint32
		{
			WITH_PROFILE = 1,
			NETCREDENTIALS_ONLY = 2,
		}
		public enum PROCESS_AFFINITY_AUTO_UPDATE_FLAGS : uint32
		{
			DISABLE_AUTO_UPDATE = 0,
			ENABLE_AUTO_UPDATE = 1,
		}
		public enum PROCESS_DEP_FLAGS : uint32
		{
			ENABLE = 1,
			DISABLE_ATL_THUNK_EMULATION = 2,
			NONE = 0,
		}
		public enum PROCESS_NAME_FORMAT : uint32
		{
			WIN32 = 0,
			NATIVE = 1,
		}
		public enum PROCESSOR_FEATURE_ID : uint32
		{
			ARM_64BIT_LOADSTORE_ATOMIC = 25,
			ARM_DIVIDE_INSTRUCTION_AVAILABLE = 24,
			ARM_EXTERNAL_CACHE_AVAILABLE = 26,
			ARM_FMAC_INSTRUCTIONS_AVAILABLE = 27,
			ARM_VFP_32_REGISTERS_AVAILABLE = 18,
			_3DNOW_INSTRUCTIONS_AVAILABLE = 7,
			CHANNELS_ENABLED = 16,
			COMPARE_EXCHANGE_DOUBLE = 2,
			COMPARE_EXCHANGE128 = 14,
			COMPARE64_EXCHANGE128 = 15,
			FASTFAIL_AVAILABLE = 23,
			FLOATING_POINT_EMULATED = 1,
			FLOATING_POINT_PRECISION_ERRATA = 0,
			MMX_INSTRUCTIONS_AVAILABLE = 3,
			NX_ENABLED = 12,
			PAE_ENABLED = 9,
			RDTSC_INSTRUCTION_AVAILABLE = 8,
			RDWRFSGSBASE_AVAILABLE = 22,
			SECOND_LEVEL_ADDRESS_TRANSLATION = 20,
			SSE3_INSTRUCTIONS_AVAILABLE = 13,
			VIRT_FIRMWARE_ENABLED = 21,
			XMMI_INSTRUCTIONS_AVAILABLE = 6,
			XMMI64_INSTRUCTIONS_AVAILABLE = 10,
			XSAVE_ENABLED = 17,
			ARM_V8_INSTRUCTIONS_AVAILABLE = 29,
			ARM_V8_CRYPTO_INSTRUCTIONS_AVAILABLE = 30,
			ARM_V8_CRC32_INSTRUCTIONS_AVAILABLE = 31,
			ARM_V81_ATOMIC_INSTRUCTIONS_AVAILABLE = 34,
		}
		public enum GET_GUI_RESOURCES_FLAGS : uint32
		{
			GDIOBJECTS = 0,
			GDIOBJECTS_PEAK = 2,
			USEROBJECTS = 1,
			USEROBJECTS_PEAK = 4,
		}
		public enum STARTUPINFOW_FLAGS : uint32
		{
			FORCEONFEEDBACK = 64,
			FORCEOFFFEEDBACK = 128,
			PREVENTPINNING = 8192,
			RUNFULLSCREEN = 32,
			TITLEISAPPID = 4096,
			TITLEISLINKNAME = 2048,
			UNTRUSTEDSOURCE = 32768,
			USECOUNTCHARS = 8,
			USEFILLATTRIBUTE = 16,
			USEHOTKEY = 512,
			USEPOSITION = 4,
			USESHOWWINDOW = 1,
			USESIZE = 2,
			USESTDHANDLES = 256,
		}
		public enum MEMORY_PRIORITY : uint32
		{
			VERY_LOW = 1,
			LOW = 2,
			MEDIUM = 3,
			BELOW_NORMAL = 4,
			NORMAL = 5,
		}
		public enum PROCESS_PROTECTION_LEVEL : uint32
		{
			WINTCB_LIGHT = 0,
			WINDOWS = 1,
			WINDOWS_LIGHT = 2,
			ANTIMALWARE_LIGHT = 3,
			LSA_LIGHT = 4,
			WINTCB = 5,
			CODEGEN_LIGHT = 6,
			AUTHENTICODE = 7,
			PPL_APP = 8,
			NONE = 4294967294,
		}
		public enum POWER_REQUEST_CONTEXT_FLAGS : uint32
		{
			DETAILED_STRING = 2,
			SIMPLE_STRING = 1,
		}
		public enum THREAD_ACCESS_RIGHTS : uint32
		{
			TERMINATE = 1,
			SUSPEND_RESUME = 2,
			GET_CONTEXT = 8,
			SET_CONTEXT = 16,
			SET_INFORMATION = 32,
			QUERY_INFORMATION = 64,
			SET_THREAD_TOKEN = 128,
			IMPERSONATE = 256,
			DIRECT_IMPERSONATION = 512,
			SET_LIMITED_INFORMATION = 1024,
			QUERY_LIMITED_INFORMATION = 2048,
			RESUME = 4096,
			ALL_ACCESS = 2097151,
			DELETE = 65536,
			READ_CONTROL = 131072,
			WRITE_DAC = 262144,
			WRITE_OWNER = 524288,
			SYNCHRONIZE = 1048576,
			STANDARD_RIGHTS_REQUIRED = 983040,
		}
		public enum PROCESS_CREATION_FLAGS : uint32
		{
			DEBUG_PROCESS = 1,
			DEBUG_ONLY_THIS_PROCESS = 2,
			CREATE_SUSPENDED = 4,
			DETACHED_PROCESS = 8,
			CREATE_NEW_CONSOLE = 16,
			NORMAL_PRIORITY_CLASS = 32,
			IDLE_PRIORITY_CLASS = 64,
			HIGH_PRIORITY_CLASS = 128,
			REALTIME_PRIORITY_CLASS = 256,
			CREATE_NEW_PROCESS_GROUP = 512,
			CREATE_UNICODE_ENVIRONMENT = 1024,
			CREATE_SEPARATE_WOW_VDM = 2048,
			CREATE_SHARED_WOW_VDM = 4096,
			CREATE_FORCEDOS = 8192,
			BELOW_NORMAL_PRIORITY_CLASS = 16384,
			ABOVE_NORMAL_PRIORITY_CLASS = 32768,
			INHERIT_PARENT_AFFINITY = 65536,
			INHERIT_CALLER_PRIORITY = 131072,
			CREATE_PROTECTED_PROCESS = 262144,
			EXTENDED_STARTUPINFO_PRESENT = 524288,
			PROCESS_MODE_BACKGROUND_BEGIN = 1048576,
			PROCESS_MODE_BACKGROUND_END = 2097152,
			CREATE_SECURE_PROCESS = 4194304,
			CREATE_BREAKAWAY_FROM_JOB = 16777216,
			CREATE_PRESERVE_CODE_AUTHZ_LEVEL = 33554432,
			CREATE_DEFAULT_ERROR_MODE = 67108864,
			CREATE_NO_WINDOW = 134217728,
			PROFILE_USER = 268435456,
			PROFILE_KERNEL = 536870912,
			PROFILE_SERVER = 1073741824,
			CREATE_IGNORE_SYSTEM_DEFAULT = 2147483648,
		}
		public enum PROCESS_ACCESS_RIGHTS : uint32
		{
			TERMINATE = 1,
			CREATE_THREAD = 2,
			SET_SESSIONID = 4,
			VM_OPERATION = 8,
			VM_READ = 16,
			VM_WRITE = 32,
			DUP_HANDLE = 64,
			CREATE_PROCESS = 128,
			SET_QUOTA = 256,
			SET_INFORMATION = 512,
			QUERY_INFORMATION = 1024,
			SUSPEND_RESUME = 2048,
			QUERY_LIMITED_INFORMATION = 4096,
			SET_LIMITED_INFORMATION = 8192,
			ALL_ACCESS = 2097151,
			DELETE = 65536,
			READ_CONTROL = 131072,
			WRITE_DAC = 262144,
			WRITE_OWNER = 524288,
			SYNCHRONIZE = 1048576,
			STANDARD_RIGHTS_REQUIRED = 983040,
		}
		public enum QUEUE_USER_APC_FLAGS : int32
		{
			NONE = 0,
			SPECIAL_USER_APC = 1,
		}
		public enum THREAD_INFORMATION_CLASS : int32
		{
			MemoryPriority = 0,
			AbsoluteCpuPriority = 1,
			DynamicCodePolicy = 2,
			PowerThrottling = 3,
			InformationClassMax = 4,
		}
		public enum PROCESS_INFORMATION_CLASS : int32
		{
			MemoryPriority = 0,
			MemoryExhaustionInfo = 1,
			AppMemoryInfo = 2,
			InPrivateInfo = 3,
			PowerThrottling = 4,
			ReservedValue1 = 5,
			TelemetryCoverageInfo = 6,
			ProtectionLevelInfo = 7,
			LeapSecondInfo = 8,
			MachineTypeInfo = 9,
			InformationClassMax = 10,
		}
		public enum MACHINE_ATTRIBUTES : uint32
		{
			UserEnabled = 1,
			KernelEnabled = 2,
			Wow64Container = 4,
		}
		public enum PROCESS_MEMORY_EXHAUSTION_TYPE : int32
		{
			FailFastOnCommitFailure = 0,
			Max = 1,
		}
		public enum PROCESS_MITIGATION_POLICY : int32
		{
			ProcessDEPPolicy = 0,
			ProcessASLRPolicy = 1,
			ProcessDynamicCodePolicy = 2,
			ProcessStrictHandleCheckPolicy = 3,
			ProcessSystemCallDisablePolicy = 4,
			ProcessMitigationOptionsMask = 5,
			ProcessExtensionPointDisablePolicy = 6,
			ProcessControlFlowGuardPolicy = 7,
			ProcessSignaturePolicy = 8,
			ProcessFontDisablePolicy = 9,
			ProcessImageLoadPolicy = 10,
			ProcessSystemCallFilterPolicy = 11,
			ProcessPayloadRestrictionPolicy = 12,
			ProcessChildProcessPolicy = 13,
			ProcessSideChannelIsolationPolicy = 14,
			ProcessUserShadowStackPolicy = 15,
			ProcessRedirectionTrustPolicy = 16,
			MaxProcessMitigationPolicy = 17,
		}
		public enum RTL_UMS_THREAD_INFO_CLASS : int32
		{
			InvalidInfoClass = 0,
			UserContext = 1,
			Priority = 2,
			Affinity = 3,
			Teb = 4,
			IsSuspended = 5,
			IsTerminated = 6,
			MaxInfoClass = 7,
		}
		[AllowDuplicates]
		public enum TP_CALLBACK_PRIORITY : int32
		{
			HIGH = 0,
			NORMAL = 1,
			LOW = 2,
			INVALID = 3,
			COUNT = 3,
		}
		public enum PROCESSINFOCLASS : int32
		{
			BasicInformation = 0,
			DebugPort = 7,
			Wow64Information = 26,
			ImageFileName = 27,
			BreakOnTermination = 29,
		}
		public enum THREADINFOCLASS : int32
		{
			IsIoPending = 16,
			NameInformation = 38,
		}
		
		// --- Function Pointers ---
		
		public function uint32 LPTHREAD_START_ROUTINE(void* lpThreadParameter);
		public function IntBool PINIT_ONCE_FN(out RTL_RUN_ONCE InitOnce, void* Parameter, void** Context);
		public function void PTIMERAPCROUTINE(void* lpArgToCompletionRoutine, uint32 dwTimerLowValue, uint32 dwTimerHighValue);
		public function void PTP_WIN32_IO_CALLBACK(out TP_CALLBACK_INSTANCE Instance, void* Context, void* Overlapped, uint32 IoResult, uint NumberOfBytesTransferred, out TP_IO Io);
		public function void PRTL_UMS_SCHEDULER_ENTRY_POINT(RTL_UMS_SCHEDULER_REASON Reason, uint ActivationPayload, void* SchedulerParam);
		public function void WAITORTIMERCALLBACK(void* param0, bool param1);
		public function void PFLS_CALLBACK_FUNCTION(void* lpFlsData);
		public function void PTP_SIMPLE_CALLBACK(out TP_CALLBACK_INSTANCE Instance, void* Context);
		public function void PTP_CLEANUP_GROUP_CANCEL_CALLBACK(void* ObjectContext, void* CleanupContext);
		public function void PTP_WORK_CALLBACK(out TP_CALLBACK_INSTANCE Instance, void* Context, out TP_WORK Work);
		public function void PTP_TIMER_CALLBACK(out TP_CALLBACK_INSTANCE Instance, void* Context, out TP_TIMER Timer);
		public function void PTP_WAIT_CALLBACK(out TP_CALLBACK_INSTANCE Instance, void* Context, out TP_WAIT Wait, uint32 WaitResult);
		public function void LPFIBER_START_ROUTINE(void* lpFiberParameter);
		public function void PPS_POST_PROCESS_INIT_ROUTINE();
		
		// --- Structs ---
		
		[CRepr]
		public struct TP_CALLBACK_INSTANCE {}
		[CRepr]
		public struct TP_WORK {}
		[CRepr]
		public struct TP_TIMER {}
		[CRepr]
		public struct TP_WAIT {}
		[CRepr]
		public struct TP_IO {}
		[CRepr]
		public struct REASON_CONTEXT
		{
			public uint32 Version;
			public POWER_REQUEST_CONTEXT_FLAGS Flags;
			public _Reason_e__Union Reason;
			
			[CRepr, Union]
			public struct _Reason_e__Union
			{
				public _Detailed_e__Struct Detailed;
				public char16* SimpleReasonString;
				
				[CRepr]
				public struct _Detailed_e__Struct
				{
					public HInstance LocalizedReasonModule;
					public uint32 LocalizedReasonId;
					public uint32 ReasonStringCount;
					public char16** ReasonStrings;
				}
			}
		}
		[CRepr]
		public struct PROCESS_INFORMATION
		{
			public Handle hProcess;
			public Handle hThread;
			public uint32 dwProcessId;
			public uint32 dwThreadId;
		}
		[CRepr]
		public struct STARTUPINFOA
		{
			public uint32 cb;
			public char8* lpReserved;
			public char8* lpDesktop;
			public char8* lpTitle;
			public uint32 dwX;
			public uint32 dwY;
			public uint32 dwXSize;
			public uint32 dwYSize;
			public uint32 dwXCountChars;
			public uint32 dwYCountChars;
			public uint32 dwFillAttribute;
			public STARTUPINFOW_FLAGS dwFlags;
			public uint16 wShowWindow;
			public uint16 cbReserved2;
			public uint8* lpReserved2;
			public Handle hStdInput;
			public Handle hStdOutput;
			public Handle hStdError;
		}
		[CRepr]
		public struct STARTUPINFOW
		{
			public uint32 cb;
			public char16* lpReserved;
			public char16* lpDesktop;
			public char16* lpTitle;
			public uint32 dwX;
			public uint32 dwY;
			public uint32 dwXSize;
			public uint32 dwYSize;
			public uint32 dwXCountChars;
			public uint32 dwYCountChars;
			public uint32 dwFillAttribute;
			public STARTUPINFOW_FLAGS dwFlags;
			public uint16 wShowWindow;
			public uint16 cbReserved2;
			public uint8* lpReserved2;
			public Handle hStdInput;
			public Handle hStdOutput;
			public Handle hStdError;
		}
		[CRepr]
		public struct MEMORY_PRIORITY_INFORMATION
		{
			public MEMORY_PRIORITY MemoryPriority;
		}
		[CRepr]
		public struct THREAD_POWER_THROTTLING_STATE
		{
			public uint32 Version;
			public uint32 ControlMask;
			public uint32 StateMask;
		}
		[CRepr]
		public struct APP_MEMORY_INFORMATION
		{
			public uint64 AvailableCommit;
			public uint64 PrivateCommitUsage;
			public uint64 PeakPrivateCommitUsage;
			public uint64 TotalCommitUsage;
		}
		[CRepr]
		public struct PROCESS_MACHINE_INFORMATION
		{
			public uint16 ProcessMachine;
			public uint16 Res0;
			public MACHINE_ATTRIBUTES MachineAttributes;
		}
		[CRepr]
		public struct PROCESS_MEMORY_EXHAUSTION_INFO
		{
			public uint16 Version;
			public uint16 Reserved;
			public PROCESS_MEMORY_EXHAUSTION_TYPE Type;
			public uint Value;
		}
		[CRepr]
		public struct PROCESS_POWER_THROTTLING_STATE
		{
			public uint32 Version;
			public uint32 ControlMask;
			public uint32 StateMask;
		}
		[CRepr]
		public struct PROCESS_PROTECTION_LEVEL_INFORMATION
		{
			public PROCESS_PROTECTION_LEVEL ProtectionLevel;
		}
		[CRepr]
		public struct PROCESS_LEAP_SECOND_INFO
		{
			public uint32 Flags;
			public uint32 Reserved;
		}
		[CRepr]
		public struct PROCESS_DYNAMIC_EH_CONTINUATION_TARGET
		{
			public uint TargetAddress;
			public uint Flags;
		}
		[CRepr]
		public struct PROCESS_DYNAMIC_EH_CONTINUATION_TARGETS_INFORMATION
		{
			public uint16 NumberOfTargets;
			public uint16 Reserved;
			public uint32 Reserved2;
			public PROCESS_DYNAMIC_EH_CONTINUATION_TARGET* Targets;
		}
		[CRepr]
		public struct PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGE
		{
			public uint BaseAddress;
			public uint Size;
			public uint32 Flags;
		}
		[CRepr]
		public struct PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGES_INFORMATION
		{
			public uint16 NumberOfRanges;
			public uint16 Reserved;
			public uint32 Reserved2;
			public PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGE* Ranges;
		}
		[CRepr]
		public struct IO_COUNTERS
		{
			public uint64 ReadOperationCount;
			public uint64 WriteOperationCount;
			public uint64 OtherOperationCount;
			public uint64 ReadTransferCount;
			public uint64 WriteTransferCount;
			public uint64 OtherTransferCount;
		}
		[CRepr, Union]
		public struct RTL_RUN_ONCE
		{
			public void* Ptr;
		}
		[CRepr]
		public struct RTL_BARRIER
		{
			public uint32 Reserved1;
			public uint32 Reserved2;
			public uint[2] Reserved3;
			public uint32 Reserved4;
			public uint32 Reserved5;
		}
		[CRepr]
		public struct RTL_CRITICAL_SECTION_DEBUG
		{
			public uint16 Type;
			public uint16 CreatorBackTraceIndex;
			public RTL_CRITICAL_SECTION* CriticalSection;
			public ListEntry ProcessLocksList;
			public uint32 EntryCount;
			public uint32 ContentionCount;
			public uint32 Flags;
			public uint16 CreatorBackTraceIndexHigh;
			public uint16 SpareWORD;
		}
		[CRepr]
		public struct RTL_CRITICAL_SECTION
		{
			public RTL_CRITICAL_SECTION_DEBUG* DebugInfo;
			public int32 LockCount;
			public int32 RecursionCount;
			public Handle OwningThread;
			public Handle LockSemaphore;
			public uint SpinCount;
		}
		[CRepr]
		public struct RTL_SRWLOCK
		{
			public void* Ptr;
		}
		[CRepr]
		public struct RTL_CONDITION_VARIABLE
		{
			public void* Ptr;
		}
		[CRepr]
		public struct TP_POOL_STACK_INFORMATION
		{
			public uint StackReserve;
			public uint StackCommit;
		}
		[CRepr]
		public struct TP_CALLBACK_ENVIRON_V3
		{
			public uint32 Version;
			public PTP_POOL Pool;
			public int CleanupGroup;
			public PTP_CLEANUP_GROUP_CANCEL_CALLBACK CleanupGroupCancelCallback;
			public void* RaceDll;
			public int ActivationContext;
			public PTP_SIMPLE_CALLBACK FinalizationCallback;
			public _u_e__Union u;
			public TP_CALLBACK_PRIORITY CallbackPriority;
			public uint32 Size;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public uint32 Flags;
				public _s_e__Struct s;
				
				[CRepr]
				public struct _s_e__Struct
				{
					public uint32 _bitfield;
				}
			}
			[CRepr]
			public struct _ACTIVATION_CONTEXT {}
		}
		[CRepr]
		public struct UMS_SCHEDULER_STARTUP_INFO
		{
			public uint32 UmsVersion;
			public void* CompletionList;
			public PRTL_UMS_SCHEDULER_ENTRY_POINT SchedulerProc;
			public void* SchedulerParam;
		}
		[CRepr]
		public struct UMS_SYSTEM_THREAD_INFORMATION
		{
			public uint32 UmsVersion;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint32 ThreadUmsFlags;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct STARTUPINFOEXA
		{
			public STARTUPINFOA StartupInfo;
			public LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList;
		}
		[CRepr]
		public struct STARTUPINFOEXW
		{
			public STARTUPINFOW StartupInfo;
			public LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList;
		}
		[CRepr]
		public struct PEB_LDR_DATA
		{
			public uint8[8] Reserved1;
			public void*[3] Reserved2;
			public ListEntry InMemoryOrderModuleList;
		}
		[CRepr]
		public struct RTL_USER_PROCESS_PARAMETERS
		{
			public uint8[16] Reserved1;
			public void*[10] Reserved2;
			public UnicodeString ImagePathName;
			public UnicodeString CommandLine;
		}
		[CRepr]
		public struct PEB
		{
			public uint8[2] Reserved1;
			public uint8 BeingDebugged;
			public uint8[0] Reserved2;
			public void*[2] Reserved3;
			public PEB_LDR_DATA* Ldr;
			public RTL_USER_PROCESS_PARAMETERS* ProcessParameters;
			public void*[3] Reserved4;
			public void* AtlThunkSListPtr;
			public void* Reserved5;
			public uint32 Reserved6;
			public void* Reserved7;
			public uint32 Reserved8;
			public uint32 AtlThunkSListPtr32;
			public void*[45] Reserved9;
			public uint8[96] Reserved10;
			public PPS_POST_PROCESS_INIT_ROUTINE PostProcessInitRoutine;
			public uint8[128] Reserved11;
			public void*[0] Reserved12;
			public uint32 SessionId;
		}
		[CRepr]
		public struct PROCESS_BASIC_INFORMATION
		{
			public void* Reserved1;
			public PEB* PebBaseAddress;
			public void*[2] Reserved2;
			public uint UniqueProcessId;
			public void* Reserved3;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessWorkingSetSize(Handle hProcess, out uint lpMinimumWorkingSetSize, out uint lpMaximumWorkingSetSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessWorkingSetSize(Handle hProcess, uint dwMinimumWorkingSetSize, uint dwMaximumWorkingSetSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 FlsAlloc(PFLS_CALLBACK_FUNCTION lpCallback);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* FlsGetValue(uint32 dwFlsIndex);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool FlsSetValue(uint32 dwFlsIndex, void* lpFlsData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool FlsFree(uint32 dwFlsIndex);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsThreadAFiber();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void InitializeSRWLock(out RTL_SRWLOCK SRWLock);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ReleaseSRWLockExclusive(out RTL_SRWLOCK SRWLock);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ReleaseSRWLockShared(out RTL_SRWLOCK SRWLock);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void AcquireSRWLockExclusive(out RTL_SRWLOCK SRWLock);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void AcquireSRWLockShared(out RTL_SRWLOCK SRWLock);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern bool TryAcquireSRWLockExclusive(out RTL_SRWLOCK SRWLock);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern bool TryAcquireSRWLockShared(out RTL_SRWLOCK SRWLock);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void InitializeCriticalSection(out RTL_CRITICAL_SECTION lpCriticalSection);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void EnterCriticalSection(out RTL_CRITICAL_SECTION lpCriticalSection);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void LeaveCriticalSection(out RTL_CRITICAL_SECTION lpCriticalSection);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool InitializeCriticalSectionAndSpinCount(out RTL_CRITICAL_SECTION lpCriticalSection, uint32 dwSpinCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool InitializeCriticalSectionEx(out RTL_CRITICAL_SECTION lpCriticalSection, uint32 dwSpinCount, uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetCriticalSectionSpinCount(out RTL_CRITICAL_SECTION lpCriticalSection, uint32 dwSpinCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool TryEnterCriticalSection(out RTL_CRITICAL_SECTION lpCriticalSection);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void DeleteCriticalSection(out RTL_CRITICAL_SECTION lpCriticalSection);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void InitOnceInitialize(out RTL_RUN_ONCE InitOnce);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool InitOnceExecuteOnce(out RTL_RUN_ONCE InitOnce, PINIT_ONCE_FN InitFn, void* Parameter, void** Context);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool InitOnceBeginInitialize(out RTL_RUN_ONCE lpInitOnce, uint32 dwFlags, out IntBool fPending, void** lpContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool InitOnceComplete(out RTL_RUN_ONCE lpInitOnce, uint32 dwFlags, void* lpContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void InitializeConditionVariable(out RTL_CONDITION_VARIABLE ConditionVariable);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void WakeConditionVariable(out RTL_CONDITION_VARIABLE ConditionVariable);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void WakeAllConditionVariable(out RTL_CONDITION_VARIABLE ConditionVariable);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SleepConditionVariableCS(out RTL_CONDITION_VARIABLE ConditionVariable, out RTL_CRITICAL_SECTION CriticalSection, uint32 dwMilliseconds);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SleepConditionVariableSRW(out RTL_CONDITION_VARIABLE ConditionVariable, out RTL_SRWLOCK SRWLock, uint32 dwMilliseconds, uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetEvent(Handle hEvent);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ResetEvent(Handle hEvent);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ReleaseSemaphore(Handle hSemaphore, int32 lReleaseCount, int32* lpPreviousCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ReleaseMutex(Handle hMutex);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WaitForSingleObject(Handle hHandle, uint32 dwMilliseconds);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SleepEx(uint32 dwMilliseconds, IntBool bAlertable);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WaitForSingleObjectEx(Handle hHandle, uint32 dwMilliseconds, IntBool bAlertable);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WaitForMultipleObjectsEx(uint32 nCount, Handle* lpHandles, IntBool bWaitAll, uint32 dwMilliseconds, IntBool bAlertable);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateMutexA(SecurityAttributes* lpMutexAttributes, IntBool bInitialOwner, char8* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateMutexW(SecurityAttributes* lpMutexAttributes, IntBool bInitialOwner, char16* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle OpenMutexW(uint32 dwDesiredAccess, IntBool bInheritHandle, char16* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateEventA(SecurityAttributes* lpEventAttributes, IntBool bManualReset, IntBool bInitialState, char8* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateEventW(SecurityAttributes* lpEventAttributes, IntBool bManualReset, IntBool bInitialState, char16* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle OpenEventA(uint32 dwDesiredAccess, IntBool bInheritHandle, char8* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle OpenEventW(uint32 dwDesiredAccess, IntBool bInheritHandle, char16* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle OpenSemaphoreW(uint32 dwDesiredAccess, IntBool bInheritHandle, char16* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle OpenWaitableTimerW(uint32 dwDesiredAccess, IntBool bInheritHandle, char16* lpTimerName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetWaitableTimerEx(Handle hTimer, in LARGE_INTEGER lpDueTime, int32 lPeriod, PTIMERAPCROUTINE pfnCompletionRoutine, void* lpArgToCompletionRoutine, REASON_CONTEXT* WakeContext, uint32 TolerableDelay);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetWaitableTimer(Handle hTimer, in LARGE_INTEGER lpDueTime, int32 lPeriod, PTIMERAPCROUTINE pfnCompletionRoutine, void* lpArgToCompletionRoutine, IntBool fResume);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CancelWaitableTimer(Handle hTimer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateMutexExA(SecurityAttributes* lpMutexAttributes, char8* lpName, uint32 dwFlags, uint32 dwDesiredAccess);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateMutexExW(SecurityAttributes* lpMutexAttributes, char16* lpName, uint32 dwFlags, uint32 dwDesiredAccess);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateEventExA(SecurityAttributes* lpEventAttributes, char8* lpName, CREATE_EVENT dwFlags, uint32 dwDesiredAccess);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateEventExW(SecurityAttributes* lpEventAttributes, char16* lpName, CREATE_EVENT dwFlags, uint32 dwDesiredAccess);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateSemaphoreExW(SecurityAttributes* lpSemaphoreAttributes, int32 lInitialCount, int32 lMaximumCount, char16* lpName, uint32 dwFlags, uint32 dwDesiredAccess);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateWaitableTimerExW(SecurityAttributes* lpTimerAttributes, char16* lpTimerName, uint32 dwFlags, uint32 dwDesiredAccess);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnterSynchronizationBarrier(out RTL_BARRIER lpBarrier, uint32 dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool InitializeSynchronizationBarrier(out RTL_BARRIER lpBarrier, int32 lTotalThreads, int32 lSpinCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DeleteSynchronizationBarrier(out RTL_BARRIER lpBarrier);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void Sleep(uint32 dwMilliseconds);
		[Import("vertdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WaitOnAddress(void* Address, void* CompareAddress, uint AddressSize, uint32 dwMilliseconds);
		[Import("vertdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WakeByAddressSingle(void* Address);
		[Import("vertdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WakeByAddressAll(void* Address);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WaitForMultipleObjects(uint32 nCount, Handle* lpHandles, IntBool bWaitAll, uint32 dwMilliseconds);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateSemaphoreW(SecurityAttributes* lpSemaphoreAttributes, int32 lInitialCount, int32 lMaximumCount, char16* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateWaitableTimerW(SecurityAttributes* lpTimerAttributes, IntBool bManualReset, char16* lpTimerName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void InitializeSListHead(out SLIST_HEADER ListHead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SLIST_ENTRY* InterlockedPopEntrySList(out SLIST_HEADER ListHead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SLIST_ENTRY* InterlockedPushEntrySList(out SLIST_HEADER ListHead, out SLIST_ENTRY ListEntry);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SLIST_ENTRY* InterlockedPushListSListEx(out SLIST_HEADER ListHead, out SLIST_ENTRY List, out SLIST_ENTRY ListEnd, uint32 Count);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SLIST_ENTRY* InterlockedFlushSList(out SLIST_HEADER ListHead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 QueryDepthSList(ref SLIST_HEADER ListHead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 QueueUserAPC(PAPCFUNC pfnAPC, Handle hThread, uint dwData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool QueueUserAPC2(PAPCFUNC ApcRoutine, Handle Thread, uint Data, QUEUE_USER_APC_FLAGS Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessTimes(Handle hProcess, out FileTime lpCreationTime, out FileTime lpExitTime, out FileTime lpKernelTime, out FileTime lpUserTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle GetCurrentProcess();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetCurrentProcessId();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ExitProcess(uint32 uExitCode);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool TerminateProcess(Handle hProcess, uint32 uExitCode);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetExitCodeProcess(Handle hProcess, out uint32 lpExitCode);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SwitchToThread();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateThread(SecurityAttributes* lpThreadAttributes, uint dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, THREAD_CREATION_FLAGS dwCreationFlags, uint32* lpThreadId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateRemoteThread(Handle hProcess, SecurityAttributes* lpThreadAttributes, uint dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, uint32 dwCreationFlags, uint32* lpThreadId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle GetCurrentThread();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetCurrentThreadId();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle OpenThread(THREAD_ACCESS_RIGHTS dwDesiredAccess, IntBool bInheritHandle, uint32 dwThreadId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadPriority(Handle hThread, THREAD_PRIORITY nPriority);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadPriorityBoost(Handle hThread, IntBool bDisablePriorityBoost);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetThreadPriorityBoost(Handle hThread, out IntBool pDisablePriorityBoost);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetThreadPriority(Handle hThread);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ExitThread(uint32 dwExitCode);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool TerminateThread(Handle hThread, uint32 dwExitCode);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetExitCodeThread(Handle hThread, out uint32 lpExitCode);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SuspendThread(Handle hThread);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ResumeThread(Handle hThread);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TlsAlloc();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* TlsGetValue(uint32 dwTlsIndex);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool TlsSetValue(uint32 dwTlsIndex, void* lpTlsValue);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool TlsFree(uint32 dwTlsIndex);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreateProcessA(char8* lpApplicationName, char8* lpCommandLine, SecurityAttributes* lpProcessAttributes, SecurityAttributes* lpThreadAttributes, IntBool bInheritHandles, PROCESS_CREATION_FLAGS dwCreationFlags, void* lpEnvironment, char8* lpCurrentDirectory, ref STARTUPINFOA lpStartupInfo, out PROCESS_INFORMATION lpProcessInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreateProcessW(char16* lpApplicationName, char16* lpCommandLine, SecurityAttributes* lpProcessAttributes, SecurityAttributes* lpThreadAttributes, IntBool bInheritHandles, PROCESS_CREATION_FLAGS dwCreationFlags, void* lpEnvironment, char16* lpCurrentDirectory, ref STARTUPINFOW lpStartupInfo, out PROCESS_INFORMATION lpProcessInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessShutdownParameters(uint32 dwLevel, uint32 dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetProcessVersion(uint32 ProcessId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetStartupInfoW(out STARTUPINFOW lpStartupInfo);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreateProcessAsUserW(Handle hToken, char16* lpApplicationName, char16* lpCommandLine, SecurityAttributes* lpProcessAttributes, SecurityAttributes* lpThreadAttributes, IntBool bInheritHandles, uint32 dwCreationFlags, void* lpEnvironment, char16* lpCurrentDirectory, ref STARTUPINFOW lpStartupInfo, out PROCESS_INFORMATION lpProcessInformation);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadToken(Handle* Thread, Handle Token);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool OpenProcessToken(Handle ProcessHandle, TOKEN_ACCESS_MASK DesiredAccess, out Handle TokenHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool OpenThreadToken(Handle ThreadHandle, TOKEN_ACCESS_MASK DesiredAccess, IntBool OpenAsSelf, out Handle TokenHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetPriorityClass(Handle hProcess, PROCESS_CREATION_FLAGS dwPriorityClass);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetPriorityClass(Handle hProcess);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadStackGuarantee(out uint32 StackSizeInBytes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetProcessId(Handle Process);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetThreadId(Handle Thread);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FlushProcessWriteBuffers();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetProcessIdOfThread(Handle Thread);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool InitializeProcThreadAttributeList(LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, uint32 dwAttributeCount, uint32 dwFlags, out uint lpSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void DeleteProcThreadAttributeList(LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool UpdateProcThreadAttribute(LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, uint32 dwFlags, uint Attribute, void* lpValue, uint cbSize, void* lpPreviousValue, uint* lpReturnSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessDynamicEHContinuationTargets(Handle Process, uint16 NumberOfTargets, PROCESS_DYNAMIC_EH_CONTINUATION_TARGET* Targets);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessDynamicEnforcedCetCompatibleRanges(Handle Process, uint16 NumberOfRanges, PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGE* Ranges);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessAffinityUpdateMode(Handle hProcess, PROCESS_AFFINITY_AUTO_UPDATE_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool QueryProcessAffinityUpdateMode(Handle hProcess, PROCESS_AFFINITY_AUTO_UPDATE_FLAGS* lpdwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateRemoteThreadEx(Handle hProcess, SecurityAttributes* lpThreadAttributes, uint dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, uint32 dwCreationFlags, LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, uint32* lpThreadId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetCurrentThreadStackLimits(out uint LowLimit, out uint HighLimit);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessMitigationPolicy(Handle hProcess, PROCESS_MITIGATION_POLICY MitigationPolicy, void* lpBuffer, uint dwLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessMitigationPolicy(PROCESS_MITIGATION_POLICY MitigationPolicy, void* lpBuffer, uint dwLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetThreadTimes(Handle hThread, out FileTime lpCreationTime, out FileTime lpExitTime, out FileTime lpKernelTime, out FileTime lpUserTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle OpenProcess(PROCESS_ACCESS_RIGHTS dwDesiredAccess, IntBool bInheritHandle, uint32 dwProcessId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsProcessorFeaturePresent(PROCESSOR_FEATURE_ID ProcessorFeature);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessHandleCount(Handle hProcess, out uint32 pdwHandleCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetCurrentProcessorNumber();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadIdealProcessorEx(Handle hThread, ref PROCESSOR_NUMBER lpIdealProcessor, PROCESSOR_NUMBER* lpPreviousIdealProcessor);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetThreadIdealProcessorEx(Handle hThread, out PROCESSOR_NUMBER lpIdealProcessor);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetCurrentProcessorNumberEx(out PROCESSOR_NUMBER ProcNumber);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessPriorityBoost(Handle hProcess, out IntBool pDisablePriorityBoost);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessPriorityBoost(Handle hProcess, IntBool bDisablePriorityBoost);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetThreadIOPendingFlag(Handle hThread, out IntBool lpIOIsPending);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetSystemTimes(FileTime* lpIdleTime, FileTime* lpKernelTime, FileTime* lpUserTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetThreadInformation(Handle hThread, THREAD_INFORMATION_CLASS ThreadInformationClass, void* ThreadInformation, uint32 ThreadInformationSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadInformation(Handle hThread, THREAD_INFORMATION_CLASS ThreadInformationClass, void* ThreadInformation, uint32 ThreadInformationSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsProcessCritical(Handle hProcess, out IntBool Critical);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProtectedPolicy(in Guid PolicyGuid, uint PolicyValue, uint* OldPolicyValue);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool QueryProtectedPolicy(in Guid PolicyGuid, out uint PolicyValue);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetThreadIdealProcessor(Handle hThread, uint32 dwIdealProcessor);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessInformation(Handle hProcess, PROCESS_INFORMATION_CLASS ProcessInformationClass, void* ProcessInformation, uint32 ProcessInformationSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessInformation(Handle hProcess, PROCESS_INFORMATION_CLASS ProcessInformationClass, void* ProcessInformation, uint32 ProcessInformationSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessDefaultCpuSets(Handle Process, uint32* CpuSetIds, uint32 CpuSetIdCount, out uint32 RequiredIdCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessDefaultCpuSets(Handle Process, uint32* CpuSetIds, uint32 CpuSetIdCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetThreadSelectedCpuSets(Handle Thread, uint32* CpuSetIds, uint32 CpuSetIdCount, out uint32 RequiredIdCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadSelectedCpuSets(Handle Thread, uint32* CpuSetIds, uint32 CpuSetIdCount);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreateProcessAsUserA(Handle hToken, char8* lpApplicationName, char8* lpCommandLine, SecurityAttributes* lpProcessAttributes, SecurityAttributes* lpThreadAttributes, IntBool bInheritHandles, uint32 dwCreationFlags, void* lpEnvironment, char8* lpCurrentDirectory, ref STARTUPINFOA lpStartupInfo, out PROCESS_INFORMATION lpProcessInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessShutdownParameters(out uint32 lpdwLevel, out uint32 lpdwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessDefaultCpuSetMasks(Handle Process, GROUP_AFFINITY* CpuSetMasks, uint16 CpuSetMaskCount, out uint16 RequiredMaskCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessDefaultCpuSetMasks(Handle Process, GROUP_AFFINITY* CpuSetMasks, uint16 CpuSetMaskCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetThreadSelectedCpuSetMasks(Handle Thread, GROUP_AFFINITY* CpuSetMasks, uint16 CpuSetMaskCount, out uint16 RequiredMaskCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadSelectedCpuSetMasks(Handle Thread, GROUP_AFFINITY* CpuSetMasks, uint16 CpuSetMaskCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetMachineTypeAttributes(uint16 Machine, out MACHINE_ATTRIBUTES MachineTypeAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult SetThreadDescription(Handle hThread, char16* lpThreadDescription);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetThreadDescription(Handle hThread, out char16* ppszThreadDescription);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool QueueUserWorkItem(LPTHREAD_START_ROUTINE Function, void* Context, WORKER_THREAD_FLAGS Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool UnregisterWaitEx(Handle WaitHandle, Handle CompletionEvent);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateTimerQueue();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreateTimerQueueTimer(out Handle phNewTimer, Handle TimerQueue, WAITORTIMERCALLBACK Callback, void* Parameter, uint32 DueTime, uint32 Period, WORKER_THREAD_FLAGS Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ChangeTimerQueueTimer(Handle TimerQueue, Handle Timer, uint32 DueTime, uint32 Period);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DeleteTimerQueueTimer(Handle TimerQueue, Handle Timer, Handle CompletionEvent);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DeleteTimerQueue(Handle TimerQueue);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DeleteTimerQueueEx(Handle TimerQueue, Handle CompletionEvent);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PTP_POOL CreateThreadpool(void* reserved);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SetThreadpoolThreadMaximum(PTP_POOL ptpp, uint32 cthrdMost);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadpoolThreadMinimum(PTP_POOL ptpp, uint32 cthrdMic);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadpoolStackInformation(PTP_POOL ptpp, ref TP_POOL_STACK_INFORMATION ptpsi);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool QueryThreadpoolStackInformation(PTP_POOL ptpp, out TP_POOL_STACK_INFORMATION ptpsi);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CloseThreadpool(PTP_POOL ptpp);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int CreateThreadpoolCleanupGroup();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CloseThreadpoolCleanupGroupMembers(int ptpcg, IntBool fCancelPendingCallbacks, void* pvCleanupContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CloseThreadpoolCleanupGroup(int ptpcg);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SetEventWhenCallbackReturns(out TP_CALLBACK_INSTANCE pci, Handle evt);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ReleaseSemaphoreWhenCallbackReturns(out TP_CALLBACK_INSTANCE pci, Handle sem, uint32 crel);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ReleaseMutexWhenCallbackReturns(out TP_CALLBACK_INSTANCE pci, Handle @mut);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void LeaveCriticalSectionWhenCallbackReturns(out TP_CALLBACK_INSTANCE pci, out RTL_CRITICAL_SECTION pcs);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeLibraryWhenCallbackReturns(out TP_CALLBACK_INSTANCE pci, HInstance mod);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CallbackMayRunLong(out TP_CALLBACK_INSTANCE pci);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void DisassociateCurrentThreadFromCallback(out TP_CALLBACK_INSTANCE pci);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool TrySubmitThreadpoolCallback(PTP_SIMPLE_CALLBACK pfns, void* pv, TP_CALLBACK_ENVIRON_V3* pcbe);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern TP_WORK* CreateThreadpoolWork(PTP_WORK_CALLBACK pfnwk, void* pv, TP_CALLBACK_ENVIRON_V3* pcbe);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SubmitThreadpoolWork(out TP_WORK pwk);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void WaitForThreadpoolWorkCallbacks(out TP_WORK pwk, IntBool fCancelPendingCallbacks);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CloseThreadpoolWork(out TP_WORK pwk);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern TP_TIMER* CreateThreadpoolTimer(PTP_TIMER_CALLBACK pfnti, void* pv, TP_CALLBACK_ENVIRON_V3* pcbe);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SetThreadpoolTimer(out TP_TIMER pti, FileTime* pftDueTime, uint32 msPeriod, uint32 msWindowLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsThreadpoolTimerSet(out TP_TIMER pti);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void WaitForThreadpoolTimerCallbacks(out TP_TIMER pti, IntBool fCancelPendingCallbacks);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CloseThreadpoolTimer(out TP_TIMER pti);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern TP_WAIT* CreateThreadpoolWait(PTP_WAIT_CALLBACK pfnwa, void* pv, TP_CALLBACK_ENVIRON_V3* pcbe);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SetThreadpoolWait(out TP_WAIT pwa, Handle h, FileTime* pftTimeout);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void WaitForThreadpoolWaitCallbacks(out TP_WAIT pwa, IntBool fCancelPendingCallbacks);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CloseThreadpoolWait(out TP_WAIT pwa);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern TP_IO* CreateThreadpoolIo(Handle fl, PTP_WIN32_IO_CALLBACK pfnio, void* pv, TP_CALLBACK_ENVIRON_V3* pcbe);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void StartThreadpoolIo(out TP_IO pio);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CancelThreadpoolIo(out TP_IO pio);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void WaitForThreadpoolIoCallbacks(out TP_IO pio, IntBool fCancelPendingCallbacks);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CloseThreadpoolIo(out TP_IO pio);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadpoolTimerEx(out TP_TIMER pti, FileTime* pftDueTime, uint32 msPeriod, uint32 msWindowLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadpoolWaitEx(out TP_WAIT pwa, Handle h, FileTime* pftTimeout, void* Reserved);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsWow64Process(Handle hProcess, out IntBool Wow64Process);
		[Import("api-ms-win-core-wow64-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 Wow64SetThreadDefaultGuestMachine(uint16 Machine);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsWow64Process2(Handle hProcess, out uint16 pProcessMachine, uint16* pNativeMachine);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 Wow64SuspendThread(Handle hThread);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern NamespaceHandle CreatePrivateNamespaceW(SecurityAttributes* lpPrivateNamespaceAttributes, void* lpBoundaryDescriptor, char16* lpAliasPrefix);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern NamespaceHandle OpenPrivateNamespaceW(void* lpBoundaryDescriptor, char16* lpAliasPrefix);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern bool ClosePrivateNamespace(NamespaceHandle Handle, uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BoundaryDescriptorHandle CreateBoundaryDescriptorW(char16* Name, uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddSIDToBoundaryDescriptor(out Handle BoundaryDescriptor, PSID RequiredSid);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void DeleteBoundaryDescriptor(BoundaryDescriptorHandle BoundaryDescriptor);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNumaHighestNodeNumber(out uint32 HighestNodeNumber);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNumaNodeProcessorMaskEx(uint16 Node, out GROUP_AFFINITY ProcessorMask);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNumaNodeProcessorMask2(uint16 NodeNumber, GROUP_AFFINITY* ProcessorMasks, uint16 ProcessorMaskCount, out uint16 RequiredMaskCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNumaProximityNodeEx(uint32 ProximityId, out uint16 NodeNumber);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessGroupAffinity(Handle hProcess, out uint16 GroupCount, uint16* GroupArray);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetThreadGroupAffinity(Handle hThread, out GROUP_AFFINITY GroupAffinity);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadGroupAffinity(Handle hThread, in GROUP_AFFINITY GroupAffinity, GROUP_AFFINITY* PreviousGroupAffinity);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AttachThreadInput(uint32 idAttach, uint32 idAttachTo, IntBool fAttach);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WaitForInputIdle(Handle hProcess, uint32 dwMilliseconds);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetGuiResources(Handle hProcess, GET_GUI_RESOURCES_FLAGS uiFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsImmersiveProcess(Handle hProcess);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessRestrictionExemption(IntBool fEnableExemption);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessAffinityMask(Handle hProcess, out uint lpProcessAffinityMask, out uint lpSystemAffinityMask);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessAffinityMask(Handle hProcess, uint dwProcessAffinityMask);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessIoCounters(Handle hProcess, out IO_COUNTERS lpIoCounters);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SwitchToFiber(void* lpFiber);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void DeleteFiber(void* lpFiber);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ConvertFiberToThread();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* CreateFiberEx(uint dwStackCommitSize, uint dwStackReserveSize, uint32 dwFlags, LPFIBER_START_ROUTINE lpStartAddress, void* lpParameter);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* ConvertThreadToFiberEx(void* lpParameter, uint32 dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* CreateFiber(uint dwStackSize, LPFIBER_START_ROUTINE lpStartAddress, void* lpParameter);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* ConvertThreadToFiber(void* lpParameter);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreateUmsCompletionList(void** UmsCompletionList);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DequeueUmsCompletionListItems(void* UmsCompletionList, uint32 WaitTimeOut, void** UmsThreadList);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetUmsCompletionListEvent(void* UmsCompletionList, out Handle UmsCompletionEvent);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ExecuteUmsThread(void* UmsThread);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool UmsThreadYield(void* SchedulerParam);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DeleteUmsCompletionList(void* UmsCompletionList);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* GetCurrentUmsThread();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* GetNextUmsListItem(void* UmsContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool QueryUmsThreadInformation(void* UmsThread, RTL_UMS_THREAD_INFO_CLASS UmsThreadInfoClass, void* UmsThreadInformation, uint32 UmsThreadInformationLength, uint32* ReturnLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetUmsThreadInformation(void* UmsThread, RTL_UMS_THREAD_INFO_CLASS UmsThreadInfoClass, void* UmsThreadInformation, uint32 UmsThreadInformationLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DeleteUmsThreadContext(void* UmsThread);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreateUmsThreadContext(void** lpUmsThread);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnterUmsSchedulingMode(ref UMS_SCHEDULER_STARTUP_INFO SchedulerStartupInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetUmsSystemThreadInformation(Handle ThreadHandle, out UMS_SYSTEM_THREAD_INFORMATION SystemThreadInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint SetThreadAffinityMask(Handle hThread, uint dwThreadAffinityMask);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessDEPPolicy(PROCESS_DEP_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessDEPPolicy(Handle hProcess, out uint32 lpFlags, out IntBool lpPermanent);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool PulseEvent(Handle hEvent);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WinExec(char8* lpCmdLine, uint32 uCmdShow);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateSemaphoreA(SecurityAttributes* lpSemaphoreAttributes, int32 lInitialCount, int32 lMaximumCount, char8* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateSemaphoreExA(SecurityAttributes* lpSemaphoreAttributes, int32 lInitialCount, int32 lMaximumCount, char8* lpName, uint32 dwFlags, uint32 dwDesiredAccess);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool QueryFullProcessImageNameA(Handle hProcess, PROCESS_NAME_FORMAT dwFlags, uint8* lpExeName, out uint32 lpdwSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool QueryFullProcessImageNameW(Handle hProcess, PROCESS_NAME_FORMAT dwFlags, char16* lpExeName, out uint32 lpdwSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetStartupInfoA(out STARTUPINFOA lpStartupInfo);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreateProcessWithLogonW(char16* lpUsername, char16* lpDomain, char16* lpPassword, CREATE_PROCESS_LOGON_FLAGS dwLogonFlags, char16* lpApplicationName, char16* lpCommandLine, uint32 dwCreationFlags, void* lpEnvironment, char16* lpCurrentDirectory, ref STARTUPINFOW lpStartupInfo, out PROCESS_INFORMATION lpProcessInformation);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreateProcessWithTokenW(Handle hToken, CREATE_PROCESS_LOGON_FLAGS dwLogonFlags, char16* lpApplicationName, char16* lpCommandLine, uint32 dwCreationFlags, void* lpEnvironment, char16* lpCurrentDirectory, ref STARTUPINFOW lpStartupInfo, out PROCESS_INFORMATION lpProcessInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool RegisterWaitForSingleObject(out Handle phNewWaitObject, Handle hObject, WAITORTIMERCALLBACK Callback, void* Context, uint32 dwMilliseconds, WORKER_THREAD_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool UnregisterWait(Handle WaitHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle SetTimerQueueTimer(Handle TimerQueue, WAITORTIMERCALLBACK Callback, void* Parameter, uint32 DueTime, uint32 Period, IntBool PreferIo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern NamespaceHandle CreatePrivateNamespaceA(SecurityAttributes* lpPrivateNamespaceAttributes, void* lpBoundaryDescriptor, char8* lpAliasPrefix);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern NamespaceHandle OpenPrivateNamespaceA(void* lpBoundaryDescriptor, char8* lpAliasPrefix);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BoundaryDescriptorHandle CreateBoundaryDescriptorA(char8* Name, uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddIntegrityLabelToBoundaryDescriptor(out Handle BoundaryDescriptor, PSID IntegrityLabel);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 GetActiveProcessorGroupCount();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 GetMaximumProcessorGroupCount();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetActiveProcessorCount(uint16 GroupNumber);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetMaximumProcessorCount(uint16 GroupNumber);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNumaProcessorNode(uint8 Processor, out uint8 NodeNumber);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNumaNodeNumberFromHandle(Handle hFile, out uint16 NodeNumber);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNumaProcessorNodeEx(ref PROCESSOR_NUMBER Processor, out uint16 NodeNumber);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNumaNodeProcessorMask(uint8 Node, out uint64 ProcessorMask);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNumaAvailableMemoryNode(uint8 Node, out uint64 AvailableBytes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNumaAvailableMemoryNodeEx(uint16 Node, out uint64 AvailableBytes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNumaProximityNode(uint32 ProximityId, out uint8 NodeNumber);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS NtQueryInformationProcess(Handle ProcessHandle, PROCESSINFOCLASS ProcessInformationClass, void* ProcessInformation, uint32 ProcessInformationLength, out uint32 ReturnLength);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS NtQueryInformationThread(Handle ThreadHandle, THREADINFOCLASS ThreadInformationClass, void* ThreadInformation, uint32 ThreadInformationLength, out uint32 ReturnLength);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS NtSetInformationThread(Handle ThreadHandle, THREADINFOCLASS ThreadInformationClass, void* ThreadInformation, uint32 ThreadInformationLength);
	}
}
