using System;

// namespace Security.DirectoryServices
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DSSI_READ_ONLY = 1;
		public const uint32 DSSI_NO_ACCESS_CHECK = 2;
		public const uint32 DSSI_NO_EDIT_SACL = 4;
		public const uint32 DSSI_NO_EDIT_OWNER = 8;
		public const uint32 DSSI_IS_ROOT = 16;
		public const uint32 DSSI_NO_FILTER = 32;
		public const uint32 DSSI_NO_READONLY_MESSAGE = 64;
		
		// --- Function Pointers ---
		
		public function HResult PFNREADOBJECTSECURITY(char16* param0, uint32 param1, out SECURITY_DESCRIPTOR* param2, LPARAM param3);
		public function HResult PFNWRITEOBJECTSECURITY(char16* param0, uint32 param1, out SECURITY_DESCRIPTOR param2, LPARAM param3);
		public function HResult PFNDSCREATEISECINFO(char16* param0, char16* param1, uint32 param2, out ISecurityInformation* param3, PFNREADOBJECTSECURITY param4, PFNWRITEOBJECTSECURITY param5, LPARAM param6);
		public function HResult PFNDSCREATEISECINFOEX(char16* param0, char16* param1, char16* param2, char16* param3, char16* param4, uint32 param5, out ISecurityInformation* param6, PFNREADOBJECTSECURITY param7, PFNWRITEOBJECTSECURITY param8, LPARAM param9);
		public function HResult PFNDSCREATESECPAGE(char16* param0, char16* param1, uint32 param2, out HPROPSHEETPAGE param3, PFNREADOBJECTSECURITY param4, PFNWRITEOBJECTSECURITY param5, LPARAM param6);
		public function HResult PFNDSEDITSECURITY(HWnd param0, char16* param1, char16* param2, uint32 param3, char16* param4, PFNREADOBJECTSECURITY param5, PFNWRITEOBJECTSECURITY param6, LPARAM param7);
		
		// --- Functions ---
		
		[Import("dssec.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DSCreateISecurityInfoObject(char16* pwszObjectPath, char16* pwszObjectClass, uint32 dwFlags, out ISecurityInformation* ppSI, PFNREADOBJECTSECURITY pfnReadSD, PFNWRITEOBJECTSECURITY pfnWriteSD, LPARAM lpContext);
		[Import("dssec.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DSCreateISecurityInfoObjectEx(char16* pwszObjectPath, char16* pwszObjectClass, char16* pwszServer, char16* pwszUserName, char16* pwszPassword, uint32 dwFlags, out ISecurityInformation* ppSI, PFNREADOBJECTSECURITY pfnReadSD, PFNWRITEOBJECTSECURITY pfnWriteSD, LPARAM lpContext);
		[Import("dssec.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DSCreateSecurityPage(char16* pwszObjectPath, char16* pwszObjectClass, uint32 dwFlags, out HPROPSHEETPAGE phPage, PFNREADOBJECTSECURITY pfnReadSD, PFNWRITEOBJECTSECURITY pfnWriteSD, LPARAM lpContext);
		[Import("dssec.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DSEditSecurity(HWnd hwndOwner, char16* pwszObjectPath, char16* pwszObjectClass, uint32 dwFlags, char16* pwszCaption, PFNREADOBJECTSECURITY pfnReadSD, PFNWRITEOBJECTSECURITY pfnWriteSD, LPARAM lpContext);
	}
}
