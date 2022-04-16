using System;

// namespace Security.LicenseProtection
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum LicenseProtectionStatus : int32
		{
			Success = 0,
			LicenseKeyNotFound = 1,
			LicenseKeyUnprotected = 2,
			LicenseKeyCorrupted = 3,
			LicenseKeyAlreadyExists = 4,
		}
		
		// --- Functions ---
		
		[Import("licenseprotection.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RegisterLicenseKeyWithExpiration(char16* licenseKey, uint32 validityInDays, out LicenseProtectionStatus status);
		[Import("licenseprotection.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult ValidateLicenseKeyProtection(char16* licenseKey, out FileTime notValidBefore, out FileTime notValidAfter, out LicenseProtectionStatus status);
	}
}
