using System;

// namespace System.DeveloperLicensing
namespace Win32
{
	extension Win32
	{
		// --- Functions ---
		
		[Import("wsclient.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CheckDeveloperLicense(out FileTime pExpiration);
		[Import("wsclient.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult AcquireDeveloperLicense(HWnd hwndParent, out FileTime pExpiration);
		[Import("wsclient.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RemoveDeveloperLicense(HWnd hwndParent);
	}
}
