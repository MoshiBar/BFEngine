namespace Win32
{
	extension Win32
	{
		public enum WndProcMessage : uint32
		{
			Create				= 0x01,
			Destroy				= 0x02,
			Move				= 0x03,
			Size				= 0x05,
			Activate			= 0x06,
			SetFocus			= 0x07,
			KillFocus			= 0x08,
			ENABLE				= 0x0A,
			SetRedraw			= 0x0B,
			SetText				= 0x0C,
			GetText				= 0x0D,
			GetTextLength		= 0x0E,
			Paint				= 0x0F,
			EraseBkgnd			= 0x14,
			ActivateApp			= 0x1C,
			SetCursor			= 0x20,
			MouseActivate		= 0x21,
			GetMinMaxInfo		= 0x24,

			WMGetObject			= 0x3d,

			WindowPosChanging	= 0x46,
			WindowPosChanged	= 0x47,
			ContextMenu			= 0x7b,
			GetIcon				= 0x7F,
			NCCreate			= 0x81,
			NCDestroy			= 0x82,
			NCCalcSize			= 0x83,
			NCHitTest			= 0x84,
			NCPaint				= 0x85,
			NCActivate			= 0x86,
			NCMouseMove			= 0xa0,
			NCLButtonDown		= 0xa1,

			KeyDown				= 0x100,
			//KeyFirst			= 0x100,
			KeyUp				= 0x101,
			Char				= 0x102,
			DeadChar			= 0x103,
			SysKeyDown			= 0x104,
			SysKeyUp			= 0x105,
			SysCommand			= 0x112,

			MouseMove			= 0x200,
			LButtonDown			= 0x201,
			LButtonUp			= 0x202,
			LButtonDoubleClick	= 0x203,
			RButtonDown			= 0x204,
			RButtonUp			= 0x205,
			RButtonDoubleClick	= 0x206,
			MButtonDown			= 0x207,
			MButtonUp			= 0x208,
			ButtonDoubleClick	= 0x209,
			//MouseLast			= 0x209,
			MouseWheel			= 0x20A,

			Sizing				= 0x214,
			CaptureChanged		= 0x215,
			Moving				= 0x216,

			EnterSizeMove		= 0x231,
			ExitSizeMove		= 0x232,

			NCMouseLeave		= 0x2A2,
			IME_SetContext		= 0x281,
			IME_Notify			= 0x282,
		}
	}
}