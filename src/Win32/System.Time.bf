using System;
using static Win32.Win32;
using static System.Windows;

// namespace System.Time
namespace Win32.System
{
	public static class Time
	{
		// --- Constants ---
		
		public const uint32 TSF_Hardware = 1;
		public const uint32 TSF_Authenticated = 2;
		public const uint32 TSF_IPv6 = 4;
		public const uint32 TSF_SignatureAuthenticated = 8;
		
		// --- Structs ---
		
		[CRepr]
		public struct TIME_ZONE_INFORMATION
		{
			public int32 Bias;
			public char16[32] StandardName;
			public SYSTEMTIME StandardDate;
			public int32 StandardBias;
			public char16[32] DaylightName;
			public SYSTEMTIME DaylightDate;
			public int32 DaylightBias;
		}
		[CRepr]
		public struct DYNAMIC_TIME_ZONE_INFORMATION
		{
			public int32 Bias;
			public char16[32] StandardName;
			public SYSTEMTIME StandardDate;
			public int32 StandardBias;
			public char16[32] DaylightName;
			public SYSTEMTIME DaylightDate;
			public int32 DaylightBias;
			public char16[128] TimeZoneKeyName;
			public bool DynamicDaylightTimeDisabled;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SystemTimeToTzSpecificLocalTime(TIME_ZONE_INFORMATION* lpTimeZoneInformation, in SYSTEMTIME lpUniversalTime, out SYSTEMTIME lpLocalTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool TzSpecificLocalTimeToSystemTime(TIME_ZONE_INFORMATION* lpTimeZoneInformation, in SYSTEMTIME lpLocalTime, out SYSTEMTIME lpUniversalTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool FileTimeToSystemTime(in FileTime lpFileTime, out SYSTEMTIME lpSystemTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SystemTimeToFileTime(in SYSTEMTIME lpSystemTime, out FileTime lpFileTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTimeZoneInformation(out TIME_ZONE_INFORMATION lpTimeZoneInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetTimeZoneInformation(in TIME_ZONE_INFORMATION lpTimeZoneInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetDynamicTimeZoneInformation(in DYNAMIC_TIME_ZONE_INFORMATION lpTimeZoneInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDynamicTimeZoneInformation(out DYNAMIC_TIME_ZONE_INFORMATION pTimeZoneInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetTimeZoneInformationForYear(uint16 wYear, DYNAMIC_TIME_ZONE_INFORMATION* pdtzi, out TIME_ZONE_INFORMATION ptzi);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumDynamicTimeZoneInformation(uint32 dwIndex, out DYNAMIC_TIME_ZONE_INFORMATION lpTimeZoneInformation);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDynamicTimeZoneInformationEffectiveYears(in DYNAMIC_TIME_ZONE_INFORMATION lpTimeZoneInformation, out uint32 FirstYear, out uint32 LastYear);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SystemTimeToTzSpecificLocalTimeEx(DYNAMIC_TIME_ZONE_INFORMATION* lpTimeZoneInformation, in SYSTEMTIME lpUniversalTime, out SYSTEMTIME lpLocalTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool TzSpecificLocalTimeToSystemTimeEx(DYNAMIC_TIME_ZONE_INFORMATION* lpTimeZoneInformation, in SYSTEMTIME lpLocalTime, out SYSTEMTIME lpUniversalTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LocalFileTimeToLocalSystemTime(TIME_ZONE_INFORMATION* timeZoneInformation, in FileTime localFileTime, out SYSTEMTIME localSystemTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LocalSystemTimeToLocalFileTime(TIME_ZONE_INFORMATION* timeZoneInformation, in SYSTEMTIME localSystemTime, out FileTime localFileTime);
	}
}
