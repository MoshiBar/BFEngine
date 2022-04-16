using static System.Windows;
using System;
using static Win32.Win32;

// namespace NetworkManagement.WNet
namespace Win32.NetworkManagement
{
	public static class WNet
	{
		// --- Constants ---
		
		public const uint32 WNGETCON_CONNECTED = 0;
		public const uint32 WNGETCON_DISCONNECTED = 1;
		public const uint32 WNNC_SPEC_VERSION = 1;
		public const uint32 WNNC_SPEC_VERSION51 = 327681;
		public const uint32 WNNC_NET_TYPE = 2;
		public const uint32 WNNC_NET_NONE = 0;
		public const uint32 WNNC_DRIVER_VERSION = 3;
		public const uint32 WNNC_USER = 4;
		public const uint32 WNNC_USR_GETUSER = 1;
		public const uint32 WNNC_CONNECTION = 6;
		public const uint32 WNNC_CON_ADDCONNECTION = 1;
		public const uint32 WNNC_CON_CANCELCONNECTION = 2;
		public const uint32 WNNC_CON_GETCONNECTIONS = 4;
		public const uint32 WNNC_CON_ADDCONNECTION3 = 8;
		public const uint32 WNNC_CON_ADDCONNECTION4 = 16;
		public const uint32 WNNC_CON_CANCELCONNECTION2 = 32;
		public const uint32 WNNC_CON_GETPERFORMANCE = 64;
		public const uint32 WNNC_CON_DEFER = 128;
		public const uint32 WNNC_DIALOG = 8;
		public const uint32 WNNC_DLG_DEVICEMODE = 1;
		public const uint32 WNNC_DLG_PROPERTYDIALOG = 32;
		public const uint32 WNNC_DLG_SEARCHDIALOG = 64;
		public const uint32 WNNC_DLG_FORMATNETWORKNAME = 128;
		public const uint32 WNNC_DLG_PERMISSIONEDITOR = 256;
		public const uint32 WNNC_DLG_GETRESOURCEPARENT = 512;
		public const uint32 WNNC_DLG_GETRESOURCEINFORMATION = 2048;
		public const uint32 WNNC_ADMIN = 9;
		public const uint32 WNNC_ADM_GETDIRECTORYTYPE = 1;
		public const uint32 WNNC_ADM_DIRECTORYNOTIFY = 2;
		public const uint32 WNNC_ENUMERATION = 11;
		public const uint32 WNNC_ENUM_GLOBAL = 1;
		public const uint32 WNNC_ENUM_LOCAL = 2;
		public const uint32 WNNC_ENUM_CONTEXT = 4;
		public const uint32 WNNC_ENUM_SHAREABLE = 8;
		public const uint32 WNNC_START = 12;
		public const uint32 WNNC_WAIT_FOR_START = 1;
		public const uint32 WNNC_CONNECTION_FLAGS = 13;
		public const uint32 WNTYPE_DRIVE = 1;
		public const uint32 WNTYPE_FILE = 2;
		public const uint32 WNTYPE_PRINTER = 3;
		public const uint32 WNTYPE_COMM = 4;
		public const uint32 WNSRCH_REFRESH_FIRST_LEVEL = 1;
		public const uint32 WNDT_NORMAL = 0;
		public const uint32 WNDT_NETWORK = 1;
		public const uint32 WN_NETWORK_CLASS = 1;
		public const uint32 WN_CREDENTIAL_CLASS = 2;
		public const uint32 WN_PRIMARY_AUTHENT_CLASS = 4;
		public const uint32 WN_SERVICE_CLASS = 8;
		public const uint32 WN_VALID_LOGON_ACCOUNT = 1;
		public const uint32 WN_NT_PASSWORD_CHANGED = 2;
		public const uint32 NOTIFY_PRE = 1;
		public const uint32 NOTIFY_POST = 2;
		public const uint32 WNPERMC_PERM = 1;
		public const uint32 WNPERMC_AUDIT = 2;
		public const uint32 WNPERMC_OWNER = 4;
		public const uint32 RESOURCE_RECENT = 4;
		public const uint32 RESOURCETYPE_RESERVED = 8;
		public const uint32 RESOURCETYPE_UNKNOWN = 4294967295;
		public const uint32 RESOURCEUSAGE_NOLOCALDEVICE = 4;
		public const uint32 RESOURCEUSAGE_SIBLING = 8;
		public const uint32 RESOURCEUSAGE_RESERVED = 2147483648;
		public const uint32 RESOURCEDISPLAYTYPE_NETWORK = 6;
		public const uint32 RESOURCEDISPLAYTYPE_ROOT = 7;
		public const uint32 RESOURCEDISPLAYTYPE_SHAREADMIN = 8;
		public const uint32 RESOURCEDISPLAYTYPE_DIRECTORY = 9;
		public const uint32 RESOURCEDISPLAYTYPE_NDSCONTAINER = 11;
		public const uint32 NETPROPERTY_PERSISTENT = 1;
		public const uint32 CONNECT_NEED_DRIVE = 32;
		public const uint32 CONNECT_REFCOUNT = 64;
		public const uint32 CONNECT_LOCALDRIVE = 256;
		public const uint32 CONNECT_CURRENT_MEDIA = 512;
		public const uint32 CONNECT_RESERVED = 4278190080;
		public const uint32 CONNECT_CRED_RESET = 8192;
		public const uint32 CONNECT_REQUIRE_INTEGRITY = 16384;
		public const uint32 CONNECT_REQUIRE_PRIVACY = 32768;
		public const uint32 CONNECT_WRITE_THROUGH_SEMANTICS = 65536;
		public const uint32 CONNECT_GLOBAL_MAPPING = 262144;
		public const uint32 WNFMT_INENUM = 16;
		public const uint32 WNFMT_CONNECTION = 32;
		public const uint32 WNCON_FORNETCARD = 1;
		public const uint32 WNCON_NOTROUTED = 2;
		public const uint32 WNCON_SLOWLINK = 4;
		public const uint32 WNCON_DYNAMIC = 8;
		
		// --- Typedefs ---
		
		public typealias NetEnumHandle = int;
		
		// --- Enums ---
		
		public enum UNC_INFO_LEVEL : uint32
		{
			UNIVERSAL_NAME_INFO_LEVEL = 1,
			REMOTE_NAME_INFO_LEVEL = 2,
		}
		public enum WNPERM_DLG : uint32
		{
			PERM = 0,
			AUDIT = 1,
			OWNER = 2,
		}
		public enum WNET_OPEN_ENUM_USAGE : uint32
		{
			NONE = 0,
			CONNECTABLE = 1,
			CONTAINER = 2,
			ATTACHED = 16,
			ALL = 19,
		}
		public enum NET_USE_CONNECT_FLAGS : uint32
		{
			INTERACTIVE = 8,
			PROMPT = 16,
			REDIRECT = 128,
			UPDATE_PROFILE = 1,
			COMMANDLINE = 2048,
			CMD_SAVECRED = 4096,
			TEMPORARY = 4,
			DEFERRED = 1024,
			UPDATE_RECENT = 2,
		}
		public enum NP_PROPERTY_DIALOG_SELECTION : uint32
		{
			FILE = 0,
			DIR = 1,
			MULT = 2,
		}
		public enum NPDIRECTORY_NOTIFY_OPERATION : uint32
		{
			MKDIR = 1,
			RMDIR = 2,
			MVDIR = 3,
		}
		public enum NET_RESOURCE_TYPE : uint32
		{
			ANY = 0,
			DISK = 1,
			PRINT = 2,
		}
		public enum NETWORK_NAME_FORMAT_FLAGS : uint32
		{
			MULTILINE = 1,
			ABBREVIATED = 2,
		}
		public enum NET_RESOURCE_SCOPE : uint32
		{
			CONNECTED = 1,
			CONTEXT = 5,
			GLOBALNET = 2,
			REMEMBERED = 3,
		}
		public enum NETINFOSTRUCT_CHARACTERISTICS : uint32
		{
			DLL16 = 1,
			DISKRED = 4,
			PRINTERRED = 8,
		}
		public enum CONNECTDLGSTRUCT_FLAGS : uint32
		{
			RO_PATH = 1,
			CONN_POINT = 2,
			USE_MRU = 4,
			HIDE_BOX = 8,
			PERSIST = 16,
			NOT_PERSIST = 32,
		}
		public enum DISCDLGSTRUCT_FLAGS : uint32
		{
			UPDATE_PROFILE = 1,
			NO_FORCE = 64,
		}
		
		// --- Function Pointers ---
		
		public function uint32 PF_NPAddConnection(ref NETRESOURCEW lpNetResource, char16* lpPassword, char16* lpUserName);
		public function uint32 PF_NPAddConnection3(HWnd hwndOwner, ref NETRESOURCEW lpNetResource, char16* lpPassword, char16* lpUserName, uint32 dwFlags);
		public function uint32 PF_NPAddConnection4(HWnd hwndOwner, ref NETRESOURCEW lpNetResource, void* lpAuthBuffer, uint32 cbAuthBuffer, uint32 dwFlags, uint8* lpUseOptions, uint32 cbUseOptions);
		public function uint32 PF_NPCancelConnection(char16* lpName, IntBool fForce);
		public function uint32 PF_NPCancelConnection2(char16* lpName, IntBool fForce, uint32 dwFlags);
		public function uint32 PF_NPGetConnection(char16* lpLocalName, char16* lpRemoteName, out uint32 lpnBufferLen);
		public function uint32 PF_NPGetConnection3(char16* lpLocalName, uint32 dwLevel, void* lpBuffer, out uint32 lpBufferSize);
		public function uint32 PF_NPGetUniversalName(char16* lpLocalPath, uint32 dwInfoLevel, void* lpBuffer, out uint32 lpnBufferSize);
		public function uint32 PF_NPGetConnectionPerformance(char16* lpRemoteName, out NETCONNECTINFOSTRUCT lpNetConnectInfo);
		public function uint32 PF_NPOpenEnum(uint32 dwScope, uint32 dwType, uint32 dwUsage, NETRESOURCEW* lpNetResource, out Handle lphEnum);
		public function uint32 PF_NPEnumResource(Handle hEnum, out uint32 lpcCount, void* lpBuffer, out uint32 lpBufferSize);
		public function uint32 PF_NPCloseEnum(Handle hEnum);
		public function uint32 PF_NPGetCaps(uint32 ndex);
		public function uint32 PF_NPGetUser(char16* lpName, char16* lpUserName, out uint32 lpnBufferLen);
		public function uint32 PF_NPGetPersistentUseOptionsForConnection(char16* lpRemotePath, ref uint8 lpReadUseOptions, uint32 cbReadUseOptions, out uint8 lpWriteUseOptions, out uint32 lpSizeWriteUseOptions);
		public function uint32 PF_NPDeviceMode(HWnd hParent);
		public function uint32 PF_NPSearchDialog(HWnd hwndParent, NETRESOURCEW* lpNetResource, void* lpBuffer, uint32 cbBuffer, out uint32 lpnFlags);
		public function uint32 PF_NPGetResourceParent(ref NETRESOURCEW lpNetResource, void* lpBuffer, out uint32 lpBufferSize);
		public function uint32 PF_NPGetResourceInformation(ref NETRESOURCEW lpNetResource, void* lpBuffer, out uint32 lpBufferSize, out char16* lplpSystem);
		public function uint32 PF_NPFormatNetworkName(char16* lpRemoteName, char16* lpFormattedName, out uint32 lpnLength, uint32 dwFlags, uint32 dwAveCharPerLine);
		public function uint32 PF_NPGetPropertyText(uint32 iButton, uint32 nPropSel, char16* lpName, char16* lpButtonName, uint32 nButtonNameLen, uint32 nType);
		public function uint32 PF_NPPropertyDialog(HWnd hwndParent, uint32 iButtonDlg, uint32 nPropSel, char16* lpFileName, uint32 nType);
		public function uint32 PF_NPGetDirectoryType(char16* lpName, ref int32 lpType, IntBool bFlushCache);
		public function uint32 PF_NPDirectoryNotify(HWnd hwnd, char16* lpDir, uint32 dwOper);
		public function uint32 PF_NPLogonNotify(ref LUID lpLogonId, char16* lpAuthentInfoType, void* lpAuthentInfo, char16* lpPreviousAuthentInfoType, void* lpPreviousAuthentInfo, char16* lpStationName, void* StationHandle, out char16* lpLogonScript);
		public function uint32 PF_NPPasswordChangeNotify(char16* lpAuthentInfoType, void* lpAuthentInfo, char16* lpPreviousAuthentInfoType, void* lpPreviousAuthentInfo, char16* lpStationName, void* StationHandle, uint32 dwChangeInfo);
		public function uint32 PF_AddConnectNotify(out NOTIFYINFO lpNotifyInfo, ref NOTIFYADD lpAddInfo);
		public function uint32 PF_CancelConnectNotify(out NOTIFYINFO lpNotifyInfo, ref NOTIFYCANCEL lpCancelInfo);
		public function uint32 PF_NPFMXGetPermCaps(char16* lpDriveName);
		public function uint32 PF_NPFMXEditPerm(char16* lpDriveName, HWnd hwndFMX, uint32 nDialogType);
		public function uint32 PF_NPFMXGetPermHelp(char16* lpDriveName, uint32 nDialogType, IntBool fDirectory, void* lpFileNameBuffer, out uint32 lpBufferSize, out uint32 lpnHelpContext);
		
		// --- Structs ---
		
		[CRepr]
		public struct NETRESOURCEA
		{
			public NET_RESOURCE_SCOPE dwScope;
			public NET_RESOURCE_TYPE dwType;
			public uint32 dwDisplayType;
			public uint32 dwUsage;
			public char8* lpLocalName;
			public char8* lpRemoteName;
			public char8* lpComment;
			public char8* lpProvider;
		}
		[CRepr]
		public struct NETRESOURCEW
		{
			public NET_RESOURCE_SCOPE dwScope;
			public NET_RESOURCE_TYPE dwType;
			public uint32 dwDisplayType;
			public uint32 dwUsage;
			public char16* lpLocalName;
			public char16* lpRemoteName;
			public char16* lpComment;
			public char16* lpProvider;
		}
		[CRepr]
		public struct CONNECTDLGSTRUCTA
		{
			public uint32 cbStructure;
			public HWnd hwndOwner;
			public NETRESOURCEA* lpConnRes;
			public CONNECTDLGSTRUCT_FLAGS dwFlags;
			public uint32 dwDevNum;
		}
		[CRepr]
		public struct CONNECTDLGSTRUCTW
		{
			public uint32 cbStructure;
			public HWnd hwndOwner;
			public NETRESOURCEW* lpConnRes;
			public CONNECTDLGSTRUCT_FLAGS dwFlags;
			public uint32 dwDevNum;
		}
		[CRepr]
		public struct DISCDLGSTRUCTA
		{
			public uint32 cbStructure;
			public HWnd hwndOwner;
			public char8* lpLocalName;
			public char8* lpRemoteName;
			public DISCDLGSTRUCT_FLAGS dwFlags;
		}
		[CRepr]
		public struct DISCDLGSTRUCTW
		{
			public uint32 cbStructure;
			public HWnd hwndOwner;
			public char16* lpLocalName;
			public char16* lpRemoteName;
			public DISCDLGSTRUCT_FLAGS dwFlags;
		}
		[CRepr]
		public struct UNIVERSAL_NAME_INFOA
		{
			public char8* lpUniversalName;
		}
		[CRepr]
		public struct UNIVERSAL_NAME_INFOW
		{
			public char16* lpUniversalName;
		}
		[CRepr]
		public struct REMOTE_NAME_INFOA
		{
			public char8* lpUniversalName;
			public char8* lpConnectionName;
			public char8* lpRemainingPath;
		}
		[CRepr]
		public struct REMOTE_NAME_INFOW
		{
			public char16* lpUniversalName;
			public char16* lpConnectionName;
			public char16* lpRemainingPath;
		}
		[CRepr]
		public struct NETINFOSTRUCT
		{
			public uint32 cbStructure;
			public uint32 dwProviderVersion;
			public WIN32_ERROR dwStatus;
			public NETINFOSTRUCT_CHARACTERISTICS dwCharacteristics;
			public uint dwHandle;
			public uint16 wNetType;
			public uint32 dwPrinters;
			public uint32 dwDrives;
		}
		[CRepr]
		public struct NETCONNECTINFOSTRUCT
		{
			public uint32 cbStructure;
			public uint32 dwFlags;
			public uint32 dwSpeed;
			public uint32 dwDelay;
			public uint32 dwOptDataSize;
		}
		[CRepr]
		public struct NOTIFYINFO
		{
			public uint32 dwNotifyStatus;
			public uint32 dwOperationStatus;
			public void* lpContext;
		}
		[CRepr]
		public struct NOTIFYADD
		{
			public HWnd hwndOwner;
			public NETRESOURCEA NetResource;
			public NET_USE_CONNECT_FLAGS dwAddFlags;
		}
		[CRepr]
		public struct NOTIFYCANCEL
		{
			public char16* lpName;
			public char16* lpProvider;
			public uint32 dwFlags;
			public IntBool fForce;
		}
		
		// --- Functions ---
		
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetAddConnectionA(char8* lpRemoteName, char8* lpPassword, char8* lpLocalName);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetAddConnectionW(char16* lpRemoteName, char16* lpPassword, char16* lpLocalName);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetAddConnection2A(ref NETRESOURCEA lpNetResource, char8* lpPassword, char8* lpUserName, uint32 dwFlags);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetAddConnection2W(ref NETRESOURCEW lpNetResource, char16* lpPassword, char16* lpUserName, uint32 dwFlags);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetAddConnection3A(HWnd hwndOwner, ref NETRESOURCEA lpNetResource, char8* lpPassword, char8* lpUserName, uint32 dwFlags);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetAddConnection3W(HWnd hwndOwner, ref NETRESOURCEW lpNetResource, char16* lpPassword, char16* lpUserName, uint32 dwFlags);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetAddConnection4A(HWnd hwndOwner, ref NETRESOURCEA lpNetResource, void* pAuthBuffer, uint32 cbAuthBuffer, uint32 dwFlags, ref uint8 lpUseOptions, uint32 cbUseOptions);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetAddConnection4W(HWnd hwndOwner, ref NETRESOURCEW lpNetResource, void* pAuthBuffer, uint32 cbAuthBuffer, uint32 dwFlags, ref uint8 lpUseOptions, uint32 cbUseOptions);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetCancelConnectionA(char8* lpName, IntBool fForce);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetCancelConnectionW(char16* lpName, IntBool fForce);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetCancelConnection2A(char8* lpName, uint32 dwFlags, IntBool fForce);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetCancelConnection2W(char16* lpName, uint32 dwFlags, IntBool fForce);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetConnectionA(char8* lpLocalName, uint8* lpRemoteName, out uint32 lpnLength);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetConnectionW(char16* lpLocalName, char16* lpRemoteName, out uint32 lpnLength);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetUseConnectionA(HWnd hwndOwner, ref NETRESOURCEA lpNetResource, char8* lpPassword, char8* lpUserId, NET_USE_CONNECT_FLAGS dwFlags, uint8* lpAccessName, uint32* lpBufferSize, uint32* lpResult);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetUseConnectionW(HWnd hwndOwner, ref NETRESOURCEW lpNetResource, char16* lpPassword, char16* lpUserId, NET_USE_CONNECT_FLAGS dwFlags, char16* lpAccessName, uint32* lpBufferSize, uint32* lpResult);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetUseConnection4A(HWnd hwndOwner, ref NETRESOURCEA lpNetResource, void* pAuthBuffer, uint32 cbAuthBuffer, uint32 dwFlags, uint8* lpUseOptions, uint32 cbUseOptions, uint8* lpAccessName, uint32* lpBufferSize, uint32* lpResult);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetUseConnection4W(HWnd hwndOwner, ref NETRESOURCEW lpNetResource, void* pAuthBuffer, uint32 cbAuthBuffer, uint32 dwFlags, uint8* lpUseOptions, uint32 cbUseOptions, char16* lpAccessName, uint32* lpBufferSize, uint32* lpResult);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetConnectionDialog(HWnd hwnd, uint32 dwType);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetDisconnectDialog(HWnd hwnd, uint32 dwType);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetConnectionDialog1A(out CONNECTDLGSTRUCTA lpConnDlgStruct);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetConnectionDialog1W(out CONNECTDLGSTRUCTW lpConnDlgStruct);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetDisconnectDialog1A(ref DISCDLGSTRUCTA lpConnDlgStruct);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetDisconnectDialog1W(ref DISCDLGSTRUCTW lpConnDlgStruct);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetOpenEnumA(NET_RESOURCE_SCOPE dwScope, NET_RESOURCE_TYPE dwType, WNET_OPEN_ENUM_USAGE dwUsage, NETRESOURCEA* lpNetResource, out NetEnumHandle lphEnum);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetOpenEnumW(NET_RESOURCE_SCOPE dwScope, NET_RESOURCE_TYPE dwType, WNET_OPEN_ENUM_USAGE dwUsage, NETRESOURCEW* lpNetResource, out NetEnumHandle lphEnum);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetEnumResourceA(Handle hEnum, out uint32 lpcCount, void* lpBuffer, out uint32 lpBufferSize);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetEnumResourceW(Handle hEnum, out uint32 lpcCount, void* lpBuffer, out uint32 lpBufferSize);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetCloseEnum(Handle hEnum);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetResourceParentA(ref NETRESOURCEA lpNetResource, void* lpBuffer, out uint32 lpcbBuffer);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetResourceParentW(ref NETRESOURCEW lpNetResource, void* lpBuffer, out uint32 lpcbBuffer);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetResourceInformationA(ref NETRESOURCEA lpNetResource, void* lpBuffer, out uint32 lpcbBuffer, out char8* lplpSystem);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetResourceInformationW(ref NETRESOURCEW lpNetResource, void* lpBuffer, out uint32 lpcbBuffer, out char16* lplpSystem);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetUniversalNameA(char8* lpLocalPath, UNC_INFO_LEVEL dwInfoLevel, void* lpBuffer, out uint32 lpBufferSize);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetUniversalNameW(char16* lpLocalPath, UNC_INFO_LEVEL dwInfoLevel, void* lpBuffer, out uint32 lpBufferSize);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetUserA(char8* lpName, uint8* lpUserName, out uint32 lpnLength);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetUserW(char16* lpName, char16* lpUserName, out uint32 lpnLength);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetProviderNameA(uint32 dwNetType, uint8* lpProviderName, out uint32 lpBufferSize);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetProviderNameW(uint32 dwNetType, char16* lpProviderName, out uint32 lpBufferSize);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetNetworkInformationA(char8* lpProvider, out NETINFOSTRUCT lpNetInfoStruct);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetNetworkInformationW(char16* lpProvider, out NETINFOSTRUCT lpNetInfoStruct);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetLastErrorA(out uint32 lpError, uint8* lpErrorBuf, uint32 nErrorBufSize, uint8* lpNameBuf, uint32 nNameBufSize);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WNetGetLastErrorW(out uint32 lpError, char16* lpErrorBuf, uint32 nErrorBufSize, char16* lpNameBuf, uint32 nNameBufSize);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MultinetGetConnectionPerformanceA(ref NETRESOURCEA lpNetResource, out NETCONNECTINFOSTRUCT lpNetConnectInfoStruct);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MultinetGetConnectionPerformanceW(ref NETRESOURCEW lpNetResource, out NETCONNECTINFOSTRUCT lpNetConnectInfoStruct);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPAddConnection(ref NETRESOURCEW lpNetResource, char16* lpPassword, char16* lpUserName);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPAddConnection3(HWnd hwndOwner, ref NETRESOURCEW lpNetResource, char16* lpPassword, char16* lpUserName, NET_USE_CONNECT_FLAGS dwFlags);
		[Import("ntlanman.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPAddConnection4(HWnd hwndOwner, ref NETRESOURCEW lpNetResource, void* lpAuthBuffer, uint32 cbAuthBuffer, uint32 dwFlags, uint8* lpUseOptions, uint32 cbUseOptions);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPCancelConnection(char16* lpName, IntBool fForce);
		[Import("ntlanman.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPCancelConnection2(char16* lpName, IntBool fForce, uint32 dwFlags);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPGetConnection(char16* lpLocalName, char16* lpRemoteName, out uint32 lpnBufferLen);
		[Import("ntlanman.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPGetConnection3(char16* lpLocalName, uint32 dwLevel, void* lpBuffer, out uint32 lpBufferSize);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPGetUniversalName(char16* lpLocalPath, UNC_INFO_LEVEL dwInfoLevel, void* lpBuffer, out uint32 lpBufferSize);
		[Import("ntlanman.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPGetConnectionPerformance(char16* lpRemoteName, out NETCONNECTINFOSTRUCT lpNetConnectInfo);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPOpenEnum(uint32 dwScope, uint32 dwType, uint32 dwUsage, NETRESOURCEW* lpNetResource, out Handle lphEnum);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPEnumResource(Handle hEnum, out uint32 lpcCount, void* lpBuffer, out uint32 lpBufferSize);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPCloseEnum(Handle hEnum);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPGetCaps(uint32 ndex);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPGetUser(char16* lpName, char16* lpUserName, out uint32 lpnBufferLen);
		[Import("ntlanman.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPGetPersistentUseOptionsForConnection(char16* lpRemotePath, uint8* lpReadUseOptions, uint32 cbReadUseOptions, out uint8 lpWriteUseOptions, out uint32 lpSizeWriteUseOptions);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPGetResourceParent(ref NETRESOURCEW lpNetResource, void* lpBuffer, out uint32 lpBufferSize);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPGetResourceInformation(ref NETRESOURCEW lpNetResource, void* lpBuffer, out uint32 lpBufferSize, out char16* lplpSystem);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NPFormatNetworkName(char16* lpRemoteName, char16* lpFormattedName, out uint32 lpnLength, NETWORK_NAME_FORMAT_FLAGS dwFlags, uint32 dwAveCharPerLine);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WNetSetLastErrorA(uint32 err, char8* lpError, char8* lpProviders);
		[Import("mpr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WNetSetLastErrorW(uint32 err, char16* lpError, char16* lpProviders);
	}
}
