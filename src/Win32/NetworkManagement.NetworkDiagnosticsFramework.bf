using System;

// namespace NetworkManagement.NetworkDiagnosticsFramework
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 NDF_ERROR_START = 63744;
		public const HResult NDF_E_LENGTH_EXCEEDED = -2146895616;
		public const HResult NDF_E_NOHELPERCLASS = -2146895615;
		public const HResult NDF_E_CANCELLED = -2146895614;
		public const HResult NDF_E_DISABLED = -2146895612;
		public const HResult NDF_E_BAD_PARAM = -2146895611;
		public const HResult NDF_E_VALIDATION = -2146895610;
		public const HResult NDF_E_UNKNOWN = -2146895609;
		public const HResult NDF_E_PROBLEM_PRESENT = -2146895608;
		public const uint32 RF_WORKAROUND = 536870912;
		public const uint32 RF_USER_ACTION = 268435456;
		public const uint32 RF_USER_CONFIRMATION = 134217728;
		public const uint32 RF_INFORMATION_ONLY = 33554432;
		public const uint32 RF_UI_ONLY = 16777216;
		public const uint32 RF_SHOW_EVENTS = 8388608;
		public const uint32 RF_VALIDATE_HELPTOPIC = 4194304;
		public const uint32 RF_REPRO = 2097152;
		public const uint32 RF_CONTACT_ADMIN = 131072;
		public const uint32 RF_RESERVED = 1073741824;
		public const uint32 RF_RESERVED_CA = 2147483648;
		public const uint32 RF_RESERVED_LNI = 65536;
		public const uint32 RCF_ISLEAF = 1;
		public const uint32 RCF_ISCONFIRMED = 2;
		public const uint32 RCF_ISTHIRDPARTY = 4;
		public const uint32 DF_IMPERSONATION = 2147483648;
		public const uint32 DF_TRACELESS = 1073741824;
		public const uint32 NDF_INBOUND_FLAG_EDGETRAVERSAL = 1;
		public const uint32 NDF_INBOUND_FLAG_HEALTHCHECK = 2;
		public const uint32 NDF_ADD_CAPTURE_TRACE = 1;
		public const uint32 NDF_APPLY_INCLUSION_LIST_FILTER = 2;
		
		// --- Enums ---
		
		public enum ATTRIBUTE_TYPE : int32
		{
			INVALID = 0,
			Boolean = 1,
			INT8 = 2,
			UINT8 = 3,
			INT16 = 4,
			UINT16 = 5,
			INT32 = 6,
			UINT32 = 7,
			INT64 = 8,
			UINT64 = 9,
			STRING = 10,
			GUID = 11,
			LIFE_TIME = 12,
			SOCKADDR = 13,
			OCTET_STRING = 14,
		}
		public enum REPAIR_SCOPE : int32
		{
			SYSTEM = 0,
			USER = 1,
			APPLICATION = 2,
			PROCESS = 3,
		}
		public enum REPAIR_RISK : int32
		{
			NOROLLBACK = 0,
			ROLLBACK = 1,
			NORISK = 2,
		}
		public enum UI_INFO_TYPE : int32
		{
			INVALID = 0,
			NONE = 1,
			SHELL_COMMAND = 2,
			HELP_PANE = 3,
			DUI = 4,
		}
		public enum DIAGNOSIS_STATUS : int32
		{
			NOT_IMPLEMENTED = 0,
			CONFIRMED = 1,
			REJECTED = 2,
			INDETERMINATE = 3,
			DEFERRED = 4,
			PASSTHROUGH = 5,
		}
		public enum REPAIR_STATUS : int32
		{
			NOT_IMPLEMENTED = 0,
			REPAIRED = 1,
			UNREPAIRED = 2,
			DEFERRED = 3,
			USER_ACTION = 4,
		}
		public enum PROBLEM_TYPE : int32
		{
			INVALID = 0,
			LOW_HEALTH = 1,
			LOWER_HEALTH = 2,
			DOWN_STREAM_HEALTH = 4,
			HIGH_UTILIZATION = 8,
			HIGHER_UTILIZATION = 16,
			UP_STREAM_UTILIZATION = 32,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct OCTET_STRING
		{
			public uint32 dwLength;
			public uint8* lpValue;
		}
		[CRepr]
		public struct LIFE_TIME
		{
			public FileTime startTime;
			public FileTime endTime;
		}
		[CRepr]
		public struct DIAG_SOCKADDR
		{
			public uint16 family;
			public char8[126] data;
		}
		[CRepr]
		public struct HELPER_ATTRIBUTE
		{
			public char16* pwszName;
			public ATTRIBUTE_TYPE type;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public IntBool Boolean;
				public uint8 Char;
				public uint8 Byte;
				public int16 Short;
				public uint16 Word;
				public int32 Int;
				public uint32 DWord;
				public int64 Int64;
				public uint64 UInt64;
				public char16* PWStr;
				public Guid Guid;
				public LIFE_TIME LifeTime;
				public DIAG_SOCKADDR Address;
				public OCTET_STRING OctetString;
			}
		}
		[CRepr]
		public struct ShellCommandInfo
		{
			public char16* pwszOperation;
			public char16* pwszFile;
			public char16* pwszParameters;
			public char16* pwszDirectory;
			public uint32 nShowCmd;
		}
		[CRepr]
		public struct UiInfo
		{
			public UI_INFO_TYPE type;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public char16* pwzNull;
				public ShellCommandInfo ShellInfo;
				public char16* pwzHelpUrl;
				public char16* pwzDui;
			}
		}
		[CRepr]
		public struct RepairInfo
		{
			public Guid guid;
			public char16* pwszClassName;
			public char16* pwszDescription;
			public uint32 sidType;
			public int32 cost;
			public uint32 flags;
			public REPAIR_SCOPE @scope;
			public REPAIR_RISK risk;
			public UiInfo UiInfo;
			public int32 rootCauseIndex;
		}
		[CRepr]
		public struct RepairInfoEx
		{
			public RepairInfo repair;
			public uint16 repairRank;
		}
		[CRepr]
		public struct RootCauseInfo
		{
			public char16* pwszDescription;
			public Guid rootCauseID;
			public uint32 rootCauseFlags;
			public Guid networkInterfaceID;
			public RepairInfoEx* pRepairs;
			public uint16 repairCount;
		}
		[CRepr]
		public struct HYPOTHESIS
		{
			public char16* pwszClassName;
			public char16* pwszDescription;
			public uint32 celt;
			public HELPER_ATTRIBUTE* rgAttributes;
		}
		[CRepr]
		public struct HelperAttributeInfo
		{
			public char16* pwszName;
			public ATTRIBUTE_TYPE type;
		}
		[CRepr]
		public struct DiagnosticsInfo
		{
			public int32 cost;
			public uint32 flags;
		}
		[CRepr]
		public struct HypothesisResult
		{
			public HYPOTHESIS hypothesis;
			public DIAGNOSIS_STATUS pathStatus;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct INetDiagHelper : IUnknown
		{
			public const new Guid IID = .(0xc0b35746, 0xebf5, 0x11d8, 0xbb, 0xe9, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Initialize(uint32 celt, HELPER_ATTRIBUTE* rgAttributes) mut => VT.Initialize(ref this, celt, rgAttributes);
			public HResult GetDiagnosticsInfo(out DiagnosticsInfo* ppInfo) mut => VT.GetDiagnosticsInfo(ref this, out ppInfo);
			public HResult GetKeyAttributes(out uint32 pcelt, HELPER_ATTRIBUTE** pprgAttributes) mut => VT.GetKeyAttributes(ref this, out pcelt, pprgAttributes);
			public HResult LowHealth(char16* pwszInstanceDescription, out char16* ppwszDescription, out int32 pDeferredTime, out DIAGNOSIS_STATUS pStatus) mut => VT.LowHealth(ref this, pwszInstanceDescription, out ppwszDescription, out pDeferredTime, out pStatus);
			public HResult HighUtilization(char16* pwszInstanceDescription, out char16* ppwszDescription, out int32 pDeferredTime, out DIAGNOSIS_STATUS pStatus) mut => VT.HighUtilization(ref this, pwszInstanceDescription, out ppwszDescription, out pDeferredTime, out pStatus);
			public HResult GetLowerHypotheses(out uint32 pcelt, HYPOTHESIS** pprgHypotheses) mut => VT.GetLowerHypotheses(ref this, out pcelt, pprgHypotheses);
			public HResult GetDownStreamHypotheses(out uint32 pcelt, HYPOTHESIS** pprgHypotheses) mut => VT.GetDownStreamHypotheses(ref this, out pcelt, pprgHypotheses);
			public HResult GetHigherHypotheses(out uint32 pcelt, HYPOTHESIS** pprgHypotheses) mut => VT.GetHigherHypotheses(ref this, out pcelt, pprgHypotheses);
			public HResult GetUpStreamHypotheses(out uint32 pcelt, HYPOTHESIS** pprgHypotheses) mut => VT.GetUpStreamHypotheses(ref this, out pcelt, pprgHypotheses);
			public HResult Repair(ref RepairInfo pInfo, out int32 pDeferredTime, out REPAIR_STATUS pStatus) mut => VT.Repair(ref this, ref pInfo, out pDeferredTime, out pStatus);
			public HResult Validate(PROBLEM_TYPE problem, out int32 pDeferredTime, out REPAIR_STATUS pStatus) mut => VT.Validate(ref this, problem, out pDeferredTime, out pStatus);
			public HResult GetRepairInfo(PROBLEM_TYPE problem, out uint32 pcelt, RepairInfo** ppInfo) mut => VT.GetRepairInfo(ref this, problem, out pcelt, ppInfo);
			public HResult GetLifeTime(out LIFE_TIME pLifeTime) mut => VT.GetLifeTime(ref this, out pLifeTime);
			public HResult SetLifeTime(LIFE_TIME lifeTime) mut => VT.SetLifeTime(ref this, lifeTime);
			public HResult GetCacheTime(out FileTime pCacheTime) mut => VT.GetCacheTime(ref this, out pCacheTime);
			public HResult GetAttributes(out uint32 pcelt, HELPER_ATTRIBUTE** pprgAttributes) mut => VT.GetAttributes(ref this, out pcelt, pprgAttributes);
			public HResult Cancel() mut => VT.Cancel(ref this);
			public HResult Cleanup() mut => VT.Cleanup(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, uint32 celt, HELPER_ATTRIBUTE* rgAttributes) Initialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, out DiagnosticsInfo* ppInfo) GetDiagnosticsInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, out uint32 pcelt, HELPER_ATTRIBUTE** pprgAttributes) GetKeyAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, char16* pwszInstanceDescription, out char16* ppwszDescription, out int32 pDeferredTime, out DIAGNOSIS_STATUS pStatus) LowHealth;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, char16* pwszInstanceDescription, out char16* ppwszDescription, out int32 pDeferredTime, out DIAGNOSIS_STATUS pStatus) HighUtilization;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, out uint32 pcelt, HYPOTHESIS** pprgHypotheses) GetLowerHypotheses;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, out uint32 pcelt, HYPOTHESIS** pprgHypotheses) GetDownStreamHypotheses;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, out uint32 pcelt, HYPOTHESIS** pprgHypotheses) GetHigherHypotheses;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, out uint32 pcelt, HYPOTHESIS** pprgHypotheses) GetUpStreamHypotheses;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, ref RepairInfo pInfo, out int32 pDeferredTime, out REPAIR_STATUS pStatus) Repair;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, PROBLEM_TYPE problem, out int32 pDeferredTime, out REPAIR_STATUS pStatus) Validate;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, PROBLEM_TYPE problem, out uint32 pcelt, RepairInfo** ppInfo) GetRepairInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, out LIFE_TIME pLifeTime) GetLifeTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, LIFE_TIME lifeTime) SetLifeTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, out FileTime pCacheTime) GetCacheTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self, out uint32 pcelt, HELPER_ATTRIBUTE** pprgAttributes) GetAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self) Cancel;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelper self) Cleanup;
			}
		}
		[CRepr]
		public struct INetDiagHelperUtilFactory : IUnknown
		{
			public const new Guid IID = .(0x104613fb, 0xbc57, 0x4178, 0x95, 0xba, 0x88, 0x80, 0x96, 0x98, 0x35, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateUtilityInstance(in Guid riid, void** ppvObject) mut => VT.CreateUtilityInstance(ref this, riid, ppvObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelperUtilFactory self, in Guid riid, void** ppvObject) CreateUtilityInstance;
			}
		}
		[CRepr]
		public struct INetDiagHelperEx : IUnknown
		{
			public const new Guid IID = .(0x972dab4d, 0xe4e3, 0x4fc6, 0xae, 0x54, 0x5f, 0x65, 0xcc, 0xde, 0x4a, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ReconfirmLowHealth(uint32 celt, HypothesisResult* pResults, out char16* ppwszUpdatedDescription, out DIAGNOSIS_STATUS pUpdatedStatus) mut => VT.ReconfirmLowHealth(ref this, celt, pResults, out ppwszUpdatedDescription, out pUpdatedStatus);
			public HResult SetUtilities(ref INetDiagHelperUtilFactory pUtilities) mut => VT.SetUtilities(ref this, ref pUtilities);
			public HResult ReproduceFailure() mut => VT.ReproduceFailure(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelperEx self, uint32 celt, HypothesisResult* pResults, out char16* ppwszUpdatedDescription, out DIAGNOSIS_STATUS pUpdatedStatus) ReconfirmLowHealth;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelperEx self, ref INetDiagHelperUtilFactory pUtilities) SetUtilities;
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelperEx self) ReproduceFailure;
			}
		}
		[CRepr]
		public struct INetDiagHelperInfo : IUnknown
		{
			public const new Guid IID = .(0xc0b35747, 0xebf5, 0x11d8, 0xbb, 0xe9, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetAttributeInfo(out uint32 pcelt, HelperAttributeInfo** pprgAttributeInfos) mut => VT.GetAttributeInfo(ref this, out pcelt, pprgAttributeInfos);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagHelperInfo self, out uint32 pcelt, HelperAttributeInfo** pprgAttributeInfos) GetAttributeInfo;
			}
		}
		[CRepr]
		public struct INetDiagExtensibleHelper : IUnknown
		{
			public const new Guid IID = .(0xc0b35748, 0xebf5, 0x11d8, 0xbb, 0xe9, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ResolveAttributes(uint32 celt, HELPER_ATTRIBUTE* rgKeyAttributes, out uint32 pcelt, HELPER_ATTRIBUTE** prgMatchValues) mut => VT.ResolveAttributes(ref this, celt, rgKeyAttributes, out pcelt, prgMatchValues);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref INetDiagExtensibleHelper self, uint32 celt, HELPER_ATTRIBUTE* rgKeyAttributes, out uint32 pcelt, HELPER_ATTRIBUTE** prgMatchValues) ResolveAttributes;
			}
		}
		
		// --- Functions ---
		
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfCreateIncident(char16* helperClassName, uint32 celt, HELPER_ATTRIBUTE* attributes, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfCreateWinSockIncident(SOCKET sock, char16* host, uint16 port, char16* appId, SID* userId, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfCreateWebIncident(char16* url, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfCreateWebIncidentEx(char16* url, IntBool useWinHTTP, char16* moduleName, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfCreateSharingIncident(char16* UNCPath, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfCreateDNSIncident(char16* hostname, uint16 queryType, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfCreateConnectivityIncident(void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfCreateNetConnectionIncident(void** handle, Guid id);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfCreatePnrpIncident(char16* cloudname, char16* peername, IntBool diagnosePublish, char16* appId, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfCreateGroupingIncident(char16* CloudName, char16* GroupName, char16* Identity, char16* Invitation, SOCKET_ADDRESS_LIST* Addresses, char16* appId, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfExecuteDiagnosis(void* handle, HWnd hwnd);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfCloseIncident(void* handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfDiagnoseIncident(void* Handle, out uint32 RootCauseCount, out RootCauseInfo* RootCauses, uint32 dwWait, uint32 dwFlags);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfRepairIncident(void* Handle, ref RepairInfoEx RepairEx, uint32 dwWait);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfCancelIncident(void* Handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult NdfGetTraceFile(void* Handle, out char16* TraceFileLocation);
	}
}
