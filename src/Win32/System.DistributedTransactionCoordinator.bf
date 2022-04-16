using System;
using static Win32.System.Com;
using static System.Windows.COM_IUnknown;
using static System.Windows;

// namespace System.DistributedTransactionCoordinator
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 DTCINSTALL_E_CLIENT_ALREADY_INSTALLED = 384;
		public const int32 DTCINSTALL_E_SERVER_ALREADY_INSTALLED = 385;
		public const uint32 XA_SWITCH_F_DTC = 1;
		public const uint32 XA_FMTID_DTC = 4478019;
		public const uint32 XA_FMTID_DTC_VER1 = 21255235;
		public const uint32 XIDDATASIZE = 128;
		public const uint32 MAXGTRIDSIZE = 64;
		public const uint32 MAXBQUALSIZE = 64;
		public const uint32 RMNAMESZ = 32;
		public const uint32 MAXINFOSIZE = 256;
		public const int32 TMNOFLAGS = 0;
		public const int32 TMREGISTER = 1;
		public const int32 TMNOMIGRATE = 2;
		public const int32 TMUSEASYNC = 4;
		public const int32 TMASYNC = -2147483648;
		public const int32 TMONEPHASE = 1073741824;
		public const int32 TMFAIL = 536870912;
		public const int32 TMNOWAIT = 268435456;
		public const int32 TMRESUME = 134217728;
		public const int32 TMSUCCESS = 67108864;
		public const int32 TMSUSPEND = 33554432;
		public const int32 TMSTARTRSCAN = 16777216;
		public const int32 TMENDRSCAN = 8388608;
		public const int32 TMMULTIPLE = 4194304;
		public const int32 TMJOIN = 2097152;
		public const int32 TMMIGRATE = 1048576;
		public const uint32 TM_JOIN = 2;
		public const uint32 TM_RESUME = 1;
		public const uint32 TM_OK = 0;
		public const int32 TMER_TMERR = -1;
		public const int32 TMER_INVAL = -2;
		public const int32 TMER_PROTO = -3;
		public const uint32 XA_RBBASE = 100;
		public const uint32 XA_RBROLLBACK = 100;
		public const uint32 XA_RBCOMMFAIL = 101;
		public const uint32 XA_RBDEADLOCK = 102;
		public const uint32 XA_RBINTEGRITY = 103;
		public const uint32 XA_RBOTHER = 104;
		public const uint32 XA_RBPROTO = 105;
		public const uint32 XA_RBTIMEOUT = 106;
		public const uint32 XA_RBTRANSIENT = 107;
		public const uint32 XA_RBEND = 107;
		public const uint32 XA_NOMIGRATE = 9;
		public const uint32 XA_HEURHAZ = 8;
		public const uint32 XA_HEURCOM = 7;
		public const uint32 XA_HEURRB = 6;
		public const uint32 XA_HEURMIX = 5;
		public const uint32 XA_RETRY = 4;
		public const uint32 XA_RDONLY = 3;
		public const uint32 XA_OK = 0;
		public const int32 XAER_ASYNC = -2;
		public const int32 XAER_RMERR = -3;
		public const int32 XAER_NOTA = -4;
		public const int32 XAER_INVAL = -5;
		public const int32 XAER_PROTO = -6;
		public const int32 XAER_RMFAIL = -7;
		public const int32 XAER_DUPID = -8;
		public const int32 XAER_OUTSIDE = -9;
		public const uint32 DTC_INSTALL_OVERWRITE_CLIENT = 1;
		public const uint32 DTC_INSTALL_OVERWRITE_SERVER = 2;
		public const uint32 OLE_TM_CONFIG_VERSION_1 = 1;
		public const uint32 OLE_TM_CONFIG_VERSION_2 = 2;
		public const uint32 OLE_TM_FLAG_NONE = 0;
		public const uint32 OLE_TM_FLAG_NODEMANDSTART = 1;
		public const uint32 OLE_TM_FLAG_NOAGILERECOVERY = 2;
		public const uint32 OLE_TM_FLAG_QUERY_SERVICE_LOCKSTATUS = 2147483648;
		public const uint32 OLE_TM_FLAG_INTERNAL_TO_TM = 1073741824;
		public const Guid CLSID_MSDtcTransactionManager = .(0x5b18ab61, 0x091d, 0x11d1, 0x97, 0xdf, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
		public const Guid CLSID_MSDtcTransaction = .(0x39f8d76b, 0x0928, 0x11d1, 0x97, 0xdf, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
		
		// --- Enums ---
		
		public enum DTC_STATUS_ : int32
		{
			UNKNOWN = 0,
			STARTING = 1,
			STARTED = 2,
			PAUSING = 3,
			PAUSED = 4,
			CONTINUING = 5,
			STOPPING = 6,
			STOPPED = 7,
			E_CANTCONTROL = 8,
			FAILED = 9,
		}
		public enum TX_MISC_CONSTANTS : int32
		{
			MAX_TRAN_DESC = 40,
		}
		[AllowDuplicates]
		public enum ISOLATIONLEVEL : int32
		{
			UNSPECIFIED = -1,
			CHAOS = 16,
			READUNCOMMITTED = 256,
			BROWSE = 256,
			CURSORSTABILITY = 4096,
			READCOMMITTED = 4096,
			REPEATABLEREAD = 65536,
			SERIALIZABLE = 1048576,
			ISOLATED = 1048576,
		}
		public enum ISOFLAG : int32
		{
			RETAIN_COMMIT_DC = 1,
			RETAIN_COMMIT = 2,
			RETAIN_COMMIT_NO = 3,
			RETAIN_ABORT_DC = 4,
			RETAIN_ABORT = 8,
			RETAIN_ABORT_NO = 12,
			RETAIN_DONTCARE = 5,
			RETAIN_BOTH = 10,
			RETAIN_NONE = 15,
			OPTIMISTIC = 16,
			READONLY = 32,
		}
		[AllowDuplicates]
		public enum XACTTC : int32
		{
			NONE = 0,
			SYNC_PHASEONE = 1,
			SYNC_PHASETWO = 2,
			SYNC = 2,
			ASYNC_PHASEONE = 4,
			ASYNC = 4,
		}
		public enum XACTRM : int32
		{
			OPTIMISTICLASTWINS = 1,
			NOREADONLYPREPARES = 2,
		}
		public enum XACTCONST : int32
		{
			XACTCONST_TIMEOUTINFINITE = 0,
		}
		public enum XACTHEURISTIC : int32
		{
			ABORT = 1,
			COMMIT = 2,
			DAMAGE = 3,
			DANGER = 4,
		}
		public enum XACTSTAT : int32
		{
			NONE = 0,
			OPENNORMAL = 1,
			OPENREFUSED = 2,
			PREPARING = 4,
			PREPARED = 8,
			PREPARERETAINING = 16,
			PREPARERETAINED = 32,
			COMMITTING = 64,
			COMMITRETAINING = 128,
			ABORTING = 256,
			ABORTED = 512,
			COMMITTED = 1024,
			HEURISTIC_ABORT = 2048,
			HEURISTIC_COMMIT = 4096,
			HEURISTIC_DAMAGE = 8192,
			HEURISTIC_DANGER = 16384,
			FORCED_ABORT = 32768,
			FORCED_COMMIT = 65536,
			INDOUBT = 131072,
			CLOSED = 262144,
			OPEN = 3,
			NOTPREPARED = 524227,
			ALL = 524287,
		}
		public enum AUTHENTICATION_LEVEL : int32
		{
			NO_AUTHENTICATION_REQUIRED = 0,
			INCOMING_AUTHENTICATION_REQUIRED = 1,
			MUTUAL_AUTHENTICATION_REQUIRED = 2,
		}
		public enum APPLICATIONTYPE : int32
		{
			LOCAL_APPLICATIONTYPE = 0,
			CLUSTERRESOURCE_APPLICATIONTYPE = 1,
		}
		public enum XACT_DTC_CONSTANTS : int32
		{
			XACT_E_CONNECTION_REQUEST_DENIED = -2147168000,
			XACT_E_TOOMANY_ENLISTMENTS = -2147167999,
			XACT_E_DUPLICATE_GUID = -2147167998,
			XACT_E_NOTSINGLEPHASE = -2147167997,
			XACT_E_RECOVERYALREADYDONE = -2147167996,
			XACT_E_PROTOCOL = -2147167995,
			XACT_E_RM_FAILURE = -2147167994,
			XACT_E_RECOVERY_FAILED = -2147167993,
			XACT_E_LU_NOT_FOUND = -2147167992,
			XACT_E_DUPLICATE_LU = -2147167991,
			XACT_E_LU_NOT_CONNECTED = -2147167990,
			XACT_E_DUPLICATE_TRANSID = -2147167989,
			XACT_E_LU_BUSY = -2147167988,
			XACT_E_LU_NO_RECOVERY_PROCESS = -2147167987,
			XACT_E_LU_DOWN = -2147167986,
			XACT_E_LU_RECOVERING = -2147167985,
			XACT_E_LU_RECOVERY_MISMATCH = -2147167984,
			XACT_E_RM_UNAVAILABLE = -2147167983,
			XACT_E_LRMRECOVERYALREADYDONE = -2147167982,
			XACT_E_NOLASTRESOURCEINTERFACE = -2147167981,
			XACT_S_NONOTIFY = 315648,
			XACT_OK_NONOTIFY = 315649,
			dwUSER_MS_SQLSERVER = 65535,
		}
		public enum _DtcLu_LocalRecovery_Work : int32
		{
			CHECKLUSTATUS = 1,
			TRANS = 2,
			TMDOWN = 3,
		}
		public enum _DtcLu_Xln : int32
		{
			COLD = 1,
			WARM = 2,
		}
		public enum _DtcLu_Xln_Confirmation : int32
		{
			CONFIRM = 1,
			LOGNAMEMISMATCH = 2,
			COLDWARMMISMATCH = 3,
			OBSOLETE = 4,
		}
		public enum _DtcLu_Xln_Response : int32
		{
			OK_SENDOURXLNBACK = 1,
			OK_SENDCONFIRMATION = 2,
			LOGNAMEMISMATCH = 3,
			COLDWARMMISMATCH = 4,
		}
		public enum _DtcLu_Xln_Error : int32
		{
			PROTOCOL = 1,
			LOGNAMEMISMATCH = 2,
			COLDWARMMISMATCH = 3,
		}
		public enum _DtcLu_CompareState : int32
		{
			COMMITTED = 1,
			HEURISTICCOMMITTED = 2,
			HEURISTICMIXED = 3,
			HEURISTICRESET = 4,
			INDOUBT = 5,
			RESET = 6,
		}
		public enum _DtcLu_CompareStates_Confirmation : int32
		{
			CONFIRM = 1,
			PROTOCOL = 2,
		}
		public enum _DtcLu_CompareStates_Error : int32
		{
			DTCLUCOMPARESTATESERROR_PROTOCOL = 1,
		}
		public enum _DtcLu_CompareStates_Response : int32
		{
			OK = 1,
			PROTOCOL = 2,
		}
		
		// --- Function Pointers ---
		
		public function HResult DTC_GET_TRANSACTION_MANAGER(char8* pszHost, char8* pszTmName, in Guid rid, uint32 dwReserved1, uint16 wcbReserved2, void* pvReserved2, void** ppvObject);
		public function HResult DTC_GET_TRANSACTION_MANAGER_EX_A(char8* i_pszHost, char8* i_pszTmName, in Guid i_riid, uint32 i_grfOptions, void* i_pvConfigParams, void** o_ppvObject);
		public function HResult DTC_GET_TRANSACTION_MANAGER_EX_W(char16* i_pwszHost, char16* i_pwszTmName, in Guid i_riid, uint32 i_grfOptions, void* i_pvConfigParams, void** o_ppvObject);
		public function HResult DTC_INSTALL_CLIENT(out int8 i_pszRemoteTmHostName, uint32 i_dwProtocol, uint32 i_dwOverwrite);
		public function int32 XA_OPEN_EPT(char8* param0, int32 param1, int32 param2);
		public function int32 XA_CLOSE_EPT(char8* param0, int32 param1, int32 param2);
		public function int32 XA_START_EPT(out xid_t param0, int32 param1, int32 param2);
		public function int32 XA_END_EPT(out xid_t param0, int32 param1, int32 param2);
		public function int32 XA_ROLLBACK_EPT(out xid_t param0, int32 param1, int32 param2);
		public function int32 XA_PREPARE_EPT(out xid_t param0, int32 param1, int32 param2);
		public function int32 XA_COMMIT_EPT(out xid_t param0, int32 param1, int32 param2);
		public function int32 XA_RECOVER_EPT(out xid_t param0, int32 param1, int32 param2, int32 param3);
		public function int32 XA_FORGET_EPT(out xid_t param0, int32 param1, int32 param2);
		public function int32 XA_COMPLETE_EPT(out int32 param0, out int32 param1, int32 param2, int32 param3);
		
		// --- Structs ---
		
		[CRepr]
		public struct BOID
		{
			public uint8[16] rgb;
		}
		[CRepr]
		public struct XACTTRANSINFO
		{
			public BOID uow;
			public int32 isoLevel;
			public uint32 isoFlags;
			public uint32 grfTCSupported;
			public uint32 grfRMSupported;
			public uint32 grfTCSupportedRetaining;
			public uint32 grfRMSupportedRetaining;
		}
		[CRepr]
		public struct XACTSTATS
		{
			public uint32 cOpen;
			public uint32 cCommitting;
			public uint32 cCommitted;
			public uint32 cAborting;
			public uint32 cAborted;
			public uint32 cInDoubt;
			public uint32 cHeuristicDecision;
			public FileTime timeTransactionsUp;
		}
		[CRepr]
		public struct XACTOPT
		{
			public uint32 ulTimeout;
			public uint8[40] szDescription;
		}
		[CRepr]
		public struct xid_t
		{
			public int32 formatID;
			public int32 gtrid_length;
			public int32 bqual_length;
			public char8[128] data;
		}
		[CRepr]
		public struct xa_switch_t
		{
			public char8[32] name;
			public int32 flags;
			public int32 version;
			public int xa_open_entry;
			public int xa_close_entry;
			public int xa_start_entry;
			public int xa_end_entry;
			public int xa_rollback_entry;
			public int xa_prepare_entry;
			public int xa_commit_entry;
			public int xa_recover_entry;
			public int xa_forget_entry;
			public int xa_complete_entry;
		}
		[CRepr]
		public struct OLE_TM_CONFIG_PARAMS_V1
		{
			public uint32 dwVersion;
			public uint32 dwcConcurrencyHint;
		}
		[CRepr]
		public struct OLE_TM_CONFIG_PARAMS_V2
		{
			public uint32 dwVersion;
			public uint32 dwcConcurrencyHint;
			public APPLICATIONTYPE applicationType;
			public Guid clusterResourceId;
		}
		[CRepr]
		public struct _ProxyConfigParams
		{
			public uint16 wcThreadsMax;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ITransaction : IUnknown
		{
			public const new Guid IID = .(0x0fb15084, 0xaf41, 0x11ce, 0xbd, 0x2b, 0x20, 0x4c, 0x4f, 0x4f, 0x50, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Commit(IntBool fRetaining, uint32 grfTC, uint32 grfRM) mut => VT.Commit(ref this, fRetaining, grfTC, grfRM);
			public HResult Abort(ref BOID pboidReason, IntBool fRetaining, IntBool fAsync) mut => VT.Abort(ref this, ref pboidReason, fRetaining, fAsync);
			public HResult GetTransactionInfo(out XACTTRANSINFO pinfo) mut => VT.GetTransactionInfo(ref this, out pinfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransaction self, IntBool fRetaining, uint32 grfTC, uint32 grfRM) Commit;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransaction self, ref BOID pboidReason, IntBool fRetaining, IntBool fAsync) Abort;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransaction self, out XACTTRANSINFO pinfo) GetTransactionInfo;
			}
		}
		[CRepr]
		public struct ITransactionCloner : ITransaction
		{
			public const new Guid IID = .(0x02656950, 0x2152, 0x11d0, 0x94, 0x4c, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CloneWithCommitDisabled(out ITransaction* ppITransaction) mut => VT.CloneWithCommitDisabled(ref this, out ppITransaction);

			[CRepr]
			public struct VTable : ITransaction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionCloner self, out ITransaction* ppITransaction) CloneWithCommitDisabled;
			}
		}
		[CRepr]
		public struct ITransaction2 : ITransactionCloner
		{
			public const new Guid IID = .(0x34021548, 0x0065, 0x11d3, 0xba, 0xc1, 0x00, 0xc0, 0x4f, 0x79, 0x7b, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetTransactionInfo2(out XACTTRANSINFO pinfo) mut => VT.GetTransactionInfo2(ref this, out pinfo);

			[CRepr]
			public struct VTable : ITransactionCloner.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransaction2 self, out XACTTRANSINFO pinfo) GetTransactionInfo2;
			}
		}
		[CRepr]
		public struct ITransactionDispenser : IUnknown
		{
			public const new Guid IID = .(0x3a6ad9e1, 0x23b9, 0x11cf, 0xad, 0x60, 0x00, 0xaa, 0x00, 0xa7, 0x4c, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOptionsObject(out ITransactionOptions* ppOptions) mut => VT.GetOptionsObject(ref this, out ppOptions);
			public HResult BeginTransaction(ref IUnknown punkOuter, int32 isoLevel, uint32 isoFlags, ref ITransactionOptions pOptions, out ITransaction* ppTransaction) mut => VT.BeginTransaction(ref this, ref punkOuter, isoLevel, isoFlags, ref pOptions, out ppTransaction);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionDispenser self, out ITransactionOptions* ppOptions) GetOptionsObject;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionDispenser self, ref IUnknown punkOuter, int32 isoLevel, uint32 isoFlags, ref ITransactionOptions pOptions, out ITransaction* ppTransaction) BeginTransaction;
			}
		}
		[CRepr]
		public struct ITransactionOptions : IUnknown
		{
			public const new Guid IID = .(0x3a6ad9e0, 0x23b9, 0x11cf, 0xad, 0x60, 0x00, 0xaa, 0x00, 0xa7, 0x4c, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetOptions(ref XACTOPT pOptions) mut => VT.SetOptions(ref this, ref pOptions);
			public HResult GetOptions(out XACTOPT pOptions) mut => VT.GetOptions(ref this, out pOptions);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionOptions self, ref XACTOPT pOptions) SetOptions;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionOptions self, out XACTOPT pOptions) GetOptions;
			}
		}
		[CRepr]
		public struct ITransactionOutcomeEvents : IUnknown
		{
			public const new Guid IID = .(0x3a6ad9e2, 0x23b9, 0x11cf, 0xad, 0x60, 0x00, 0xaa, 0x00, 0xa7, 0x4c, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Committed(IntBool fRetaining, ref BOID pNewUOW, HResult hr) mut => VT.Committed(ref this, fRetaining, ref pNewUOW, hr);
			public HResult Aborted(ref BOID pboidReason, IntBool fRetaining, ref BOID pNewUOW, HResult hr) mut => VT.Aborted(ref this, ref pboidReason, fRetaining, ref pNewUOW, hr);
			public HResult HeuristicDecision(uint32 dwDecision, ref BOID pboidReason, HResult hr) mut => VT.HeuristicDecision(ref this, dwDecision, ref pboidReason, hr);
			public HResult Indoubt() mut => VT.Indoubt(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionOutcomeEvents self, IntBool fRetaining, ref BOID pNewUOW, HResult hr) Committed;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionOutcomeEvents self, ref BOID pboidReason, IntBool fRetaining, ref BOID pNewUOW, HResult hr) Aborted;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionOutcomeEvents self, uint32 dwDecision, ref BOID pboidReason, HResult hr) HeuristicDecision;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionOutcomeEvents self) Indoubt;
			}
		}
		[CRepr]
		public struct ITmNodeName : IUnknown
		{
			public const new Guid IID = .(0x30274f88, 0x6ee4, 0x474e, 0x9b, 0x95, 0x78, 0x07, 0xbc, 0x9e, 0xf8, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetNodeNameSize(out uint32 pcbNodeNameSize) mut => VT.GetNodeNameSize(ref this, out pcbNodeNameSize);
			public HResult GetNodeName(uint32 cbNodeNameBufferSize, char16* pNodeNameBuffer) mut => VT.GetNodeName(ref this, cbNodeNameBufferSize, pNodeNameBuffer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITmNodeName self, out uint32 pcbNodeNameSize) GetNodeNameSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITmNodeName self, uint32 cbNodeNameBufferSize, char16* pNodeNameBuffer) GetNodeName;
			}
		}
		[CRepr]
		public struct IKernelTransaction : IUnknown
		{
			public const new Guid IID = .(0x79427a2b, 0xf895, 0x40e0, 0xbe, 0x79, 0xb5, 0x7d, 0xc8, 0x2e, 0xd2, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetHandle(out Handle pHandle) mut => VT.GetHandle(ref this, out pHandle);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IKernelTransaction self, out Handle pHandle) GetHandle;
			}
		}
		[CRepr]
		public struct ITransactionResourceAsync : IUnknown
		{
			public const new Guid IID = .(0x69e971f0, 0x23ce, 0x11cf, 0xad, 0x60, 0x00, 0xaa, 0x00, 0xa7, 0x4c, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult PrepareRequest(IntBool fRetaining, uint32 grfRM, IntBool fWantMoniker, IntBool fSinglePhase) mut => VT.PrepareRequest(ref this, fRetaining, grfRM, fWantMoniker, fSinglePhase);
			public HResult CommitRequest(uint32 grfRM, ref BOID pNewUOW) mut => VT.CommitRequest(ref this, grfRM, ref pNewUOW);
			public HResult AbortRequest(ref BOID pboidReason, IntBool fRetaining, ref BOID pNewUOW) mut => VT.AbortRequest(ref this, ref pboidReason, fRetaining, ref pNewUOW);
			public HResult TMDown() mut => VT.TMDown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionResourceAsync self, IntBool fRetaining, uint32 grfRM, IntBool fWantMoniker, IntBool fSinglePhase) PrepareRequest;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionResourceAsync self, uint32 grfRM, ref BOID pNewUOW) CommitRequest;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionResourceAsync self, ref BOID pboidReason, IntBool fRetaining, ref BOID pNewUOW) AbortRequest;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionResourceAsync self) TMDown;
			}
		}
		[CRepr]
		public struct ITransactionLastResourceAsync : IUnknown
		{
			public const new Guid IID = .(0xc82bd532, 0x5b30, 0x11d3, 0x8a, 0x91, 0x00, 0xc0, 0x4f, 0x79, 0xeb, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult DelegateCommit(uint32 grfRM) mut => VT.DelegateCommit(ref this, grfRM);
			public HResult ForgetRequest(ref BOID pNewUOW) mut => VT.ForgetRequest(ref this, ref pNewUOW);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionLastResourceAsync self, uint32 grfRM) DelegateCommit;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionLastResourceAsync self, ref BOID pNewUOW) ForgetRequest;
			}
		}
		[CRepr]
		public struct ITransactionResource : IUnknown
		{
			public const new Guid IID = .(0xee5ff7b3, 0x4572, 0x11d0, 0x94, 0x52, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult PrepareRequest(IntBool fRetaining, uint32 grfRM, IntBool fWantMoniker, IntBool fSinglePhase) mut => VT.PrepareRequest(ref this, fRetaining, grfRM, fWantMoniker, fSinglePhase);
			public HResult CommitRequest(uint32 grfRM, ref BOID pNewUOW) mut => VT.CommitRequest(ref this, grfRM, ref pNewUOW);
			public HResult AbortRequest(ref BOID pboidReason, IntBool fRetaining, ref BOID pNewUOW) mut => VT.AbortRequest(ref this, ref pboidReason, fRetaining, ref pNewUOW);
			public HResult TMDown() mut => VT.TMDown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionResource self, IntBool fRetaining, uint32 grfRM, IntBool fWantMoniker, IntBool fSinglePhase) PrepareRequest;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionResource self, uint32 grfRM, ref BOID pNewUOW) CommitRequest;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionResource self, ref BOID pboidReason, IntBool fRetaining, ref BOID pNewUOW) AbortRequest;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionResource self) TMDown;
			}
		}
		[CRepr]
		public struct ITransactionEnlistmentAsync : IUnknown
		{
			public const new Guid IID = .(0x0fb15081, 0xaf41, 0x11ce, 0xbd, 0x2b, 0x20, 0x4c, 0x4f, 0x4f, 0x50, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult PrepareRequestDone(HResult hr, ref IMoniker pmk, ref BOID pboidReason) mut => VT.PrepareRequestDone(ref this, hr, ref pmk, ref pboidReason);
			public HResult CommitRequestDone(HResult hr) mut => VT.CommitRequestDone(ref this, hr);
			public HResult AbortRequestDone(HResult hr) mut => VT.AbortRequestDone(ref this, hr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionEnlistmentAsync self, HResult hr, ref IMoniker pmk, ref BOID pboidReason) PrepareRequestDone;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionEnlistmentAsync self, HResult hr) CommitRequestDone;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionEnlistmentAsync self, HResult hr) AbortRequestDone;
			}
		}
		[CRepr]
		public struct ITransactionLastEnlistmentAsync : IUnknown
		{
			public const new Guid IID = .(0xc82bd533, 0x5b30, 0x11d3, 0x8a, 0x91, 0x00, 0xc0, 0x4f, 0x79, 0xeb, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult TransactionOutcome(XACTSTAT XactStat, ref BOID pboidReason) mut => VT.TransactionOutcome(ref this, XactStat, ref pboidReason);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionLastEnlistmentAsync self, XACTSTAT XactStat, ref BOID pboidReason) TransactionOutcome;
			}
		}
		[CRepr]
		public struct ITransactionExportFactory : IUnknown
		{
			public const new Guid IID = .(0xe1cf9b53, 0x8745, 0x11ce, 0xa9, 0xba, 0x00, 0xaa, 0x00, 0x6c, 0x37, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetRemoteClassId(out Guid pclsid) mut => VT.GetRemoteClassId(ref this, out pclsid);
			public HResult Create(uint32 cbWhereabouts, uint8* rgbWhereabouts, out ITransactionExport* ppExport) mut => VT.Create(ref this, cbWhereabouts, rgbWhereabouts, out ppExport);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionExportFactory self, out Guid pclsid) GetRemoteClassId;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionExportFactory self, uint32 cbWhereabouts, uint8* rgbWhereabouts, out ITransactionExport* ppExport) Create;
			}
		}
		[CRepr]
		public struct ITransactionImportWhereabouts : IUnknown
		{
			public const new Guid IID = .(0x0141fda4, 0x8fc0, 0x11ce, 0xbd, 0x18, 0x20, 0x4c, 0x4f, 0x4f, 0x50, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetWhereaboutsSize(out uint32 pcbWhereabouts) mut => VT.GetWhereaboutsSize(ref this, out pcbWhereabouts);
			public HResult GetWhereabouts(uint32 cbWhereabouts, uint8* rgbWhereabouts, out uint32 pcbUsed) mut => VT.GetWhereabouts(ref this, cbWhereabouts, rgbWhereabouts, out pcbUsed);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionImportWhereabouts self, out uint32 pcbWhereabouts) GetWhereaboutsSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionImportWhereabouts self, uint32 cbWhereabouts, uint8* rgbWhereabouts, out uint32 pcbUsed) GetWhereabouts;
			}
		}
		[CRepr]
		public struct ITransactionExport : IUnknown
		{
			public const new Guid IID = .(0x0141fda5, 0x8fc0, 0x11ce, 0xbd, 0x18, 0x20, 0x4c, 0x4f, 0x4f, 0x50, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Export(ref IUnknown punkTransaction, out uint32 pcbTransactionCookie) mut => VT.Export(ref this, ref punkTransaction, out pcbTransactionCookie);
			public HResult GetTransactionCookie(ref IUnknown punkTransaction, uint32 cbTransactionCookie, uint8* rgbTransactionCookie, out uint32 pcbUsed) mut => VT.GetTransactionCookie(ref this, ref punkTransaction, cbTransactionCookie, rgbTransactionCookie, out pcbUsed);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionExport self, ref IUnknown punkTransaction, out uint32 pcbTransactionCookie) Export;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionExport self, ref IUnknown punkTransaction, uint32 cbTransactionCookie, uint8* rgbTransactionCookie, out uint32 pcbUsed) GetTransactionCookie;
			}
		}
		[CRepr]
		public struct ITransactionImport : IUnknown
		{
			public const new Guid IID = .(0xe1cf9b5a, 0x8745, 0x11ce, 0xa9, 0xba, 0x00, 0xaa, 0x00, 0x6c, 0x37, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Import(uint32 cbTransactionCookie, uint8* rgbTransactionCookie, in Guid piid, void** ppvTransaction) mut => VT.Import(ref this, cbTransactionCookie, rgbTransactionCookie, piid, ppvTransaction);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionImport self, uint32 cbTransactionCookie, uint8* rgbTransactionCookie, in Guid piid, void** ppvTransaction) Import;
			}
		}
		[CRepr]
		public struct ITipTransaction : IUnknown
		{
			public const new Guid IID = .(0x17cf72d0, 0xbac5, 0x11d1, 0xb1, 0xbf, 0x00, 0xc0, 0x4f, 0xc2, 0xf3, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Push(ref uint8 i_pszRemoteTmUrl, out char8* o_ppszRemoteTxUrl) mut => VT.Push(ref this, ref i_pszRemoteTmUrl, out o_ppszRemoteTxUrl);
			public HResult GetTransactionUrl(out char8* o_ppszLocalTxUrl) mut => VT.GetTransactionUrl(ref this, out o_ppszLocalTxUrl);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITipTransaction self, ref uint8 i_pszRemoteTmUrl, out char8* o_ppszRemoteTxUrl) Push;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITipTransaction self, out char8* o_ppszLocalTxUrl) GetTransactionUrl;
			}
		}
		[CRepr]
		public struct ITipHelper : IUnknown
		{
			public const new Guid IID = .(0x17cf72d1, 0xbac5, 0x11d1, 0xb1, 0xbf, 0x00, 0xc0, 0x4f, 0xc2, 0xf3, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Pull(ref uint8 i_pszTxUrl, out ITransaction* o_ppITransaction) mut => VT.Pull(ref this, ref i_pszTxUrl, out o_ppITransaction);
			public HResult PullAsync(ref uint8 i_pszTxUrl, ref ITipPullSink i_pTipPullSink, out ITransaction* o_ppITransaction) mut => VT.PullAsync(ref this, ref i_pszTxUrl, ref i_pTipPullSink, out o_ppITransaction);
			public HResult GetLocalTmUrl(out uint8* o_ppszLocalTmUrl) mut => VT.GetLocalTmUrl(ref this, out o_ppszLocalTmUrl);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITipHelper self, ref uint8 i_pszTxUrl, out ITransaction* o_ppITransaction) Pull;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITipHelper self, ref uint8 i_pszTxUrl, ref ITipPullSink i_pTipPullSink, out ITransaction* o_ppITransaction) PullAsync;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITipHelper self, out uint8* o_ppszLocalTmUrl) GetLocalTmUrl;
			}
		}
		[CRepr]
		public struct ITipPullSink : IUnknown
		{
			public const new Guid IID = .(0x17cf72d2, 0xbac5, 0x11d1, 0xb1, 0xbf, 0x00, 0xc0, 0x4f, 0xc2, 0xf3, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult PullComplete(HResult i_hrPull) mut => VT.PullComplete(ref this, i_hrPull);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITipPullSink self, HResult i_hrPull) PullComplete;
			}
		}
		[CRepr]
		public struct IDtcNetworkAccessConfig : IUnknown
		{
			public const new Guid IID = .(0x9797c15d, 0xa428, 0x4291, 0x87, 0xb6, 0x09, 0x95, 0x03, 0x1a, 0x67, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetAnyNetworkAccess(out IntBool pbAnyNetworkAccess) mut => VT.GetAnyNetworkAccess(ref this, out pbAnyNetworkAccess);
			public HResult SetAnyNetworkAccess(IntBool bAnyNetworkAccess) mut => VT.SetAnyNetworkAccess(ref this, bAnyNetworkAccess);
			public HResult GetNetworkAdministrationAccess(out IntBool pbNetworkAdministrationAccess) mut => VT.GetNetworkAdministrationAccess(ref this, out pbNetworkAdministrationAccess);
			public HResult SetNetworkAdministrationAccess(IntBool bNetworkAdministrationAccess) mut => VT.SetNetworkAdministrationAccess(ref this, bNetworkAdministrationAccess);
			public HResult GetNetworkTransactionAccess(out IntBool pbNetworkTransactionAccess) mut => VT.GetNetworkTransactionAccess(ref this, out pbNetworkTransactionAccess);
			public HResult SetNetworkTransactionAccess(IntBool bNetworkTransactionAccess) mut => VT.SetNetworkTransactionAccess(ref this, bNetworkTransactionAccess);
			public HResult GetNetworkClientAccess(out IntBool pbNetworkClientAccess) mut => VT.GetNetworkClientAccess(ref this, out pbNetworkClientAccess);
			public HResult SetNetworkClientAccess(IntBool bNetworkClientAccess) mut => VT.SetNetworkClientAccess(ref this, bNetworkClientAccess);
			public HResult GetNetworkTIPAccess(out IntBool pbNetworkTIPAccess) mut => VT.GetNetworkTIPAccess(ref this, out pbNetworkTIPAccess);
			public HResult SetNetworkTIPAccess(IntBool bNetworkTIPAccess) mut => VT.SetNetworkTIPAccess(ref this, bNetworkTIPAccess);
			public HResult GetXAAccess(out IntBool pbXAAccess) mut => VT.GetXAAccess(ref this, out pbXAAccess);
			public HResult SetXAAccess(IntBool bXAAccess) mut => VT.SetXAAccess(ref this, bXAAccess);
			public HResult RestartDtcService() mut => VT.RestartDtcService(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig self, out IntBool pbAnyNetworkAccess) GetAnyNetworkAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig self, IntBool bAnyNetworkAccess) SetAnyNetworkAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig self, out IntBool pbNetworkAdministrationAccess) GetNetworkAdministrationAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig self, IntBool bNetworkAdministrationAccess) SetNetworkAdministrationAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig self, out IntBool pbNetworkTransactionAccess) GetNetworkTransactionAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig self, IntBool bNetworkTransactionAccess) SetNetworkTransactionAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig self, out IntBool pbNetworkClientAccess) GetNetworkClientAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig self, IntBool bNetworkClientAccess) SetNetworkClientAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig self, out IntBool pbNetworkTIPAccess) GetNetworkTIPAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig self, IntBool bNetworkTIPAccess) SetNetworkTIPAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig self, out IntBool pbXAAccess) GetXAAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig self, IntBool bXAAccess) SetXAAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig self) RestartDtcService;
			}
		}
		[CRepr]
		public struct IDtcNetworkAccessConfig2 : IDtcNetworkAccessConfig
		{
			public const new Guid IID = .(0xa7aa013b, 0xeb7d, 0x4f42, 0xb4, 0x1c, 0xb2, 0xde, 0xc0, 0x9a, 0xe0, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetNetworkInboundAccess(out IntBool pbInbound) mut => VT.GetNetworkInboundAccess(ref this, out pbInbound);
			public HResult GetNetworkOutboundAccess(out IntBool pbOutbound) mut => VT.GetNetworkOutboundAccess(ref this, out pbOutbound);
			public HResult SetNetworkInboundAccess(IntBool bInbound) mut => VT.SetNetworkInboundAccess(ref this, bInbound);
			public HResult SetNetworkOutboundAccess(IntBool bOutbound) mut => VT.SetNetworkOutboundAccess(ref this, bOutbound);
			public HResult GetAuthenticationLevel(out AUTHENTICATION_LEVEL pAuthLevel) mut => VT.GetAuthenticationLevel(ref this, out pAuthLevel);
			public HResult SetAuthenticationLevel(AUTHENTICATION_LEVEL AuthLevel) mut => VT.SetAuthenticationLevel(ref this, AuthLevel);

			[CRepr]
			public struct VTable : IDtcNetworkAccessConfig.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig2 self, out IntBool pbInbound) GetNetworkInboundAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig2 self, out IntBool pbOutbound) GetNetworkOutboundAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig2 self, IntBool bInbound) SetNetworkInboundAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig2 self, IntBool bOutbound) SetNetworkOutboundAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig2 self, out AUTHENTICATION_LEVEL pAuthLevel) GetAuthenticationLevel;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig2 self, AUTHENTICATION_LEVEL AuthLevel) SetAuthenticationLevel;
			}
		}
		[CRepr]
		public struct IDtcNetworkAccessConfig3 : IDtcNetworkAccessConfig2
		{
			public const new Guid IID = .(0x76e4b4f3, 0x2ca5, 0x466b, 0x89, 0xd5, 0xfd, 0x21, 0x8e, 0xe7, 0x5b, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetLUAccess(out IntBool pbLUAccess) mut => VT.GetLUAccess(ref this, out pbLUAccess);
			public HResult SetLUAccess(IntBool bLUAccess) mut => VT.SetLUAccess(ref this, bLUAccess);

			[CRepr]
			public struct VTable : IDtcNetworkAccessConfig2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig3 self, out IntBool pbLUAccess) GetLUAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcNetworkAccessConfig3 self, IntBool bLUAccess) SetLUAccess;
			}
		}
		[CRepr]
		public struct IDtcToXaMapper : IUnknown
		{
			public const new Guid IID = .(0x64ffabe0, 0x7ce9, 0x11d0, 0x8c, 0xe6, 0x00, 0xc0, 0x4f, 0xdc, 0x87, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RequestNewResourceManager(char8* pszDSN, char8* pszClientDllName, out uint32 pdwRMCookie) mut => VT.RequestNewResourceManager(ref this, pszDSN, pszClientDllName, out pdwRMCookie);
			public HResult TranslateTridToXid(ref uint32 pdwITransaction, uint32 dwRMCookie, out xid_t pXid) mut => VT.TranslateTridToXid(ref this, ref pdwITransaction, dwRMCookie, out pXid);
			public HResult EnlistResourceManager(uint32 dwRMCookie, ref uint32 pdwITransaction) mut => VT.EnlistResourceManager(ref this, dwRMCookie, ref pdwITransaction);
			public HResult ReleaseResourceManager(uint32 dwRMCookie) mut => VT.ReleaseResourceManager(ref this, dwRMCookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcToXaMapper self, char8* pszDSN, char8* pszClientDllName, out uint32 pdwRMCookie) RequestNewResourceManager;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcToXaMapper self, ref uint32 pdwITransaction, uint32 dwRMCookie, out xid_t pXid) TranslateTridToXid;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcToXaMapper self, uint32 dwRMCookie, ref uint32 pdwITransaction) EnlistResourceManager;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcToXaMapper self, uint32 dwRMCookie) ReleaseResourceManager;
			}
		}
		[CRepr]
		public struct IDtcToXaHelperFactory : IUnknown
		{
			public const new Guid IID = .(0xa9861610, 0x304a, 0x11d1, 0x98, 0x13, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Create(char8* pszDSN, char8* pszClientDllName, out Guid pguidRm, IDtcToXaHelper** ppXaHelper) mut => VT.Create(ref this, pszDSN, pszClientDllName, out pguidRm, ppXaHelper);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcToXaHelperFactory self, char8* pszDSN, char8* pszClientDllName, out Guid pguidRm, IDtcToXaHelper** ppXaHelper) Create;
			}
		}
		[CRepr]
		public struct IDtcToXaHelper : IUnknown
		{
			public const new Guid IID = .(0xa9861611, 0x304a, 0x11d1, 0x98, 0x13, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Close(IntBool i_fDoRecovery) mut => VT.Close(ref this, i_fDoRecovery);
			public HResult TranslateTridToXid(ITransaction* pITransaction, ref Guid pguidBqual, out xid_t pXid) mut => VT.TranslateTridToXid(ref this, pITransaction, ref pguidBqual, out pXid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcToXaHelper self, IntBool i_fDoRecovery) Close;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcToXaHelper self, ITransaction* pITransaction, ref Guid pguidBqual, out xid_t pXid) TranslateTridToXid;
			}
		}
		[CRepr]
		public struct IDtcToXaHelperSinglePipe : IUnknown
		{
			public const new Guid IID = .(0x47ed4971, 0x53b3, 0x11d1, 0xbb, 0xb9, 0x00, 0xc0, 0x4f, 0xd6, 0x58, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult XARMCreate(char8* pszDSN, char8* pszClientDll, out uint32 pdwRMCookie) mut => VT.XARMCreate(ref this, pszDSN, pszClientDll, out pdwRMCookie);
			public HResult ConvertTridToXID(out uint32 pdwITrans, uint32 dwRMCookie, out xid_t pxid) mut => VT.ConvertTridToXID(ref this, out pdwITrans, dwRMCookie, out pxid);
			public HResult EnlistWithRM(uint32 dwRMCookie, ref ITransaction i_pITransaction, ref ITransactionResourceAsync i_pITransRes, out ITransactionEnlistmentAsync* o_ppITransEnslitment) mut => VT.EnlistWithRM(ref this, dwRMCookie, ref i_pITransaction, ref i_pITransRes, out o_ppITransEnslitment);
			public void ReleaseRMCookie(uint32 i_dwRMCookie, IntBool i_fNormal) mut => VT.ReleaseRMCookie(ref this, i_dwRMCookie, i_fNormal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcToXaHelperSinglePipe self, char8* pszDSN, char8* pszClientDll, out uint32 pdwRMCookie) XARMCreate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcToXaHelperSinglePipe self, out uint32 pdwITrans, uint32 dwRMCookie, out xid_t pxid) ConvertTridToXID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcToXaHelperSinglePipe self, uint32 dwRMCookie, ref ITransaction i_pITransaction, ref ITransactionResourceAsync i_pITransRes, out ITransactionEnlistmentAsync* o_ppITransEnslitment) EnlistWithRM;
				public new function [CallingConvention(.Stdcall)] void(ref IDtcToXaHelperSinglePipe self, uint32 i_dwRMCookie, IntBool i_fNormal) ReleaseRMCookie;
			}
		}
		[CRepr]
		public struct IXATransLookup : IUnknown
		{
			public const new Guid IID = .(0xf3b1f131, 0xeeda, 0x11ce, 0xae, 0xd4, 0x00, 0xaa, 0x00, 0x51, 0xe2, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Lookup(ITransaction** ppTransaction) mut => VT.Lookup(ref this, ppTransaction);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXATransLookup self, ITransaction** ppTransaction) Lookup;
			}
		}
		[CRepr]
		public struct IXATransLookup2 : IUnknown
		{
			public const new Guid IID = .(0xbf193c85, 0x0d1a, 0x4290, 0xb8, 0x8f, 0xd2, 0xcb, 0x88, 0x73, 0xd1, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Lookup(ref xid_t pXID, ITransaction** ppTransaction) mut => VT.Lookup(ref this, ref pXID, ppTransaction);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXATransLookup2 self, ref xid_t pXID, ITransaction** ppTransaction) Lookup;
			}
		}
		[CRepr]
		public struct IResourceManagerSink : IUnknown
		{
			public const new Guid IID = .(0x0d563181, 0xdefb, 0x11ce, 0xae, 0xd1, 0x00, 0xaa, 0x00, 0x51, 0xe2, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult TMDown() mut => VT.TMDown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IResourceManagerSink self) TMDown;
			}
		}
		[CRepr]
		public struct IResourceManagerAlt : IUnknown
		{
			public const new Guid IID = .(0x13741d21, 0x87eb, 0x11ce, 0x80, 0x81, 0x00, 0x80, 0xc7, 0x58, 0x52, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Enlist(ITransaction* pTransaction, ITransactionResourceAsync* pRes, out BOID pUOW, out int32 pisoLevel, ITransactionEnlistmentAsync** ppEnlist) mut => VT.Enlist(ref this, pTransaction, pRes, out pUOW, out pisoLevel, ppEnlist);
			public HResult Reenlist(uint8* pPrepInfo, uint32 cbPrepInfo, uint32 lTimeout, out XACTSTAT pXactStat) mut => VT.Reenlist(ref this, pPrepInfo, cbPrepInfo, lTimeout, out pXactStat);
			public HResult ReenlistmentComplete() mut => VT.ReenlistmentComplete(ref this);
			public HResult GetDistributedTransactionManager(in Guid iid, void** ppvObject) mut => VT.GetDistributedTransactionManager(ref this, iid, ppvObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IResourceManagerAlt self, ITransaction* pTransaction, ITransactionResourceAsync* pRes, out BOID pUOW, out int32 pisoLevel, ITransactionEnlistmentAsync** ppEnlist) Enlist;
				public new function [CallingConvention(.Stdcall)] HResult(ref IResourceManagerAlt self, uint8* pPrepInfo, uint32 cbPrepInfo, uint32 lTimeout, out XACTSTAT pXactStat) Reenlist;
				public new function [CallingConvention(.Stdcall)] HResult(ref IResourceManagerAlt self) ReenlistmentComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IResourceManagerAlt self, in Guid iid, void** ppvObject) GetDistributedTransactionManager;
			}
		}
		[CRepr]
		public struct ILastResourceManager : IUnknown
		{
			public const new Guid IID = .(0x4d964ad4, 0x5b33, 0x11d3, 0x8a, 0x91, 0x00, 0xc0, 0x4f, 0x79, 0xeb, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult TransactionCommitted(uint8* pPrepInfo, uint32 cbPrepInfo) mut => VT.TransactionCommitted(ref this, pPrepInfo, cbPrepInfo);
			public HResult RecoveryDone() mut => VT.RecoveryDone(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ILastResourceManager self, uint8* pPrepInfo, uint32 cbPrepInfo) TransactionCommitted;
				public new function [CallingConvention(.Stdcall)] HResult(ref ILastResourceManager self) RecoveryDone;
			}
		}
		[CRepr]
		public struct IResourceManager2 : IResourceManagerAlt
		{
			public const new Guid IID = .(0xd136c69a, 0xf749, 0x11d1, 0x8f, 0x47, 0x00, 0xc0, 0x4f, 0x8e, 0xe5, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Enlist2(ITransaction* pTransaction, ITransactionResourceAsync* pResAsync, out BOID pUOW, out int32 pisoLevel, out xid_t pXid, ITransactionEnlistmentAsync** ppEnlist) mut => VT.Enlist2(ref this, pTransaction, pResAsync, out pUOW, out pisoLevel, out pXid, ppEnlist);
			public HResult Reenlist2(ref xid_t pXid, uint32 dwTimeout, out XACTSTAT pXactStat) mut => VT.Reenlist2(ref this, ref pXid, dwTimeout, out pXactStat);

			[CRepr]
			public struct VTable : IResourceManagerAlt.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IResourceManager2 self, ITransaction* pTransaction, ITransactionResourceAsync* pResAsync, out BOID pUOW, out int32 pisoLevel, out xid_t pXid, ITransactionEnlistmentAsync** ppEnlist) Enlist2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IResourceManager2 self, ref xid_t pXid, uint32 dwTimeout, out XACTSTAT pXactStat) Reenlist2;
			}
		}
		[CRepr]
		public struct IResourceManagerRejoinable : IResourceManager2
		{
			public const new Guid IID = .(0x6f6de620, 0xb5df, 0x4f3e, 0x9c, 0xfa, 0xc8, 0xae, 0xbd, 0x05, 0x17, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Rejoin(uint8* pPrepInfo, uint32 cbPrepInfo, uint32 lTimeout, out XACTSTAT pXactStat) mut => VT.Rejoin(ref this, pPrepInfo, cbPrepInfo, lTimeout, out pXactStat);

			[CRepr]
			public struct VTable : IResourceManager2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IResourceManagerRejoinable self, uint8* pPrepInfo, uint32 cbPrepInfo, uint32 lTimeout, out XACTSTAT pXactStat) Rejoin;
			}
		}
		[CRepr]
		public struct IXAConfig : IUnknown
		{
			public const new Guid IID = .(0xc8a6e3a1, 0x9a8c, 0x11cf, 0xa3, 0x08, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Initialize(Guid clsidHelperDll) mut => VT.Initialize(ref this, clsidHelperDll);
			public HResult Terminate() mut => VT.Terminate(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAConfig self, Guid clsidHelperDll) Initialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAConfig self) Terminate;
			}
		}
		[CRepr]
		public struct IRMHelper : IUnknown
		{
			public const new Guid IID = .(0xe793f6d1, 0xf53d, 0x11cf, 0xa6, 0x0d, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RMCount(uint32 dwcTotalNumberOfRMs) mut => VT.RMCount(ref this, dwcTotalNumberOfRMs);
			public HResult RMInfo(out xa_switch_t pXa_Switch, IntBool fCDeclCallingConv, char8* pszOpenString, char8* pszCloseString, Guid guidRMRecovery) mut => VT.RMInfo(ref this, out pXa_Switch, fCDeclCallingConv, pszOpenString, pszCloseString, guidRMRecovery);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRMHelper self, uint32 dwcTotalNumberOfRMs) RMCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRMHelper self, out xa_switch_t pXa_Switch, IntBool fCDeclCallingConv, char8* pszOpenString, char8* pszCloseString, Guid guidRMRecovery) RMInfo;
			}
		}
		[CRepr]
		public struct IXAObtainRMInfo : IUnknown
		{
			public const new Guid IID = .(0xe793f6d2, 0xf53d, 0x11cf, 0xa6, 0x0d, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ObtainRMInfo(IRMHelper* pIRMHelper) mut => VT.ObtainRMInfo(ref this, pIRMHelper);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXAObtainRMInfo self, IRMHelper* pIRMHelper) ObtainRMInfo;
			}
		}
		[CRepr]
		public struct IResourceManagerFactory : IUnknown
		{
			public const new Guid IID = .(0x13741d20, 0x87eb, 0x11ce, 0x80, 0x81, 0x00, 0x80, 0xc7, 0x58, 0x52, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Create(ref Guid pguidRM, char8* pszRMName, IResourceManagerSink* pIResMgrSink, IResourceManagerAlt** ppResMgr) mut => VT.Create(ref this, ref pguidRM, pszRMName, pIResMgrSink, ppResMgr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IResourceManagerFactory self, ref Guid pguidRM, char8* pszRMName, IResourceManagerSink* pIResMgrSink, IResourceManagerAlt** ppResMgr) Create;
			}
		}
		[CRepr]
		public struct IResourceManagerFactory2 : IResourceManagerFactory
		{
			public const new Guid IID = .(0x6b369c21, 0xfbd2, 0x11d1, 0x8f, 0x47, 0x00, 0xc0, 0x4f, 0x8e, 0xe5, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateEx(ref Guid pguidRM, char8* pszRMName, IResourceManagerSink* pIResMgrSink, in Guid riidRequested, void** ppvResMgr) mut => VT.CreateEx(ref this, ref pguidRM, pszRMName, pIResMgrSink, riidRequested, ppvResMgr);

			[CRepr]
			public struct VTable : IResourceManagerFactory.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IResourceManagerFactory2 self, ref Guid pguidRM, char8* pszRMName, IResourceManagerSink* pIResMgrSink, in Guid riidRequested, void** ppvResMgr) CreateEx;
			}
		}
		[CRepr]
		public struct IPrepareInfo : IUnknown
		{
			public const new Guid IID = .(0x80c7bfd0, 0x87ee, 0x11ce, 0x80, 0x81, 0x00, 0x80, 0xc7, 0x58, 0x52, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetPrepareInfoSize(out uint32 pcbPrepInfo) mut => VT.GetPrepareInfoSize(ref this, out pcbPrepInfo);
			public HResult GetPrepareInfo(out uint8 pPrepInfo) mut => VT.GetPrepareInfo(ref this, out pPrepInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IPrepareInfo self, out uint32 pcbPrepInfo) GetPrepareInfoSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPrepareInfo self, out uint8 pPrepInfo) GetPrepareInfo;
			}
		}
		[CRepr]
		public struct IPrepareInfo2 : IUnknown
		{
			public const new Guid IID = .(0x5fab2547, 0x9779, 0x11d1, 0xb8, 0x86, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetPrepareInfoSize(out uint32 pcbPrepInfo) mut => VT.GetPrepareInfoSize(ref this, out pcbPrepInfo);
			public HResult GetPrepareInfo(uint32 cbPrepareInfo, uint8* pPrepInfo) mut => VT.GetPrepareInfo(ref this, cbPrepareInfo, pPrepInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IPrepareInfo2 self, out uint32 pcbPrepInfo) GetPrepareInfoSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPrepareInfo2 self, uint32 cbPrepareInfo, uint8* pPrepInfo) GetPrepareInfo;
			}
		}
		[CRepr]
		public struct IGetDispenser : IUnknown
		{
			public const new Guid IID = .(0xc23cc370, 0x87ef, 0x11ce, 0x80, 0x81, 0x00, 0x80, 0xc7, 0x58, 0x52, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetDispenser(in Guid iid, void** ppvObject) mut => VT.GetDispenser(ref this, iid, ppvObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IGetDispenser self, in Guid iid, void** ppvObject) GetDispenser;
			}
		}
		[CRepr]
		public struct ITransactionVoterBallotAsync2 : IUnknown
		{
			public const new Guid IID = .(0x5433376c, 0x414d, 0x11d3, 0xb2, 0x06, 0x00, 0xc0, 0x4f, 0xc2, 0xf3, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult VoteRequestDone(HResult hr, BOID* pboidReason) mut => VT.VoteRequestDone(ref this, hr, pboidReason);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionVoterBallotAsync2 self, HResult hr, BOID* pboidReason) VoteRequestDone;
			}
		}
		[CRepr]
		public struct ITransactionVoterNotifyAsync2 : ITransactionOutcomeEvents
		{
			public const new Guid IID = .(0x5433376b, 0x414d, 0x11d3, 0xb2, 0x06, 0x00, 0xc0, 0x4f, 0xc2, 0xf3, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult VoteRequest() mut => VT.VoteRequest(ref this);

			[CRepr]
			public struct VTable : ITransactionOutcomeEvents.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionVoterNotifyAsync2 self) VoteRequest;
			}
		}
		[CRepr]
		public struct ITransactionVoterFactory2 : IUnknown
		{
			public const new Guid IID = .(0x5433376a, 0x414d, 0x11d3, 0xb2, 0x06, 0x00, 0xc0, 0x4f, 0xc2, 0xf3, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Create(ITransaction* pTransaction, ITransactionVoterNotifyAsync2* pVoterNotify, ITransactionVoterBallotAsync2** ppVoterBallot) mut => VT.Create(ref this, pTransaction, pVoterNotify, ppVoterBallot);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionVoterFactory2 self, ITransaction* pTransaction, ITransactionVoterNotifyAsync2* pVoterNotify, ITransactionVoterBallotAsync2** ppVoterBallot) Create;
			}
		}
		[CRepr]
		public struct ITransactionPhase0EnlistmentAsync : IUnknown
		{
			public const new Guid IID = .(0x82dc88e1, 0xa954, 0x11d1, 0x8f, 0x88, 0x00, 0x60, 0x08, 0x95, 0xe7, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Enable() mut => VT.Enable(ref this);
			public HResult WaitForEnlistment() mut => VT.WaitForEnlistment(ref this);
			public HResult Phase0Done() mut => VT.Phase0Done(ref this);
			public HResult Unenlist() mut => VT.Unenlist(ref this);
			public HResult GetTransaction(ITransaction** ppITransaction) mut => VT.GetTransaction(ref this, ppITransaction);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionPhase0EnlistmentAsync self) Enable;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionPhase0EnlistmentAsync self) WaitForEnlistment;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionPhase0EnlistmentAsync self) Phase0Done;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionPhase0EnlistmentAsync self) Unenlist;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionPhase0EnlistmentAsync self, ITransaction** ppITransaction) GetTransaction;
			}
		}
		[CRepr]
		public struct ITransactionPhase0NotifyAsync : IUnknown
		{
			public const new Guid IID = .(0xef081809, 0x0c76, 0x11d2, 0x87, 0xa6, 0x00, 0xc0, 0x4f, 0x99, 0x0f, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Phase0Request(IntBool fAbortingHint) mut => VT.Phase0Request(ref this, fAbortingHint);
			public HResult EnlistCompleted(HResult status) mut => VT.EnlistCompleted(ref this, status);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionPhase0NotifyAsync self, IntBool fAbortingHint) Phase0Request;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionPhase0NotifyAsync self, HResult status) EnlistCompleted;
			}
		}
		[CRepr]
		public struct ITransactionPhase0Factory : IUnknown
		{
			public const new Guid IID = .(0x82dc88e0, 0xa954, 0x11d1, 0x8f, 0x88, 0x00, 0x60, 0x08, 0x95, 0xe7, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Create(ITransactionPhase0NotifyAsync* pPhase0Notify, ITransactionPhase0EnlistmentAsync** ppPhase0Enlistment) mut => VT.Create(ref this, pPhase0Notify, ppPhase0Enlistment);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionPhase0Factory self, ITransactionPhase0NotifyAsync* pPhase0Notify, ITransactionPhase0EnlistmentAsync** ppPhase0Enlistment) Create;
			}
		}
		[CRepr]
		public struct ITransactionTransmitter : IUnknown
		{
			public const new Guid IID = .(0x59313e01, 0xb36c, 0x11cf, 0xa5, 0x39, 0x00, 0xaa, 0x00, 0x68, 0x87, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Set(ITransaction* pTransaction) mut => VT.Set(ref this, pTransaction);
			public HResult GetPropagationTokenSize(out uint32 pcbToken) mut => VT.GetPropagationTokenSize(ref this, out pcbToken);
			public HResult MarshalPropagationToken(uint32 cbToken, uint8* rgbToken, out uint32 pcbUsed) mut => VT.MarshalPropagationToken(ref this, cbToken, rgbToken, out pcbUsed);
			public HResult UnmarshalReturnToken(uint32 cbReturnToken, uint8* rgbReturnToken) mut => VT.UnmarshalReturnToken(ref this, cbReturnToken, rgbReturnToken);
			public HResult Reset() mut => VT.Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionTransmitter self, ITransaction* pTransaction) Set;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionTransmitter self, out uint32 pcbToken) GetPropagationTokenSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionTransmitter self, uint32 cbToken, uint8* rgbToken, out uint32 pcbUsed) MarshalPropagationToken;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionTransmitter self, uint32 cbReturnToken, uint8* rgbReturnToken) UnmarshalReturnToken;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionTransmitter self) Reset;
			}
		}
		[CRepr]
		public struct ITransactionTransmitterFactory : IUnknown
		{
			public const new Guid IID = .(0x59313e00, 0xb36c, 0x11cf, 0xa5, 0x39, 0x00, 0xaa, 0x00, 0x68, 0x87, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Create(ITransactionTransmitter** ppTransmitter) mut => VT.Create(ref this, ppTransmitter);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionTransmitterFactory self, ITransactionTransmitter** ppTransmitter) Create;
			}
		}
		[CRepr]
		public struct ITransactionReceiver : IUnknown
		{
			public const new Guid IID = .(0x59313e03, 0xb36c, 0x11cf, 0xa5, 0x39, 0x00, 0xaa, 0x00, 0x68, 0x87, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult UnmarshalPropagationToken(uint32 cbToken, uint8* rgbToken, ITransaction** ppTransaction) mut => VT.UnmarshalPropagationToken(ref this, cbToken, rgbToken, ppTransaction);
			public HResult GetReturnTokenSize(out uint32 pcbReturnToken) mut => VT.GetReturnTokenSize(ref this, out pcbReturnToken);
			public HResult MarshalReturnToken(uint32 cbReturnToken, uint8* rgbReturnToken, out uint32 pcbUsed) mut => VT.MarshalReturnToken(ref this, cbReturnToken, rgbReturnToken, out pcbUsed);
			public HResult Reset() mut => VT.Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionReceiver self, uint32 cbToken, uint8* rgbToken, ITransaction** ppTransaction) UnmarshalPropagationToken;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionReceiver self, out uint32 pcbReturnToken) GetReturnTokenSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionReceiver self, uint32 cbReturnToken, uint8* rgbReturnToken, out uint32 pcbUsed) MarshalReturnToken;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionReceiver self) Reset;
			}
		}
		[CRepr]
		public struct ITransactionReceiverFactory : IUnknown
		{
			public const new Guid IID = .(0x59313e02, 0xb36c, 0x11cf, 0xa5, 0x39, 0x00, 0xaa, 0x00, 0x68, 0x87, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Create(ITransactionReceiver** ppReceiver) mut => VT.Create(ref this, ppReceiver);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITransactionReceiverFactory self, ITransactionReceiver** ppReceiver) Create;
			}
		}
		[CRepr]
		public struct IDtcLuConfigure : IUnknown
		{
			public const new Guid IID = .(0x4131e760, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Add(uint8* pucLuPair, uint32 cbLuPair) mut => VT.Add(ref this, pucLuPair, cbLuPair);
			public HResult Delete(uint8* pucLuPair, uint32 cbLuPair) mut => VT.Delete(ref this, pucLuPair, cbLuPair);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuConfigure self, uint8* pucLuPair, uint32 cbLuPair) Add;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuConfigure self, uint8* pucLuPair, uint32 cbLuPair) Delete;
			}
		}
		[CRepr]
		public struct IDtcLuRecovery : IUnknown
		{
			public const new Guid IID = .(0xac2b8ad2, 0xd6f0, 0x11d0, 0xb3, 0x86, 0x00, 0xa0, 0xc9, 0x08, 0x33, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable {}
		}
		[CRepr]
		public struct IDtcLuRecoveryFactory : IUnknown
		{
			public const new Guid IID = .(0x4131e762, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Create(uint8* pucLuPair, uint32 cbLuPair, IDtcLuRecovery** ppRecovery) mut => VT.Create(ref this, pucLuPair, cbLuPair, ppRecovery);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryFactory self, uint8* pucLuPair, uint32 cbLuPair, IDtcLuRecovery** ppRecovery) Create;
			}
		}
		[CRepr]
		public struct IDtcLuRecoveryInitiatedByDtcTransWork : IUnknown
		{
			public const new Guid IID = .(0x4131e765, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetLogNameSizes(out uint32 pcbOurLogName, out uint32 pcbRemoteLogName) mut => VT.GetLogNameSizes(ref this, out pcbOurLogName, out pcbRemoteLogName);
			public HResult GetOurXln(out _DtcLu_Xln pXln, out uint8 pOurLogName, out uint8 pRemoteLogName, out uint32 pdwProtocol) mut => VT.GetOurXln(ref this, out pXln, out pOurLogName, out pRemoteLogName, out pdwProtocol);
			public HResult HandleConfirmationFromOurXln(_DtcLu_Xln_Confirmation Confirmation) mut => VT.HandleConfirmationFromOurXln(ref this, Confirmation);
			public HResult HandleTheirXlnResponse(_DtcLu_Xln Xln, out uint8 pRemoteLogName, uint32 cbRemoteLogName, uint32 dwProtocol, out _DtcLu_Xln_Confirmation pConfirmation) mut => VT.HandleTheirXlnResponse(ref this, Xln, out pRemoteLogName, cbRemoteLogName, dwProtocol, out pConfirmation);
			public HResult HandleErrorFromOurXln(_DtcLu_Xln_Error Error) mut => VT.HandleErrorFromOurXln(ref this, Error);
			public HResult CheckForCompareStates(out IntBool fCompareStates) mut => VT.CheckForCompareStates(ref this, out fCompareStates);
			public HResult GetOurTransIdSize(out uint32 pcbOurTransId) mut => VT.GetOurTransIdSize(ref this, out pcbOurTransId);
			public HResult GetOurCompareStates(out uint8 pOurTransId, out _DtcLu_CompareState pCompareState) mut => VT.GetOurCompareStates(ref this, out pOurTransId, out pCompareState);
			public HResult HandleTheirCompareStatesResponse(_DtcLu_CompareState CompareState, out _DtcLu_CompareStates_Confirmation pConfirmation) mut => VT.HandleTheirCompareStatesResponse(ref this, CompareState, out pConfirmation);
			public HResult HandleErrorFromOurCompareStates(_DtcLu_CompareStates_Error Error) mut => VT.HandleErrorFromOurCompareStates(ref this, Error);
			public HResult ConversationLost() mut => VT.ConversationLost(ref this);
			public HResult GetRecoverySeqNum(out int32 plRecoverySeqNum) mut => VT.GetRecoverySeqNum(ref this, out plRecoverySeqNum);
			public HResult ObsoleteRecoverySeqNum(int32 lNewRecoverySeqNum) mut => VT.ObsoleteRecoverySeqNum(ref this, lNewRecoverySeqNum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcTransWork self, out uint32 pcbOurLogName, out uint32 pcbRemoteLogName) GetLogNameSizes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcTransWork self, out _DtcLu_Xln pXln, out uint8 pOurLogName, out uint8 pRemoteLogName, out uint32 pdwProtocol) GetOurXln;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcTransWork self, _DtcLu_Xln_Confirmation Confirmation) HandleConfirmationFromOurXln;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcTransWork self, _DtcLu_Xln Xln, out uint8 pRemoteLogName, uint32 cbRemoteLogName, uint32 dwProtocol, out _DtcLu_Xln_Confirmation pConfirmation) HandleTheirXlnResponse;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcTransWork self, _DtcLu_Xln_Error Error) HandleErrorFromOurXln;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcTransWork self, out IntBool fCompareStates) CheckForCompareStates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcTransWork self, out uint32 pcbOurTransId) GetOurTransIdSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcTransWork self, out uint8 pOurTransId, out _DtcLu_CompareState pCompareState) GetOurCompareStates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcTransWork self, _DtcLu_CompareState CompareState, out _DtcLu_CompareStates_Confirmation pConfirmation) HandleTheirCompareStatesResponse;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcTransWork self, _DtcLu_CompareStates_Error Error) HandleErrorFromOurCompareStates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcTransWork self) ConversationLost;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcTransWork self, out int32 plRecoverySeqNum) GetRecoverySeqNum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcTransWork self, int32 lNewRecoverySeqNum) ObsoleteRecoverySeqNum;
			}
		}
		[CRepr]
		public struct IDtcLuRecoveryInitiatedByDtcStatusWork : IUnknown
		{
			public const new Guid IID = .(0x4131e766, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult HandleCheckLuStatus(int32 lRecoverySeqNum) mut => VT.HandleCheckLuStatus(ref this, lRecoverySeqNum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtcStatusWork self, int32 lRecoverySeqNum) HandleCheckLuStatus;
			}
		}
		[CRepr]
		public struct IDtcLuRecoveryInitiatedByDtc : IUnknown
		{
			public const new Guid IID = .(0x4131e764, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetWork(out _DtcLu_LocalRecovery_Work pWork, void** ppv) mut => VT.GetWork(ref this, out pWork, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByDtc self, out _DtcLu_LocalRecovery_Work pWork, void** ppv) GetWork;
			}
		}
		[CRepr]
		public struct IDtcLuRecoveryInitiatedByLuWork : IUnknown
		{
			public const new Guid IID = .(0xac2b8ad1, 0xd6f0, 0x11d0, 0xb3, 0x86, 0x00, 0xa0, 0xc9, 0x08, 0x33, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult HandleTheirXln(int32 lRecoverySeqNum, _DtcLu_Xln Xln, out uint8 pRemoteLogName, uint32 cbRemoteLogName, out uint8 pOurLogName, uint32 cbOurLogName, uint32 dwProtocol, out _DtcLu_Xln_Response pResponse) mut => VT.HandleTheirXln(ref this, lRecoverySeqNum, Xln, out pRemoteLogName, cbRemoteLogName, out pOurLogName, cbOurLogName, dwProtocol, out pResponse);
			public HResult GetOurLogNameSize(out uint32 pcbOurLogName) mut => VT.GetOurLogNameSize(ref this, out pcbOurLogName);
			public HResult GetOurXln(out _DtcLu_Xln pXln, out uint8 pOurLogName, out uint32 pdwProtocol) mut => VT.GetOurXln(ref this, out pXln, out pOurLogName, out pdwProtocol);
			public HResult HandleConfirmationOfOurXln(_DtcLu_Xln_Confirmation Confirmation) mut => VT.HandleConfirmationOfOurXln(ref this, Confirmation);
			public HResult HandleTheirCompareStates(out uint8 pRemoteTransId, uint32 cbRemoteTransId, _DtcLu_CompareState CompareState, out _DtcLu_CompareStates_Response pResponse, out _DtcLu_CompareState pCompareState) mut => VT.HandleTheirCompareStates(ref this, out pRemoteTransId, cbRemoteTransId, CompareState, out pResponse, out pCompareState);
			public HResult HandleConfirmationOfOurCompareStates(_DtcLu_CompareStates_Confirmation Confirmation) mut => VT.HandleConfirmationOfOurCompareStates(ref this, Confirmation);
			public HResult HandleErrorFromOurCompareStates(_DtcLu_CompareStates_Error Error) mut => VT.HandleErrorFromOurCompareStates(ref this, Error);
			public HResult ConversationLost() mut => VT.ConversationLost(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByLuWork self, int32 lRecoverySeqNum, _DtcLu_Xln Xln, out uint8 pRemoteLogName, uint32 cbRemoteLogName, out uint8 pOurLogName, uint32 cbOurLogName, uint32 dwProtocol, out _DtcLu_Xln_Response pResponse) HandleTheirXln;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByLuWork self, out uint32 pcbOurLogName) GetOurLogNameSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByLuWork self, out _DtcLu_Xln pXln, out uint8 pOurLogName, out uint32 pdwProtocol) GetOurXln;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByLuWork self, _DtcLu_Xln_Confirmation Confirmation) HandleConfirmationOfOurXln;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByLuWork self, out uint8 pRemoteTransId, uint32 cbRemoteTransId, _DtcLu_CompareState CompareState, out _DtcLu_CompareStates_Response pResponse, out _DtcLu_CompareState pCompareState) HandleTheirCompareStates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByLuWork self, _DtcLu_CompareStates_Confirmation Confirmation) HandleConfirmationOfOurCompareStates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByLuWork self, _DtcLu_CompareStates_Error Error) HandleErrorFromOurCompareStates;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByLuWork self) ConversationLost;
			}
		}
		[CRepr]
		public struct IDtcLuRecoveryInitiatedByLu : IUnknown
		{
			public const new Guid IID = .(0x4131e768, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetObjectToHandleWorkFromLu(IDtcLuRecoveryInitiatedByLuWork** ppWork) mut => VT.GetObjectToHandleWorkFromLu(ref this, ppWork);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRecoveryInitiatedByLu self, IDtcLuRecoveryInitiatedByLuWork** ppWork) GetObjectToHandleWorkFromLu;
			}
		}
		[CRepr]
		public struct IDtcLuRmEnlistment : IUnknown
		{
			public const new Guid IID = .(0x4131e769, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Unplug(IntBool fConversationLost) mut => VT.Unplug(ref this, fConversationLost);
			public HResult BackedOut() mut => VT.BackedOut(ref this);
			public HResult BackOut() mut => VT.BackOut(ref this);
			public HResult Committed() mut => VT.Committed(ref this);
			public HResult Forget() mut => VT.Forget(ref this);
			public HResult RequestCommit() mut => VT.RequestCommit(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistment self, IntBool fConversationLost) Unplug;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistment self) BackedOut;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistment self) BackOut;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistment self) Committed;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistment self) Forget;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistment self) RequestCommit;
			}
		}
		[CRepr]
		public struct IDtcLuRmEnlistmentSink : IUnknown
		{
			public const new Guid IID = .(0x4131e770, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AckUnplug() mut => VT.AckUnplug(ref this);
			public HResult TmDown() mut => VT.TmDown(ref this);
			public HResult SessionLost() mut => VT.SessionLost(ref this);
			public HResult BackedOut() mut => VT.BackedOut(ref this);
			public HResult BackOut() mut => VT.BackOut(ref this);
			public HResult Committed() mut => VT.Committed(ref this);
			public HResult Forget() mut => VT.Forget(ref this);
			public HResult Prepare() mut => VT.Prepare(ref this);
			public HResult RequestCommit() mut => VT.RequestCommit(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistmentSink self) AckUnplug;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistmentSink self) TmDown;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistmentSink self) SessionLost;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistmentSink self) BackedOut;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistmentSink self) BackOut;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistmentSink self) Committed;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistmentSink self) Forget;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistmentSink self) Prepare;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistmentSink self) RequestCommit;
			}
		}
		[CRepr]
		public struct IDtcLuRmEnlistmentFactory : IUnknown
		{
			public const new Guid IID = .(0x4131e771, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Create(out uint8 pucLuPair, uint32 cbLuPair, ref ITransaction pITransaction, out uint8 pTransId, uint32 cbTransId, ref IDtcLuRmEnlistmentSink pRmEnlistmentSink, out IDtcLuRmEnlistment* ppRmEnlistment) mut => VT.Create(ref this, out pucLuPair, cbLuPair, ref pITransaction, out pTransId, cbTransId, ref pRmEnlistmentSink, out ppRmEnlistment);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuRmEnlistmentFactory self, out uint8 pucLuPair, uint32 cbLuPair, ref ITransaction pITransaction, out uint8 pTransId, uint32 cbTransId, ref IDtcLuRmEnlistmentSink pRmEnlistmentSink, out IDtcLuRmEnlistment* ppRmEnlistment) Create;
			}
		}
		[CRepr]
		public struct IDtcLuSubordinateDtc : IUnknown
		{
			public const new Guid IID = .(0x4131e773, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Unplug(IntBool fConversationLost) mut => VT.Unplug(ref this, fConversationLost);
			public HResult BackedOut() mut => VT.BackedOut(ref this);
			public HResult BackOut() mut => VT.BackOut(ref this);
			public HResult Committed() mut => VT.Committed(ref this);
			public HResult Forget() mut => VT.Forget(ref this);
			public HResult Prepare() mut => VT.Prepare(ref this);
			public HResult RequestCommit() mut => VT.RequestCommit(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtc self, IntBool fConversationLost) Unplug;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtc self) BackedOut;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtc self) BackOut;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtc self) Committed;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtc self) Forget;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtc self) Prepare;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtc self) RequestCommit;
			}
		}
		[CRepr]
		public struct IDtcLuSubordinateDtcSink : IUnknown
		{
			public const new Guid IID = .(0x4131e774, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AckUnplug() mut => VT.AckUnplug(ref this);
			public HResult TmDown() mut => VT.TmDown(ref this);
			public HResult SessionLost() mut => VT.SessionLost(ref this);
			public HResult BackedOut() mut => VT.BackedOut(ref this);
			public HResult BackOut() mut => VT.BackOut(ref this);
			public HResult Committed() mut => VT.Committed(ref this);
			public HResult Forget() mut => VT.Forget(ref this);
			public HResult RequestCommit() mut => VT.RequestCommit(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtcSink self) AckUnplug;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtcSink self) TmDown;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtcSink self) SessionLost;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtcSink self) BackedOut;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtcSink self) BackOut;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtcSink self) Committed;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtcSink self) Forget;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtcSink self) RequestCommit;
			}
		}
		[CRepr]
		public struct IDtcLuSubordinateDtcFactory : IUnknown
		{
			public const new Guid IID = .(0x4131e775, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Create(out uint8 pucLuPair, uint32 cbLuPair, ref IUnknown punkTransactionOuter, int32 isoLevel, uint32 isoFlags, ref ITransactionOptions pOptions, out ITransaction* ppTransaction, out uint8 pTransId, uint32 cbTransId, ref IDtcLuSubordinateDtcSink pSubordinateDtcSink, out IDtcLuSubordinateDtc* ppSubordinateDtc) mut => VT.Create(ref this, out pucLuPair, cbLuPair, ref punkTransactionOuter, isoLevel, isoFlags, ref pOptions, out ppTransaction, out pTransId, cbTransId, ref pSubordinateDtcSink, out ppSubordinateDtc);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDtcLuSubordinateDtcFactory self, out uint8 pucLuPair, uint32 cbLuPair, ref IUnknown punkTransactionOuter, int32 isoLevel, uint32 isoFlags, ref ITransactionOptions pOptions, out ITransaction* ppTransaction, out uint8 pTransId, uint32 cbTransId, ref IDtcLuSubordinateDtcSink pSubordinateDtcSink, out IDtcLuSubordinateDtc* ppSubordinateDtc) Create;
			}
		}
		
		// --- Functions ---
		
		[Import("xolehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DtcGetTransactionManager(char8* i_pszHost, char8* i_pszTmName, in Guid i_riid, uint32 i_dwReserved1, uint16 i_wcbReserved2, void* i_pvReserved2, void** o_ppvObject);
		[Import("xolehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DtcGetTransactionManagerC(char8* i_pszHost, char8* i_pszTmName, in Guid i_riid, uint32 i_dwReserved1, uint16 i_wcbReserved2, void* i_pvReserved2, void** o_ppvObject);
		[Import("xolehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DtcGetTransactionManagerExA(char8* i_pszHost, char8* i_pszTmName, in Guid i_riid, uint32 i_grfOptions, void* i_pvConfigParams, void** o_ppvObject);
		[Import("xolehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DtcGetTransactionManagerExW(char16* i_pwszHost, char16* i_pwszTmName, in Guid i_riid, uint32 i_grfOptions, void* i_pvConfigParams, void** o_ppvObject);
	}
}
