using System;

// namespace System.UserAccessLogging
namespace Win32
{
	extension Win32
	{
		// --- Structs ---
		
		[CRepr]
		public struct UAL_DATA_BLOB
		{
			public uint32 Size;
			public Guid RoleGuid;
			public Guid TenantId;
			public SOCKADDR_STORAGE Address;
			public char16[260] UserName;
		}
		
		// --- Functions ---
		
		[Import("ualapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult UalStart(ref UAL_DATA_BLOB Data);
		[Import("ualapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult UalStop(ref UAL_DATA_BLOB Data);
		[Import("ualapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult UalInstrument(ref UAL_DATA_BLOB Data);
		[Import("ualapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult UalRegisterProduct(char16* wszProductName, char16* wszRoleName, char16* wszGuid);
	}
}
