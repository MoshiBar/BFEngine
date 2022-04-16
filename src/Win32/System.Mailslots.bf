using System;

// namespace System.Mailslots
namespace Win32
{
	extension Win32
	{
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateMailslotA(char8* lpName, uint32 nMaxMessageSize, uint32 lReadTimeout, SECURITY_ATTRIBUTES* lpSecurityAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateMailslotW(char16* lpName, uint32 nMaxMessageSize, uint32 lReadTimeout, SECURITY_ATTRIBUTES* lpSecurityAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetMailslotInfo(Handle hMailslot, uint32* lpMaxMessageSize, uint32* lpNextSize, uint32* lpMessageCount, uint32* lpReadTimeout);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetMailslotInfo(Handle hMailslot, uint32 lReadTimeout);
	}
}
