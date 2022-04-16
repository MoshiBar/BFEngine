using System;

// namespace UI.HiDpi
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const DPI_AWARENESS_CONTEXT DPI_AWARENESS_CONTEXT_UNAWARE = -1;
		public const DPI_AWARENESS_CONTEXT DPI_AWARENESS_CONTEXT_SYSTEM_AWARE = -2;
		public const DPI_AWARENESS_CONTEXT DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE = -3;
		public const DPI_AWARENESS_CONTEXT DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2 = -4;
		public const DPI_AWARENESS_CONTEXT DPI_AWARENESS_CONTEXT_UNAWARE_GDISCALED = -5;
		
		// --- Typedefs ---
		
		public typealias DPI_AWARENESS_CONTEXT = int;
		
		// --- Enums ---
		
		public enum DPI_AWARENESS : int32
		{
			INVALID = -1,
			UNAWARE = 0,
			SYSTEM_AWARE = 1,
			PER_MONITOR_AWARE = 2,
		}
		public enum DPI_HOSTING_BEHAVIOR : int32
		{
			INVALID = -1,
			DEFAULT = 0,
			MIXED = 1,
		}
		public enum DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS : uint32
		{
			DEFAULT = 0,
			DISABLE_FONT_UPDATE = 1,
			DISABLE_RELAYOUT = 2,
		}
		public enum DIALOG_DPI_CHANGE_BEHAVIORS : uint32
		{
			DEFAULT = 0,
			DISABLE_ALL = 1,
			DISABLE_RESIZE = 2,
			DISABLE_CONTROL_RELAYOUT = 4,
		}
		public enum PROCESS_DPI_AWARENESS : int32
		{
			DPI_UNAWARE = 0,
			SYSTEM_DPI_AWARE = 1,
			PER_MONITOR_DPI_AWARE = 2,
		}
		[AllowDuplicates]
		public enum MONITOR_DPI_TYPE : int32
		{
			EFFECTIVE_DPI = 0,
			ANGULAR_DPI = 1,
			RAW_DPI = 2,
			DEFAULT = 0,
		}
		
		// --- Functions ---
		
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int OpenThemeDataForDpi(HWnd hwnd, char16* pszClassList, uint32 dpi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetDialogControlDpiChangeBehavior(HWnd hWnd, DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS mask, DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS values);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS GetDialogControlDpiChangeBehavior(HWnd hWnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetDialogDpiChangeBehavior(HWnd hDlg, DIALOG_DPI_CHANGE_BEHAVIORS mask, DIALOG_DPI_CHANGE_BEHAVIORS values);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DIALOG_DPI_CHANGE_BEHAVIORS GetDialogDpiChangeBehavior(HWnd hDlg);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetSystemMetricsForDpi(int32 nIndex, uint32 dpi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AdjustWindowRectExForDpi(out RectI lpRect, uint32 dwStyle, IntBool bMenu, uint32 dwExStyle, uint32 dpi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LogicalToPhysicalPointForPerMonitorDPI(HWnd hWnd, out POINT lpPoint);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool PhysicalToLogicalPointForPerMonitorDPI(HWnd hWnd, out POINT lpPoint);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SystemParametersInfoForDpi(uint32 uiAction, uint32 uiParam, void* pvParam, uint32 fWinIni, uint32 dpi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_AWARENESS_CONTEXT SetThreadDpiAwarenessContext(DPI_AWARENESS_CONTEXT dpiContext);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_AWARENESS_CONTEXT GetThreadDpiAwarenessContext();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_AWARENESS_CONTEXT GetWindowDpiAwarenessContext(HWnd hwnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_AWARENESS GetAwarenessFromDpiAwarenessContext(DPI_AWARENESS_CONTEXT value);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDpiFromDpiAwarenessContext(DPI_AWARENESS_CONTEXT value);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AreDpiAwarenessContextsEqual(DPI_AWARENESS_CONTEXT dpiContextA, DPI_AWARENESS_CONTEXT dpiContextB);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsValidDpiAwarenessContext(DPI_AWARENESS_CONTEXT value);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDpiForWindow(HWnd hwnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDpiForSystem();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSystemDpiForProcess(Handle hProcess);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnableNonClientDpiScaling(HWnd hwnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessDpiAwarenessContext(DPI_AWARENESS_CONTEXT value);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_AWARENESS_CONTEXT GetDpiAwarenessContextForProcess(Handle hProcess);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_HOSTING_BEHAVIOR SetThreadDpiHostingBehavior(DPI_HOSTING_BEHAVIOR value);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_HOSTING_BEHAVIOR GetThreadDpiHostingBehavior();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_HOSTING_BEHAVIOR GetWindowDpiHostingBehavior(HWnd hwnd);
		[Import("api-ms-win-shcore-scaling-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult SetProcessDpiAwareness(PROCESS_DPI_AWARENESS value);
		[Import("api-ms-win-shcore-scaling-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetProcessDpiAwareness(Handle hprocess, out PROCESS_DPI_AWARENESS value);
		[Import("api-ms-win-shcore-scaling-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetDpiForMonitor(HMONITOR hmonitor, MONITOR_DPI_TYPE dpiType, out uint32 dpiX, out uint32 dpiY);
	}
}
