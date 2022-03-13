using System;
namespace BfEngine
{
	class DInput
	{
		const String DInputDll = "dinput8.dll";

		public typealias LPVOID = void*;
		public typealias LPUNKNOWN = void*;
		public typealias HANDLE = void*;
		public typealias HWND = HANDLE;
		public typealias HMENU = HANDLE;
		public typealias HINSTANCE = HANDLE;
		public typealias HMODULE = HANDLE;
		public typealias HDC = HANDLE;
		public typealias HICON = HANDLE;
		public typealias HCURSOR = HANDLE;
		public typealias HBRUSH = HANDLE;
		public typealias HRESULT = int32;


		public typealias HGLRC = HANDLE;



		public typealias BYTE = uint8;
		public typealias WORD = uint16;
		public typealias ATOM = uint16;
		public typealias LONG = int32;
		public typealias LPLONG = LONG;
		public typealias ULONG = uint32;
		public typealias LPULONG = ULONG;
		public typealias DWORD = uint32;
		public typealias LPDWORD = DWORD*;
		public typealias UINT = uint32;
		public typealias UINT_PTR = UINT*;
		public typealias CHAR = char8;
		public typealias WCHAR = char16;
		public typealias LPSTR = char8*;
		public typealias LPCSTR = char8*;
		public typealias LPCWSTR = char16*;

		public typealias BOOL = uint32;

		public typealias GUID = Guid;
		public typealias LPGUID = GUID*;
		public typealias REFGUID = GUID*;

		public typealias IID = Guid;
		public typealias REFIID = IID*;

		public typealias CLSID = GUID;

		[CRepr]
		struct POINT
		{
			LONG x;
			LONG y;
		}
		[CRepr]
		struct RECT
		{
			LONG left;
			LONG top;
			LONG right;
			LONG bottom;
		}
		[CRepr]
		struct FILETIME
		{
			DWORD dwLowDateTime;
			DWORD dwHighDateTime;
		}

		static int MAKE_HRESULT(uint severity, uint facility, uint errorNo)
		{
			// Make HR
			uint result = severity << 31;
			result |= facility << 16;
			result |= errorNo;

			return ((int)result);
		}

		static uint32 MAKELONG(uint16 wLow, uint16 wHigh) => wLow | ((uint32)wHigh << 16);

		const int DIRECTINPUT_VERSION = 0x0800;

		  /* Classes */
		public static readonly GUID CLSID_DirectInput = .(0x25E609E0, 0xB259, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID CLSID_DirectInputDevice = .(0x25E609E1, 0xB259, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);

		public static readonly GUID CLSID_DirectInput8 = .(0x25E609E4, 0xB259, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID CLSID_DirectInputDevice8 = .(0x25E609E5, 0xB259, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);

		  /* Interfaces */
		public static readonly GUID IID_IDirectInputA = .(0x89521360, 0xAA8A, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID IID_IDirectInputW = .(0x89521361, 0xAA8A, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID IID_IDirectInput2A = .(0x5944E662, 0xAA8A, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID IID_IDirectInput2W = .(0x5944E663, 0xAA8A, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID IID_IDirectInput7A = .(0x9A4CB684, 0x236D, 0x11D3, 0x8E, 0x9D, 0x00, 0xC0, 0x4F, 0x68, 0x44, 0xAE);
		public static readonly GUID IID_IDirectInput7W = .(0x9A4CB685, 0x236D, 0x11D3, 0x8E, 0x9D, 0x00, 0xC0, 0x4F, 0x68, 0x44, 0xAE);
		public static readonly GUID IID_IDirectInput8A = .(0xBF798030, 0x483A, 0x4DA2, 0xAA, 0x99, 0x5D, 0x64, 0xED, 0x36, 0x97, 0x00);
		public static readonly GUID IID_IDirectInput8W = .(0xBF798031, 0x483A, 0x4DA2, 0xAA, 0x99, 0x5D, 0x64, 0xED, 0x36, 0x97, 0x00);
		public static readonly GUID IID_IDirectInputDeviceA = .(0x5944E680, 0xC92E, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID IID_IDirectInputDeviceW = .(0x5944E681, 0xC92E, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID IID_IDirectInputDevice2A = .(0x5944E682, 0xC92E, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID IID_IDirectInputDevice2W = .(0x5944E683, 0xC92E, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID IID_IDirectInputDevice7A = .(0x57D7C6BC, 0x2356, 0x11D3, 0x8E, 0x9D, 0x00, 0xC0, 0x4F, 0x68, 0x44, 0xAE);
		public static readonly GUID IID_IDirectInputDevice7W = .(0x57D7C6BD, 0x2356, 0x11D3, 0x8E, 0x9D, 0x00, 0xC0, 0x4F, 0x68, 0x44, 0xAE);
		public static readonly GUID IID_IDirectInputDevice8A = .(0x54D41080, 0xDC15, 0x4833, 0xA4, 0x1B, 0x74, 0x8F, 0x73, 0xA3, 0x81, 0x79);
		public static readonly GUID IID_IDirectInputDevice8W = .(0x54D41081, 0xDC15, 0x4833, 0xA4, 0x1B, 0x74, 0x8F, 0x73, 0xA3, 0x81, 0x79);
		public static readonly GUID IID_IDirectInputEffect = .(0xE7E1F7C0, 0x88D2, 0x11D0, 0x9A, 0xD0, 0x00, 0xA0, 0xC9, 0xA0, 0x6E, 0x35);

		  /* Predefined object types */
		public static readonly GUID GUID_XAxis = .(0xA36D02E0, 0xC9F3, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID GUID_YAxis = .(0xA36D02E1, 0xC9F3, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID GUID_ZAxis = .(0xA36D02E2, 0xC9F3, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID GUID_RxAxis = .(0xA36D02F4, 0xC9F3, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID GUID_RyAxis = .(0xA36D02F5, 0xC9F3, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID GUID_RzAxis = .(0xA36D02E3, 0xC9F3, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID GUID_Slider = .(0xA36D02E4, 0xC9F3, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID GUID_Button = .(0xA36D02F0, 0xC9F3, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID GUID_Key = .(0x55728220, 0xD33C, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID GUID_POV = .(0xA36D02F2, 0xC9F3, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public static readonly GUID GUID_Unknown = .(0xA36D02F3, 0xC9F3, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);

		  /* Predefined product GUIDs */
		const GUID GUID_SysMouse = .(0x6F1D2B60, 0xD5A0, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		const GUID GUID_SysKeyboard = .(0x6F1D2B61, 0xD5A0, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		const GUID GUID_Joystick = .(0x6F1D2B70, 0xD5A0, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		const GUID GUID_SysMouseEm = .(0x6F1D2B80, 0xD5A0, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		const GUID GUID_SysMouseEm2 = .(0x6F1D2B81, 0xD5A0, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		const GUID GUID_SysKeyboardEm = .(0x6F1D2B82, 0xD5A0, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		const GUID GUID_SysKeyboardEm2 = .(0x6F1D2B83, 0xD5A0, 0x11CF, 0xBF, 0xC7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);

		  /* predefined forcefeedback effects */
		const GUID GUID_ConstantForce = .(0x13541C20, 0x8E33, 0x11D0, 0x9A, 0xD0, 0x00, 0xA0, 0xC9, 0xA0, 0x6E, 0x35);
		const GUID GUID_RampForce = .(0x13541C21, 0x8E33, 0x11D0, 0x9A, 0xD0, 0x00, 0xA0, 0xC9, 0xA0, 0x6E, 0x35);
		const GUID GUID_Square = .(0x13541C22, 0x8E33, 0x11D0, 0x9A, 0xD0, 0x00, 0xA0, 0xC9, 0xA0, 0x6E, 0x35);
		const GUID GUID_Sine = .(0x13541C23, 0x8E33, 0x11D0, 0x9A, 0xD0, 0x00, 0xA0, 0xC9, 0xA0, 0x6E, 0x35);
		const GUID GUID_Triangle = .(0x13541C24, 0x8E33, 0x11D0, 0x9A, 0xD0, 0x00, 0xA0, 0xC9, 0xA0, 0x6E, 0x35);
		const GUID GUID_SawtoothUp = .(0x13541C25, 0x8E33, 0x11D0, 0x9A, 0xD0, 0x00, 0xA0, 0xC9, 0xA0, 0x6E, 0x35);
		const GUID GUID_SawtoothDown = .(0x13541C26, 0x8E33, 0x11D0, 0x9A, 0xD0, 0x00, 0xA0, 0xC9, 0xA0, 0x6E, 0x35);
		const GUID GUID_Spring = .(0x13541C27, 0x8E33, 0x11D0, 0x9A, 0xD0, 0x00, 0xA0, 0xC9, 0xA0, 0x6E, 0x35);
		const GUID GUID_Damper = .(0x13541C28, 0x8E33, 0x11D0, 0x9A, 0xD0, 0x00, 0xA0, 0xC9, 0xA0, 0x6E, 0x35);
		const GUID GUID_Inertia = .(0x13541C29, 0x8E33, 0x11D0, 0x9A, 0xD0, 0x00, 0xA0, 0xC9, 0xA0, 0x6E, 0x35);
		const GUID GUID_Friction = .(0x13541C2A, 0x8E33, 0x11D0, 0x9A, 0xD0, 0x00, 0xA0, 0xC9, 0xA0, 0x6E, 0x35);
		const GUID GUID_CustomForce = .(0x13541C2B, 0x8E33, 0x11D0, 0x9A, 0xD0, 0x00, 0xA0, 0xC9, 0xA0, 0x6E, 0x35);

		typealias LPDIRECTINPUTA = IDirectInputA*;
		  //typealias LPDIRECTINPUTW = IDirectInputW *;
		typealias LPDIRECTINPUT2A = IDirectInput2A*;
		  //typealias LPDIRECTINPUT2W = IDirectInput2W *;
		typealias LPDIRECTINPUT7A = IDirectInput7A*;
		  //typealias LPDIRECTINPUT7W = IDirectInput7W *;
  //#if DIRECTINPUT_VERSION >= 0x0800
		typealias LPDIRECTINPUT8A = IDirectInput8A*;
		  //typealias LPDIRECTINPUT8W = IDirectInput8W *;
  //#endif /* DI8 */
		typealias LPDIRECTINPUTDEVICEA = IDirectInputDeviceA*;
		  //typealias LPDIRECTINPUTDEVICEW = IDirectInputDeviceW *;
  //#if DIRECTINPUT_VERSION >= 0x0500
		typealias LPDIRECTINPUTDEVICE2A = IDirectInputDevice2A*;
		  //typealias LPDIRECTINPUTDEVICE2W = IDirectInputDevice2W *;
  //#endif /* DI5 */
  //#if DIRECTINPUT_VERSION >= 0x0700
		typealias LPDIRECTINPUTDEVICE7A = IDirectInputDevice7A*;
		  //typealias LPDIRECTINPUTDEVICE7W = IDirectInputDevice7W *;
  //#endif /* DI7 */
  //#if DIRECTINPUT_VERSION >= 0x0800
		typealias LPDIRECTINPUTDEVICE8A = IDirectInputDevice8A*;
		  //typealias LPDIRECTINPUTDEVICE8W = IDirectInputDevice8W *;
  //#endif /* DI8 */
  //#if DIRECTINPUT_VERSION >= 0x0500
		typealias LPDIRECTINPUTEFFECT = IDirectInputEffect*;
  //#endif /* DI5 */
		  //typealias LPSYSKEYBOARDA = SysKeyboardA *;
		  //typealias LPSYSMOUSEA = SysMouseA *;

  /*#define IID_IDirectInput WINELIB_NAME_AW(IID_IDirectInput)
		#define IDirectInput WINELIB_NAME_AW(IDirectInput)
		  DECL_WINELIB_TYPE_AW(LPDIRECTINPUT)
		#define IID_IDirectInput2 WINELIB_NAME_AW(IID_IDirectInput2)
		#define IDirectInput2 WINELIB_NAME_AW(IDirectInput2)
		  DECL_WINELIB_TYPE_AW(LPDIRECTINPUT2)
		#define IID_IDirectInput7 WINELIB_NAME_AW(IID_IDirectInput7)
		#define IDirectInput7 WINELIB_NAME_AW(IDirectInput7)
		  DECL_WINELIB_TYPE_AW(LPDIRECTINPUT7)
  //#if DIRECTINPUT_VERSION >= 0x0800
		#define IID_IDirectInput8 WINELIB_NAME_AW(IID_IDirectInput8)
		#define IDirectInput8 WINELIB_NAME_AW(IDirectInput8)
		  DECL_WINELIB_TYPE_AW(LPDIRECTINPUT8)
  //#endif /* DI8 */
		#define IID_IDirectInputDevice WINELIB_NAME_AW(IID_IDirectInputDevice)
		#define IDirectInputDevice WINELIB_NAME_AW(IDirectInputDevice)
		  DECL_WINELIB_TYPE_AW(LPDIRECTINPUTDEVICE)
  //#if DIRECTINPUT_VERSION >= 0x0500
		#define IID_IDirectInputDevice2 WINELIB_NAME_AW(IID_IDirectInputDevice2)
		#define IDirectInputDevice2 WINELIB_NAME_AW(IDirectInputDevice2)
		  DECL_WINELIB_TYPE_AW(LPDIRECTINPUTDEVICE2)
  //#endif /* DI5 */
  //#if DIRECTINPUT_VERSION >= 0x0700
		#define IID_IDirectInputDevice7 WINELIB_NAME_AW(IID_IDirectInputDevice7)
		#define IDirectInputDevice7 WINELIB_NAME_AW(IDirectInputDevice7)
		  DECL_WINELIB_TYPE_AW(LPDIRECTINPUTDEVICE7)
  //#endif /* DI7 */
  //#if DIRECTINPUT_VERSION >= 0x0800
		#define IID_IDirectInputDevice8 WINELIB_NAME_AW(IID_IDirectInputDevice8)
		#define IDirectInputDevice8 WINELIB_NAME_AW(IDirectInputDevice8)
		  DECL_WINELIB_TYPE_AW(LPDIRECTINPUTDEVICE8)
  //#endif /* DI8 */*/
		const int MAX_PATH = 260;

		const int S_OK = 0;
		const int S_FALSE = 1;
		const int SEVERITY_ERROR = 1;
		const int FACILITY_WIN32 = 7;
		const int ERROR_OLD_WIN_VERSION = 1150;
		const int ERROR_RMODE_APP = 1153;
		const int ERROR_BAD_DRIVER_LEVEL = 119;
		const int ERROR_FILE_NOT_FOUND = 2;
		const int REGDB_E_CLASSNOTREG = 2147746132;
		const int E_INVALIDARG = 0x80070057;
		const int E_NOINTERFACE = 0x80004002;
		const int E_FAIL = 0x80004005;
		const int E_OUTOFMEMORY = 0x8007000E;
		const int E_NOTIMPL = 0x80004001;
		const int E_ACCESSDENIED = 0x80070005;
		const int CLASS_E_NOAGGREGATION = 0x80040110;
		const int ERROR_NOT_READY = 21;
		const int ERROR_ALREADY_INITIALIZED = 1247;
		const int ERROR_READ_FAULT = 30;
		const int ERROR_BUSY = 170;
		const int ERROR_INVALID_ACCESS = 12;


		const int DI_OK = S_OK;
		const int DI_NOTATTACHED = 1; //S_FALSE;
		const int DI_BUFFEROVERFLOW = 1; //S_FALSE;
		const int DI_PROPNOEFFECT = 1; //S_FALSE;
		const int DI_NOEFFECT = 1; //S_FALSE;
		const int DI_POLLEDDEVICE = ((HRESULT)0x00000002L);
		const int DI_DOWNLOADSKIPPED = ((HRESULT)0x00000003L);
		const int DI_EFFECTRESTARTED = ((HRESULT)0x00000004L);
		const int DI_TRUNCATED = ((HRESULT)0x00000008L);
		const int DI_SETTINGSNOTSAVED = ((HRESULT)0x0000000BL);
		const int DI_TRUNCATEDANDRESTARTED = ((HRESULT)0x0000000CL);
		const int DI_WRITEPROTECT = ((HRESULT)0x00000013L);

		const int DIERR_OLDDIRECTINPUTVERSION = MAKE_HRESULT(SEVERITY_ERROR, FACILITY_WIN32, ERROR_OLD_WIN_VERSION);
		const int DIERR_BETADIRECTINPUTVERSION = MAKE_HRESULT(SEVERITY_ERROR, FACILITY_WIN32, ERROR_RMODE_APP);
		const int DIERR_BADDRIVERVER = MAKE_HRESULT(SEVERITY_ERROR, FACILITY_WIN32, ERROR_BAD_DRIVER_LEVEL);
		const int DIERR_DEVICENOTREG = REGDB_E_CLASSNOTREG;
		const int DIERR_NOTFOUND = MAKE_HRESULT(SEVERITY_ERROR, FACILITY_WIN32, ERROR_FILE_NOT_FOUND);
		const int DIERR_OBJECTNOTFOUND = MAKE_HRESULT(SEVERITY_ERROR, FACILITY_WIN32, ERROR_FILE_NOT_FOUND);
		const int DIERR_INVALIDPARAM = E_INVALIDARG;
		const int DIERR_NOINTERFACE = E_NOINTERFACE;
		const int DIERR_GENERIC = E_FAIL;
		const int DIERR_OUTOFMEMORY = E_OUTOFMEMORY;
		const int DIERR_UNSUPPORTED = E_NOTIMPL;
		const int DIERR_NOTINITIALIZED = MAKE_HRESULT(SEVERITY_ERROR, FACILITY_WIN32, ERROR_NOT_READY);
		const int DIERR_ALREADYINITIALIZED = MAKE_HRESULT(SEVERITY_ERROR, FACILITY_WIN32, ERROR_ALREADY_INITIALIZED);
		const int DIERR_NOAGGREGATION = CLASS_E_NOAGGREGATION;
		const int DIERR_OTHERAPPHASPRIO = E_ACCESSDENIED;
		const int DIERR_INPUTLOST = MAKE_HRESULT(SEVERITY_ERROR, FACILITY_WIN32, ERROR_READ_FAULT);
		const int DIERR_ACQUIRED = MAKE_HRESULT(SEVERITY_ERROR, FACILITY_WIN32, ERROR_BUSY);
		const int DIERR_NOTACQUIRED = MAKE_HRESULT(SEVERITY_ERROR, FACILITY_WIN32, ERROR_INVALID_ACCESS);
		const int DIERR_READONLY = E_ACCESSDENIED;
		const int DIERR_HANDLEEXISTS = E_ACCESSDENIED;
  //#ifndef E_PENDING
		const int E_PENDING = 0x8000000AL;
  //#endif
		const int DIERR_INSUFFICIENTPRIVS = 0x80040200L;
		const int DIERR_DEVICEFULL = 0x80040201L;
		const int DIERR_MOREDATA = 0x80040202L;
		const int DIERR_NOTDOWNLOADED = 0x80040203L;
		const int DIERR_HASEFFECTS = 0x80040204L;
		const int DIERR_NOTEXCLUSIVEACQUIRED = 0x80040205L;
		const int DIERR_INCOMPLETEEFFECT = 0x80040206L;
		const int DIERR_NOTBUFFERED = 0x80040207L;
		const int DIERR_EFFECTPLAYING = 0x80040208L;
		const int DIERR_UNPLUGGED = 0x80040209L;
		const int DIERR_REPORTFULL = 0x8004020AL;
		const int DIERR_MAPFILEFAIL = 0x8004020BL;

		public enum DIEnum : BOOL
		{
			Stop = 0,
			Continue = 1,
		}

		public enum DIEDFL : DWORD
		{
			AllDevices = 0x00000000,
			AttachedOnly = 0x00000001,
			ForceFeedback = 0x00000100,
			IncludeAliases = 0x00010000,
			IncludePhantoms = 0x00020000,
			IncludeHidden = 0x00040000
		}


		const int DIDEVTYPE_DEVICE = 1;
		const int DIDEVTYPE_MOUSE = 2;
		const int DIDEVTYPE_KEYBOARD = 3;
		const int DIDEVTYPE_JOYSTICK = 4;
		const int DIDEVTYPE_HID = 0x00010000;

		public enum DI8DeviceClass : DWORD
		{
			All = 0,
			Device = 1,
			Pointer = 2,
			Keyboard = 3,
			GameController = 4
		}

		public enum DI8DeviceType : DWORD
		{
			DEVICE = 0x11,
			MOUSE = 0x12,
			KEYBOARD = 0x13,
			JOYSTICK = 0x14,
			GAMEPAD = 0x15,
			DRIVING = 0x16,
			FLIGHT = 0x17,
			_1STPERSON = 0x18,
			DEVICECTRL = 0x19,
			SCREENPOINTER = 0x1A,
			REMOTE = 0x1B,
			SUPPLEMENTAL = 0x1C
		}
		const int DIDEVTYPEMOUSE_UNKNOWN = 1;
		const int DIDEVTYPEMOUSE_TRADITIONAL = 2;
		const int DIDEVTYPEMOUSE_FINGERSTICK = 3;
		const int DIDEVTYPEMOUSE_TOUCHPAD = 4;
		const int DIDEVTYPEMOUSE_TRACKBALL = 5;

		const int DIDEVTYPEKEYBOARD_UNKNOWN = 0;
		const int DIDEVTYPEKEYBOARD_PCXT = 1;
		const int DIDEVTYPEKEYBOARD_OLIVETTI = 2;
		const int DIDEVTYPEKEYBOARD_PCAT = 3;
		const int DIDEVTYPEKEYBOARD_PCENH = 4;
		const int DIDEVTYPEKEYBOARD_NOKIA1050 = 5;
		const int DIDEVTYPEKEYBOARD_NOKIA9140 = 6;
		const int DIDEVTYPEKEYBOARD_NEC98 = 7;
		const int DIDEVTYPEKEYBOARD_NEC98LAPTOP = 8;
		const int DIDEVTYPEKEYBOARD_NEC98106 = 9;
		const int DIDEVTYPEKEYBOARD_JAPAN106 = 10;
		const int DIDEVTYPEKEYBOARD_JAPANAX = 11;
		const int DIDEVTYPEKEYBOARD_J3100 = 12;

		const int DIDEVTYPEJOYSTICK_UNKNOWN = 1;
		const int DIDEVTYPEJOYSTICK_TRADITIONAL = 2;
		const int DIDEVTYPEJOYSTICK_FLIGHTSTICK = 3;
		const int DIDEVTYPEJOYSTICK_GAMEPAD = 4;
		const int DIDEVTYPEJOYSTICK_RUDDER = 5;
		const int DIDEVTYPEJOYSTICK_WHEEL = 6;
		const int DIDEVTYPEJOYSTICK_HEADTRACKER = 7;

		const int DI8DEVTYPEMOUSE_UNKNOWN = 1;
		const int DI8DEVTYPEMOUSE_TRADITIONAL = 2;
		const int DI8DEVTYPEMOUSE_FINGERSTICK = 3;
		const int DI8DEVTYPEMOUSE_TOUCHPAD = 4;
		const int DI8DEVTYPEMOUSE_TRACKBALL = 5;
		const int DI8DEVTYPEMOUSE_ABSOLUTE = 6;

		const int DI8DEVTYPEKEYBOARD_UNKNOWN = 0;
		const int DI8DEVTYPEKEYBOARD_PCXT = 1;
		const int DI8DEVTYPEKEYBOARD_OLIVETTI = 2;
		const int DI8DEVTYPEKEYBOARD_PCAT = 3;
		const int DI8DEVTYPEKEYBOARD_PCENH = 4;
		const int DI8DEVTYPEKEYBOARD_NOKIA1050 = 5;
		const int DI8DEVTYPEKEYBOARD_NOKIA9140 = 6;
		const int DI8DEVTYPEKEYBOARD_NEC98 = 7;
		const int DI8DEVTYPEKEYBOARD_NEC98LAPTOP = 8;
		const int DI8DEVTYPEKEYBOARD_NEC98106 = 9;
		const int DI8DEVTYPEKEYBOARD_JAPAN106 = 10;
		const int DI8DEVTYPEKEYBOARD_JAPANAX = 11;
		const int DI8DEVTYPEKEYBOARD_J3100 = 12;

		const int DI8DEVTYPE_LIMITEDGAMESUBTYPE = 1;

		const int DI8DEVTYPEJOYSTICK_LIMITED = DI8DEVTYPE_LIMITEDGAMESUBTYPE;
		const int DI8DEVTYPEJOYSTICK_STANDARD = 2;

		const int DI8DEVTYPEGAMEPAD_LIMITED = DI8DEVTYPE_LIMITEDGAMESUBTYPE;
		const int DI8DEVTYPEGAMEPAD_STANDARD = 2;
		const int DI8DEVTYPEGAMEPAD_TILT = 3;

		const int DI8DEVTYPEDRIVING_LIMITED = DI8DEVTYPE_LIMITEDGAMESUBTYPE;
		const int DI8DEVTYPEDRIVING_COMBINEDPEDALS = 2;
		const int DI8DEVTYPEDRIVING_DUALPEDALS = 3;
		const int DI8DEVTYPEDRIVING_THREEPEDALS = 4;
		const int DI8DEVTYPEDRIVING_HANDHELD = 5;

		const int DI8DEVTYPEFLIGHT_LIMITED = DI8DEVTYPE_LIMITEDGAMESUBTYPE;
		const int DI8DEVTYPEFLIGHT_STICK = 2;
		const int DI8DEVTYPEFLIGHT_YOKE = 3;
		const int DI8DEVTYPEFLIGHT_RC = 4;

		const int DI8DEVTYPE1STPERSON_LIMITED = DI8DEVTYPE_LIMITEDGAMESUBTYPE;
		const int DI8DEVTYPE1STPERSON_UNKNOWN = 2;
		const int DI8DEVTYPE1STPERSON_SIXDOF = 3;
		const int DI8DEVTYPE1STPERSON_SHOOTER = 4;

		const int DI8DEVTYPESCREENPTR_UNKNOWN = 2;
		const int DI8DEVTYPESCREENPTR_LIGHTGUN = 3;
		const int DI8DEVTYPESCREENPTR_LIGHTPEN = 4;
		const int DI8DEVTYPESCREENPTR_TOUCH = 5;

		const int DI8DEVTYPEREMOTE_UNKNOWN = 2;

		const int DI8DEVTYPEDEVICECTRL_UNKNOWN = 2;
		const int DI8DEVTYPEDEVICECTRL_COMMSSELECTION = 3;
		const int DI8DEVTYPEDEVICECTRL_COMMSSELECTION_HARDWIRED = 4;

		const int DI8DEVTYPESUPPLEMENTAL_UNKNOWN = 2;
		const int DI8DEVTYPESUPPLEMENTAL_2NDHANDCONTROLLER = 3;
		const int DI8DEVTYPESUPPLEMENTAL_HEADTRACKER = 4;
		const int DI8DEVTYPESUPPLEMENTAL_HANDTRACKER = 5;
		const int DI8DEVTYPESUPPLEMENTAL_SHIFTSTICKGATE = 6;
		const int DI8DEVTYPESUPPLEMENTAL_SHIFTER = 7;
		const int DI8DEVTYPESUPPLEMENTAL_THROTTLE = 8;
		const int DI8DEVTYPESUPPLEMENTAL_SPLITTHROTTLE = 9;
		const int DI8DEVTYPESUPPLEMENTAL_COMBINEDPEDALS = 10;
		const int DI8DEVTYPESUPPLEMENTAL_DUALPEDALS = 11;
		const int DI8DEVTYPESUPPLEMENTAL_THREEPEDALS = 12;
		const int DI8DEVTYPESUPPLEMENTAL_RUDDERPEDALS = 13;

		static uint8 LOBYTE(uint16 n) => (uint8)(n & 255);
		static uint8 HIBYTE(uint16 n) => (uint8)((n >> 8) & 255);

		static uint8 GET_DIDEVICE_TYPE(WORD dwDevType) => LOBYTE(dwDevType);
		static uint8 GET_DIDEVICE_SUBTYPE(WORD dwDevType) => HIBYTE(dwDevType);
		[CRepr]
		struct DIDEVICEOBJECTINSTANCE_DX3A
		{
			DWORD dwSize;
			GUID guidType;
			DWORD dwOfs;
			DWORD dwType;
			DWORD dwFlags;
			CHAR[MAX_PATH] tszName;
		}
		typealias LPDIDEVICEOBJECTINSTANCE_DX3A = DIDEVICEOBJECTINSTANCE_DX3A*;
		typealias LPCDIDEVICEOBJECTINSTANCE_DX3A = DIDEVICEOBJECTINSTANCE_DX3A*;
		[CRepr]
		struct DIDEVICEOBJECTINSTANCE_DX3W
		{
			DWORD dwSize;
			GUID guidType;
			DWORD dwOfs;
			DWORD dwType;
			DWORD dwFlags;
			WCHAR[MAX_PATH] tszName;
		}
		typealias LPDIDEVICEOBJECTINSTANCE_DX3W = DIDEVICEOBJECTINSTANCE_DX3W*;
		typealias LPCDIDEVICEOBJECTINSTANCE_DX3W = DIDEVICEOBJECTINSTANCE_DX3W*;

		/*DECL_WINELIB_TYPE_AW(DIDEVICEOBJECTINSTANCE_DX3)
		DECL_WINELIB_TYPE_AW(LPDIDEVICEOBJECTINSTANCE_DX3)
		DECL_WINELIB_TYPE_AW(LPCDIDEVICEOBJECTINSTANCE_DX3)*/
		[CRepr]
		struct DIDEVICEOBJECTINSTANCEA
		{
			DWORD dwSize;
			GUID guidType;
			DWORD dwOfs;
			DWORD dwType;
			DWORD dwFlags;
			CHAR[MAX_PATH] tszName;
//#if(DIRECTINPUT_VERSION >= 0x0500)
			DWORD dwFFMaxForce;
			DWORD dwFFForceResolution;
			WORD wCollectionNumber;
			WORD wDesignatorIndex;
			WORD wUsagePage;
			WORD wUsage;
			DWORD dwDimension;
			WORD wExponent;
			WORD wReserved;
//#endif /* DIRECTINPUT_VERSION >= 0x0500 */
		}
		typealias LPDIDEVICEOBJECTINSTANCEA = DIDEVICEOBJECTINSTANCEA*;
		typealias LPCDIDEVICEOBJECTINSTANCEA = DIDEVICEOBJECTINSTANCEA*;
		[CRepr]
		struct DIDEVICEOBJECTINSTANCEW
		{
			DWORD dwSize;
			GUID guidType;
			DWORD dwOfs;
			DWORD dwType;
			DWORD dwFlags;
			WCHAR[MAX_PATH] tszName;
//#if(DIRECTINPUT_VERSION >= 0x0500)
			DWORD dwFFMaxForce;
			DWORD dwFFForceResolution;
			WORD wCollectionNumber;
			WORD wDesignatorIndex;
			WORD wUsagePage;
			WORD wUsage;
			DWORD dwDimension;
			WORD wExponent;
			WORD wReserved;
//#endif /* DIRECTINPUT_VERSION >= 0x0500 */
		}
		typealias LPDIDEVICEOBJECTINSTANCEW = DIDEVICEOBJECTINSTANCEW*;
		typealias LPCDIDEVICEOBJECTINSTANCEW = DIDEVICEOBJECTINSTANCEW*;

		/*DECL_WINELIB_TYPE_AW(DIDEVICEOBJECTINSTANCE)
		DECL_WINELIB_TYPE_AW(LPDIDEVICEOBJECTINSTANCE)
		DECL_WINELIB_TYPE_AW(LPCDIDEVICEOBJECTINSTANCE)*/
		[CRepr]
		struct DIDEVICEINSTANCE_DX3A
		{
			DWORD dwSize;
			GUID guidInstance;
			GUID guidProduct;
			DWORD dwDevType;
			CHAR[MAX_PATH] tszInstanceName;
			CHAR[MAX_PATH] tszProductName;
		}
		typealias LPDIDEVICEINSTANCE_DX3A = DIDEVICEINSTANCE_DX3A*;
		typealias LPCDIDEVICEINSTANCE_DX3A = DIDEVICEINSTANCE_DX3A*;
		[CRepr]
		struct DIDEVICEINSTANCE_DX3W
		{
			DWORD dwSize;
			GUID guidInstance;
			GUID guidProduct;
			DWORD dwDevType;
			WCHAR[MAX_PATH] tszInstanceName;
			WCHAR[MAX_PATH] tszProductName;
		}
		typealias LPDIDEVICEINSTANCE_DX3W = DIDEVICEINSTANCE_DX3W*;
		typealias LPCDIDEVICEINSTANCE_DX3W = DIDEVICEINSTANCE_DX3W*;

		/*DECL_WINELIB_TYPE_AW(DIDEVICEINSTANCE_DX3)
		DECL_WINELIB_TYPE_AW(LPDIDEVICEINSTANCE_DX3)
		DECL_WINELIB_TYPE_AW(LPCDIDEVICEINSTANCE_DX3)*/
		[CRepr]
		public struct DIDEVICEINSTANCEA
		{
			public DWORD dwSize;
			public GUID guidInstance;
			public GUID guidProduct;
			public DWORD dwDevType;
			public CHAR[MAX_PATH] tszInstanceName;
			public CHAR[MAX_PATH] tszProductName;
//#if(DIRECTINPUT_VERSION >= 0x0500)
			public GUID guidFFDriver;
			public WORD wUsagePage;
			public WORD wUsage;
//#endif /* DIRECTINPUT_VERSION >= 0x0500 */
		}
		typealias LPDIDEVICEINSTANCEA = DIDEVICEINSTANCEA*;
		typealias LPCDIDEVICEINSTANCEA = DIDEVICEINSTANCEA*;
		[CRepr]
		struct DIDEVICEINSTANCEW
		{
			DWORD dwSize;
			GUID guidInstance;
			GUID guidProduct;
			DWORD dwDevType;
			WCHAR[MAX_PATH] tszInstanceName;
			WCHAR[MAX_PATH] tszProductName;
//#if(DIRECTINPUT_VERSION >= 0x0500)
			GUID guidFFDriver;
			WORD wUsagePage;
			WORD wUsage;
//#endif /* DIRECTINPUT_VERSION >= 0x0500 */
		}
		typealias LPDIDEVICEINSTANCEW = DIDEVICEINSTANCEW*;
		typealias LPCDIDEVICEINSTANCEW = DIDEVICEINSTANCEW*;

		/*DECL_WINELIB_TYPE_AW(DIDEVICEINSTANCE)
		DECL_WINELIB_TYPE_AW(LPDIDEVICEINSTANCE)
		DECL_WINELIB_TYPE_AW(LPCDIDEVICEINSTANCE)*/

		public typealias LPDIENUMDEVICESCALLBACKA = function DIEnum(LPCDIDEVICEINSTANCEA, LPVOID);
		//typedef BOOL (CALLBACK *LPDIENUMDEVICESCALLBACKW)(LPCDIDEVICEINSTANCEW,LPVOID);
		/*DECL_WINELIB_TYPE_AW(LPDIENUMDEVICESCALLBACK)*/

		const int DIEDBS_MAPPEDPRI1 = 0x00000001;
		const int DIEDBS_MAPPEDPRI2 = 0x00000002;
		const int DIEDBS_RECENTDEVICE = 0x00000010;
		const int DIEDBS_NEWDEVICE = 0x00000020;

		const int DIEDBSFL_ATTACHEDONLY = 0x00000000;
		const int DIEDBSFL_THISUSER = 0x00000010;
		const int DIEDBSFL_FORCEFEEDBACK = (.)DIEDFL.ForceFeedback;
		const int DIEDBSFL_AVAILABLEDEVICES = 0x00001000;
		const int DIEDBSFL_MULTIMICEKEYBOARDS = 0x00002000;
		const int DIEDBSFL_NONGAMINGDEVICES = 0x00004000;
		const int DIEDBSFL_VALID = 0x00007110;

//#if DIRECTINPUT_VERSION >= 0x0800
		typealias LPDIENUMDEVICESBYSEMANTICSCBA = function BOOL(LPCDIDEVICEINSTANCEA, LPDIRECTINPUTDEVICE8A, DWORD, DWORD, LPVOID);
		//typedef BOOL (CALLBACK *LPDIENUMDEVICESBYSEMANTICSCBW)(LPCDIDEVICEINSTANCEW,LPDIRECTINPUTDEVICE8W,DWORD,DWORD,LPVOID);
		/*DECL_WINELIB_TYPE_AW(LPDIENUMDEVICESBYSEMANTICSCB)*/
//#endif

		typealias LPDICONFIGUREDEVICESCALLBACK = function BOOL(LPUNKNOWN, LPVOID);

		typealias LPDIENUMDEVICEOBJECTSCALLBACKA = function BOOL(LPCDIDEVICEOBJECTINSTANCEA, LPVOID);
		//typedef BOOL (CALLBACK *LPDIENUMDEVICEOBJECTSCALLBACKW)(LPCDIDEVICEOBJECTINSTANCEW,LPVOID);
		/*DECL_WINELIB_TYPE_AW(LPDIENUMDEVICEOBJECTSCALLBACK)*/

//#if DIRECTINPUT_VERSION >= 0x0500
		typealias LPDIENUMCREATEDEFFECTOBJECTSCALLBACK = function BOOL(LPDIRECTINPUTEFFECT, LPVOID);
//#endif

		const int DIK_ESCAPE = 0x01;
		const int DIK_1 = 0x02;
		const int DIK_2 = 0x03;
		const int DIK_3 = 0x04;
		const int DIK_4 = 0x05;
		const int DIK_5 = 0x06;
		const int DIK_6 = 0x07;
		const int DIK_7 = 0x08;
		const int DIK_8 = 0x09;
		const int DIK_9 = 0x0A;
		const int DIK_0 = 0x0B;
		const int DIK_MINUS = 0x0C; /* - on main keyboard */
		const int DIK_EQUALS = 0x0D;
		const int DIK_BACK = 0x0E; /* backspace */
		const int DIK_TAB = 0x0F;
		const int DIK_Q = 0x10;
		const int DIK_W = 0x11;
		const int DIK_E = 0x12;
		const int DIK_R = 0x13;
		const int DIK_T = 0x14;
		const int DIK_Y = 0x15;
		const int DIK_U = 0x16;
		const int DIK_I = 0x17;
		const int DIK_O = 0x18;
		const int DIK_P = 0x19;
		const int DIK_LBRACKET = 0x1A;
		const int DIK_RBRACKET = 0x1B;
		const int DIK_RETURN = 0x1C; /* Enter on main keyboard */
		const int DIK_LCONTROL = 0x1D;
		const int DIK_A = 0x1E;
		const int DIK_S = 0x1F;
		const int DIK_D = 0x20;
		const int DIK_F = 0x21;
		const int DIK_G = 0x22;
		const int DIK_H = 0x23;
		const int DIK_J = 0x24;
		const int DIK_K = 0x25;
		const int DIK_L = 0x26;
		const int DIK_SEMICOLON = 0x27;
		const int DIK_APOSTROPHE = 0x28;
		const int DIK_GRAVE = 0x29; /* accent grave */
		const int DIK_LSHIFT = 0x2A;
		const int DIK_BACKSLASH = 0x2B;
		const int DIK_Z = 0x2C;
		const int DIK_X = 0x2D;
		const int DIK_C = 0x2E;
		const int DIK_V = 0x2F;
		const int DIK_B = 0x30;
		const int DIK_N = 0x31;
		const int DIK_M = 0x32;
		const int DIK_COMMA = 0x33;
		const int DIK_PERIOD = 0x34; /* . on main keyboard */
		const int DIK_SLASH = 0x35; /* / on main keyboard */
		const int DIK_RSHIFT = 0x36;
		const int DIK_MULTIPLY = 0x37; /* * on numeric keypad */
		const int DIK_LMENU = 0x38; /* left Alt */
		const int DIK_SPACE = 0x39;
		const int DIK_CAPITAL = 0x3A;
		const int DIK_F1 = 0x3B;
		const int DIK_F2 = 0x3C;
		const int DIK_F3 = 0x3D;
		const int DIK_F4 = 0x3E;
		const int DIK_F5 = 0x3F;
		const int DIK_F6 = 0x40;
		const int DIK_F7 = 0x41;
		const int DIK_F8 = 0x42;
		const int DIK_F9 = 0x43;
		const int DIK_F10 = 0x44;
		const int DIK_NUMLOCK = 0x45;
		const int DIK_SCROLL = 0x46; /* Scroll Lock */
		const int DIK_NUMPAD7 = 0x47;
		const int DIK_NUMPAD8 = 0x48;
		const int DIK_NUMPAD9 = 0x49;
		const int DIK_SUBTRACT = 0x4A; /* - on numeric keypad */
		const int DIK_NUMPAD4 = 0x4B;
		const int DIK_NUMPAD5 = 0x4C;
		const int DIK_NUMPAD6 = 0x4D;
		const int DIK_ADD = 0x4E; /* + on numeric keypad */
		const int DIK_NUMPAD1 = 0x4F;
		const int DIK_NUMPAD2 = 0x50;
		const int DIK_NUMPAD3 = 0x51;
		const int DIK_NUMPAD0 = 0x52;
		const int DIK_DECIMAL = 0x53; /* . on numeric keypad */
		const int DIK_OEM_102 = 0x56; /* < > | on UK/Germany keyboards */
		const int DIK_F11 = 0x57;
		const int DIK_F12 = 0x58;
		const int DIK_F13 = 0x64; /*                     (NEC PC98) */
		const int DIK_F14 = 0x65; /*                     (NEC PC98) */
		const int DIK_F15 = 0x66; /*                     (NEC PC98) */
		const int DIK_KANA = 0x70; /* (Japanese keyboard)            */
		const int DIK_ABNT_C1 = 0x73; /* / ? on Portugese (Brazilian) keyboards */
		const int DIK_CONVERT = 0x79; /* (Japanese keyboard)            */
		const int DIK_NOCONVERT = 0x7B; /* (Japanese keyboard)            */
		const int DIK_YEN = 0x7D; /* (Japanese keyboard)            */
		const int DIK_ABNT_C2 = 0x7E; /* Numpad . on Portugese (Brazilian) keyboards */
		const int DIK_NUMPADEQUALS = 0x8D; /* = on numeric keypad (NEC PC98) */
		const int DIK_CIRCUMFLEX = 0x90; /* (Japanese keyboard)            */
		const int DIK_AT = 0x91; /*                     (NEC PC98) */
		const int DIK_COLON = 0x92; /*                     (NEC PC98) */
		const int DIK_UNDERLINE = 0x93; /*                     (NEC PC98) */
		const int DIK_KANJI = 0x94; /* (Japanese keyboard)            */
		const int DIK_STOP = 0x95; /*                     (NEC PC98) */
		const int DIK_AX = 0x96; /*                     (Japan AX) */
		const int DIK_UNLABELED = 0x97; /*                        (J3100) */
		const int DIK_NEXTTRACK = 0x99; /* Next Track */
		const int DIK_NUMPADENTER = 0x9C; /* Enter on numeric keypad */
		const int DIK_RCONTROL = 0x9D;
		const int DIK_MUTE = 0xA0; /* Mute */
		const int DIK_CALCULATOR = 0xA1; /* Calculator */
		const int DIK_PLAYPAUSE = 0xA2; /* Play / Pause */
		const int DIK_MEDIASTOP = 0xA4; /* Media Stop */
		const int DIK_VOLUMEDOWN = 0xAE; /* Volume - */
		const int DIK_VOLUMEUP = 0xB0; /* Volume + */
		const int DIK_WEBHOME = 0xB2; /* Web home */
		const int DIK_NUMPADCOMMA = 0xB3; /* , on numeric keypad (NEC PC98) */
		const int DIK_DIVIDE = 0xB5; /* / on numeric keypad */
		const int DIK_SYSRQ = 0xB7;
		const int DIK_RMENU = 0xB8; /* right Alt */
		const int DIK_PAUSE = 0xC5; /* Pause */
		const int DIK_HOME = 0xC7; /* Home on arrow keypad */
		const int DIK_UP = 0xC8; /* UpArrow on arrow keypad */
		const int DIK_PRIOR = 0xC9; /* PgUp on arrow keypad */
		const int DIK_LEFT = 0xCB; /* LeftArrow on arrow keypad */
		const int DIK_RIGHT = 0xCD; /* RightArrow on arrow keypad */
		const int DIK_END = 0xCF; /* End on arrow keypad */
		const int DIK_DOWN = 0xD0; /* DownArrow on arrow keypad */
		const int DIK_NEXT = 0xD1; /* PgDn on arrow keypad */
		const int DIK_INSERT = 0xD2; /* Insert on arrow keypad */
		const int DIK_DELETE = 0xD3; /* Delete on arrow keypad */
		const int DIK_LWIN = 0xDB; /* Left Windows key */
		const int DIK_RWIN = 0xDC; /* Right Windows key */
		const int DIK_APPS = 0xDD; /* AppMenu key */
		const int DIK_POWER = 0xDE;
		const int DIK_SLEEP = 0xDF;
		const int DIK_WAKE = 0xE3; /* System Wake */
		const int DIK_WEBSEARCH = 0xE5; /* Web Search */
		const int DIK_WEBFAVORITES = 0xE6; /* Web Favorites */
		const int DIK_WEBREFRESH = 0xE7; /* Web Refresh */
		const int DIK_WEBSTOP = 0xE8; /* Web Stop */
		const int DIK_WEBFORWARD = 0xE9; /* Web Forward */
		const int DIK_WEBBACK = 0xEA; /* Web Back */
		const int DIK_MYCOMPUTER = 0xEB; /* My Computer */
		const int DIK_MAIL = 0xEC; /* Mail */
		const int DIK_MEDIASELECT = 0xED; /* Media Select */

		const int DIK_BACKSPACE = DIK_BACK; /* backspace */
		const int DIK_NUMPADSTAR = DIK_MULTIPLY; /* * on numeric keypad */
		const int DIK_LALT = DIK_LMENU; /* left Alt */
		const int DIK_CAPSLOCK = DIK_CAPITAL; /* CapsLock */
		const int DIK_NUMPADMINUS = DIK_SUBTRACT; /* - on numeric keypad */
		const int DIK_NUMPADPLUS = DIK_ADD; /* + on numeric keypad */
		const int DIK_NUMPADPERIOD = DIK_DECIMAL; /* . on numeric keypad */
		const int DIK_NUMPADSLASH = DIK_DIVIDE; /* / on numeric keypad */
		const int DIK_RALT = DIK_RMENU; /* right Alt */
		const int DIK_UPARROW = DIK_UP; /* UpArrow on arrow keypad */
		const int DIK_PGUP = DIK_PRIOR; /* PgUp on arrow keypad */
		const int DIK_LEFTARROW = DIK_LEFT; /* LeftArrow on arrow keypad */
		const int DIK_RIGHTARROW = DIK_RIGHT; /* RightArrow on arrow keypad */
		const int DIK_DOWNARROW = DIK_DOWN; /* DownArrow on arrow keypad */
		const int DIK_PGDN = DIK_NEXT; /* PgDn on arrow keypad */

		const uint32 DIDFT_ALL = 0x00000000;
		const uint32 DIDFT_RELAXIS = 0x00000001;
		const uint32 DIDFT_ABSAXIS = 0x00000002;
		const uint32 DIDFT_AXIS = 0x00000003;
		const uint32 DIDFT_PSHBUTTON = 0x00000004;
		const uint32 DIDFT_TGLBUTTON = 0x00000008;
		const uint32 DIDFT_BUTTON = 0x0000000C;
		const uint32 DIDFT_POV = 0x00000010;
		const uint32 DIDFT_COLLECTION = 0x00000040;
		const uint32 DIDFT_NODATA = 0x00000080;
		const uint32 DIDFT_ANYINSTANCE = 0x00FFFF00;
		const uint32 DIDFT_INSTANCEMASK = DIDFT_ANYINSTANCE;
		[Inline]
		static uint32 DIDFT_MAKEINSTANCE(uint32 n) => ((WORD)(n) << 8);
		[Inline]
		static uint32 DIDFT_GETTYPE(uint16 n) => LOBYTE(n);
		[Inline]
		static uint32 DIDFT_GETINSTANCE(uint32 n) => LOWORD((n) >> 8);

		[Inline]
		static uint16 LOWORD(uint32 n) => (uint16)(n & uint16.MaxValue);


		const int DIDFT_FFACTUATOR = 0x01000000;
		const int DIDFT_FFEFFECTTRIGGER = 0x02000000;
//#if DIRECTINPUT_VERSION >= 0x050a
		const int DIDFT_OUTPUT = 0x10000000;
		const int DIDFT_VENDORDEFINED = 0x04000000;
		const int DIDFT_ALIAS = 0x08000000;
//#endif /* DI5a */

		const uint32 DIDFT_OPTIONAL = 0x80000000;


		static int DIDFT_ENUMCOLLECTION(int n) => ((WORD)(n) << 8);
		const int DIDFT_NOCOLLECTION = 0x00FFFF00;

		const int DIDF_ABSAXIS = 0x00000001;
		const int DIDF_RELAXIS = 0x00000002;

		const int DIGDD_PEEK = 0x00000001;

//static int DISEQUENCE_COMPARE(var dwSq1, var cmp, var dwSq2) => ((int)((dwSq1) - (dwSq2)) cmp 0);
		[CRepr]
		public struct DIDEVICEOBJECTDATA_DX3
		{
			DWORD dwOfs;
			DWORD dwData;
			DWORD dwTimeStamp;
			DWORD dwSequence;
		}
		typealias LPDIDEVICEOBJECTDATA_DX3 = DIDEVICEOBJECTDATA_DX3*;
		typealias LPCDIDEVICEOBJECTDATA_DX3 = DIDEVICEOBJECTDATA_DX3*;
		[CRepr]
		public struct DIDEVICEOBJECTDATA
		{
			public DWORD dwOfs;
			public DWORD dwData;
			public DWORD dwTimeStamp;
			public DWORD dwSequence;
//#if(DIRECTINPUT_VERSION >= 0x0800)
			public UINT_PTR uAppData;
//#endif /* DIRECTINPUT_VERSION >= 0x0800 */

			public void ToString(String buf){
				buf.AppendF($"{dwOfs}, {dwData}, {dwTimeStamp}, {dwSequence}, {uAppData}");
			}
		}
		typealias LPDIDEVICEOBJECTDATA = DIDEVICEOBJECTDATA*;
		typealias LPCDIDEVICEOBJECTDATA = DIDEVICEOBJECTDATA*;
		[CRepr]
		public struct DIOBJECTDATAFORMAT : this(
			GUID* pguid,
			DWORD dwOfs,
			DWORD dwType,
			DWORD dwFlags
			);
		typealias LPDIOBJECTDATAFORMAT = DIOBJECTDATAFORMAT*;
		typealias LPCDIOBJECTDATAFORMAT = DIOBJECTDATAFORMAT*;
		[CRepr]
		public struct DIDATAFORMAT : this(
			DWORD dwSize,
			DWORD dwObjSize,
			DWORD dwFlags,
			DWORD dwDataSize,
			DWORD dwNumObjs,
			LPDIOBJECTDATAFORMAT rgodf
			)
		{
		}
		typealias LPDIDATAFORMAT = DIDATAFORMAT*;
		typealias LPCDIDATAFORMAT = DIDATAFORMAT*;

//#if DIRECTINPUT_VERSION >= 0x0500
		const int DIDOI_FFACTUATOR = 0x00000001;
		const int DIDOI_FFEFFECTTRIGGER = 0x00000002;
		const int DIDOI_POLLED = 0x00008000;
		const int DIDOI_ASPECTPOSITION = 0x00000100;
		const int DIDOI_ASPECTVELOCITY = 0x00000200;
		const int DIDOI_ASPECTACCEL = 0x00000300;
		const int DIDOI_ASPECTFORCE = 0x00000400;
		const int DIDOI_ASPECTMASK = 0x00000F00;
//#endif /* DI5 */
//#if DIRECTINPUT_VERSION >= 0x050a
		const int DIDOI_GUIDISUSAGE = 0x00010000;
//#endif /* DI5a */
		[CRepr]
		struct DIPROPHEADER
		{
			DWORD dwSize;
			DWORD dwHeaderSize;
			DWORD dwObj;
			DWORD dwHow;
		}
		typealias LPDIPROPHEADER = DIPROPHEADER*;
		typealias LPCDIPROPHEADER = DIPROPHEADER*;

		const int DIPH_DEVICE = 0;
		const int DIPH_BYOFFSET = 1;
		const int DIPH_BYID = 2;
//#if DIRECTINPUT_VERSION >= 0x050a
		const int DIPH_BYUSAGE = 3;

		static uint32 DIMAKEUSAGEDWORD(uint16 UsagePage, uint16 Usage) => (DWORD)MAKELONG(Usage, UsagePage);
//#endif /* DI5a */
		[CRepr]
		struct DIPROPDWORD
		{
			DIPROPHEADER diph;
			DWORD dwData;
		}
		typealias LPDIPROPDWORD = DIPROPDWORD*;
		typealias LPCDIPROPDWORD = DIPROPDWORD*;
		[CRepr]
		struct DIPROPRANGE
		{
			DIPROPHEADER diph;
			LONG lMin;
			LONG lMax;
		}
		typealias LPDIPROPRANGE = DIPROPRANGE*;
		typealias LPCDIPROPRANGE = DIPROPRANGE*;

		const int DIPROPRANGE_NOMIN = ((LONG)0x80000000);
		const int DIPROPRANGE_NOMAX = ((LONG)0x7FFFFFFF);

//#if DIRECTINPUT_VERSION >= 0x050a
		[CRepr]
		struct DIPROPCAL
		{
			DIPROPHEADER diph;
			LONG lMin;
			LONG lCenter;
			LONG lMax;
		}
		typealias LPDIPROPCAL = DIPROPCAL*;
		typealias LPCDIPROPCAL = DIPROPCAL*;

		[CRepr]
		struct DIPROPCALPOV
		{
			DIPROPHEADER diph;
			LONG[5] lMin;
			LONG[5] lMax;
		}
		typealias LPDIPROPCALPOV = DIPROPCALPOV*;
		typealias LPCDIPROPCALPOV = DIPROPCALPOV*;
		[CRepr]
		struct DIPROPGUIDANDPATH
		{
			DIPROPHEADER diph;
			GUID guidClass;
			WCHAR[MAX_PATH] wszPath;
		}
		typealias LPDIPROPGUIDANDPATH = DIPROPGUIDANDPATH*;
		typealias LPCDIPROPGUIDANDPATH = DIPROPGUIDANDPATH*;
		[CRepr]
		struct DIPROPSTRING
		{
			DIPROPHEADER diph;
			WCHAR[MAX_PATH] wsz;
		}
		typealias LPDIPROPSTRING = DIPROPSTRING*;
		typealias LPCDIPROPSTRING = DIPROPSTRING*;
//#endif /* DI5a */

//#if DIRECTINPUT_VERSION >= 0x0800
		[CRepr]
		struct DIPROPPOINTER
		{
			DIPROPHEADER diph;
			UINT_PTR uData;
		}
		typealias LPDIPROPPOINTER = DIPROPPOINTER*;
		typealias LPCDIPROPPOINTER = DIPROPPOINTER*;
//#endif /* DI8 */

		/* special property GUIDs */
#unwarn
		static GUID MAKEDIPROP(int prop) => *((REFGUID)(&prop));

		public const GUID DIPROP_BUFFERSIZE = MAKEDIPROP(1);
		public const GUID DIPROP_AXISMODE = MAKEDIPROP(2);

		public const int DIPROPAXISMODE_ABS = 0;
		public const int DIPROPAXISMODE_REL = 1;

		public const GUID DIPROP_GRANULARITY = MAKEDIPROP(3);
		public const GUID DIPROP_RANGE = MAKEDIPROP(4);
		public const GUID DIPROP_DEADZONE = MAKEDIPROP(5);
		public const GUID DIPROP_SATURATION = MAKEDIPROP(6);
		public const GUID DIPROP_FFGAIN = MAKEDIPROP(7);
		public const GUID DIPROP_FFLOAD = MAKEDIPROP(8);
		public const GUID DIPROP_AUTOCENTER = MAKEDIPROP(9);

		public const int DIPROPAUTOCENTER_OFF = 0;
		public const int DIPROPAUTOCENTER_ON = 1;

		public const GUID DIPROP_CALIBRATIONMODE = MAKEDIPROP(10);

		public const int DIPROPCALIBRATIONMODE_COOKED = 0;
		public const int DIPROPCALIBRATIONMODE_RAW = 1;

//#if DIRECTINPUT_VERSION >= 0x050a
		public const GUID DIPROP_CALIBRATION = MAKEDIPROP(11);
		public const GUID DIPROP_GUIDANDPATH = MAKEDIPROP(12);
		public const GUID DIPROP_INSTANCENAME = MAKEDIPROP(13);
		public const GUID DIPROP_PRODUCTNAME = MAKEDIPROP(14);
//#endif

//#if DIRECTINPUT_VERSION >= 0x5B2
		public const GUID DIPROP_JOYSTICKID = MAKEDIPROP(15);
		public const GUID DIPROP_GETPORTDISPLAYNAME = MAKEDIPROP(16);
//#endif

//#if DIRECTINPUT_VERSION >= 0x0700
		public const GUID DIPROP_PHYSICALRANGE = MAKEDIPROP(18);
		public const GUID DIPROP_LOGICALRANGE = MAKEDIPROP(19);
//#endif

//#if(DIRECTINPUT_VERSION >= 0x0800)
		public const GUID DIPROP_KEYNAME = MAKEDIPROP(20);
		public const GUID DIPROP_CPOINTS = MAKEDIPROP(21);
		public const GUID DIPROP_APPDATA = MAKEDIPROP(22);
		public const GUID DIPROP_SCANCODE = MAKEDIPROP(23);
		public const GUID DIPROP_VIDPID = MAKEDIPROP(24);
		public const GUID DIPROP_USERNAME = MAKEDIPROP(25);
		public const GUID DIPROP_TYPENAME = MAKEDIPROP(26);

		public const int MAXCPOINTSNUM = 8;
		[CRepr]
		struct CPOINT
		{
			LONG lP;
			DWORD dwLog;
		}
		typealias PCPOINT = CPOINT*;
		[CRepr]
		struct DIPROPCPOINTS
		{
			DIPROPHEADER diph;
			DWORD dwCPointsNum;
			CPOINT[MAXCPOINTSNUM] cp;
		}
		typealias LPDIPROPCPOINTS = DIPROPCPOINTS*;
		typealias LPCDIPROPCPOINTS = DIPROPCPOINTS*;
//#endif /* DI8 */

		[CRepr]
		struct DIDEVCAPS_DX3
		{
			DWORD dwSize;
			DWORD dwFlags;
			DWORD dwDevType;
			DWORD dwAxes;
			DWORD dwButtons;
			DWORD dwPOVs;
		}
		typealias LPDIDEVCAPS_DX3 = DIDEVCAPS_DX3*;
		[CRepr]
		struct DIDEVCAPS
		{
			DWORD dwSize;
			DWORD dwFlags;
			DWORD dwDevType;
			DWORD dwAxes;
			DWORD dwButtons;
			DWORD dwPOVs;
//#if(DIRECTINPUT_VERSION >= 0x0500)
			DWORD dwFFSamplePeriod;
			DWORD dwFFMinTimeResolution;
			DWORD dwFirmwareRevision;
			DWORD dwHardwareRevision;
			DWORD dwFFDriverVersion;
//#endif /* DIRECTINPUT_VERSION >= 0x0500 */
		}
		typealias LPDIDEVCAPS = DIDEVCAPS*;

		const int DIDC_ATTACHED = 0x00000001;
		const int DIDC_POLLEDDEVICE = 0x00000002;
		const int DIDC_EMULATED = 0x00000004;
		const int DIDC_POLLEDDATAFORMAT = 0x00000008;
		const int DIDC_FORCEFEEDBACK = 0x00000100;
		const int DIDC_FFATTACK = 0x00000200;
		const int DIDC_FFFADE = 0x00000400;
		const int DIDC_SATURATION = 0x00000800;
		const int DIDC_POSNEGCOEFFICIENTS = 0x00001000;
		const int DIDC_POSNEGSATURATION = 0x00002000;
		const int DIDC_DEADBAND = 0x00004000;
		const int DIDC_STARTDELAY = 0x00008000;
		const int DIDC_ALIAS = 0x00010000;
		const int DIDC_PHANTOM = 0x00020000;
		const int DIDC_HIDDEN = 0x00040000;


		/* SetCooperativeLevel dwFlags */
		const int DISCL_EXCLUSIVE = 0x00000001;
		const int DISCL_NONEXCLUSIVE = 0x00000002;
		const int DISCL_FOREGROUND = 0x00000004;
		const int DISCL_BACKGROUND = 0x00000008;
		const int DISCL_NOWINKEY = 0x00000010;

//#if (DIRECTINPUT_VERSION >= 0x0500)
		/* Device FF flags */
		const int DISFFC_RESET = 0x00000001;
		const int DISFFC_STOPALL = 0x00000002;
		const int DISFFC_PAUSE = 0x00000004;
		const int DISFFC_CONTINUE = 0x00000008;
		const int DISFFC_SETACTUATORSON = 0x00000010;
		const int DISFFC_SETACTUATORSOFF = 0x00000020;

		const int DIGFFS_EMPTY = 0x00000001;
		const int DIGFFS_STOPPED = 0x00000002;
		const int DIGFFS_PAUSED = 0x00000004;
		const int DIGFFS_ACTUATORSON = 0x00000010;
		const int DIGFFS_ACTUATORSOFF = 0x00000020;
		const int DIGFFS_POWERON = 0x00000040;
		const int DIGFFS_POWEROFF = 0x00000080;
		const int DIGFFS_SAFETYSWITCHON = 0x00000100;
		const int DIGFFS_SAFETYSWITCHOFF = 0x00000200;
		const int DIGFFS_USERFFSWITCHON = 0x00000400;
		const int DIGFFS_USERFFSWITCHOFF = 0x00000800;
		const int DIGFFS_DEVICELOST = 0x80000000;

		/* Effect flags */
		const int DIEFT_ALL = 0x00000000;

		const int DIEFT_CONSTANTFORCE = 0x00000001;
		const int DIEFT_RAMPFORCE = 0x00000002;
		const int DIEFT_PERIODIC = 0x00000003;
		const int DIEFT_CONDITION = 0x00000004;
		const int DIEFT_CUSTOMFORCE = 0x00000005;
		const int DIEFT_HARDWARE = 0x000000FF;
		const int DIEFT_FFATTACK = 0x00000200;
		const int DIEFT_FFFADE = 0x00000400;
		const int DIEFT_SATURATION = 0x00000800;
		const int DIEFT_POSNEGCOEFFICIENTS = 0x00001000;
		const int DIEFT_POSNEGSATURATION = 0x00002000;
		const int DIEFT_DEADBAND = 0x00004000;
		const int DIEFT_STARTDELAY = 0x00008000;
		static int DIEFT_GETTYPE(uint16 n) => LOBYTE(n);

		const int DIEFF_OBJECTIDS = 0x00000001;
		const int DIEFF_OBJECTOFFSETS = 0x00000002;
		const int DIEFF_CARTESIAN = 0x00000010;
		const int DIEFF_POLAR = 0x00000020;
		const int DIEFF_SPHERICAL = 0x00000040;

		const int DIEP_DURATION = 0x00000001;
		const int DIEP_SAMPLEPERIOD = 0x00000002;
		const int DIEP_GAIN = 0x00000004;
		const int DIEP_TRIGGERBUTTON = 0x00000008;
		const int DIEP_TRIGGERREPEATINTERVAL = 0x00000010;
		const int DIEP_AXES = 0x00000020;
		const int DIEP_DIRECTION = 0x00000040;
		const int DIEP_ENVELOPE = 0x00000080;
		const int DIEP_TYPESPECIFICPARAMS = 0x00000100;
//#if(DIRECTINPUT_VERSION >= 0x0600)
		const int DIEP_STARTDELAY = 0x00000200;
		const int DIEP_ALLPARAMS_DX5 = 0x000001FF;
		const int DIEP_ALLPARAMS = 0x000003FF;
/*#else
const int DIEP_ALLPARAMS          = 0x000001FF;
		#endif /* DIRECTINPUT_VERSION >= 0x0600 */*/
		const int DIEP_START = 0x20000000;
		const int DIEP_NORESTART = 0x40000000;
		const int DIEP_NODOWNLOAD = 0x80000000;
		const int DIEB_NOTRIGGER = 0xFFFFFFFF;

		const int DIES_SOLO = 0x00000001;
		const int DIES_NODOWNLOAD = 0x80000000;

		const int DIEGES_PLAYING = 0x00000001;
		const int DIEGES_EMULATED = 0x00000002;

		const int DI_DEGREES = 100;
		const int DI_FFNOMINALMAX = 10000;
		const int DI_SECONDS = 1000000;
		[CRepr]
		struct DICONSTANTFORCE
		{
			LONG lMagnitude;
		}
		typealias LPDICONSTANTFORCE = DICONSTANTFORCE*;
		typealias LPCDICONSTANTFORCE = DICONSTANTFORCE*;
		[CRepr]
		struct DIRAMPFORCE
		{
			LONG lStart;
			LONG lEnd;
		}
		typealias LPDIRAMPFORCE = DIRAMPFORCE*;
		typealias LPCDIRAMPFORCE = DIRAMPFORCE*;
		[CRepr]
		struct DIPERIODIC
		{
			DWORD dwMagnitude;
			LONG lOffset;
			DWORD dwPhase;
			DWORD dwPeriod;
		}
		typealias LPDIPERIODIC = DIPERIODIC*;
		typealias LPCDIPERIODIC = DIPERIODIC*;
		[CRepr]
		struct DICONDITION
		{
			LONG lOffset;
			LONG lPositiveCoefficient;
			LONG lNegativeCoefficient;
			DWORD dwPositiveSaturation;
			DWORD dwNegativeSaturation;
			LONG lDeadBand;
		}
		typealias LPDICONDITION = DICONDITION*;
		typealias LPCDICONDITION = DICONDITION*;
		[CRepr]
		struct DICUSTOMFORCE
		{
			DWORD cChannels;
			DWORD dwSamplePeriod;
			DWORD cSamples;
			LPLONG rglForceData;
		}
		typealias LPDICUSTOMFORCE = DICUSTOMFORCE*;
		typealias LPCDICUSTOMFORCE = DICUSTOMFORCE*;
		[CRepr]
		struct DIENVELOPE
		{
			DWORD dwSize;
			DWORD dwAttackLevel;
			DWORD dwAttackTime;
			DWORD dwFadeLevel;
			DWORD dwFadeTime;
		}
		typealias LPDIENVELOPE = DIENVELOPE*;
		typealias LPCDIENVELOPE = DIENVELOPE*;
		[CRepr]
		struct DIEFFECT_DX5
		{
			DWORD dwSize;
			DWORD dwFlags;
			DWORD dwDuration;
			DWORD dwSamplePeriod;
			DWORD dwGain;
			DWORD dwTriggerButton;
			DWORD dwTriggerRepeatInterval;
			DWORD cAxes;
			LPDWORD rgdwAxes;
			LPLONG rglDirection;
			LPDIENVELOPE lpEnvelope;
			DWORD cbTypeSpecificParams;
			LPVOID lpvTypeSpecificParams;
		}
		typealias LPDIEFFECT_DX5 = DIEFFECT_DX5*;
		typealias LPCDIEFFECT_DX5 = DIEFFECT_DX5*;
		[CRepr]
		struct DIEFFECT
		{
			DWORD dwSize;
			DWORD dwFlags;
			DWORD dwDuration;
			DWORD dwSamplePeriod;
			DWORD dwGain;
			DWORD dwTriggerButton;
			DWORD dwTriggerRepeatInterval;
			DWORD cAxes;
			LPDWORD rgdwAxes;
			LPLONG rglDirection;
			LPDIENVELOPE lpEnvelope;
			DWORD cbTypeSpecificParams;
			LPVOID lpvTypeSpecificParams;
//#if(DIRECTINPUT_VERSION >= 0x0600)
			DWORD dwStartDelay;
//#endif /* DIRECTINPUT_VERSION >= 0x0600 */
		}
		typealias LPDIEFFECT = DIEFFECT*;
		typealias LPCDIEFFECT = DIEFFECT*;

		typealias DIEFFECT_DX6 = DIEFFECT;
		typealias LPDIEFFECT_DX6 = LPDIEFFECT;
		[CRepr]
		struct DIEFFECTINFOA
		{
			DWORD dwSize;
			GUID guid;
			DWORD dwEffType;
			DWORD dwStaticParams;
			DWORD dwDynamicParams;
			CHAR[MAX_PATH] tszName;
		}
		typealias LPDIEFFECTINFOA = DIEFFECTINFOA*;
		typealias LPCDIEFFECTINFOA = DIEFFECTINFOA*;

		/*struct DIEFFECTINFOW {
			DWORD			dwSize;
			GUID			guid;
			DWORD			dwEffType;
			DWORD			dwStaticParams;
			DWORD			dwDynamicParams;
			WCHAR[MAX_PATH]			tszName;
		}
		typealias LPDIEFFECTINFOW = DIEFFECTINFOW *;
		typealias LPCDIEFFECTINFOW = DIEFFECTINFOW *;*/

		/*DECL_WINELIB_TYPE_AW(DIEFFECTINFO)
		DECL_WINELIB_TYPE_AW(LPDIEFFECTINFO)
		DECL_WINELIB_TYPE_AW(LPCDIEFFECTINFO)*/

		typealias LPDIENUMEFFECTSCALLBACKA = function BOOL(LPCDIEFFECTINFOA, LPVOID);
		//typedef BOOL (CALLBACK *LPDIENUMEFFECTSCALLBACKW)(LPCDIEFFECTINFOW, LPVOID);
		[CRepr]
		struct DIEFFESCAPE
		{
			DWORD dwSize;
			DWORD dwCommand;
			LPVOID lpvInBuffer;
			DWORD cbInBuffer;
			LPVOID lpvOutBuffer;
			DWORD cbOutBuffer;
		}
		typealias LPDIEFFESCAPE = DIEFFESCAPE*;
		[CRepr]
		public struct DIJOYSTATE
		{
			public LONG lX;
			public LONG lY;
			public LONG lZ;
			public LONG lRx;
			public LONG lRy;
			public LONG lRz;
			public LONG[2] rglSlider;
			public DWORD[4] rgdwPOV;
			public BYTE[32] rgbButtons;
		}
		typealias LPDIJOYSTATE = DIJOYSTATE*;
		[CRepr]
		public struct DIJOYSTATE2
		{
			public LONG lX;
			public LONG lY;
			public LONG lZ;
			public LONG lRx;
			public LONG lRy;
			public LONG lRz;
			public LONG[2] rglSlider;
			public DWORD[4] rgdwPOV;
			public BYTE[128] rgbButtons;
			public LONG lVX; /* 'v' as in velocity */
			public LONG lVY;
			public LONG lVZ;
			public LONG lVRx;
			public LONG lVRy;
			public LONG lVRz;
			public LONG[2] rglVSlider;
			public LONG lAX; /* 'a' as in acceleration */
			public LONG lAY;
			public LONG lAZ;
			public LONG lARx;
			public LONG lARy;
			public LONG lARz;
			public LONG[2] rglASlider;
			public LONG lFX; /* 'f' as in force */
			public LONG lFY;
			public LONG lFZ;
			public LONG lFRx; /* 'fr' as in rotational force aka torque */
			public LONG lFRy;
			public LONG lFRz;
			public LONG[2] rglFSlider;
		}
		typealias LPDIJOYSTATE2 = DIJOYSTATE2*;

		const int DIJOFS_X = offsetof(DIJOYSTATE, lX);
		const int DIJOFS_Y = offsetof(DIJOYSTATE, lY);
		const int DIJOFS_Z = offsetof(DIJOYSTATE, lZ);
		const int DIJOFS_RX = offsetof(DIJOYSTATE, lRx);
		const int DIJOFS_RY = offsetof(DIJOYSTATE, lRy);
		const int DIJOFS_RZ = offsetof(DIJOYSTATE, lRz);
		static uint32 DIJOFS_SLIDER(int n) => (.)(offsetof(DIJOYSTATE, rglSlider) + (n) * sizeof(LONG));
		static uint32 DIJOFS_POV(int n) => (.)(offsetof(DIJOYSTATE, rgdwPOV) + (n) * sizeof(DWORD));
		static uint32 DIJOFS_BUTTON(int n) => (.)(offsetof(DIJOYSTATE, rgbButtons) + (n));
		const int DIJOFS_BUTTON0 = DIJOFS_BUTTON(0);
		const int DIJOFS_BUTTON1 = DIJOFS_BUTTON(1);
		const int DIJOFS_BUTTON2 = DIJOFS_BUTTON(2);
		const int DIJOFS_BUTTON3 = DIJOFS_BUTTON(3);
		const int DIJOFS_BUTTON4 = DIJOFS_BUTTON(4);
		const int DIJOFS_BUTTON5 = DIJOFS_BUTTON(5);
		const int DIJOFS_BUTTON6 = DIJOFS_BUTTON(6);
		const int DIJOFS_BUTTON7 = DIJOFS_BUTTON(7);
		const int DIJOFS_BUTTON8 = DIJOFS_BUTTON(8);
		const int DIJOFS_BUTTON9 = DIJOFS_BUTTON(9);
		const int DIJOFS_BUTTON10 = DIJOFS_BUTTON(10);
		const int DIJOFS_BUTTON11 = DIJOFS_BUTTON(11);
		const int DIJOFS_BUTTON12 = DIJOFS_BUTTON(12);
		const int DIJOFS_BUTTON13 = DIJOFS_BUTTON(13);
		const int DIJOFS_BUTTON14 = DIJOFS_BUTTON(14);
		const int DIJOFS_BUTTON15 = DIJOFS_BUTTON(15);
		const int DIJOFS_BUTTON16 = DIJOFS_BUTTON(16);
		const int DIJOFS_BUTTON17 = DIJOFS_BUTTON(17);
		const int DIJOFS_BUTTON18 = DIJOFS_BUTTON(18);
		const int DIJOFS_BUTTON19 = DIJOFS_BUTTON(19);
		const int DIJOFS_BUTTON20 = DIJOFS_BUTTON(20);
		const int DIJOFS_BUTTON21 = DIJOFS_BUTTON(21);
		const int DIJOFS_BUTTON22 = DIJOFS_BUTTON(22);
		const int DIJOFS_BUTTON23 = DIJOFS_BUTTON(23);
		const int DIJOFS_BUTTON24 = DIJOFS_BUTTON(24);
		const int DIJOFS_BUTTON25 = DIJOFS_BUTTON(25);
		const int DIJOFS_BUTTON26 = DIJOFS_BUTTON(26);
		const int DIJOFS_BUTTON27 = DIJOFS_BUTTON(27);
		const int DIJOFS_BUTTON28 = DIJOFS_BUTTON(28);
		const int DIJOFS_BUTTON29 = DIJOFS_BUTTON(29);
		const int DIJOFS_BUTTON30 = DIJOFS_BUTTON(30);
		const int DIJOFS_BUTTON31 = DIJOFS_BUTTON(31);
//#endif /* DIRECTINPUT_VERSION >= 0x0500 */

		/* DInput 7 structures, types */
//#if(DIRECTINPUT_VERSION >= 0x0700)
		[CRepr]
		struct DIFILEEFFECT
		{
			DWORD dwSize;
			GUID GuidEffect;
			LPCDIEFFECT lpDiEffect;
			CHAR[MAX_PATH] szFriendlyName;
		}

		typealias LPDIFILEEFFECT = DIFILEEFFECT*;
		typealias LPCDIFILEEFFECT = DIFILEEFFECT*;
		typealias LPDIENUMEFFECTSINFILECALLBACK = function BOOL(LPCDIFILEEFFECT, LPVOID);
  //#endif /* DIRECTINPUT_VERSION >= 0x0700 */

		  /* DInput 8 structures and types */
  //#if DIRECTINPUT_VERSION >= 0x0800
		[CRepr]
		struct DIACTIONA
		{
			UINT_PTR uAppData;
			DWORD dwSemantic;
			DWORD dwFlags;
			int union;
			//__GNU_EXTENSION union {
			LPCSTR lptszActionName => (LPCSTR)(void*)union;
#unwarn
			UINT uResIdString => *(UINT*)&union;
			//} DUMMYUNIONNAME;
			GUID guidInstance;
			DWORD dwObjID;
			DWORD dwHow;
		}
		typealias LPDIACTIONA = DIACTIONA*;
		typealias LPCDIACTIONA = DIACTIONA*;

		/*struct DIACTIONW {
			UINT_PTR	uAppData;
			DWORD		dwSemantic;
			DWORD		dwFlags;
			__GNU_EXTENSION union {
				LPCWSTR	lptszActionName;
				UINT	uResIdString;
			} DUMMYUNIONNAME;
			GUID		guidInstance;
			DWORD		dwObjID;
			DWORD		dwHow;
		}
		typealias LPDIACTIONW = DIACTIONW *;
		typealias LPCDIACTIONW = DIACTIONW *;*/

		/*DECL_WINELIB_TYPE_AW(DIACTION)
		DECL_WINELIB_TYPE_AW(LPDIACTION)
		DECL_WINELIB_TYPE_AW(LPCDIACTION)*/

		const int DIA_FORCEFEEDBACK = 0x00000001;
		const int DIA_APPMAPPED = 0x00000002;
		const int DIA_APPNOMAP = 0x00000004;
		const int DIA_NORANGE = 0x00000008;
		const int DIA_APPFIXED = 0x00000010;

		const int DIAH_UNMAPPED = 0x00000000;
		const int DIAH_USERCONFIG = 0x00000001;
		const int DIAH_APPREQUESTED = 0x00000002;
		const int DIAH_HWAPP = 0x00000004;
		const int DIAH_HWDEFAULT = 0x00000008;
		const int DIAH_DEFAULT = 0x00000020;
		const int DIAH_ERROR = 0x80000000;

		[CRepr]
		struct DIACTIONFORMATA
		{
			DWORD dwSize;
			DWORD dwActionSize;
			DWORD dwDataSize;
			DWORD dwNumActions;
			LPDIACTIONA rgoAction;
			GUID guidActionMap;
			DWORD dwGenre;
			DWORD dwBufferSize;
			LONG lAxisMin;
			LONG lAxisMax;
			HINSTANCE hInstString;
			FILETIME ftTimeStamp;
			DWORD dwCRC;
			CHAR[MAX_PATH] tszActionMap;
		}
		typealias LPDIACTIONFORMATA = DIACTIONFORMATA*;
		typealias LPCDIACTIONFORMATA = DIACTIONFORMATA*;

		/*
		[CRepr]
		struct DIACTIONFORMATW {
			DWORD		dwSize;
			DWORD		dwActionSize;
			DWORD		dwDataSize;
			DWORD		dwNumActions;
			LPDIACTIONW	rgoAction;
			GUID		guidActionMap;
			DWORD		dwGenre;
			DWORD		dwBufferSize;
			LONG		lAxisMin;
			LONG		lAxisMax;
			HINSTANCE	hInstString;
			FILETIME	ftTimeStamp;
			DWORD		dwCRC;
			WCHAR[MAX_PATH]		tszActionMap;
		}
		typealias LPDIACTIONFORMATW = DIACTIONFORMATW *;
		typealias LPCDIACTIONFORMATW = DIACTIONFORMATW *;*/

		/*DECL_WINELIB_TYPE_AW(DIACTIONFORMAT)
		DECL_WINELIB_TYPE_AW(LPDIACTIONFORMAT)
		DECL_WINELIB_TYPE_AW(LPCDIACTIONFORMAT)*/

		const int DIAFTS_NEWDEVICELOW = 0xFFFFFFFF;
		const int DIAFTS_NEWDEVICEHIGH = 0xFFFFFFFF;
		const int DIAFTS_UNUSEDDEVICELOW = 0x00000000;
		const int DIAFTS_UNUSEDDEVICEHIGH = 0x00000000;

		const int DIDBAM_DEFAULT = 0x00000000;
		const int DIDBAM_PRESERVE = 0x00000001;
		const int DIDBAM_INITIALIZE = 0x00000002;
		const int DIDBAM_HWDEFAULTS = 0x00000004;

		const int DIDSAM_DEFAULT = 0x00000000;
		const int DIDSAM_NOUSER = 0x00000001;
		const int DIDSAM_FORCESAVE = 0x00000002;

		const int DICD_DEFAULT = 0x00000000;
		const int DICD_EDIT = 0x00000001;

//#ifndef D3DCOLOR_DEFINED
		typealias D3DCOLOR = DWORD;
//#define D3DCOLOR_DEFINED
//#endif
		[CRepr]
		struct DICOLORSET
		{
			DWORD dwSize;
			D3DCOLOR cTextFore;
			D3DCOLOR cTextHighlight;
			D3DCOLOR cCalloutLine;
			D3DCOLOR cCalloutHighlight;
			D3DCOLOR cBorder;
			D3DCOLOR cControlFill;
			D3DCOLOR cHighlightFill;
			D3DCOLOR cAreaFill;
		}
		typealias LPDICOLORSET = DICOLORSET*;
		typealias LPCDICOLORSET = DICOLORSET*;

		[CRepr]
		struct DICONFIGUREDEVICESPARAMSA
		{
			DWORD dwSize;
			DWORD dwcUsers;
			LPSTR lptszUserNames;
			DWORD dwcFormats;
			LPDIACTIONFORMATA lprgFormats;
			HWND hwnd;
			DICOLORSET dics;
			LPUNKNOWN lpUnkDDSTarget;
		}
		typealias LPDICONFIGUREDEVICESPARAMSA = DICONFIGUREDEVICESPARAMSA*;
		typealias LPCDICONFIGUREDEVICESPARAMSA = DICONFIGUREDEVICESPARAMSA*;

		/*[CRepr]
		struct DICONFIGUREDEVICESPARAMSW {
			DWORD			dwSize;
			DWORD			dwcUsers;
			LPWSTR			lptszUserNames;
			DWORD			dwcFormats;
			LPDIACTIONFORMATW	lprgFormats;
			HWND			hwnd;
			DICOLORSET		dics;
			LPUNKNOWN		lpUnkDDSTarget;
		}
		typealias LPDICONFIGUREDEVICESPARAMSW = DICONFIGUREDEVICESPARAMSW *;
		typealias LPCDICONFIGUREDEVICESPARAMSW = DICONFIGUREDEVICESPARAMSW *;*/

		/*DECL_WINELIB_TYPE_AW(DICONFIGUREDEVICESPARAMS)
		DECL_WINELIB_TYPE_AW(LPDICONFIGUREDEVICESPARAMS)
		DECL_WINELIB_TYPE_AW(LPCDICONFIGUREDEVICESPARAMS)*/

		const int DIDIFT_CONFIGURATION = 0x00000001;
		const int DIDIFT_OVERLAY = 0x00000002;

		const int DIDAL_CENTERED = 0x00000000;
		const int DIDAL_LEFTALIGNED = 0x00000001;
		const int DIDAL_RIGHTALIGNED = 0x00000002;
		const int DIDAL_MIDDLE = 0x00000000;
		const int DIDAL_TOPALIGNED = 0x00000004;
		const int DIDAL_BOTTOMALIGNED = 0x00000008;

		[CRepr]
		struct DIDEVICEIMAGEINFOA
		{
			CHAR[MAX_PATH] tszImagePath;
			DWORD dwFlags;
			DWORD dwViewID;
			RECT rcOverlay;
			DWORD dwObjID;
			DWORD dwcValidPts;
			POINT[5] rgptCalloutLine;
			RECT rcCalloutRect;
			DWORD dwTextAlign;
		}
		typealias LPDIDEVICEIMAGEINFOA = DIDEVICEIMAGEINFOA*;
		typealias LPCDIDEVICEIMAGEINFOA = DIDEVICEIMAGEINFOA*;

		[CRepr]
		struct DIDEVICEIMAGEINFOW
		{
			WCHAR[MAX_PATH] tszImagePath;
			DWORD dwFlags;
			DWORD dwViewID;
			RECT rcOverlay;
			DWORD dwObjID;
			DWORD dwcValidPts;
			POINT[5] rgptCalloutLine;
			RECT rcCalloutRect;
			DWORD dwTextAlign;
		}
		typealias LPDIDEVICEIMAGEINFOW = DIDEVICEIMAGEINFOW*;
		typealias LPCDIDEVICEIMAGEINFOW = DIDEVICEIMAGEINFOW*;

		/*DECL_WINELIB_TYPE_AW(DIDEVICEIMAGEINFO)
		DECL_WINELIB_TYPE_AW(LPDIDEVICEIMAGEINFO)
		DECL_WINELIB_TYPE_AW(LPCDIDEVICEIMAGEINFO)*/

		[CRepr]
		struct DIDEVICEIMAGEINFOHEADERA
		{
			DWORD dwSize;
			DWORD dwSizeImageInfo;
			DWORD dwcViews;
			DWORD dwcButtons;
			DWORD dwcAxes;
			DWORD dwcPOVs;
			DWORD dwBufferSize;
			DWORD dwBufferUsed;
			LPDIDEVICEIMAGEINFOA lprgImageInfoArray;
		}
		typealias LPDIDEVICEIMAGEINFOHEADERA = DIDEVICEIMAGEINFOHEADERA*;
		typealias LPCDIDEVICEIMAGEINFOHEADERA = DIDEVICEIMAGEINFOHEADERA*;

		[CRepr]
		struct DIDEVICEIMAGEINFOHEADERW
		{
			DWORD dwSize;
			DWORD dwSizeImageInfo;
			DWORD dwcViews;
			DWORD dwcButtons;
			DWORD dwcAxes;
			DWORD dwcPOVs;
			DWORD dwBufferSize;
			DWORD dwBufferUsed;
			LPDIDEVICEIMAGEINFOW lprgImageInfoArray;
		}
		typealias LPDIDEVICEIMAGEINFOHEADERW = DIDEVICEIMAGEINFOHEADERW*;
		typealias LPCDIDEVICEIMAGEINFOHEADERW = DIDEVICEIMAGEINFOHEADERW*;

		/*DECL_WINELIB_TYPE_AW(DIDEVICEIMAGEINFOHEADER)
		DECL_WINELIB_TYPE_AW(LPDIDEVICEIMAGEINFOHEADER)
		DECL_WINELIB_TYPE_AW(LPCDIDEVICEIMAGEINFOHEADER)*/

//#endif /* DI8 */


		/*****************************************************************************
		 * IDirectInputEffect interface
		 */
//#if (DIRECTINPUT_VERSION >= 0x0500)
//#undef INTERFACE
//#define INTERFACE IDirectInputEffect
		[CRepr]
		struct IUnknownVtbl
		{
			/*** IUnknown methods ***/
			public function HRESULT(IUnknown* _ref, REFIID riid, void** ppvObject) QueryInterface;
			public function ULONG(IUnknown* _ref) AddRef;
			public function ULONG(IUnknown* _ref) Release;
		}

		[CRepr]
		struct IUnknown
		{
			public IUnknownVtbl* lpVtbl;
		}

		[CRepr]
		struct IDirectInputEffectVtbl : IUnknownVtbl
		{
			/*** IDirectInputEffect methods ***/
			public function void(IDirectInputEffect* _ref, HINSTANCE, DWORD, REFGUID) Initialize;
			public function void(IDirectInputEffect* _ref, LPGUID) GetEffectGuid;
			public function void(IDirectInputEffect* _ref, LPDIEFFECT, DWORD) GetParameters;
			public function void(IDirectInputEffect* _ref, LPCDIEFFECT, DWORD) SetParameters;
			public function void(IDirectInputEffect* _ref, DWORD, DWORD) Start;
			public function void(IDirectInputEffect* _ref) Stop;
			public function void(IDirectInputEffect* _ref, LPDWORD) GetEffectStatus;
			public function void(IDirectInputEffect* _ref) Download;
			public function void(IDirectInputEffect* _ref) Unload;
			public function void(IDirectInputEffect* _ref, LPDIEFFESCAPE) Escape;
		}

		[CRepr]
		struct IDirectInputEffect
		{
			public IDirectInputEffectVtbl* lpVtbl;
		}

//#if !defined(__cplusplus) || defined(CINTERFACE)
		/*** IUnknown methods ***/
		static void IDirectInputEffect_QueryInterface(LPDIRECTINPUTEFFECT p, REFIID a, void** b) => (p).lpVtbl.QueryInterface((.)p, a, b);
		static void IDirectInputEffect_AddRef(LPDIRECTINPUTEFFECT p) => (p).lpVtbl.AddRef((.)p);
		static void IDirectInputEffect_Release(LPDIRECTINPUTEFFECT p) => (p).lpVtbl.Release((.)p);
		/*** IDirectInputEffect methods ***/
		static void IDirectInputEffect_Initialize(LPDIRECTINPUTEFFECT p, HINSTANCE a, DWORD b, REFGUID c) => (p).lpVtbl.Initialize(p, a, b, c);
		static void IDirectInputEffect_GetEffectGuid(LPDIRECTINPUTEFFECT p, LPGUID a) => (p).lpVtbl.GetEffectGuid(p, a);
		static void IDirectInputEffect_GetParameters(LPDIRECTINPUTEFFECT p, LPDIEFFECT a, DWORD b) => (p).lpVtbl.GetParameters(p, a, b);
		static void IDirectInputEffect_SetParameters(LPDIRECTINPUTEFFECT p, LPCDIEFFECT a, DWORD b) => (p).lpVtbl.SetParameters(p, a, b);
		static void IDirectInputEffect_Start(LPDIRECTINPUTEFFECT p, DWORD a, DWORD b) => (p).lpVtbl.Start(p, a, b);
		static void IDirectInputEffect_Stop(LPDIRECTINPUTEFFECT p) => (p).lpVtbl.Stop(p);
		static void IDirectInputEffect_GetEffectStatus(LPDIRECTINPUTEFFECT p, LPDWORD a) => (p).lpVtbl.GetEffectStatus(p, a);
		static void IDirectInputEffect_Download(LPDIRECTINPUTEFFECT p) => (p).lpVtbl.Download(p);
		static void IDirectInputEffect_Unload(LPDIRECTINPUTEFFECT p) => (p).lpVtbl.Unload(p);
		static void IDirectInputEffect_Escape(LPDIRECTINPUTEFFECT p, LPDIEFFESCAPE a) => (p).lpVtbl.Escape(p, a);
/*#else
		/*** IUnknown methods ***/
		#define IDirectInputEffect_QueryInterface(p,a,b) (p).QueryInterface(a,b)
		#define IDirectInputEffect_AddRef(p)             (p).AddRef()
		#define IDirectInputEffect_Release(p)            (p).Release()
		/*** IDirectInputEffect methods ***/
		#define IDirectInputEffect_Initialize(p,a,b,c)    (p).Initialize(a,b,c)
		#define IDirectInputEffect_GetEffectGuid(p,a)     (p).GetEffectGuid(a)
		#define IDirectInputEffect_GetParameters(p,a,b)   (p).GetParameters(a,b)
		#define IDirectInputEffect_SetParameters(p,a,b)   (p).SetParameters(a,b)
		#define IDirectInputEffect_Start(p,a,b)           (p).Start(a,b)
		#define IDirectInputEffect_Stop(p)                (p).Stop()
		#define IDirectInputEffect_GetEffectStatus(p,a)   (p).GetEffectStatus(a)
		#define IDirectInputEffect_Download(p)            (p).Download()
		#define IDirectInputEffect_Unload(p)              (p).Unload()
		#define IDirectInputEffect_Escape(p,a)            (p).Escape(a)
		#endif*/


//#endif /* DI5 */


		/*****************************************************************************
		 * IDirectInputDeviceA interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInputDeviceA
		[CRepr]
		struct IDirectInputDeviceAVtbl : IUnknownVtbl //DECLARE_INTERFACE_(IDirectInputDeviceA,IUnknown)
		{
			/*** IUnknown methods ***/
			/*function HRESULT(Self _ref, REFIID riid, void** ppvObject) QueryInterface;
			function ULONG(Self _ref) AddRef;
			function ULONG(Self _ref) Release;*/
			/*** IDirectInputDeviceA methods ***/
			public function void(IDirectInputDeviceA* _ref, LPDIDEVCAPS lpDIDevCaps) GetCapabilities;
			public function void(IDirectInputDeviceA* _ref, LPDIENUMDEVICEOBJECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) EnumObjects;
			public function void(IDirectInputDeviceA* _ref, REFGUID rguidProp, LPDIPROPHEADER pdiph) GetProperty;
			public function void(IDirectInputDeviceA* _ref, REFGUID rguidProp, LPCDIPROPHEADER pdiph) SetProperty;
			public function void(IDirectInputDeviceA* _ref) Acquire;
			public function void(IDirectInputDeviceA* _ref) Unacquire;
			public function void(IDirectInputDeviceA* _ref, DWORD cbData, LPVOID lpvData) GetDeviceState;
			public function void(IDirectInputDeviceA* _ref, DWORD cbObjectData, LPDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD dwFlags) GetDeviceData;
			public function void(IDirectInputDeviceA* _ref, LPCDIDATAFORMAT lpdf) SetDataFormat;
			public function void(IDirectInputDeviceA* _ref, HANDLE hEvent) SetEventNotification;
			public function void(IDirectInputDeviceA* _ref, HWND hwnd, DWORD dwFlags) SetCooperativeLevel;
			public function void(IDirectInputDeviceA* _ref, LPDIDEVICEOBJECTINSTANCEA pdidoi, DWORD dwObj, DWORD dwHow) GetObjectInfo;
			public function void(IDirectInputDeviceA* _ref, LPDIDEVICEINSTANCEA pdidi) GetDeviceInfo;
			public function void(IDirectInputDeviceA* _ref, HWND hwndOwner, DWORD dwFlags) RunControlPanel;
			public function void(IDirectInputDeviceA* _ref, HINSTANCE hinst, DWORD dwVersion, REFGUID rguid) Initialize;
		};

		[CRepr]
		struct IDirectInputDeviceA
		{
			public IDirectInputDeviceAVtbl* lpVtbl;
		}

		/*****************************************************************************
		 * IDirectInputDeviceW interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInputDeviceW
		/*DECLARE_INTERFACE_(IDirectInputDeviceW,IUnknown)
		{
			/*** IUnknown methods ***/
			STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;
			/*** IDirectInputDeviceW methods ***/
			STDMETHOD(GetCapabilities)(Self _ref, LPDIDEVCAPS lpDIDevCaps) PURE;
			STDMETHOD(EnumObjects)(Self _ref, LPDIENUMDEVICEOBJECTSCALLBACKW lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(GetProperty)(Self _ref, REFGUID rguidProp, LPDIPROPHEADER pdiph) PURE;
			STDMETHOD(SetProperty)(Self _ref, REFGUID rguidProp, LPCDIPROPHEADER pdiph) PURE;
			STDMETHOD(Acquire)(Self _ref) PURE;
			STDMETHOD(Unacquire)(Self _ref) PURE;
			STDMETHOD(GetDeviceState)(Self _ref, DWORD cbData, LPVOID lpvData) PURE;
			STDMETHOD(GetDeviceData)(Self _ref, DWORD cbObjectData, LPDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD dwFlags) PURE;
			STDMETHOD(SetDataFormat)(Self _ref, LPCDIDATAFORMAT lpdf) PURE;
			STDMETHOD(SetEventNotification)(Self _ref, HANDLE hEvent) PURE;
			STDMETHOD(SetCooperativeLevel)(Self _ref, HWND hwnd, DWORD dwFlags) PURE;
			STDMETHOD(GetObjectInfo)(Self _ref, LPDIDEVICEOBJECTINSTANCEW pdidoi, DWORD dwObj, DWORD dwHow) PURE;
			STDMETHOD(GetDeviceInfo)(Self _ref, LPDIDEVICEINSTANCEW pdidi) PURE;
			STDMETHOD(RunControlPanel)(Self _ref, HWND hwndOwner, DWORD dwFlags) PURE;
			STDMETHOD(Initialize)(Self _ref, HINSTANCE hinst, DWORD dwVersion, REFGUID rguid) PURE;
		};*/

//#if !defined(__cplusplus) || defined(CINTERFACE)
		/*** IUnknown methods ***/
		public static HRESULT IDirectInputDevice_QueryInterface(IDirectInputDeviceA* p, Guid* a, void** b) => (p).lpVtbl.QueryInterface((.)p, a, b);
		public static ULONG IDirectInputDevice_AddRef(IDirectInputDeviceA* p) => (p).lpVtbl.AddRef((.)p);
		public static ULONG IDirectInputDevice_Release(IDirectInputDeviceA* p) => (p).lpVtbl.Release((.)p);
		/*** IDirectInputDevice methods ***/
		public static void IDirectInputDevice_GetCapabilities(IDirectInputDeviceA* p, DIDEVCAPS* a) => (p).lpVtbl.GetCapabilities(p, a);
		public static void IDirectInputDevice_EnumObjects(IDirectInputDeviceA* p, LPDIENUMDEVICEOBJECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) => (p).lpVtbl.EnumObjects(p, lpCallback, pvRef, dwFlags);
		public static void IDirectInputDevice_GetProperty(IDirectInputDeviceA* p, REFGUID rguidProp, LPDIPROPHEADER pdiph) => (p).lpVtbl.GetProperty(p, rguidProp, pdiph);
		public static void IDirectInputDevice_SetProperty(IDirectInputDeviceA* p, REFGUID rguidProp, LPCDIPROPHEADER pdiph) => (p).lpVtbl.SetProperty(p, rguidProp, pdiph);
		public static void IDirectInputDevice_Acquire(IDirectInputDeviceA* p) => (p).lpVtbl.Acquire(p);
		public static void IDirectInputDevice_Unacquire(IDirectInputDeviceA* p) => (p).lpVtbl.Unacquire(p);
		public static void IDirectInputDevice_GetDeviceState(IDirectInputDeviceA* p, DWORD cbData, LPVOID lpvData) => (p).lpVtbl.GetDeviceState(p, cbData, lpvData);
		public static void IDirectInputDevice_GetDeviceData(IDirectInputDeviceA* p, DWORD cbObjectData, LPDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD dwFlags) => (p).lpVtbl.GetDeviceData(p, cbObjectData, rgdod, pdwInOut, dwFlags);
		public static void IDirectInputDevice_SetDataFormat(IDirectInputDeviceA* p, LPCDIDATAFORMAT lpdf) => (p).lpVtbl.SetDataFormat(p, lpdf);
		public static void IDirectInputDevice_SetEventNotification(IDirectInputDeviceA* p, HANDLE hEvent) => (p).lpVtbl.SetEventNotification(p, hEvent);
		public static void IDirectInputDevice_SetCooperativeLevel(IDirectInputDeviceA* p, HWND hwnd, DWORD dwFlags) => (p).lpVtbl.SetCooperativeLevel(p, hwnd, dwFlags);
		public static void IDirectInputDevice_GetObjectInfo(IDirectInputDeviceA* p, LPDIDEVICEOBJECTINSTANCEA pdidoi, DWORD dwObj, DWORD dwHow) => (p).lpVtbl.GetObjectInfo(p, pdidoi, dwObj, dwHow);
		public static void IDirectInputDevice_GetDeviceInfo(IDirectInputDeviceA* p, LPDIDEVICEINSTANCEA pdidi) => (p).lpVtbl.GetDeviceInfo(p, pdidi);
		public static void IDirectInputDevice_RunControlPanel(IDirectInputDeviceA* p, HWND hwndOwner, DWORD dwFlags) => (p).lpVtbl.RunControlPanel(p, hwndOwner, dwFlags);
		public static void IDirectInputDevice_Initialize(IDirectInputDeviceA* p, HINSTANCE hinst, DWORD dwVersion, REFGUID rguid) => (p).lpVtbl.Initialize(p, hinst, dwVersion, rguid);
/*#else
		/*** IUnknown methods ***/
		#define IDirectInputDevice_QueryInterface(p,a,b) (p).QueryInterface(a,b)
		#define IDirectInputDevice_AddRef(p)             (p).AddRef()
		#define IDirectInputDevice_Release(p)            (p).Release()
		/*** IDirectInputDevice methods ***/
		#define IDirectInputDevice_GetCapabilities(p,a)       (p).GetCapabilities(a)
		#define IDirectInputDevice_EnumObjects(p,a,b,c)       (p).EnumObjects(a,b,c)
		#define IDirectInputDevice_GetProperty(p,a,b)         (p).GetProperty(a,b)
		#define IDirectInputDevice_SetProperty(p,a,b)         (p).SetProperty(a,b)
		#define IDirectInputDevice_Acquire(p)                 (p).Acquire()
		#define IDirectInputDevice_Unacquire(p)               (p).Unacquire()
		#define IDirectInputDevice_GetDeviceState(p,a,b)      (p).GetDeviceState(a,b)
		#define IDirectInputDevice_GetDeviceData(p,a,b,c,d)   (p).GetDeviceData(a,b,c,d)
		#define IDirectInputDevice_SetDataFormat(p,a)         (p).SetDataFormat(a)
		#define IDirectInputDevice_SetEventNotification(p,a)  (p).SetEventNotification(a)
		#define IDirectInputDevice_SetCooperativeLevel(p,a,b) (p).SetCooperativeLevel(a,b)
		#define IDirectInputDevice_GetObjectInfo(p,a,b,c)     (p).GetObjectInfo(a,b,c)
		#define IDirectInputDevice_GetDeviceInfo(p,a)         (p).GetDeviceInfo(a)
		#define IDirectInputDevice_RunControlPanel(p,a,b)     (p).RunControlPanel(a,b)
		#define IDirectInputDevice_Initialize(p,a,b,c)        (p).Initialize(a,b,c)
		#endif*/


//#if (DIRECTINPUT_VERSION >= 0x0500)
		/*****************************************************************************
		 * IDirectInputDevice2A interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInputDevice2A
		[CRepr]
		struct /*DECLARE_INTERFACE_(*/ IDirectInputDevice2AVtbl : IDirectInputDeviceAVtbl
		{
			/*** IUnknown methods ***/
			/*STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;
			/*** IDirectInputDeviceA methods ***/
			STDMETHOD(GetCapabilities)(Self _ref, LPDIDEVCAPS lpDIDevCaps) PURE;
			STDMETHOD(EnumObjects)(Self _ref, LPDIENUMDEVICEOBJECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(GetProperty)(Self _ref, REFGUID rguidProp, LPDIPROPHEADER pdiph) PURE;
			STDMETHOD(SetProperty)(Self _ref, REFGUID rguidProp, LPCDIPROPHEADER pdiph) PURE;
			STDMETHOD(Acquire)(Self _ref) PURE;
			STDMETHOD(Unacquire)(Self _ref) PURE;
			STDMETHOD(GetDeviceState)(Self _ref, DWORD cbData, LPVOID lpvData) PURE;
			STDMETHOD(GetDeviceData)(Self _ref, DWORD cbObjectData, LPDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD dwFlags) PURE;
			STDMETHOD(SetDataFormat)(Self _ref, LPCDIDATAFORMAT lpdf) PURE;
			STDMETHOD(SetEventNotification)(Self _ref, HANDLE hEvent) PURE;
			STDMETHOD(SetCooperativeLevel)(Self _ref, HWND hwnd, DWORD dwFlags) PURE;
			STDMETHOD(GetObjectInfo)(Self _ref, LPDIDEVICEOBJECTINSTANCEA pdidoi, DWORD dwObj, DWORD dwHow) PURE;
			STDMETHOD(GetDeviceInfo)(Self _ref, LPDIDEVICEINSTANCEA pdidi) PURE;
			STDMETHOD(RunControlPanel)(Self _ref, HWND hwndOwner, DWORD dwFlags) PURE;
			STDMETHOD(Initialize)(Self _ref, HINSTANCE hinst, DWORD dwVersion, REFGUID rguid) PURE;*/
			/*** IDirectInputDevice2A methods ***/
			public function void(IDirectInputDevice2A* _ref, REFGUID rguid, LPCDIEFFECT lpeff, LPDIRECTINPUTEFFECT* ppdeff, LPUNKNOWN punkOuter) CreateEffect;
			public function void(IDirectInputDevice2A* _ref, LPDIENUMEFFECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwEffType) EnumEffects;
			public function void(IDirectInputDevice2A* _ref, LPDIEFFECTINFOA pdei, REFGUID rguid) GetEffectInfo;
			public function void(IDirectInputDevice2A* _ref, LPDWORD pdwOut) GetForceFeedbackState;
			public function void(IDirectInputDevice2A* _ref, DWORD dwFlags) SendForceFeedbackCommand;
			public function void(IDirectInputDevice2A* _ref, LPDIENUMCREATEDEFFECTOBJECTSCALLBACK lpCallback, LPVOID pvRef, DWORD fl) EnumCreatedEffectObjects;
			public function void(IDirectInputDevice2A* _ref, LPDIEFFESCAPE pesc) Escape;
			public function void(IDirectInputDevice2A* _ref) Poll;
			public function void(IDirectInputDevice2A* _ref, DWORD cbObjectData, LPCDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD fl) SendDeviceData;
		};

		[CRepr]
		struct IDirectInputDevice2A
		{
			public IDirectInputDevice2AVtbl* lpVtbl;
		}

		/*****************************************************************************
		 * IDirectInputDevice2W interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInputDevice2W
		/*DECLARE_INTERFACE_(IDirectInputDevice2W,IDirectInputDeviceW)
		{
			/*** IUnknown methods ***/
			STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;
			/*** IDirectInputDeviceW methods ***/
			STDMETHOD(GetCapabilities)(Self _ref, LPDIDEVCAPS lpDIDevCaps) PURE;
			STDMETHOD(EnumObjects)(Self _ref, LPDIENUMDEVICEOBJECTSCALLBACKW lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(GetProperty)(Self _ref, REFGUID rguidProp, LPDIPROPHEADER pdiph) PURE;
			STDMETHOD(SetProperty)(Self _ref, REFGUID rguidProp, LPCDIPROPHEADER pdiph) PURE;
			STDMETHOD(Acquire)(Self _ref) PURE;
			STDMETHOD(Unacquire)(Self _ref) PURE;
			STDMETHOD(GetDeviceState)(Self _ref, DWORD cbData, LPVOID lpvData) PURE;
			STDMETHOD(GetDeviceData)(Self _ref, DWORD cbObjectData, LPDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD dwFlags) PURE;
			STDMETHOD(SetDataFormat)(Self _ref, LPCDIDATAFORMAT lpdf) PURE;
			STDMETHOD(SetEventNotification)(Self _ref, HANDLE hEvent) PURE;
			STDMETHOD(SetCooperativeLevel)(Self _ref, HWND hwnd, DWORD dwFlags) PURE;
			STDMETHOD(GetObjectInfo)(Self _ref, LPDIDEVICEOBJECTINSTANCEW pdidoi, DWORD dwObj, DWORD dwHow) PURE;
			STDMETHOD(GetDeviceInfo)(Self _ref, LPDIDEVICEINSTANCEW pdidi) PURE;
			STDMETHOD(RunControlPanel)(Self _ref, HWND hwndOwner, DWORD dwFlags) PURE;
			STDMETHOD(Initialize)(Self _ref, HINSTANCE hinst, DWORD dwVersion, REFGUID rguid) PURE;
			/*** IDirectInputDevice2W methods ***/
			STDMETHOD(CreateEffect)(Self _ref, REFGUID rguid, LPCDIEFFECT lpeff, LPDIRECTINPUTEFFECT *ppdeff, LPUNKNOWN punkOuter) PURE;
			STDMETHOD(EnumEffects)(Self _ref, LPDIENUMEFFECTSCALLBACKW lpCallback, LPVOID pvRef, DWORD dwEffType) PURE;
			STDMETHOD(GetEffectInfo)(Self _ref, LPDIEFFECTINFOW pdei, REFGUID rguid) PURE;
			STDMETHOD(GetForceFeedbackState)(Self _ref, LPDWORD pdwOut) PURE;
			STDMETHOD(SendForceFeedbackCommand)(Self _ref, DWORD dwFlags) PURE;
			STDMETHOD(EnumCreatedEffectObjects)(Self _ref, LPDIENUMCREATEDEFFECTOBJECTSCALLBACK lpCallback, LPVOID pvRef, DWORD fl) PURE;
			STDMETHOD(Escape)(Self _ref, LPDIEFFESCAPE pesc) PURE;
			STDMETHOD(Poll)(Self _ref) PURE;
			STDMETHOD(SendDeviceData)(Self _ref, DWORD cbObjectData, LPCDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD fl) PURE;
		};*/

//#if !defined(__cplusplus) || defined(CINTERFACE)
		/*** IUnknown methods ***/
		static HRESULT IDirectInputDevice2_QueryInterface(IDirectInputDevice2A* p, Guid* a, void** b) => (p).lpVtbl.QueryInterface((.)p, a, b);
		static ULONG IDirectInputDevice2_AddRef(IDirectInputDevice2A* p) => (p).lpVtbl.AddRef((.)p);
		static ULONG IDirectInputDevice2_Release(IDirectInputDevice2A* p) => (p).lpVtbl.Release((.)p);
		/*** IDirectInputDevice2 methods ***/
		static void IDirectInputDevice2_GetCapabilities(IDirectInputDevice2A* p, DIDEVCAPS* a) => (p).lpVtbl.GetCapabilities((.)p, a);
		static void IDirectInputDevice2_EnumObjects(IDirectInputDevice2A* p, LPDIENUMDEVICEOBJECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) => (p).lpVtbl.EnumObjects((.)p, lpCallback, pvRef, dwFlags);
		static void IDirectInputDevice2_GetProperty(IDirectInputDevice2A* p, REFGUID rguidProp, LPDIPROPHEADER pdiph) => (p).lpVtbl.GetProperty((.)p, rguidProp, pdiph);
		static void IDirectInputDevice2_SetProperty(IDirectInputDevice2A* p, REFGUID rguidProp, LPCDIPROPHEADER pdiph) => (p).lpVtbl.SetProperty((.)p, rguidProp, pdiph);
		static void IDirectInputDevice2_Acquire(IDirectInputDevice2A* p) => (p).lpVtbl.Acquire((.)p);
		static void IDirectInputDevice2_Unacquire(IDirectInputDevice2A* p) => (p).lpVtbl.Unacquire((.)p);
		static void IDirectInputDevice2_GetDeviceState(IDirectInputDevice2A* p, DWORD cbData, LPVOID lpvData) => (p).lpVtbl.GetDeviceState((.)p, cbData, lpvData);
		static void IDirectInputDevice2_GetDeviceData(IDirectInputDevice2A* p, DWORD cbObjectData, LPDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD dwFlags) => (p).lpVtbl.GetDeviceData((.)p, cbObjectData, rgdod, pdwInOut, dwFlags);
		static void IDirectInputDevice2_SetDataFormat(IDirectInputDevice2A* p, LPCDIDATAFORMAT lpdf) => (p).lpVtbl.SetDataFormat((.)p, lpdf);
		static void IDirectInputDevice2_SetEventNotification(IDirectInputDevice2A* p, HANDLE hEvent) => (p).lpVtbl.SetEventNotification((.)p, hEvent);
		static void IDirectInputDevice2_SetCooperativeLevel(IDirectInputDevice2A* p, HWND hwnd, DWORD dwFlags) => (p).lpVtbl.SetCooperativeLevel((.)p, hwnd, dwFlags);
		static void IDirectInputDevice2_GetObjectInfo(IDirectInputDevice2A* p, LPDIDEVICEOBJECTINSTANCEA pdidoi, DWORD dwObj, DWORD dwHow) => (p).lpVtbl.GetObjectInfo((.)p, pdidoi, dwObj, dwHow);
		static void IDirectInputDevice2_GetDeviceInfo(IDirectInputDevice2A* p, LPDIDEVICEINSTANCEA pdidi) => (p).lpVtbl.GetDeviceInfo((.)p, pdidi);
		static void IDirectInputDevice2_RunControlPanel(IDirectInputDevice2A* p, HWND hwndOwner, DWORD dwFlags) => (p).lpVtbl.RunControlPanel((.)p, hwndOwner, dwFlags);
		static void IDirectInputDevice2_Initialize(IDirectInputDevice2A* p, HINSTANCE hinst, DWORD dwVersion, REFGUID rguid) => (p).lpVtbl.Initialize((.)p, hinst, dwVersion, rguid);
		/*** IDirectInputDevice2 methods ***/
		static void IDirectInputDevice2_CreateEffect(IDirectInputDevice2A* _ref, REFGUID rguid, LPCDIEFFECT lpeff, LPDIRECTINPUTEFFECT* ppdeff, LPUNKNOWN punkOuter) => _ref.lpVtbl.CreateEffect(_ref, rguid, lpeff, ppdeff, punkOuter);
		static void IDirectInputDevice2_EnumEffects(IDirectInputDevice2A* _ref, LPDIENUMEFFECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwEffType) => _ref.lpVtbl.EnumEffects(_ref, lpCallback, pvRef, dwEffType);
		static void IDirectInputDevice2_GetEffectInfo(IDirectInputDevice2A* _ref, LPDIEFFECTINFOA pdei, REFGUID rguid) => _ref.lpVtbl.GetEffectInfo(_ref, pdei, rguid);
		static void IDirectInputDevice2_GetForceFeedbackState(IDirectInputDevice2A* _ref, LPDWORD pdwOut) => _ref.lpVtbl.GetForceFeedbackState(_ref, pdwOut);
		static void IDirectInputDevice2_SendForceFeedbackCommand(IDirectInputDevice2A* _ref, DWORD dwFlags) => _ref.lpVtbl.SendForceFeedbackCommand(_ref, dwFlags);
		static void IDirectInputDevice2_EnumCreatedEffectObjects(IDirectInputDevice2A* _ref, LPDIENUMCREATEDEFFECTOBJECTSCALLBACK lpCallback, LPVOID pvRef, DWORD fl) => _ref.lpVtbl.EnumCreatedEffectObjects(_ref, lpCallback, pvRef, fl);
		static void IDirectInputDevice2_Escape(IDirectInputDevice2A* _ref, LPDIEFFESCAPE pesc) => _ref.lpVtbl.Escape(_ref, pesc);
		static void IDirectInputDevice2_Poll(IDirectInputDevice2A* _ref) => _ref.lpVtbl.Poll(_ref);
		static void IDirectInputDevice2_SendDeviceData(IDirectInputDevice2A* _ref, DWORD cbObjectData, LPCDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD fl) => _ref.lpVtbl.SendDeviceData(_ref, cbObjectData, rgdod, pdwInOut, fl);
/*#else
		/*** IUnknown methods ***/
		#define IDirectInputDevice2_QueryInterface(p,a,b) (p).QueryInterface(a,b)
		#define IDirectInputDevice2_AddRef(p)             (p).AddRef()
		#define IDirectInputDevice2_Release(p)            (p).Release()
		/*** IDirectInputDevice methods ***/
		#define IDirectInputDevice2_GetCapabilities(p,a)       (p).GetCapabilities(a)
		#define IDirectInputDevice2_EnumObjects(p,a,b,c)       (p).EnumObjects(a,b,c)
		#define IDirectInputDevice2_GetProperty(p,a,b)         (p).GetProperty(a,b)
		#define IDirectInputDevice2_SetProperty(p,a,b)         (p).SetProperty(a,b)
		#define IDirectInputDevice2_Acquire(p)                 (p).Acquire()
		#define IDirectInputDevice2_Unacquire(p)               (p).Unacquire()
		#define IDirectInputDevice2_GetDeviceState(p,a,b)      (p).GetDeviceState(a,b)
		#define IDirectInputDevice2_GetDeviceData(p,a,b,c,d)   (p).GetDeviceData(a,b,c,d)
		#define IDirectInputDevice2_SetDataFormat(p,a)         (p).SetDataFormat(a)
		#define IDirectInputDevice2_SetEventNotification(p,a)  (p).SetEventNotification(a)
		#define IDirectInputDevice2_SetCooperativeLevel(p,a,b) (p).SetCooperativeLevel(a,b)
		#define IDirectInputDevice2_GetObjectInfo(p,a,b,c)     (p).GetObjectInfo(a,b,c)
		#define IDirectInputDevice2_GetDeviceInfo(p,a)         (p).GetDeviceInfo(a)
		#define IDirectInputDevice2_RunControlPanel(p,a,b)     (p).RunControlPanel(a,b)
		#define IDirectInputDevice2_Initialize(p,a,b,c)        (p).Initialize(a,b,c)
		/*** IDirectInputDevice2 methods ***/
		#define IDirectInputDevice2_CreateEffect(p,a,b,c,d)           (p).CreateEffect(a,b,c,d)
		#define IDirectInputDevice2_EnumEffects(p,a,b,c)              (p).EnumEffects(a,b,c)
		#define IDirectInputDevice2_GetEffectInfo(p,a,b)              (p).GetEffectInfo(a,b)
		#define IDirectInputDevice2_GetForceFeedbackState(p,a)        (p).GetForceFeedbackState(a)
		#define IDirectInputDevice2_SendForceFeedbackCommand(p,a)     (p).SendForceFeedbackCommand(a)
		#define IDirectInputDevice2_EnumCreatedEffectObjects(p,a,b,c) (p).EnumCreatedEffectObjects(a,b,c)
		#define IDirectInputDevice2_Escape(p,a)                       (p).Escape(a)
		#define IDirectInputDevice2_Poll(p)                           (p).Poll()
		#define IDirectInputDevice2_SendDeviceData(p,a,b,c,d)         (p).SendDeviceData(a,b,c,d)
		#endif
		#endif /* DI5 */*/

//#if DIRECTINPUT_VERSION >= 0x0700
		/*****************************************************************************
		 * IDirectInputDevice7A interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInputDevice7A
		[CRepr]
		struct IDirectInputDevice7AVtbl : IDirectInputDevice2AVtbl
		{
			/*** IUnknown methods ***/
			/*STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;
			/*** IDirectInputDeviceA methods ***/
			STDMETHOD(GetCapabilities)(Self _ref, LPDIDEVCAPS lpDIDevCaps) PURE;
			STDMETHOD(EnumObjects)(Self _ref, LPDIENUMDEVICEOBJECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(GetProperty)(Self _ref, REFGUID rguidProp, LPDIPROPHEADER pdiph) PURE;
			STDMETHOD(SetProperty)(Self _ref, REFGUID rguidProp, LPCDIPROPHEADER pdiph) PURE;
			STDMETHOD(Acquire)(Self _ref) PURE;
			STDMETHOD(Unacquire)(Self _ref) PURE;
			STDMETHOD(GetDeviceState)(Self _ref, DWORD cbData, LPVOID lpvData) PURE;
			STDMETHOD(GetDeviceData)(Self _ref, DWORD cbObjectData, LPDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD dwFlags) PURE;
			STDMETHOD(SetDataFormat)(Self _ref, LPCDIDATAFORMAT lpdf) PURE;
			STDMETHOD(SetEventNotification)(Self _ref, HANDLE hEvent) PURE;
			STDMETHOD(SetCooperativeLevel)(Self _ref, HWND hwnd, DWORD dwFlags) PURE;
			STDMETHOD(GetObjectInfo)(Self _ref, LPDIDEVICEOBJECTINSTANCEA pdidoi, DWORD dwObj, DWORD dwHow) PURE;
			STDMETHOD(GetDeviceInfo)(Self _ref, LPDIDEVICEINSTANCEA pdidi) PURE;
			STDMETHOD(RunControlPanel)(Self _ref, HWND hwndOwner, DWORD dwFlags) PURE;
			STDMETHOD(Initialize)(Self _ref, HINSTANCE hinst, DWORD dwVersion, REFGUID rguid) PURE;
			/*** IDirectInputDevice2A methods ***/
			STDMETHOD(CreateEffect)(Self _ref, REFGUID rguid, LPCDIEFFECT lpeff, LPDIRECTINPUTEFFECT *ppdeff, LPUNKNOWN punkOuter) PURE;
			STDMETHOD(EnumEffects)(Self _ref, LPDIENUMEFFECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwEffType) PURE;
			STDMETHOD(GetEffectInfo)(Self _ref, LPDIEFFECTINFOA pdei, REFGUID rguid) PURE;
			STDMETHOD(GetForceFeedbackState)(Self _ref, LPDWORD pdwOut) PURE;
			STDMETHOD(SendForceFeedbackCommand)(Self _ref, DWORD dwFlags) PURE;
			STDMETHOD(EnumCreatedEffectObjects)(Self _ref, LPDIENUMCREATEDEFFECTOBJECTSCALLBACK lpCallback, LPVOID pvRef, DWORD fl) PURE;
			STDMETHOD(Escape)(Self _ref, LPDIEFFESCAPE pesc) PURE;
			STDMETHOD(Poll)(Self _ref) PURE;
			STDMETHOD(SendDeviceData)(Self _ref, DWORD cbObjectData, LPCDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD fl) PURE;*/
			/*** IDirectInputDevice7A methods ***/
			public function void(IDirectInputDevice7A* _ref, LPCSTR lpszFileName, LPDIENUMEFFECTSINFILECALLBACK pec, LPVOID pvRef, DWORD dwFlags) EnumEffectsInFile;
			public function void(IDirectInputDevice7A* _ref, LPCSTR lpszFileName, DWORD dwEntries, LPDIFILEEFFECT rgDiFileEft, DWORD dwFlags) WriteEffectToFile;
		};

		[CRepr]
		struct IDirectInputDevice7A
		{
			public IDirectInputDevice7AVtbl* lpVtbl;
		}

		/*****************************************************************************
		 * IDirectInputDevice7W interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInputDevice7W
		/*DECLARE_INTERFACE_(IDirectInputDevice7W,IDirectInputDevice2W)
		{
			/*** IUnknown methods ***/
			STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;
			/*** IDirectInputDeviceW methods ***/
			STDMETHOD(GetCapabilities)(Self _ref, LPDIDEVCAPS lpDIDevCaps) PURE;
			STDMETHOD(EnumObjects)(Self _ref, LPDIENUMDEVICEOBJECTSCALLBACKW lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(GetProperty)(Self _ref, REFGUID rguidProp, LPDIPROPHEADER pdiph) PURE;
			STDMETHOD(SetProperty)(Self _ref, REFGUID rguidProp, LPCDIPROPHEADER pdiph) PURE;
			STDMETHOD(Acquire)(Self _ref) PURE;
			STDMETHOD(Unacquire)(Self _ref) PURE;
			STDMETHOD(GetDeviceState)(Self _ref, DWORD cbData, LPVOID lpvData) PURE;
			STDMETHOD(GetDeviceData)(Self _ref, DWORD cbObjectData, LPDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD dwFlags) PURE;
			STDMETHOD(SetDataFormat)(Self _ref, LPCDIDATAFORMAT lpdf) PURE;
			STDMETHOD(SetEventNotification)(Self _ref, HANDLE hEvent) PURE;
			STDMETHOD(SetCooperativeLevel)(Self _ref, HWND hwnd, DWORD dwFlags) PURE;
			STDMETHOD(GetObjectInfo)(Self _ref, LPDIDEVICEOBJECTINSTANCEW pdidoi, DWORD dwObj, DWORD dwHow) PURE;
			STDMETHOD(GetDeviceInfo)(Self _ref, LPDIDEVICEINSTANCEW pdidi) PURE;
			STDMETHOD(RunControlPanel)(Self _ref, HWND hwndOwner, DWORD dwFlags) PURE;
			STDMETHOD(Initialize)(Self _ref, HINSTANCE hinst, DWORD dwVersion, REFGUID rguid) PURE;
			/*** IDirectInputDevice2W methods ***/
			STDMETHOD(CreateEffect)(Self _ref, REFGUID rguid, LPCDIEFFECT lpeff, LPDIRECTINPUTEFFECT *ppdeff, LPUNKNOWN punkOuter) PURE;
			STDMETHOD(EnumEffects)(Self _ref, LPDIENUMEFFECTSCALLBACKW lpCallback, LPVOID pvRef, DWORD dwEffType) PURE;
			STDMETHOD(GetEffectInfo)(Self _ref, LPDIEFFECTINFOW pdei, REFGUID rguid) PURE;
			STDMETHOD(GetForceFeedbackState)(Self _ref, LPDWORD pdwOut) PURE;
			STDMETHOD(SendForceFeedbackCommand)(Self _ref, DWORD dwFlags) PURE;
			STDMETHOD(EnumCreatedEffectObjects)(Self _ref, LPDIENUMCREATEDEFFECTOBJECTSCALLBACK lpCallback, LPVOID pvRef, DWORD fl) PURE;
			STDMETHOD(Escape)(Self _ref, LPDIEFFESCAPE pesc) PURE;
			STDMETHOD(Poll)(Self _ref) PURE;
			STDMETHOD(SendDeviceData)(Self _ref, DWORD cbObjectData, LPCDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD fl) PURE;
			/*** IDirectInputDevice7W methods ***/
			STDMETHOD(EnumEffectsInFile)(Self _ref, LPCWSTR lpszFileName,LPDIENUMEFFECTSINFILECALLBACK pec,LPVOID pvRef,DWORD dwFlags) PURE;
			STDMETHOD(WriteEffectToFile)(Self _ref, LPCWSTR lpszFileName,DWORD dwEntries,LPDIFILEEFFECT rgDiFileEft,DWORD dwFlags) PURE;
		};*/

//#if !defined(__cplusplus) || defined(CINTERFACE)
		/*** IUnknown methods ***/
		static HRESULT IDirectInputDevice7_QueryInterface(IDirectInputDevice7A* _ref, Guid* a, void** b) => _ref.lpVtbl.QueryInterface((.)_ref, a, b);
		static ULONG IDirectInputDevice7_AddRef(IDirectInputDevice7A* _ref) => _ref.lpVtbl.AddRef((.)_ref);
		static ULONG IDirectInputDevice7_Release(IDirectInputDevice7A* _ref) => _ref.lpVtbl.Release((.)_ref);
		/*** IDirectInputDevice2 methods ***/
		static void IDirectInputDevice7_GetCapabilities(IDirectInputDevice7A* _ref, DIDEVCAPS* a) => _ref.lpVtbl.GetCapabilities((.)_ref, a);
		static void IDirectInputDevice7_EnumObjects(IDirectInputDevice7A* _ref, LPDIENUMDEVICEOBJECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) => _ref.lpVtbl.EnumObjects((.)_ref, lpCallback, pvRef, dwFlags);
		static void IDirectInputDevice7_GetProperty(IDirectInputDevice7A* _ref, REFGUID rguidProp, LPDIPROPHEADER pdiph) => _ref.lpVtbl.GetProperty((.)_ref, rguidProp, pdiph);
		static void IDirectInputDevice7_SetProperty(IDirectInputDevice7A* _ref, REFGUID rguidProp, LPCDIPROPHEADER pdiph) => _ref.lpVtbl.SetProperty((.)_ref, rguidProp, pdiph);
		static void IDirectInputDevice7_Acquire(IDirectInputDevice7A* _ref) => _ref.lpVtbl.Acquire((.)_ref);
		static void IDirectInputDevice7_Unacquire(IDirectInputDevice7A* _ref) => _ref.lpVtbl.Unacquire((.)_ref);
		static void IDirectInputDevice7_GetDeviceState(IDirectInputDevice7A* _ref, DWORD cbData, LPVOID lpvData) => _ref.lpVtbl.GetDeviceState((.)_ref, cbData, lpvData);
		static void IDirectInputDevice7_GetDeviceData(IDirectInputDevice7A* _ref, DWORD cbObjectData, LPDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD dwFlags) => _ref.lpVtbl.GetDeviceData((.)_ref, cbObjectData, rgdod, pdwInOut, dwFlags);
		static void IDirectInputDevice7_SetDataFormat(IDirectInputDevice7A* _ref, LPCDIDATAFORMAT lpdf) => _ref.lpVtbl.SetDataFormat((.)_ref, lpdf);
		static void IDirectInputDevice7_SetEventNotification(IDirectInputDevice7A* _ref, HANDLE hEvent) => _ref.lpVtbl.SetEventNotification((.)_ref, hEvent);
		static void IDirectInputDevice7_SetCooperativeLevel(IDirectInputDevice7A* _ref, HWND hwnd, DWORD dwFlags) => _ref.lpVtbl.SetCooperativeLevel((.)_ref, hwnd, dwFlags);
		static void IDirectInputDevice7_GetObjectInfo(IDirectInputDevice7A* _ref, LPDIDEVICEOBJECTINSTANCEA pdidoi, DWORD dwObj, DWORD dwHow) => _ref.lpVtbl.GetObjectInfo((.)_ref, pdidoi, dwObj, dwHow);
		static void IDirectInputDevice7_GetDeviceInfo(IDirectInputDevice7A* _ref, LPDIDEVICEINSTANCEA pdidi) => _ref.lpVtbl.GetDeviceInfo((.)_ref, pdidi);
		static void IDirectInputDevice7_RunControlPanel(IDirectInputDevice7A* _ref, HWND hwndOwner, DWORD dwFlags) => _ref.lpVtbl.RunControlPanel((.)_ref, hwndOwner, dwFlags);
		static void IDirectInputDevice7_Initialize(IDirectInputDevice7A* _ref, HINSTANCE hinst, DWORD dwVersion, REFGUID rguid) => _ref.lpVtbl.Initialize((.)_ref, hinst, dwVersion, rguid);
		/*** IDirectInputDevice2 methods ***/
		static void IDirectInputDevice7_CreateEffect(IDirectInputDevice7A* _ref, REFGUID rguid, LPCDIEFFECT lpeff, LPDIRECTINPUTEFFECT* ppdeff, LPUNKNOWN punkOuter) => _ref.lpVtbl.CreateEffect((.)_ref, rguid, lpeff, ppdeff, punkOuter);
		static void IDirectInputDevice7_EnumEffects(IDirectInputDevice7A* _ref, LPDIENUMEFFECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwEffType) => _ref.lpVtbl.EnumEffects((.)_ref, lpCallback, pvRef, dwEffType);
		static void IDirectInputDevice7_GetEffectInfo(IDirectInputDevice7A* _ref, LPDIEFFECTINFOA pdei, REFGUID rguid) => _ref.lpVtbl.GetEffectInfo((.)_ref, pdei, rguid);
		static void IDirectInputDevice7_GetForceFeedbackState(IDirectInputDevice7A* _ref, LPDWORD pdwOut) => _ref.lpVtbl.GetForceFeedbackState((.)_ref, pdwOut);
		static void IDirectInputDevice7_SendForceFeedbackCommand(IDirectInputDevice7A* _ref, DWORD dwFlags) => _ref.lpVtbl.SendForceFeedbackCommand((.)_ref, dwFlags);
		static void IDirectInputDevice7_EnumCreatedEffectObjects(IDirectInputDevice7A* _ref, LPDIENUMCREATEDEFFECTOBJECTSCALLBACK lpCallback, LPVOID pvRef, DWORD fl) => _ref.lpVtbl.EnumCreatedEffectObjects((.)_ref, lpCallback, pvRef, fl);
		static void IDirectInputDevice7_Escape(IDirectInputDevice7A* _ref, LPDIEFFESCAPE pesc) => _ref.lpVtbl.Escape((.)_ref, pesc);
		static void IDirectInputDevice7_Poll(IDirectInputDevice7A* _ref) => _ref.lpVtbl.Poll((.)_ref);
		static void IDirectInputDevice7_SendDeviceData(IDirectInputDevice7A* _ref, DWORD cbObjectData, LPCDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD fl) => _ref.lpVtbl.SendDeviceData((.)_ref, cbObjectData, rgdod, pdwInOut, fl);
		/*** IDirectInputDevice7 methods ***/
		static void IDirectInputDevice7_EnumEffectsInFile(IDirectInputDevice7A* _ref, LPCSTR lpszFileName, LPDIENUMEFFECTSINFILECALLBACK pec, LPVOID pvRef, DWORD dwFlags) => _ref.lpVtbl.EnumEffectsInFile(_ref, lpszFileName, pec, pvRef, dwFlags);
		static void IDirectInputDevice7_WriteEffectToFile(IDirectInputDevice7A* _ref, LPCSTR lpszFileName, DWORD dwEntries, LPDIFILEEFFECT rgDiFileEft, DWORD dwFlags) => _ref.lpVtbl.WriteEffectToFile(_ref, lpszFileName, dwEntries, rgDiFileEft, dwFlags);
/*#else
		/*** IUnknown methods ***/
		#define IDirectInputDevice7_QueryInterface(p,a,b) (p).QueryInterface(a,b)
		#define IDirectInputDevice7_AddRef(p)             (p).AddRef()
		#define IDirectInputDevice7_Release(p)            (p).Release()
		/*** IDirectInputDevice methods ***/
		#define IDirectInputDevice7_GetCapabilities(p,a)       (p).GetCapabilities(a)
		#define IDirectInputDevice7_EnumObjects(p,a,b,c)       (p).EnumObjects(a,b,c)
		#define IDirectInputDevice7_GetProperty(p,a,b)         (p).GetProperty(a,b)
		#define IDirectInputDevice7_SetProperty(p,a,b)         (p).SetProperty(a,b)
		#define IDirectInputDevice7_Acquire(p)                 (p).Acquire()
		#define IDirectInputDevice7_Unacquire(p)               (p).Unacquire()
		#define IDirectInputDevice7_GetDeviceState(p,a,b)      (p).GetDeviceState(a,b)
		#define IDirectInputDevice7_GetDeviceData(p,a,b,c,d)   (p).GetDeviceData(a,b,c,d)
		#define IDirectInputDevice7_SetDataFormat(p,a)         (p).SetDataFormat(a)
		#define IDirectInputDevice7_SetEventNotification(p,a)  (p).SetEventNotification(a)
		#define IDirectInputDevice7_SetCooperativeLevel(p,a,b) (p).SetCooperativeLevel(a,b)
		#define IDirectInputDevice7_GetObjectInfo(p,a,b,c)     (p).GetObjectInfo(a,b,c)
		#define IDirectInputDevice7_GetDeviceInfo(p,a)         (p).GetDeviceInfo(a)
		#define IDirectInputDevice7_RunControlPanel(p,a,b)     (p).RunControlPanel(a,b)
		#define IDirectInputDevice7_Initialize(p,a,b,c)        (p).Initialize(a,b,c)
		/*** IDirectInputDevice2 methods ***/
		#define IDirectInputDevice7_CreateEffect(p,a,b,c,d)           (p).CreateEffect(a,b,c,d)
		#define IDirectInputDevice7_EnumEffects(p,a,b,c)              (p).EnumEffects(a,b,c)
		#define IDirectInputDevice7_GetEffectInfo(p,a,b)              (p).GetEffectInfo(a,b)
		#define IDirectInputDevice7_GetForceFeedbackState(p,a)        (p).GetForceFeedbackState(a)
		#define IDirectInputDevice7_SendForceFeedbackCommand(p,a)     (p).SendForceFeedbackCommand(a)
		#define IDirectInputDevice7_EnumCreatedEffectObjects(p,a,b,c) (p).EnumCreatedEffectObjects(a,b,c)
		#define IDirectInputDevice7_Escape(p,a)                       (p).Escape(a)
		#define IDirectInputDevice7_Poll(p)                           (p).Poll()
		#define IDirectInputDevice7_SendDeviceData(p,a,b,c,d)         (p).SendDeviceData(a,b,c,d)
		/*** IDirectInputDevice7 methods ***/
		#define IDirectInputDevice7_EnumEffectsInFile(p,a,b,c,d) (p).EnumEffectsInFile(a,b,c,d)
		#define IDirectInputDevice7_WriteEffectToFile(p,a,b,c,d) (p).WriteEffectToFile(a,b,c,d)
		#endif*/

//#endif /* DI7 */

//#if DIRECTINPUT_VERSION >= 0x0800
		/*****************************************************************************
		 * IDirectInputDevice8A interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInputDevice8A
		[CRepr]
		public struct IDirectInputDevice8AVtbl : IDirectInputDevice7AVtbl
		{
			/*** IUnknown methods ***/
			/*STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;
			/*** IDirectInputDeviceA methods ***/
			STDMETHOD(GetCapabilities)(Self _ref, LPDIDEVCAPS lpDIDevCaps) PURE;
			STDMETHOD(EnumObjects)(Self _ref, LPDIENUMDEVICEOBJECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(GetProperty)(Self _ref, REFGUID rguidProp, LPDIPROPHEADER pdiph) PURE;
			STDMETHOD(SetProperty)(Self _ref, REFGUID rguidProp, LPCDIPROPHEADER pdiph) PURE;
			STDMETHOD(Acquire)(Self _ref) PURE;
			STDMETHOD(Unacquire)(Self _ref) PURE;
			STDMETHOD(GetDeviceState)(Self _ref, DWORD cbData, LPVOID lpvData) PURE;
			STDMETHOD(GetDeviceData)(Self _ref, DWORD cbObjectData, LPDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD dwFlags) PURE;
			STDMETHOD(SetDataFormat)(Self _ref, LPCDIDATAFORMAT lpdf) PURE;
			STDMETHOD(SetEventNotification)(Self _ref, HANDLE hEvent) PURE;
			STDMETHOD(SetCooperativeLevel)(Self _ref, HWND hwnd, DWORD dwFlags) PURE;
			STDMETHOD(GetObjectInfo)(Self _ref, LPDIDEVICEOBJECTINSTANCEA pdidoi, DWORD dwObj, DWORD dwHow) PURE;
			STDMETHOD(GetDeviceInfo)(Self _ref, LPDIDEVICEINSTANCEA pdidi) PURE;
			STDMETHOD(RunControlPanel)(Self _ref, HWND hwndOwner, DWORD dwFlags) PURE;
			STDMETHOD(Initialize)(Self _ref, HINSTANCE hinst, DWORD dwVersion, REFGUID rguid) PURE;
			/*** IDirectInputDevice2A methods ***/
			STDMETHOD(CreateEffect)(Self _ref, REFGUID rguid, LPCDIEFFECT lpeff, LPDIRECTINPUTEFFECT *ppdeff, LPUNKNOWN punkOuter) PURE;
			STDMETHOD(EnumEffects)(Self _ref, LPDIENUMEFFECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwEffType) PURE;
			STDMETHOD(GetEffectInfo)(Self _ref, LPDIEFFECTINFOA pdei, REFGUID rguid) PURE;
			STDMETHOD(GetForceFeedbackState)(Self _ref, LPDWORD pdwOut) PURE;
			STDMETHOD(SendForceFeedbackCommand)(Self _ref, DWORD dwFlags) PURE;
			STDMETHOD(EnumCreatedEffectObjects)(Self _ref, LPDIENUMCREATEDEFFECTOBJECTSCALLBACK lpCallback, LPVOID pvRef, DWORD fl) PURE;
			STDMETHOD(Escape)(Self _ref, LPDIEFFESCAPE pesc) PURE;
			STDMETHOD(Poll)(Self _ref) PURE;
			STDMETHOD(SendDeviceData)(Self _ref, DWORD cbObjectData, LPCDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD fl) PURE;
			/*** IDirectInputDevice7A methods ***/
			STDMETHOD(EnumEffectsInFile)(Self _ref, LPCSTR lpszFileName,LPDIENUMEFFECTSINFILECALLBACK pec,LPVOID pvRef,DWORD dwFlags) PURE;
			STDMETHOD(WriteEffectToFile)(Self _ref, LPCSTR lpszFileName,DWORD dwEntries,LPDIFILEEFFECT rgDiFileEft,DWORD dwFlags) PURE;*/
			/*** IDirectInputDevice8A methods ***/
			public function void(IDirectInputDevice8A* _ref, LPDIACTIONFORMATA lpdiaf, LPCSTR lpszUserName, DWORD dwFlags) BuildActionMap;
			public function void(IDirectInputDevice8A* _ref, LPDIACTIONFORMATA lpdiaf, LPCSTR lpszUserName, DWORD dwFlags) SetActionMap;
			public function void(IDirectInputDevice8A* _ref, LPDIDEVICEIMAGEINFOHEADERA lpdiDevImageInfoHeader) GetImageInfo;
		};

		[CRepr]
		public struct IDirectInputDevice8A
		{
			public IDirectInputDevice8AVtbl* lpVtbl;
		}

		/*****************************************************************************
		 * IDirectInputDevice8W interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInputDevice8W
		/*DECLARE_INTERFACE_(IDirectInputDevice8W,IDirectInputDevice7W)
		{
			/*** IUnknown methods ***/
			STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;
			/*** IDirectInputDeviceW methods ***/
			STDMETHOD(GetCapabilities)(Self _ref, LPDIDEVCAPS lpDIDevCaps) PURE;
			STDMETHOD(EnumObjects)(Self _ref, LPDIENUMDEVICEOBJECTSCALLBACKW lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(GetProperty)(Self _ref, REFGUID rguidProp, LPDIPROPHEADER pdiph) PURE;
			STDMETHOD(SetProperty)(Self _ref, REFGUID rguidProp, LPCDIPROPHEADER pdiph) PURE;
			STDMETHOD(Acquire)(Self _ref) PURE;
			STDMETHOD(Unacquire)(Self _ref) PURE;
			STDMETHOD(GetDeviceState)(Self _ref, DWORD cbData, LPVOID lpvData) PURE;
			STDMETHOD(GetDeviceData)(Self _ref, DWORD cbObjectData, LPDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD dwFlags) PURE;
			STDMETHOD(SetDataFormat)(Self _ref, LPCDIDATAFORMAT lpdf) PURE;
			STDMETHOD(SetEventNotification)(Self _ref, HANDLE hEvent) PURE;
			STDMETHOD(SetCooperativeLevel)(Self _ref, HWND hwnd, DWORD dwFlags) PURE;
			STDMETHOD(GetObjectInfo)(Self _ref, LPDIDEVICEOBJECTINSTANCEW pdidoi, DWORD dwObj, DWORD dwHow) PURE;
			STDMETHOD(GetDeviceInfo)(Self _ref, LPDIDEVICEINSTANCEW pdidi) PURE;
			STDMETHOD(RunControlPanel)(Self _ref, HWND hwndOwner, DWORD dwFlags) PURE;
			STDMETHOD(Initialize)(Self _ref, HINSTANCE hinst, DWORD dwVersion, REFGUID rguid) PURE;
			/*** IDirectInputDevice2W methods ***/
			STDMETHOD(CreateEffect)(Self _ref, REFGUID rguid, LPCDIEFFECT lpeff, LPDIRECTINPUTEFFECT *ppdeff, LPUNKNOWN punkOuter) PURE;
			STDMETHOD(EnumEffects)(Self _ref, LPDIENUMEFFECTSCALLBACKW lpCallback, LPVOID pvRef, DWORD dwEffType) PURE;
			STDMETHOD(GetEffectInfo)(Self _ref, LPDIEFFECTINFOW pdei, REFGUID rguid) PURE;
			STDMETHOD(GetForceFeedbackState)(Self _ref, LPDWORD pdwOut) PURE;
			STDMETHOD(SendForceFeedbackCommand)(Self _ref, DWORD dwFlags) PURE;
			STDMETHOD(EnumCreatedEffectObjects)(Self _ref, LPDIENUMCREATEDEFFECTOBJECTSCALLBACK lpCallback, LPVOID pvRef, DWORD fl) PURE;
			STDMETHOD(Escape)(Self _ref, LPDIEFFESCAPE pesc) PURE;
			STDMETHOD(Poll)(Self _ref) PURE;
			STDMETHOD(SendDeviceData)(Self _ref, DWORD cbObjectData, LPCDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD fl) PURE;
			/*** IDirectInputDevice7W methods ***/
			STDMETHOD(EnumEffectsInFile)(Self _ref, LPCWSTR lpszFileName,LPDIENUMEFFECTSINFILECALLBACK pec,LPVOID pvRef,DWORD dwFlags) PURE;
			STDMETHOD(WriteEffectToFile)(Self _ref, LPCWSTR lpszFileName,DWORD dwEntries,LPDIFILEEFFECT rgDiFileEft,DWORD dwFlags) PURE;
			/*** IDirectInputDevice8W methods ***/
			STDMETHOD(BuildActionMap)(Self _ref, LPDIACTIONFORMATW lpdiaf, LPCWSTR lpszUserName, DWORD dwFlags) PURE;
			STDMETHOD(SetActionMap)(Self _ref, LPDIACTIONFORMATW lpdiaf, LPCWSTR lpszUserName, DWORD dwFlags) PURE;
			STDMETHOD(GetImageInfo)(Self _ref, LPDIDEVICEIMAGEINFOHEADERW lpdiDevImageInfoHeader) PURE;
		};*/

//#if !defined(__cplusplus) || defined(CINTERFACE)
		/*** IUnknown methods ***/
		public static HRESULT IDirectInputDevice8_QueryInterface(IDirectInputDevice8A* _ref, Guid* a, void** b) => _ref.lpVtbl.QueryInterface((.)_ref, a, b);
		public static ULONG IDirectInputDevice8_AddRef(IDirectInputDevice8A* _ref) => _ref.lpVtbl.AddRef((.)_ref);
		public static ULONG IDirectInputDevice8_Release(IDirectInputDevice8A* _ref) => _ref.lpVtbl.Release((.)_ref);
				/*** IDirectInputDevice2 methods ***/
		public static void IDirectInputDevice8_GetCapabilities(IDirectInputDevice8A* _ref, DIDEVCAPS* a) => _ref.lpVtbl.GetCapabilities((.)_ref, a);
		public static void IDirectInputDevice8_EnumObjects(IDirectInputDevice8A* _ref, LPDIENUMDEVICEOBJECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) => _ref.lpVtbl.EnumObjects((.)_ref, lpCallback, pvRef, dwFlags);
		public static void IDirectInputDevice8_GetProperty(IDirectInputDevice8A* _ref, REFGUID rguidProp, LPDIPROPHEADER pdiph) => _ref.lpVtbl.GetProperty((.)_ref, rguidProp, pdiph);
		public static void IDirectInputDevice8_SetProperty(IDirectInputDevice8A* _ref, REFGUID rguidProp, LPCDIPROPHEADER pdiph) => _ref.lpVtbl.SetProperty((.)_ref, rguidProp, pdiph);
		public static void IDirectInputDevice8_Acquire(IDirectInputDevice8A* _ref) => _ref.lpVtbl.Acquire((.)_ref);
		public static void IDirectInputDevice8_Unacquire(IDirectInputDevice8A* _ref) => _ref.lpVtbl.Unacquire((.)_ref);
		public static void IDirectInputDevice8_GetDeviceState(IDirectInputDevice8A* _ref, DWORD cbData, LPVOID lpvData) => _ref.lpVtbl.GetDeviceState((.)_ref, cbData, lpvData);
		public static void IDirectInputDevice8_GetDeviceData(IDirectInputDevice8A* _ref, DWORD cbObjectData, LPDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD dwFlags) => _ref.lpVtbl.GetDeviceData((.)_ref, cbObjectData, rgdod, pdwInOut, dwFlags);
		public static void IDirectInputDevice8_SetDataFormat(IDirectInputDevice8A* _ref, LPCDIDATAFORMAT lpdf) => _ref.lpVtbl.SetDataFormat((.)_ref, lpdf);
		public static void IDirectInputDevice8_SetEventNotification(IDirectInputDevice8A* _ref, HANDLE hEvent) => _ref.lpVtbl.SetEventNotification((.)_ref, hEvent);
		public static void IDirectInputDevice8_SetCooperativeLevel(IDirectInputDevice8A* _ref, HWND hwnd, DWORD dwFlags) => _ref.lpVtbl.SetCooperativeLevel((.)_ref, hwnd, dwFlags);
		public static void IDirectInputDevice8_GetObjectInfo(IDirectInputDevice8A* _ref, LPDIDEVICEOBJECTINSTANCEA pdidoi, DWORD dwObj, DWORD dwHow) => _ref.lpVtbl.GetObjectInfo((.)_ref, pdidoi, dwObj, dwHow);
		public static void IDirectInputDevice8_GetDeviceInfo(IDirectInputDevice8A* _ref, LPDIDEVICEINSTANCEA pdidi) => _ref.lpVtbl.GetDeviceInfo((.)_ref, pdidi);
		public static void IDirectInputDevice8_RunControlPanel(IDirectInputDevice8A* _ref, HWND hwndOwner, DWORD dwFlags) => _ref.lpVtbl.RunControlPanel((.)_ref, hwndOwner, dwFlags);
		public static void IDirectInputDevice8_Initialize(IDirectInputDevice8A* _ref, HINSTANCE hinst, DWORD dwVersion, REFGUID rguid) => _ref.lpVtbl.Initialize((.)_ref, hinst, dwVersion, rguid);
				/*** IDirectInputDevice2 methods ***/
		public static void IDirectInputDevice8_CreateEffect(IDirectInputDevice8A* _ref, REFGUID rguid, LPCDIEFFECT lpeff, LPDIRECTINPUTEFFECT* ppdeff, LPUNKNOWN punkOuter) => _ref.lpVtbl.CreateEffect((.)_ref, rguid, lpeff, ppdeff, punkOuter);
		public static void IDirectInputDevice8_EnumEffects(IDirectInputDevice8A* _ref, LPDIENUMEFFECTSCALLBACKA lpCallback, LPVOID pvRef, DWORD dwEffType) => _ref.lpVtbl.EnumEffects((.)_ref, lpCallback, pvRef, dwEffType);
		public static void IDirectInputDevice8_GetEffectInfo(IDirectInputDevice8A* _ref, LPDIEFFECTINFOA pdei, REFGUID rguid) => _ref.lpVtbl.GetEffectInfo((.)_ref, pdei, rguid);
		public static void IDirectInputDevice8_GetForceFeedbackState(IDirectInputDevice8A* _ref, LPDWORD pdwOut) => _ref.lpVtbl.GetForceFeedbackState((.)_ref, pdwOut);
		public static void IDirectInputDevice8_SendForceFeedbackCommand(IDirectInputDevice8A* _ref, DWORD dwFlags) => _ref.lpVtbl.SendForceFeedbackCommand((.)_ref, dwFlags);
		public static void IDirectInputDevice8_EnumCreatedEffectObjects(IDirectInputDevice8A* _ref, LPDIENUMCREATEDEFFECTOBJECTSCALLBACK lpCallback, LPVOID pvRef, DWORD fl) => _ref.lpVtbl.EnumCreatedEffectObjects((.)_ref, lpCallback, pvRef, fl);
		public static void IDirectInputDevice8_Escape(IDirectInputDevice8A* _ref, LPDIEFFESCAPE pesc) => _ref.lpVtbl.Escape((.)_ref, pesc);
		public static void IDirectInputDevice8_Poll(IDirectInputDevice8A* _ref) => _ref.lpVtbl.Poll((.)_ref);
		public static void IDirectInputDevice8_SendDeviceData(IDirectInputDevice8A* _ref, DWORD cbObjectData, LPCDIDEVICEOBJECTDATA rgdod, LPDWORD pdwInOut, DWORD fl) => _ref.lpVtbl.SendDeviceData((.)_ref, cbObjectData, rgdod, pdwInOut, fl);
				/*** IDirectInputDevice7 methods ***/
		public static void IDirectInputDevice8_EnumEffectsInFile(IDirectInputDevice8A* _ref, LPCSTR lpszFileName, LPDIENUMEFFECTSINFILECALLBACK pec, LPVOID pvRef, DWORD dwFlags) => _ref.lpVtbl.EnumEffectsInFile((.)_ref, lpszFileName, pec, pvRef, dwFlags);
		public static void IDirectInputDevice8_WriteEffectToFile(IDirectInputDevice8A* _ref, LPCSTR lpszFileName, DWORD dwEntries, LPDIFILEEFFECT rgDiFileEft, DWORD dwFlags) => _ref.lpVtbl.WriteEffectToFile((.)_ref, lpszFileName, dwEntries, rgDiFileEft, dwFlags);
		/*** IDirectInputDevice8 methods ***/
		public static void IDirectInputDevice8_BuildActionMap(IDirectInputDevice8A* _ref, LPDIACTIONFORMATA lpdiaf, LPCSTR lpszUserName, DWORD dwFlags) => _ref.lpVtbl.BuildActionMap((.)_ref, lpdiaf, lpszUserName, dwFlags);
		public static void IDirectInputDevice8_SetActionMap(IDirectInputDevice8A* _ref, LPDIACTIONFORMATA lpdiaf, LPCSTR lpszUserName, DWORD dwFlags) => _ref.lpVtbl.SetActionMap((.)_ref, lpdiaf, lpszUserName, dwFlags);
		public static void IDirectInputDevice8_GetImageInfo(IDirectInputDevice8A* _ref, LPDIDEVICEIMAGEINFOHEADERA lpdiDevImageInfoHeader) => _ref.lpVtbl.GetImageInfo((.)_ref, lpdiDevImageInfoHeader);
/*#else
		/*** IUnknown methods ***/
		#define IDirectInputDevice8_QueryInterface(p,a,b) (p).QueryInterface(a,b)
		#define IDirectInputDevice8_AddRef(p)             (p).AddRef()
		#define IDirectInputDevice8_Release(p)            (p).Release()
		/*** IDirectInputDevice methods ***/
		#define IDirectInputDevice8_GetCapabilities(p,a)       (p).GetCapabilities(a)
		#define IDirectInputDevice8_EnumObjects(p,a,b,c)       (p).EnumObjects(a,b,c)
		#define IDirectInputDevice8_GetProperty(p,a,b)         (p).GetProperty(a,b)
		#define IDirectInputDevice8_SetProperty(p,a,b)         (p).SetProperty(a,b)
		#define IDirectInputDevice8_Acquire(p)                 (p).Acquire()
		#define IDirectInputDevice8_Unacquire(p)               (p).Unacquire()
		#define IDirectInputDevice8_GetDeviceState(p,a,b)      (p).GetDeviceState(a,b)
		#define IDirectInputDevice8_GetDeviceData(p,a,b,c,d)   (p).GetDeviceData(a,b,c,d)
		#define IDirectInputDevice8_SetDataFormat(p,a)         (p).SetDataFormat(a)
		#define IDirectInputDevice8_SetEventNotification(p,a)  (p).SetEventNotification(a)
		#define IDirectInputDevice8_SetCooperativeLevel(p,a,b) (p).SetCooperativeLevel(a,b)
		#define IDirectInputDevice8_GetObjectInfo(p,a,b,c)     (p).GetObjectInfo(a,b,c)
		#define IDirectInputDevice8_GetDeviceInfo(p,a)         (p).GetDeviceInfo(a)
		#define IDirectInputDevice8_RunControlPanel(p,a,b)     (p).RunControlPanel(a,b)
		#define IDirectInputDevice8_Initialize(p,a,b,c)        (p).Initialize(a,b,c)
		/*** IDirectInputDevice2 methods ***/
		#define IDirectInputDevice8_CreateEffect(p,a,b,c,d)           (p).CreateEffect(a,b,c,d)
		#define IDirectInputDevice8_EnumEffects(p,a,b,c)              (p).EnumEffects(a,b,c)
		#define IDirectInputDevice8_GetEffectInfo(p,a,b)              (p).GetEffectInfo(a,b)
		#define IDirectInputDevice8_GetForceFeedbackState(p,a)        (p).GetForceFeedbackState(a)
		#define IDirectInputDevice8_SendForceFeedbackCommand(p,a)     (p).SendForceFeedbackCommand(a)
		#define IDirectInputDevice8_EnumCreatedEffectObjects(p,a,b,c) (p).EnumCreatedEffectObjects(a,b,c)
		#define IDirectInputDevice8_Escape(p,a)                       (p).Escape(a)
		#define IDirectInputDevice8_Poll(p)                           (p).Poll()
		#define IDirectInputDevice8_SendDeviceData(p,a,b,c,d)         (p).SendDeviceData(a,b,c,d)
		/*** IDirectInputDevice7 methods ***/
		#define IDirectInputDevice8_EnumEffectsInFile(p,a,b,c,d) (p).EnumEffectsInFile(a,b,c,d)
		#define IDirectInputDevice8_WriteEffectToFile(p,a,b,c,d) (p).WriteEffectToFile(a,b,c,d)
		/*** IDirectInputDevice8 methods ***/
		#define IDirectInputDevice8_BuildActionMap(p,a,b,c) (p).BuildActionMap(a,b,c)
		#define IDirectInputDevice8_SetActionMap(p,a,b,c)   (p).SetActionMap(a,b,c)
		#define IDirectInputDevice8_GetImageInfo(p,a)       (p).GetImageInfo(a)
		#endif

		#endif /* DI8 */*/

		/* "Standard" Mouse report... */
		[CRepr]
		struct DIMOUSESTATE
		{
			LONG lX;
			LONG lY;
			LONG lZ;
			BYTE[4] rgbButtons;
		}

  //#if DIRECTINPUT_VERSION >= 0x0700
		  /* "Standard" Mouse report for DInput 7... */
		[CRepr]
		struct DIMOUSESTATE2
		{
			LONG lX;
			LONG lY;
			LONG lZ;
			BYTE[8] rgbButtons;
		}
  //#endif /* DI7 */

		const int DIMOFS_X = offsetof(DIMOUSESTATE, lX);
		const int DIMOFS_Y = offsetof(DIMOUSESTATE, lY);
		const int DIMOFS_Z = offsetof(DIMOUSESTATE, lZ);
		const int DIMOFS_BUTTON0 = (offsetof(DIMOUSESTATE, rgbButtons) + 0);
		const int DIMOFS_BUTTON1 = (offsetof(DIMOUSESTATE, rgbButtons) + 1);
		const int DIMOFS_BUTTON2 = (offsetof(DIMOUSESTATE, rgbButtons) + 2);
		const int DIMOFS_BUTTON3 = (offsetof(DIMOUSESTATE, rgbButtons) + 3);
  //#if DIRECTINPUT_VERSION >= 0x0700
		const int DIMOFS_BUTTON4 = (offsetof(DIMOUSESTATE2, rgbButtons) + 4);
		const int DIMOFS_BUTTON5 = (offsetof(DIMOUSESTATE2, rgbButtons) + 5);
		const int DIMOFS_BUTTON6 = (offsetof(DIMOUSESTATE2, rgbButtons) + 6);
		const int DIMOFS_BUTTON7 = (offsetof(DIMOUSESTATE2, rgbButtons) + 7);
  //#endif /* DI7 */
		public static readonly DIOBJECTDATAFORMAT[?] dfDIMouse = .(
			.(&GUID_XAxis, DIMOFS_X, DIDFT_ANYINSTANCE | DIDFT_AXIS, 0),
			.(&GUID_YAxis, DIMOFS_Y, DIDFT_ANYINSTANCE | DIDFT_AXIS, 0),
			.(&GUID_ZAxis, DIMOFS_Z, DIDFT_OPTIONAL | DIDFT_ANYINSTANCE | DIDFT_AXIS, 0),
			.(&GUID_Button, DIMOFS_BUTTON0, DIDFT_ANYINSTANCE | DIDFT_BUTTON, 0),
			.(&GUID_Button, DIMOFS_BUTTON1, DIDFT_ANYINSTANCE | DIDFT_BUTTON, 0),
			.(&GUID_Button, DIMOFS_BUTTON2, DIDFT_OPTIONAL | DIDFT_ANYINSTANCE | DIDFT_BUTTON, 0),
			.(&GUID_Button, DIMOFS_BUTTON3, DIDFT_OPTIONAL | DIDFT_ANYINSTANCE | DIDFT_BUTTON, 0)
			);

		  /*extern*/ public static readonly DIDATAFORMAT c_dfDIMouse = .(
			sizeof(DIDATAFORMAT),
			sizeof(DIOBJECTDATAFORMAT),
			DIDF_RELAXIS,
			sizeof(DIMOUSESTATE2),
			dfDIMouse.Count,
			(LPDIOBJECTDATAFORMAT) & dfDIMouse
			);
  //#if DIRECTINPUT_VERSION >= 0x0700
		public static readonly DIOBJECTDATAFORMAT[?] dfDIMouse2 = .(
			.(&GUID_XAxis, DIMOFS_X, DIDFT_ANYINSTANCE | DIDFT_AXIS, 0),
			.(&GUID_YAxis, DIMOFS_Y, DIDFT_ANYINSTANCE | DIDFT_AXIS, 0),
			.(&GUID_ZAxis, DIMOFS_Z, DIDFT_OPTIONAL | DIDFT_ANYINSTANCE | DIDFT_AXIS, 0),
			.(&GUID_Button, DIMOFS_BUTTON0, DIDFT_ANYINSTANCE | DIDFT_BUTTON, 0),
			.(&GUID_Button, DIMOFS_BUTTON1, DIDFT_ANYINSTANCE | DIDFT_BUTTON, 0),
			.(&GUID_Button, DIMOFS_BUTTON2, DIDFT_OPTIONAL | DIDFT_ANYINSTANCE | DIDFT_BUTTON, 0),
			.(&GUID_Button, DIMOFS_BUTTON3, DIDFT_OPTIONAL | DIDFT_ANYINSTANCE | DIDFT_BUTTON, 0),
			.(&GUID_Button, DIMOFS_BUTTON4, DIDFT_OPTIONAL | DIDFT_ANYINSTANCE | DIDFT_BUTTON, 0),
			.(&GUID_Button, DIMOFS_BUTTON5, DIDFT_OPTIONAL | DIDFT_ANYINSTANCE | DIDFT_BUTTON, 0),
			.(&GUID_Button, DIMOFS_BUTTON6, DIDFT_OPTIONAL | DIDFT_ANYINSTANCE | DIDFT_BUTTON, 0),
			.(&GUID_Button, DIMOFS_BUTTON7, DIDFT_OPTIONAL | DIDFT_ANYINSTANCE | DIDFT_BUTTON, 0)
			);
		  /*extern*/ public static readonly DIDATAFORMAT c_dfDIMouse2 = .(
			sizeof(DIDATAFORMAT),
			sizeof(DIOBJECTDATAFORMAT),
			DIDF_RELAXIS,
			sizeof(DIMOUSESTATE),
			dfDIMouse2.Count,
			(LPDIOBJECTDATAFORMAT) & dfDIMouse2
			);
		   /* DX 7 */
  //#endif /* DI7 */
		public static readonly DIOBJECTDATAFORMAT[?] dfDIKeyboard = .(
			.(&GUID_Key, 0, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(0), 0),
			.(&GUID_Key, 1, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(1), 0),
			.(&GUID_Key, 2, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(2), 0),
			.(&GUID_Key, 3, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(3), 0),
			.(&GUID_Key, 4, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(4), 0),
			.(&GUID_Key, 5, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(5), 0),
			.(&GUID_Key, 6, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(6), 0),
			.(&GUID_Key, 7, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(7), 0),
			.(&GUID_Key, 8, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(8), 0),
			.(&GUID_Key, 9, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(9), 0),
			.(&GUID_Key, 10, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(10), 0),
			.(&GUID_Key, 11, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(11), 0),
			.(&GUID_Key, 12, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(12), 0),
			.(&GUID_Key, 13, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(13), 0),
			.(&GUID_Key, 14, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(14), 0),
			.(&GUID_Key, 15, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(15), 0),
			.(&GUID_Key, 16, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(16), 0),
			.(&GUID_Key, 17, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(17), 0),
			.(&GUID_Key, 18, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(18), 0),
			.(&GUID_Key, 19, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(19), 0),
			.(&GUID_Key, 20, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(20), 0),
			.(&GUID_Key, 21, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(21), 0),
			.(&GUID_Key, 22, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(22), 0),
			.(&GUID_Key, 23, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(23), 0),
			.(&GUID_Key, 24, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(24), 0),
			.(&GUID_Key, 25, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(25), 0),
			.(&GUID_Key, 26, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(26), 0),
			.(&GUID_Key, 27, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(27), 0),
			.(&GUID_Key, 28, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(28), 0),
			.(&GUID_Key, 29, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(29), 0),
			.(&GUID_Key, 30, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(30), 0),
			.(&GUID_Key, 31, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(31), 0),
			.(&GUID_Key, 32, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(32), 0),
			.(&GUID_Key, 33, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(33), 0),
			.(&GUID_Key, 34, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(34), 0),
			.(&GUID_Key, 35, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(35), 0),
			.(&GUID_Key, 36, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(36), 0),
			.(&GUID_Key, 37, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(37), 0),
			.(&GUID_Key, 38, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(38), 0),
			.(&GUID_Key, 39, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(39), 0),
			.(&GUID_Key, 40, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(40), 0),
			.(&GUID_Key, 41, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(41), 0),
			.(&GUID_Key, 42, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(42), 0),
			.(&GUID_Key, 43, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(43), 0),
			.(&GUID_Key, 44, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(44), 0),
			.(&GUID_Key, 45, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(45), 0),
			.(&GUID_Key, 46, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(46), 0),
			.(&GUID_Key, 47, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(47), 0),
			.(&GUID_Key, 48, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(48), 0),
			.(&GUID_Key, 49, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(49), 0),
			.(&GUID_Key, 50, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(50), 0),
			.(&GUID_Key, 51, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(51), 0),
			.(&GUID_Key, 52, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(52), 0),
			.(&GUID_Key, 53, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(53), 0),
			.(&GUID_Key, 54, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(54), 0),
			.(&GUID_Key, 55, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(55), 0),
			.(&GUID_Key, 56, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(56), 0),
			.(&GUID_Key, 57, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(57), 0),
			.(&GUID_Key, 58, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(58), 0),
			.(&GUID_Key, 59, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(59), 0),
			.(&GUID_Key, 60, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(60), 0),
			.(&GUID_Key, 61, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(61), 0),
			.(&GUID_Key, 62, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(62), 0),
			.(&GUID_Key, 63, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(63), 0),
			.(&GUID_Key, 64, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(64), 0),
			.(&GUID_Key, 65, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(65), 0),
			.(&GUID_Key, 66, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(66), 0),
			.(&GUID_Key, 67, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(67), 0),
			.(&GUID_Key, 68, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(68), 0),
			.(&GUID_Key, 69, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(69), 0),
			.(&GUID_Key, 70, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(70), 0),
			.(&GUID_Key, 71, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(71), 0),
			.(&GUID_Key, 72, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(72), 0),
			.(&GUID_Key, 73, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(73), 0),
			.(&GUID_Key, 74, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(74), 0),
			.(&GUID_Key, 75, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(75), 0),
			.(&GUID_Key, 76, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(76), 0),
			.(&GUID_Key, 77, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(77), 0),
			.(&GUID_Key, 78, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(78), 0),
			.(&GUID_Key, 79, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(79), 0),
			.(&GUID_Key, 80, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(80), 0),
			.(&GUID_Key, 81, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(81), 0),
			.(&GUID_Key, 82, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(82), 0),
			.(&GUID_Key, 83, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(83), 0),
			.(&GUID_Key, 84, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(84), 0),
			.(&GUID_Key, 85, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(85), 0),
			.(&GUID_Key, 86, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(86), 0),
			.(&GUID_Key, 87, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(87), 0),
			.(&GUID_Key, 88, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(88), 0),
			.(&GUID_Key, 89, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(89), 0),
			.(&GUID_Key, 90, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(90), 0),
			.(&GUID_Key, 91, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(91), 0),
			.(&GUID_Key, 92, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(92), 0),
			.(&GUID_Key, 93, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(93), 0),
			.(&GUID_Key, 94, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(94), 0),
			.(&GUID_Key, 95, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(95), 0),
			.(&GUID_Key, 96, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(96), 0),
			.(&GUID_Key, 97, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(97), 0),
			.(&GUID_Key, 98, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(98), 0),
			.(&GUID_Key, 99, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(99), 0),
			.(&GUID_Key, 100, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(100), 0),
			.(&GUID_Key, 101, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(101), 0),
			.(&GUID_Key, 102, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(102), 0),
			.(&GUID_Key, 103, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(103), 0),
			.(&GUID_Key, 104, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(104), 0),
			.(&GUID_Key, 105, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(105), 0),
			.(&GUID_Key, 106, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(106), 0),
			.(&GUID_Key, 107, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(107), 0),
			.(&GUID_Key, 108, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(108), 0),
			.(&GUID_Key, 109, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(109), 0),
			.(&GUID_Key, 110, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(110), 0),
			.(&GUID_Key, 111, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(111), 0),
			.(&GUID_Key, 112, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(112), 0),
			.(&GUID_Key, 113, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(113), 0),
			.(&GUID_Key, 114, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(114), 0),
			.(&GUID_Key, 115, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(115), 0),
			.(&GUID_Key, 116, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(116), 0),
			.(&GUID_Key, 117, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(117), 0),
			.(&GUID_Key, 118, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(118), 0),
			.(&GUID_Key, 119, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(119), 0),
			.(&GUID_Key, 120, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(120), 0),
			.(&GUID_Key, 121, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(121), 0),
			.(&GUID_Key, 122, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(122), 0),
			.(&GUID_Key, 123, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(123), 0),
			.(&GUID_Key, 124, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(124), 0),
			.(&GUID_Key, 125, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(125), 0),
			.(&GUID_Key, 126, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(126), 0),
			.(&GUID_Key, 127, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(127), 0),
			.(&GUID_Key, 128, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(128), 0),
			.(&GUID_Key, 129, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(129), 0),
			.(&GUID_Key, 130, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(130), 0),
			.(&GUID_Key, 131, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(131), 0),
			.(&GUID_Key, 132, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(132), 0),
			.(&GUID_Key, 133, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(133), 0),
			.(&GUID_Key, 134, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(134), 0),
			.(&GUID_Key, 135, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(135), 0),
			.(&GUID_Key, 136, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(136), 0),
			.(&GUID_Key, 137, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(137), 0),
			.(&GUID_Key, 138, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(138), 0),
			.(&GUID_Key, 139, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(139), 0),
			.(&GUID_Key, 140, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(140), 0),
			.(&GUID_Key, 141, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(141), 0),
			.(&GUID_Key, 142, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(142), 0),
			.(&GUID_Key, 143, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(143), 0),
			.(&GUID_Key, 144, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(144), 0),
			.(&GUID_Key, 145, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(145), 0),
			.(&GUID_Key, 146, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(146), 0),
			.(&GUID_Key, 147, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(147), 0),
			.(&GUID_Key, 148, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(148), 0),
			.(&GUID_Key, 149, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(149), 0),
			.(&GUID_Key, 150, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(150), 0),
			.(&GUID_Key, 151, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(151), 0),
			.(&GUID_Key, 152, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(152), 0),
			.(&GUID_Key, 153, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(153), 0),
			.(&GUID_Key, 154, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(154), 0),
			.(&GUID_Key, 155, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(155), 0),
			.(&GUID_Key, 156, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(156), 0),
			.(&GUID_Key, 157, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(157), 0),
			.(&GUID_Key, 158, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(158), 0),
			.(&GUID_Key, 159, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(159), 0),
			.(&GUID_Key, 160, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(160), 0),
			.(&GUID_Key, 161, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(161), 0),
			.(&GUID_Key, 162, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(162), 0),
			.(&GUID_Key, 163, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(163), 0),
			.(&GUID_Key, 164, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(164), 0),
			.(&GUID_Key, 165, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(165), 0),
			.(&GUID_Key, 166, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(166), 0),
			.(&GUID_Key, 167, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(167), 0),
			.(&GUID_Key, 168, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(168), 0),
			.(&GUID_Key, 169, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(169), 0),
			.(&GUID_Key, 170, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(170), 0),
			.(&GUID_Key, 171, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(171), 0),
			.(&GUID_Key, 172, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(172), 0),
			.(&GUID_Key, 173, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(173), 0),
			.(&GUID_Key, 174, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(174), 0),
			.(&GUID_Key, 175, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(175), 0),
			.(&GUID_Key, 176, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(176), 0),
			.(&GUID_Key, 177, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(177), 0),
			.(&GUID_Key, 178, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(178), 0),
			.(&GUID_Key, 179, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(179), 0),
			.(&GUID_Key, 180, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(180), 0),
			.(&GUID_Key, 181, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(181), 0),
			.(&GUID_Key, 182, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(182), 0),
			.(&GUID_Key, 183, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(183), 0),
			.(&GUID_Key, 184, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(184), 0),
			.(&GUID_Key, 185, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(185), 0),
			.(&GUID_Key, 186, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(186), 0),
			.(&GUID_Key, 187, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(187), 0),
			.(&GUID_Key, 188, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(188), 0),
			.(&GUID_Key, 189, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(189), 0),
			.(&GUID_Key, 190, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(190), 0),
			.(&GUID_Key, 191, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(191), 0),
			.(&GUID_Key, 192, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(192), 0),
			.(&GUID_Key, 193, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(193), 0),
			.(&GUID_Key, 194, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(194), 0),
			.(&GUID_Key, 195, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(195), 0),
			.(&GUID_Key, 196, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(196), 0),
			.(&GUID_Key, 197, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(197), 0),
			.(&GUID_Key, 198, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(198), 0),
			.(&GUID_Key, 199, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(199), 0),
			.(&GUID_Key, 200, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(200), 0),
			.(&GUID_Key, 201, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(201), 0),
			.(&GUID_Key, 202, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(202), 0),
			.(&GUID_Key, 203, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(203), 0),
			.(&GUID_Key, 204, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(204), 0),
			.(&GUID_Key, 205, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(205), 0),
			.(&GUID_Key, 206, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(206), 0),
			.(&GUID_Key, 207, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(207), 0),
			.(&GUID_Key, 208, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(208), 0),
			.(&GUID_Key, 209, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(209), 0),
			.(&GUID_Key, 210, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(210), 0),
			.(&GUID_Key, 211, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(211), 0),
			.(&GUID_Key, 212, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(212), 0),
			.(&GUID_Key, 213, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(213), 0),
			.(&GUID_Key, 214, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(214), 0),
			.(&GUID_Key, 215, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(215), 0),
			.(&GUID_Key, 216, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(216), 0),
			.(&GUID_Key, 217, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(217), 0),
			.(&GUID_Key, 218, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(218), 0),
			.(&GUID_Key, 219, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(219), 0),
			.(&GUID_Key, 220, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(220), 0),
			.(&GUID_Key, 221, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(221), 0),
			.(&GUID_Key, 222, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(222), 0),
			.(&GUID_Key, 223, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(223), 0),
			.(&GUID_Key, 224, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(224), 0),
			.(&GUID_Key, 225, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(225), 0),
			.(&GUID_Key, 226, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(226), 0),
			.(&GUID_Key, 227, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(227), 0),
			.(&GUID_Key, 228, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(228), 0),
			.(&GUID_Key, 229, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(229), 0),
			.(&GUID_Key, 230, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(230), 0),
			.(&GUID_Key, 231, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(231), 0),
			.(&GUID_Key, 232, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(232), 0),
			.(&GUID_Key, 233, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(233), 0),
			.(&GUID_Key, 234, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(234), 0),
			.(&GUID_Key, 235, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(235), 0),
			.(&GUID_Key, 236, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(236), 0),
			.(&GUID_Key, 237, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(237), 0),
			.(&GUID_Key, 238, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(238), 0),
			.(&GUID_Key, 239, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(239), 0),
			.(&GUID_Key, 240, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(240), 0),
			.(&GUID_Key, 241, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(241), 0),
			.(&GUID_Key, 242, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(242), 0),
			.(&GUID_Key, 243, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(243), 0),
			.(&GUID_Key, 244, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(244), 0),
			.(&GUID_Key, 245, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(245), 0),
			.(&GUID_Key, 246, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(246), 0),
			.(&GUID_Key, 247, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(247), 0),
			.(&GUID_Key, 248, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(248), 0),
			.(&GUID_Key, 249, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(249), 0),
			.(&GUID_Key, 250, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(250), 0),
			.(&GUID_Key, 251, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(251), 0),
			.(&GUID_Key, 252, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(252), 0),
			.(&GUID_Key, 253, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(253), 0),
			.(&GUID_Key, 254, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(254), 0),
			.(&GUID_Key, 255, DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_MAKEINSTANCE(255), 0)
			);

		  /*extern*/ static readonly DIDATAFORMAT c_dfDIKeyboard = .(
			sizeof(DIDATAFORMAT),
			sizeof(DIOBJECTDATAFORMAT),
			DIDF_RELAXIS,
			256,
			dfDIKeyboard.Count,
			(LPDIOBJECTDATAFORMAT) & dfDIKeyboard
			);
  //#if DIRECTINPUT_VERSION >= 0x0500
		static readonly DIOBJECTDATAFORMAT[?] dfDIJoystick = .(
			.(&GUID_XAxis, DIJOFS_X, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_YAxis, DIJOFS_Y, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_ZAxis, DIJOFS_Z, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RxAxis, DIJOFS_RX, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RyAxis, DIJOFS_RY, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RzAxis, DIJOFS_RZ, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_Slider, DIJOFS_SLIDER(0), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_Slider, DIJOFS_SLIDER(1), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_POV, DIJOFS_POV(0), DIDFT_OPTIONAL | DIDFT_POV | DIDFT_ANYINSTANCE, 0),
			.(&GUID_POV, DIJOFS_POV(1), DIDFT_OPTIONAL | DIDFT_POV | DIDFT_ANYINSTANCE, 0),
			.(&GUID_POV, DIJOFS_POV(2), DIDFT_OPTIONAL | DIDFT_POV | DIDFT_ANYINSTANCE, 0),
			.(&GUID_POV, DIJOFS_POV(3), DIDFT_OPTIONAL | DIDFT_POV | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(0), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(1), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(2), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(3), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(4), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(5), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(6), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(7), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(8), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(9), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(10), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(11), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(12), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(13), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(14), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(15), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(16), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(17), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(18), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(19), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(20), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(21), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(22), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(23), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(24), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(25), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(26), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(27), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(28), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(29), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(30), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(31), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0)
			);

		  /*extern*/ public static readonly DIDATAFORMAT c_dfDIJoystick = .(
			sizeof(DIDATAFORMAT),
			sizeof(DIOBJECTDATAFORMAT),
			DIDF_ABSAXIS,
			sizeof(DIJOYSTATE),
			dfDIJoystick.Count,
			(LPDIOBJECTDATAFORMAT) & dfDIJoystick
			);

		public static readonly DIOBJECTDATAFORMAT[?] dfDIJoystick2 = .(
			.(&GUID_XAxis, DIJOFS_X, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_YAxis, DIJOFS_Y, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_ZAxis, DIJOFS_Z, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RxAxis, DIJOFS_RX, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RyAxis, DIJOFS_RY, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RzAxis, DIJOFS_RZ, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_Slider, DIJOFS_SLIDER(0), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_Slider, DIJOFS_SLIDER(1), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_POV, DIJOFS_POV(0), DIDFT_OPTIONAL | DIDFT_POV | DIDFT_ANYINSTANCE, 0),
			.(&GUID_POV, DIJOFS_POV(1), DIDFT_OPTIONAL | DIDFT_POV | DIDFT_ANYINSTANCE, 0),
			.(&GUID_POV, DIJOFS_POV(2), DIDFT_OPTIONAL | DIDFT_POV | DIDFT_ANYINSTANCE, 0),
			.(&GUID_POV, DIJOFS_POV(3), DIDFT_OPTIONAL | DIDFT_POV | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(0), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(1), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(2), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(3), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(4), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(5), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(6), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(7), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(8), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(9), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(10), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(11), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(12), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(13), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(14), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(15), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(16), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(17), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(18), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(19), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(20), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(21), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(22), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(23), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(24), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(25), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(26), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(27), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(28), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(29), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(30), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(31), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(32), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(33), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(34), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(35), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(36), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(37), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(38), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(39), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(40), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(41), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(42), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(43), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(44), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(45), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(46), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(47), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(48), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(49), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(50), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(51), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(52), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(53), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(54), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(55), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(56), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(57), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(58), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(59), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(60), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(61), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(62), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(63), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(64), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(65), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(66), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(67), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(68), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(69), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(70), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(71), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(72), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(73), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(74), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(75), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(76), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(77), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(78), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(79), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(80), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(81), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(82), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(83), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(84), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(85), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(86), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(87), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(88), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(89), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(90), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(91), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(92), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(93), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(94), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(95), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(96), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(97), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(98), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(99), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(100), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(101), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(102), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(103), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(104), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(105), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(106), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(107), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(108), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(109), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(110), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(111), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(112), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(113), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(114), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(115), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(116), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(117), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(118), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(119), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(120), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(121), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(122), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(123), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(124), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(125), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(126), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(null, DIJOFS_BUTTON(127), DIDFT_OPTIONAL | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0),
			.(&GUID_XAxis, offsetof(DIJOYSTATE2, lVX), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_YAxis, offsetof(DIJOYSTATE2, lVY), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_ZAxis, offsetof(DIJOYSTATE2, lVZ), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RxAxis, offsetof(DIJOYSTATE2, lVRx), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RyAxis, offsetof(DIJOYSTATE2, lVRy), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RzAxis, offsetof(DIJOYSTATE2, lVRz), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_Slider, offsetof(DIJOYSTATE2, rglVSlider /*[0]*/), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_Slider, offsetof(DIJOYSTATE2, rglVSlider /*[1]*/) + 4, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_XAxis, offsetof(DIJOYSTATE2, lAX), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_YAxis, offsetof(DIJOYSTATE2, lAY), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_ZAxis, offsetof(DIJOYSTATE2, lAZ), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RxAxis, offsetof(DIJOYSTATE2, lARx), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RyAxis, offsetof(DIJOYSTATE2, lARy), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RzAxis, offsetof(DIJOYSTATE2, lARz), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_Slider, offsetof(DIJOYSTATE2, rglASlider /*[0]*/), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_Slider, offsetof(DIJOYSTATE2, rglASlider /*[1]*/) + 4, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_XAxis, offsetof(DIJOYSTATE2, lFX), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_YAxis, offsetof(DIJOYSTATE2, lFY), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_ZAxis, offsetof(DIJOYSTATE2, lFZ), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RxAxis, offsetof(DIJOYSTATE2, lFRx), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RyAxis, offsetof(DIJOYSTATE2, lFRy), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_RzAxis, offsetof(DIJOYSTATE2, lFRz), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_Slider, offsetof(DIJOYSTATE2, rglFSlider /*[0]*/), DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0),
			.(&GUID_Slider, offsetof(DIJOYSTATE2, rglFSlider /*[1]*/) + 4, DIDFT_OPTIONAL | DIDFT_AXIS | DIDFT_ANYINSTANCE, 0)
			);

		  /*extern*/ public static readonly DIDATAFORMAT c_dfDIJoystick2 = .(
			sizeof(DIDATAFORMAT),
			sizeof(DIOBJECTDATAFORMAT),
			DIDF_ABSAXIS,
			sizeof(DIJOYSTATE2),
			dfDIJoystick2.Count,
			(LPDIOBJECTDATAFORMAT) & dfDIJoystick2
			);
  //#endif /* DI5 */


		  /*****************************************************************************
		   * IDirectInputA interface
		   */
  //#undef INTERFACE
  //#define INTERFACE IDirectInputA

		[CRepr]
		struct IDirectInputAVtbl : IUnknownVtbl
		{
			/*** IUnknown methods ***/
			/*STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;*/
			/*** IDirectInputA methods ***/
			public function void(IDirectInputA* _ref, REFGUID rguid, LPDIRECTINPUTDEVICEA* lplpDirectInputDevice, LPUNKNOWN pUnkOuter) CreateDevice;
			public function void(IDirectInputA* _ref, DWORD dwDevType, LPDIENUMDEVICESCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) EnumDevices;
			public function void(IDirectInputA* _ref, REFGUID rguidInstance) GetDeviceStatus;
			public function void(IDirectInputA* _ref, HWND hwndOwner, DWORD dwFlags) RunControlPanel;
			public function void(IDirectInputA* _ref, HINSTANCE hinst, DWORD dwVersion) Initialize;
		};
		[CRepr]
		struct IDirectInputA
		{
			public IDirectInputAVtbl* lpVtbl;
		}

		/*****************************************************************************
		 * IDirectInputW interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInputW
		/*[CRepr]
		struct IDirectInputW : IUnknown
		{
			/*** IUnknown methods ***/
			/*STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;*/
			/*** IDirectInputW methods ***/
			STDMETHOD(CreateDevice)(Self _ref, REFGUID rguid, LPDIRECTINPUTDEVICEW *lplpDirectInputDevice, LPUNKNOWN pUnkOuter) PURE;
			STDMETHOD(EnumDevices)(Self _ref, DWORD dwDevType, LPDIENUMDEVICESCALLBACKW lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(GetDeviceStatus)(Self _ref, REFGUID rguidInstance) PURE;
			STDMETHOD(RunControlPanel)(Self _ref, HWND hwndOwner, DWORD dwFlags) PURE;
			STDMETHOD(Initialize)(Self _ref, HINSTANCE hinst, DWORD dwVersion) PURE;
		};*/

//#if !defined(__cplusplus) || defined(CINTERFACE)
		/*** IUnknown methods ***/
		static void IDirectInput_QueryInterface(IDirectInputA* _ref, REFIID a, void** b) => _ref.lpVtbl.QueryInterface((.)_ref, a, b);
		static void IDirectInput_AddRef(IDirectInputA* _ref) => _ref.lpVtbl.AddRef((.)_ref);
		static void IDirectInput_Release(IDirectInputA* _ref) => _ref.lpVtbl.Release((.)_ref);
		/*** IDirectInput methods ***/
		static void IDirectInput_CreateDevice(IDirectInputA* _ref, REFGUID rguid, LPDIRECTINPUTDEVICEA* lplpDirectInputDevice, LPUNKNOWN pUnkOuter) => _ref.lpVtbl.CreateDevice(_ref, rguid, lplpDirectInputDevice, pUnkOuter);
		static void IDirectInput_EnumDevices(IDirectInputA* _ref, DI8DeviceClass dwDevType, LPDIENUMDEVICESCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) => _ref.lpVtbl.EnumDevices(_ref, (.)dwDevType, lpCallback, pvRef, dwFlags);
		static void IDirectInput_EnumDevices(IDirectInputA* _ref, DI8DeviceType dwDevType, LPDIENUMDEVICESCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) => _ref.lpVtbl.EnumDevices(_ref, (.)dwDevType, lpCallback, pvRef, dwFlags);
		static void IDirectInput_GetDeviceStatus(IDirectInputA* _ref, REFGUID rguidInstance) => _ref.lpVtbl.GetDeviceStatus(_ref, rguidInstance);
		static void IDirectInput_RunControlPanel(IDirectInputA* _ref, HWND hwndOwner, DWORD dwFlags) => _ref.lpVtbl.RunControlPanel(_ref, hwndOwner, dwFlags);
		static void IDirectInput_Initialize(IDirectInputA* _ref, HINSTANCE hinst, DWORD dwVersion) => _ref.lpVtbl.Initialize(_ref, hinst, dwVersion);
/*#else
		/*** IUnknown methods ***/
		#define IDirectInput_QueryInterface(p,a,b) (p).QueryInterface(a,b)
		#define IDirectInput_AddRef(p)             (p).AddRef()
		#define IDirectInput_Release(p)            (p).Release()
		/*** IDirectInput methods ***/
		#define IDirectInput_CreateDevice(p,a,b,c)  (p).CreateDevice(a,b,c)
		#define IDirectInput_EnumDevices(p,a,b,c,d) (p).EnumDevices(a,b,c,d)
		#define IDirectInput_GetDeviceStatus(p,a)   (p).GetDeviceStatus(a)
		#define IDirectInput_RunControlPanel(p,a,b) (p).RunControlPanel(a,b)
		#define IDirectInput_Initialize(p,a,b)      (p).Initialize(a,b)
		#endif*/

		/*****************************************************************************
		 * IDirectInput2A interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInput2A
		[CRepr]
		struct IDirectInput2AVtbl : IDirectInputAVtbl
		{
			/*** IUnknown methods ***/
			/*STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;
			/*** IDirectInputA methods ***/
			STDMETHOD(CreateDevice)(Self _ref, REFGUID rguid, LPDIRECTINPUTDEVICEA *lplpDirectInputDevice, LPUNKNOWN pUnkOuter) PURE;
			STDMETHOD(EnumDevices)(Self _ref, DWORD dwDevType, LPDIENUMDEVICESCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(GetDeviceStatus)(Self _ref, REFGUID rguidInstance) PURE;
			STDMETHOD(RunControlPanel)(Self _ref, HWND hwndOwner, DWORD dwFlags) PURE;
			STDMETHOD(Initialize)(Self _ref, HINSTANCE hinst, DWORD dwVersion) PURE;*/
			/*** IDirectInput2A methods ***/
			public function void(IDirectInput2A* _ref, REFGUID rguid, LPCSTR pszName, LPGUID pguidInstance) FindDevice;
		};

		[CRepr]
		struct IDirectInput2A
		{
			public IDirectInput2AVtbl* lpVtbl;
		}

		/*****************************************************************************
		 * IDirectInput2W interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInput2W
		/*DECLARE_INTERFACE_(IDirectInput2W,IDirectInputW)
		{
			/*** IUnknown methods ***/
			STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;
			/*** IDirectInputW methods ***/
			STDMETHOD(CreateDevice)(Self _ref, REFGUID rguid, LPDIRECTINPUTDEVICEW *lplpDirectInputDevice, LPUNKNOWN pUnkOuter) PURE;
			STDMETHOD(EnumDevices)(Self _ref, DWORD dwDevType, LPDIENUMDEVICESCALLBACKW lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(GetDeviceStatus)(Self _ref, REFGUID rguidInstance) PURE;
			STDMETHOD(RunControlPanel)(Self _ref, HWND hwndOwner, DWORD dwFlags) PURE;
			STDMETHOD(Initialize)(Self _ref, HINSTANCE hinst, DWORD dwVersion) PURE;
			/*** IDirectInput2W methods ***/
			STDMETHOD(FindDevice)(Self _ref, REFGUID rguid, LPCWSTR pszName, LPGUID pguidInstance) PURE;
		};*/

//#if !defined(__cplusplus) || defined(CINTERFACE)
		static void IDirectInput2_QueryInterface(IDirectInput2A* _ref, REFIID a, void** b) => _ref.lpVtbl.QueryInterface((.)_ref, a, b);
		static void IDirectInput2_AddRef(IDirectInput2A* _ref) => _ref.lpVtbl.AddRef((.)_ref);
		static void IDirectInput2_Release(IDirectInput2A* _ref) => _ref.lpVtbl.Release((.)_ref);
				/*** IDirectInput methods ***/
		static void IDirectInput2_CreateDevice(IDirectInput2A* _ref, REFGUID rguid, LPDIRECTINPUTDEVICEA* lplpDirectInputDevice, LPUNKNOWN pUnkOuter) => _ref.lpVtbl.CreateDevice((.)_ref, rguid, lplpDirectInputDevice, pUnkOuter);
		static void IDirectInput2_EnumDevices(IDirectInput2A* _ref, DWORD dwDevType, LPDIENUMDEVICESCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) => _ref.lpVtbl.EnumDevices((.)_ref, dwDevType, lpCallback, pvRef, dwFlags);
		static void IDirectInput2_GetDeviceStatus(IDirectInput2A* _ref, REFGUID rguidInstance) => _ref.lpVtbl.GetDeviceStatus((.)_ref, rguidInstance);
		static void IDirectInput2_RunControlPanel(IDirectInput2A* _ref, HWND hwndOwner, DWORD dwFlags) => _ref.lpVtbl.RunControlPanel((.)_ref, hwndOwner, dwFlags);
		static void IDirectInput2_Initialize(IDirectInput2A* _ref, HINSTANCE hinst, DWORD dwVersion) => _ref.lpVtbl.Initialize((.)_ref, hinst, dwVersion);
		/*** IDirectInput2 methods ***/
		static void IDirectInput2_FindDevice(IDirectInput2A* _ref, REFGUID rguid, LPCSTR pszName, LPGUID pguidInstance) => _ref.lpVtbl.FindDevice(_ref, rguid, pszName, pguidInstance);
/*#else
		/*** IUnknown methods ***/
		#define IDirectInput2_QueryInterface(p,a,b) (p).QueryInterface(a,b)
		#define IDirectInput2_AddRef(p)             (p).AddRef()
		#define IDirectInput2_Release(p)            (p).Release()
		/*** IDirectInput methods ***/
		#define IDirectInput2_CreateDevice(p,a,b,c)  (p).CreateDevice(a,b,c)
		#define IDirectInput2_EnumDevices(p,a,b,c,d) (p).EnumDevices(a,b,c,d)
		#define IDirectInput2_GetDeviceStatus(p,a)   (p).GetDeviceStatus(a)
		#define IDirectInput2_RunControlPanel(p,a,b) (p).RunControlPanel(a,b)
		#define IDirectInput2_Initialize(p,a,b)      (p).Initialize(a,b)
		/*** IDirectInput2 methods ***/
		#define IDirectInput2_FindDevice(p,a,b,c)    (p).FindDevice(a,b,c)
		#endif*/

		/*****************************************************************************
		 * IDirectInput7A interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInput7A
		[CRepr]
		struct IDirectInput7AVtbl : IDirectInput2AVtbl
		{
			/*** IUnknown methods ***/
			/*STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;
			/*** IDirectInputA methods ***/
			STDMETHOD(CreateDevice)(Self _ref, REFGUID rguid, LPDIRECTINPUTDEVICEA *lplpDirectInputDevice, LPUNKNOWN pUnkOuter) PURE;
			STDMETHOD(EnumDevices)(Self _ref, DWORD dwDevType, LPDIENUMDEVICESCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(GetDeviceStatus)(Self _ref, REFGUID rguidInstance) PURE;
			STDMETHOD(RunControlPanel)(Self _ref, HWND hwndOwner, DWORD dwFlags) PURE;
			STDMETHOD(Initialize)(Self _ref, HINSTANCE hinst, DWORD dwVersion) PURE;
			/*** IDirectInput2A methods ***/
			STDMETHOD(FindDevice)(Self _ref, REFGUID rguid, LPCSTR pszName, LPGUID pguidInstance) PURE;*/
			/*** IDirectInput7A methods ***/
			public function void(IDirectInput7A* _ref, REFGUID rguid, REFIID riid, LPVOID* pvOut, LPUNKNOWN lpUnknownOuter) CreateDeviceEx;
		};

		[CRepr]
		struct IDirectInput7A
		{
			public IDirectInput7AVtbl* lpVtbl;
		}

		/*****************************************************************************
		 * IDirectInput7W interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInput7W
		/*[CRepr]
		struct IDirectInput7W : IDirectInput2W
		{
			/*** IUnknown methods ***/
			STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;
			/*** IDirectInputW methods ***/
			STDMETHOD(CreateDevice)(Self _ref, REFGUID rguid, LPDIRECTINPUTDEVICEW *lplpDirectInputDevice, LPUNKNOWN pUnkOuter) PURE;
			STDMETHOD(EnumDevices)(Self _ref, DWORD dwDevType, LPDIENUMDEVICESCALLBACKW lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(GetDeviceStatus)(Self _ref, REFGUID rguidInstance) PURE;
			STDMETHOD(RunControlPanel)(Self _ref, HWND hwndOwner, DWORD dwFlags) PURE;
			STDMETHOD(Initialize)(Self _ref, HINSTANCE hinst, DWORD dwVersion) PURE;
			/*** IDirectInput2W methods ***/
			STDMETHOD(FindDevice)(Self _ref, REFGUID rguid, LPCWSTR pszName, LPGUID pguidInstance) PURE;
			/*** IDirectInput7W methods ***/
			STDMETHOD(CreateDeviceEx)(Self _ref, REFGUID rguid, REFIID riid, LPVOID *pvOut, LPUNKNOWN lpUnknownOuter) PURE;
		};*/

//#if !defined(__cplusplus) || defined(CINTERFACE)
		/*** IUnknown methods ***/
		static void IDirectInput7_QueryInterface(IDirectInput7A* _ref, REFIID a, void** b) => _ref.lpVtbl.QueryInterface((.)_ref, a, b);
		static void IDirectInput7_AddRef(IDirectInput7A* _ref) => _ref.lpVtbl.AddRef((.)_ref);
		static void IDirectInput7_Release(IDirectInput7A* _ref) => _ref.lpVtbl.Release((.)_ref);
						/*** IDirectInput methods ***/
		static void IDirectInput7_CreateDevice(IDirectInput7A* _ref, REFGUID rguid, LPDIRECTINPUTDEVICEA* lplpDirectInputDevice, LPUNKNOWN pUnkOuter) => _ref.lpVtbl.CreateDevice((.)_ref, rguid, lplpDirectInputDevice, pUnkOuter);
		static void IDirectInput7_EnumDevices(IDirectInput7A* _ref, DWORD dwDevType, LPDIENUMDEVICESCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) => _ref.lpVtbl.EnumDevices((.)_ref, dwDevType, lpCallback, pvRef, dwFlags);
		static void IDirectInput7_GetDeviceStatus(IDirectInput7A* _ref, REFGUID rguidInstance) => _ref.lpVtbl.GetDeviceStatus((.)_ref, rguidInstance);
		static void IDirectInput7_RunControlPanel(IDirectInput7A* _ref, HWND hwndOwner, DWORD dwFlags) => _ref.lpVtbl.RunControlPanel((.)_ref, hwndOwner, dwFlags);
		static void IDirectInput7_Initialize(IDirectInput7A* _ref, HINSTANCE hinst, DWORD dwVersion) => _ref.lpVtbl.Initialize((.)_ref, hinst, dwVersion);
				/*** IDirectInput2 methods ***/
		static void IDirectInput7_FindDevice(IDirectInput7A* _ref, REFGUID rguid, LPCSTR pszName, LPGUID pguidInstance) => _ref.lpVtbl.FindDevice((.)_ref, rguid, pszName, pguidInstance);
		/*** IDirectInput7 methods ***/
		static void IDirectInput7_CreateDeviceEx(IDirectInput7A* _ref, REFGUID rguid, REFIID riid, LPVOID* pvOut, LPUNKNOWN lpUnknownOuter) => _ref.lpVtbl.CreateDeviceEx((.)_ref, rguid, riid, pvOut, lpUnknownOuter);
/*#else
		/*** IUnknown methods ***/
		#define IDirectInput7_QueryInterface(p,a,b) (p).QueryInterface(a,b)
		#define IDirectInput7_AddRef(p)             (p).AddRef()
		#define IDirectInput7_Release(p)            (p).Release()
		/*** IDirectInput methods ***/
		#define IDirectInput7_CreateDevice(p,a,b,c)  (p).CreateDevice(a,b,c)
		#define IDirectInput7_EnumDevices(p,a,b,c,d) (p).EnumDevices(a,b,c,d)
		#define IDirectInput7_GetDeviceStatus(p,a)   (p).GetDeviceStatus(a)
		#define IDirectInput7_RunControlPanel(p,a,b) (p).RunControlPanel(a,b)
		#define IDirectInput7_Initialize(p,a,b)      (p).Initialize(a,b)
		/*** IDirectInput2 methods ***/
		#define IDirectInput7_FindDevice(p,a,b,c)    (p).FindDevice(a,b,c)
		/*** IDirectInput7 methods ***/
		#define IDirectInput7_CreateDeviceEx(p,a,b,c,d) (p).CreateDeviceEx(a,b,c,d)
		#endif*/


//#if DIRECTINPUT_VERSION >= 0x0800
		/*****************************************************************************
		 * IDirectInput8A interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInput8A
		[CRepr]
		public struct IDirectInput8AVtbl : IUnknownVtbl
		{
			/*** IUnknown methods ***/
			/*STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;*/
			/*** IDirectInput8A methods ***/
			public function void(IDirectInput8AVtbl* _ref, REFGUID rguid, LPDIRECTINPUTDEVICE8A* lplpDirectInputDevice, LPUNKNOWN pUnkOuter) CreateDevice;
			public function void(IDirectInput8AVtbl* _ref, DWORD dwDevType, LPDIENUMDEVICESCALLBACKA lpCallback, LPVOID pvRef, DWORD dwFlags) EnumDevices;
			public function void(IDirectInput8AVtbl* _ref, REFGUID rguidInstance) GetDeviceStatus;
			public function void(IDirectInput8AVtbl* _ref, HWND hwndOwner, DWORD dwFlags) RunControlPanel;
			public function void(IDirectInput8AVtbl* _ref, HINSTANCE hinst, DWORD dwVersion) Initialize;
			public function void(IDirectInput8AVtbl* _ref, REFGUID rguid, LPCSTR pszName, LPGUID pguidInstance) FindDevice;
			public function void(IDirectInput8AVtbl* _ref, LPCSTR ptszUserName, LPDIACTIONFORMATA lpdiActionFormat, LPDIENUMDEVICESBYSEMANTICSCBA lpCallback, LPVOID pvRef, DWORD dwFlags) EnumDevicesBySemantics;
			public function void(IDirectInput8AVtbl* _ref, LPDICONFIGUREDEVICESCALLBACK lpdiCallback, LPDICONFIGUREDEVICESPARAMSA lpdiCDParams, DWORD dwFlags, LPVOID pvRefData) ConfigureDevices;
		};

		[CRepr]
		public struct IDirectInput8A
		{
			public IDirectInput8AVtbl* lpVtbl;
		}

		/*****************************************************************************
		 * IDirectInput8W interface
		 */
//#undef INTERFACE
//#define INTERFACE IDirectInput8W
		/*[CRepr]
		struct IDirectInput8W : IUnknown
		{
			/*** IUnknown methods ***/
			/*STDMETHOD_(HRESULT,QueryInterface)(Self _ref, REFIID riid, void** ppvObject) PURE;
			STDMETHOD_(ULONG,AddRef)(Self _ref) PURE;
			STDMETHOD_(ULONG,Release)(Self _ref) PURE;*/
			/*** IDirectInput8W methods ***/
			STDMETHOD(CreateDevice)(Self _ref, REFGUID rguid, LPDIRECTINPUTDEVICE8W *lplpDirectInputDevice, LPUNKNOWN pUnkOuter) PURE;
			STDMETHOD(EnumDevices)(Self _ref, DWORD dwDevType, LPDIENUMDEVICESCALLBACKW lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(GetDeviceStatus)(Self _ref, REFGUID rguidInstance) PURE;
			STDMETHOD(RunControlPanel)(Self _ref, HWND hwndOwner, DWORD dwFlags) PURE;
			STDMETHOD(Initialize)(Self _ref, HINSTANCE hinst, DWORD dwVersion) PURE;
			STDMETHOD(FindDevice)(Self _ref, REFGUID rguid, LPCWSTR pszName, LPGUID pguidInstance) PURE;
			STDMETHOD(EnumDevicesBySemantics)(Self _ref, LPCWSTR ptszUserName, LPDIACTIONFORMATW lpdiActionFormat, LPDIENUMDEVICESBYSEMANTICSCBW lpCallback, LPVOID pvRef, DWORD dwFlags) PURE;
			STDMETHOD(ConfigureDevices)(Self _ref, LPDICONFIGUREDEVICESCALLBACK lpdiCallback, LPDICONFIGUREDEVICESPARAMSW lpdiCDParams, DWORD dwFlags, LPVOID pvRefData) PURE;
		};*/
//#undef INTERFACE

//#if !defined(__cplusplus) || defined(CINTERFACE)
		/*** IUnknown methods ***/
		public static void IDirectInput8_QueryInterface(IDirectInput8A* _ref, REFIID a, void** b) => _ref.lpVtbl.QueryInterface((.)_ref, a, b);
		public static void IDirectInput8_AddRef(IDirectInput8A* _ref) => _ref.lpVtbl.AddRef((.)_ref);
		public static void IDirectInput8_Release(IDirectInput8A* _ref) => _ref.lpVtbl.Release((.)_ref);
		/*** IDirectInput8 methods ***/
		public static void IDirectInput8_CreateDevice(IDirectInput8A* _ref, REFGUID rguid, LPDIRECTINPUTDEVICE8A* lplpDirectInputDevice, LPUNKNOWN pUnkOuter) => _ref.lpVtbl.CreateDevice((.)_ref, rguid, lplpDirectInputDevice, pUnkOuter);
		public static void IDirectInput8_EnumDevices(IDirectInput8A* _ref, DI8DeviceClass dwDevType, LPDIENUMDEVICESCALLBACKA lpCallback, LPVOID pvRef, DIEDFL dwFlags) => _ref.lpVtbl.EnumDevices((.)_ref, (.)dwDevType, lpCallback, pvRef, (.)dwFlags);
		public static void IDirectInput8_GetDeviceStatus(IDirectInput8A* _ref, REFGUID rguidInstance) => _ref.lpVtbl.GetDeviceStatus((.)_ref, rguidInstance);
		public static void IDirectInput8_RunControlPanel(IDirectInput8A* _ref, HWND hwndOwner, DWORD dwFlags) => _ref.lpVtbl.RunControlPanel((.)_ref, hwndOwner, dwFlags);
		public static void IDirectInput8_Initialize(IDirectInput8A* _ref, HINSTANCE hinst, DWORD dwVersion) => _ref.lpVtbl.Initialize((.)_ref, hinst, dwVersion);
		public static void IDirectInput8_FindDevice(IDirectInput8A* _ref, REFGUID rguid, LPCSTR pszName, LPGUID pguidInstance) => _ref.lpVtbl.FindDevice((.)_ref, rguid, pszName, pguidInstance);
		public static void IDirectInput8_EnumDevicesBySemantics(IDirectInput8A* _ref, LPCSTR ptszUserName, LPDIACTIONFORMATA lpdiActionFormat, LPDIENUMDEVICESBYSEMANTICSCBA lpCallback, LPVOID pvRef, DWORD dwFlags) => _ref.lpVtbl.EnumDevicesBySemantics((.)_ref, ptszUserName, lpdiActionFormat, lpCallback, pvRef, dwFlags);
		public static void IDirectInput8_ConfigureDevices(IDirectInput8A* _ref, LPDICONFIGUREDEVICESCALLBACK lpdiCallback, LPDICONFIGUREDEVICESPARAMSA lpdiCDParams, DWORD dwFlags, LPVOID pvRefData) => _ref.lpVtbl.ConfigureDevices((.)_ref, lpdiCallback, lpdiCDParams, dwFlags, pvRefData);
/*#else
		/*** IUnknown methods ***/
		#define IDirectInput8_QueryInterface(p,a,b) (p).QueryInterface(a,b)
		#define IDirectInput8_AddRef(p)             (p).AddRef()
		#define IDirectInput8_Release(p)            (p).Release()
		/*** IDirectInput8 methods ***/
		#define IDirectInput8_CreateDevice(p,a,b,c)       (p).CreateDevice(a,b,c)
		#define IDirectInput8_EnumDevices(p,a,b,c,d)      (p).EnumDevices(a,b,c,d)
		#define IDirectInput8_GetDeviceStatus(p,a)        (p).GetDeviceStatus(a)
		#define IDirectInput8_RunControlPanel(p,a,b)      (p).RunControlPanel(a,b)
		#define IDirectInput8_Initialize(p,a,b)           (p).Initialize(a,b)
		#define IDirectInput8_FindDevice(p,a,b,c)         (p).FindDevice(a,b,c)
		#define IDirectInput8_EnumDevicesBySemantics(p,a,b,c,d,e) (p).EnumDevicesBySemantics(a,b,c,d,e)
		#define IDirectInput8_ConfigureDevices(p,a,b,c,d) (p).ConfigureDevices(a,b,c,d)
		#endif

		#endif /* DI8 */*/

		/* Export functions */


//#if DIRECTINPUT_VERSION >= 0x0800
		[Import(DInputDll), CLink]
		public static extern HRESULT DirectInput8Create(HINSTANCE a, DWORD b, REFIID c, LPVOID* d, LPUNKNOWN e);
/*#else /* DI < 8 */
		HRESULT WINAPI DirectInputCreateA(HINSTANCE,DWORD,LPDIRECTINPUTA *,LPUNKNOWN);
		HRESULT WINAPI DirectInputCreateW(HINSTANCE,DWORD,LPDIRECTINPUTW *,LPUNKNOWN);
	#define DirectInputCreate WINELIB_NAME_AW(DirectInputCreate)

		HRESULT WINAPI DirectInputCreateEx(HINSTANCE,DWORD,REFIID,LPVOID *,LPUNKNOWN);
	#endif /* DI8 */*/
	}
}
