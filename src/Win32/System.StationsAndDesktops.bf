using System;

// namespace System.StationsAndDesktops
namespace Win32
{
	extension Win32
	{
		// --- Typedefs ---
		
		public typealias HWINSTA = int;
		public typealias HDESK = int;
		
		// --- Enums ---
		
		public enum BROADCAST_SYSTEM_MESSAGE_FLAGS : uint32
		{
			ALLOWSFW = 128,
			FLUSHDISK = 4,
			FORCEIFHUNG = 32,
			IGNORECURRENTTASK = 2,
			NOHANG = 8,
			NOTIMEOUTIFNOTHUNG = 64,
			POSTMESSAGE = 16,
			QUERY = 1,
			SENDNOTIFYMESSAGE = 256,
			LUID = 1024,
			RETURNHDESK = 512,
		}
		public enum BROADCAST_SYSTEM_MESSAGE_INFO : uint32
		{
			ALLCOMPONENTS = 0,
			ALLDESKTOPS = 16,
			APPLICATIONS = 8,
		}
		public enum USER_OBJECT_INFORMATION_INDEX : uint32
		{
			FLAGS = 1,
			HEAPSIZE = 5,
			IO = 6,
			NAME = 2,
			TYPE = 3,
			USER_SID = 4,
		}
		
		// --- Function Pointers ---
		
		public function IntBool WINSTAENUMPROCA(char8* param0, LPARAM param1);
		public function IntBool WINSTAENUMPROCW(char16* param0, LPARAM param1);
		public function IntBool DESKTOPENUMPROCA(char8* param0, LPARAM param1);
		public function IntBool DESKTOPENUMPROCW(char16* param0, LPARAM param1);
		
		// --- Structs ---
		
		[CRepr]
		public struct USEROBJECTFLAGS
		{
			public IntBool fInherit;
			public IntBool fReserved;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct BSMINFO
		{
			public uint32 cbSize;
			public HDESK hdesk;
			public HWnd hwnd;
			public LUID luid;
		}
		
		// --- Functions ---
		
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDESK CreateDesktopA(char8* lpszDesktop, char8* lpszDevice, out DEVMODEA pDevmode, uint32 dwFlags, uint32 dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDESK CreateDesktopW(char16* lpszDesktop, char16* lpszDevice, out DEVMODEW pDevmode, uint32 dwFlags, uint32 dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDESK CreateDesktopExA(char8* lpszDesktop, char8* lpszDevice, out DEVMODEA pDevmode, uint32 dwFlags, uint32 dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa, uint32 ulHeapSize, void* pvoid);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDESK CreateDesktopExW(char16* lpszDesktop, char16* lpszDevice, out DEVMODEW pDevmode, uint32 dwFlags, uint32 dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa, uint32 ulHeapSize, void* pvoid);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDESK OpenDesktopA(char8* lpszDesktop, uint32 dwFlags, IntBool fInherit, uint32 dwDesiredAccess);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDESK OpenDesktopW(char16* lpszDesktop, uint32 dwFlags, IntBool fInherit, uint32 dwDesiredAccess);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDESK OpenInputDesktop(uint32 dwFlags, IntBool fInherit, uint32 dwDesiredAccess);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumDesktopsA(HWINSTA hwinsta, DESKTOPENUMPROCA lpEnumFunc, LPARAM lParam);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumDesktopsW(HWINSTA hwinsta, DESKTOPENUMPROCW lpEnumFunc, LPARAM lParam);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumDesktopWindows(HDESK hDesktop, WNDENUMPROC lpfn, LPARAM lParam);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SwitchDesktop(HDESK hDesktop);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetThreadDesktop(HDESK hDesktop);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CloseDesktop(HDESK hDesktop);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDESK GetThreadDesktop(uint32 dwThreadId);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWINSTA CreateWindowStationA(char8* lpwinsta, uint32 dwFlags, uint32 dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWINSTA CreateWindowStationW(char16* lpwinsta, uint32 dwFlags, uint32 dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWINSTA OpenWindowStationA(char8* lpszWinSta, IntBool fInherit, uint32 dwDesiredAccess);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWINSTA OpenWindowStationW(char16* lpszWinSta, IntBool fInherit, uint32 dwDesiredAccess);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumWindowStationsA(WINSTAENUMPROCA lpEnumFunc, LPARAM lParam);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumWindowStationsW(WINSTAENUMPROCW lpEnumFunc, LPARAM lParam);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CloseWindowStation(HWINSTA hWinSta);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessWindowStation(HWINSTA hWinSta);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWINSTA GetProcessWindowStation();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetUserObjectInformationA(Handle hObj, USER_OBJECT_INFORMATION_INDEX nIndex, void* pvInfo, uint32 nLength, uint32* lpnLengthNeeded);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetUserObjectInformationW(Handle hObj, USER_OBJECT_INFORMATION_INDEX nIndex, void* pvInfo, uint32 nLength, uint32* lpnLengthNeeded);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetUserObjectInformationA(Handle hObj, int32 nIndex, void* pvInfo, uint32 nLength);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetUserObjectInformationW(Handle hObj, int32 nIndex, void* pvInfo, uint32 nLength);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 BroadcastSystemMessageExA(BROADCAST_SYSTEM_MESSAGE_FLAGS flags, BROADCAST_SYSTEM_MESSAGE_INFO* lpInfo, uint32 Msg, WPARAM wParam, LPARAM lParam, BSMINFO* pbsmInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 BroadcastSystemMessageExW(BROADCAST_SYSTEM_MESSAGE_FLAGS flags, BROADCAST_SYSTEM_MESSAGE_INFO* lpInfo, uint32 Msg, WPARAM wParam, LPARAM lParam, BSMINFO* pbsmInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 BroadcastSystemMessageA(uint32 flags, uint32* lpInfo, uint32 Msg, WPARAM wParam, LPARAM lParam);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 BroadcastSystemMessageW(BROADCAST_SYSTEM_MESSAGE_FLAGS flags, BROADCAST_SYSTEM_MESSAGE_INFO* lpInfo, uint32 Msg, WPARAM wParam, LPARAM lParam);
	}
}
