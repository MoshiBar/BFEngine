using System;

// namespace Management.MobileDeviceManagementRegistration
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const HResult MENROLL_E_DEVICE_MESSAGE_FORMAT_ERROR = -2145910783;
		public const HResult MENROLL_E_DEVICE_AUTHENTICATION_ERROR = -2145910782;
		public const HResult MENROLL_E_DEVICE_AUTHORIZATION_ERROR = -2145910781;
		public const HResult MENROLL_E_DEVICE_CERTIFICATEREQUEST_ERROR = -2145910780;
		public const HResult MENROLL_E_DEVICE_CONFIGMGRSERVER_ERROR = -2145910779;
		public const HResult MENROLL_E_DEVICE_INTERNALSERVICE_ERROR = -2145910778;
		public const HResult MENROLL_E_DEVICE_INVALIDSECURITY_ERROR = -2145910777;
		public const HResult MENROLL_E_DEVICE_UNKNOWN_ERROR = -2145910776;
		public const HResult MENROLL_E_ENROLLMENT_IN_PROGRESS = -2145910775;
		public const HResult MENROLL_E_DEVICE_ALREADY_ENROLLED = -2145910774;
		public const HResult MENROLL_E_DISCOVERY_SEC_CERT_DATE_INVALID = -2145910771;
		public const HResult MENROLL_E_PASSWORD_NEEDED = -2145910770;
		public const HResult MENROLL_E_WAB_ERROR = -2145910769;
		public const HResult MENROLL_E_CONNECTIVITY = -2145910768;
		public const HResult MENROLL_E_INVALIDSSLCERT = -2145910766;
		public const HResult MENROLL_E_DEVICEAPREACHED = -2145910765;
		public const HResult MENROLL_E_DEVICENOTSUPPORTED = -2145910764;
		public const HResult MENROLL_E_NOT_SUPPORTED = -2145910763;
		public const HResult MENROLL_E_NOTELIGIBLETORENEW = -2145910762;
		public const HResult MENROLL_E_INMAINTENANCE = -2145910761;
		public const HResult MENROLL_E_USER_LICENSE = -2145910760;
		public const HResult MENROLL_E_ENROLLMENTDATAINVALID = -2145910759;
		public const HResult MENROLL_E_INSECUREREDIRECT = -2145910758;
		public const HResult MENROLL_E_PLATFORM_WRONG_STATE = -2145910757;
		public const HResult MENROLL_E_PLATFORM_LICENSE_ERROR = -2145910756;
		public const HResult MENROLL_E_PLATFORM_UNKNOWN_ERROR = -2145910755;
		public const HResult MENROLL_E_PROV_CSP_CERTSTORE = -2145910754;
		public const HResult MENROLL_E_PROV_CSP_W7 = -2145910753;
		public const HResult MENROLL_E_PROV_CSP_DMCLIENT = -2145910752;
		public const HResult MENROLL_E_PROV_CSP_PFW = -2145910751;
		public const HResult MENROLL_E_PROV_CSP_MISC = -2145910750;
		public const HResult MENROLL_E_PROV_UNKNOWN = -2145910749;
		public const HResult MENROLL_E_PROV_SSLCERTNOTFOUND = -2145910748;
		public const HResult MENROLL_E_PROV_CSP_APPMGMT = -2145910747;
		public const HResult MENROLL_E_DEVICE_MANAGEMENT_BLOCKED = -2145910746;
		public const HResult MENROLL_E_CERTPOLICY_PRIVATEKEYCREATION_FAILED = -2145910745;
		public const HResult MENROLL_E_CERTAUTH_FAILED_TO_FIND_CERT = -2145910744;
		public const HResult MENROLL_E_EMPTY_MESSAGE = -2145910743;
		public const HResult MENROLL_E_USER_CANCELLED = -2145910736;
		public const HResult MENROLL_E_MDM_NOT_CONFIGURED = -2145910735;
		public const uint32 MDM_REGISTRATION_FACILITY_CODE = 25;
		public const uint32 DEVICE_ENROLLER_FACILITY_CODE = 24;
		public const HResult MREGISTER_E_DEVICE_MESSAGE_FORMAT_ERROR = -2145845247;
		public const HResult MREGISTER_E_DEVICE_AUTHENTICATION_ERROR = -2145845246;
		public const HResult MREGISTER_E_DEVICE_AUTHORIZATION_ERROR = -2145845245;
		public const HResult MREGISTER_E_DEVICE_CERTIFCATEREQUEST_ERROR = -2145845244;
		public const HResult MENROLL_E_DEVICE_CERTIFCATEREQUEST_ERROR = -2145910780;
		public const HResult MREGISTER_E_DEVICE_CONFIGMGRSERVER_ERROR = -2145845243;
		public const HResult MREGISTER_E_DEVICE_INTERNALSERVICE_ERROR = -2145845242;
		public const HResult MREGISTER_E_DEVICE_INVALIDSECURITY_ERROR = -2145845241;
		public const HResult MREGISTER_E_DEVICE_UNKNOWN_ERROR = -2145845240;
		public const HResult MREGISTER_E_REGISTRATION_IN_PROGRESS = -2145845239;
		public const HResult MREGISTER_E_DEVICE_ALREADY_REGISTERED = -2145845238;
		public const HResult MREGISTER_E_DEVICE_NOT_REGISTERED = -2145845237;
		public const HResult MENROLL_E_DEVICE_NOT_ENROLLED = -2145910773;
		public const HResult MREGISTER_E_DISCOVERY_REDIRECTED = -2145845236;
		public const HResult MREGISTER_E_DEVICE_NOT_AD_REGISTERED_ERROR = -2145845235;
		public const HResult MREGISTER_E_DISCOVERY_FAILED = -2145845234;
		public const HResult MENROLL_E_DEVICECAPREACHED = -2145910765;
		public const HResult MENROLL_E_NOTSUPPORTED = -2145910763;
		public const HResult MENROLL_E_USERLICENSE = -2145910760;
		public const HResult MENROLL_E_USER_CANCELED = -2145910742;
		public const uint32 DEVICEREGISTRATIONTYPE_MDM_ONLY = 0;
		public const uint32 DEVICEREGISTRATIONTYPE_MAM = 5;
		public const uint32 DEVICEREGISTRATIONTYPE_MDM_DEVICEWIDE_WITH_AAD = 6;
		public const uint32 DEVICEREGISTRATIONTYPE_MDM_USERSPECIFIC_WITH_AAD = 13;
		
		// --- Enums ---
		
		public enum REGISTRATION_INFORMATION_CLASS : int32
		{
			DeviceRegistrationBasicInfo = 1,
			MaxDeviceInfoClass = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct MANAGEMENT_SERVICE_INFO
		{
			public char16* pszMDMServiceUri;
			public char16* pszAuthenticationUri;
		}
		[CRepr]
		public struct MANAGEMENT_REGISTRATION_INFO
		{
			public IntBool fDeviceRegisteredWithManagement;
			public uint32 dwDeviceRegistionKind;
			public char16* pszUPN;
			public char16* pszMDMServiceUri;
		}
		
		// --- Functions ---
		
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetDeviceRegistrationInfo(REGISTRATION_INFORMATION_CLASS DeviceInformationClass, void** ppDeviceRegistrationInfo);
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult IsDeviceRegisteredWithManagement(out IntBool pfIsDeviceRegisteredWithManagement, uint32 cchUPN, char16* pszUPN);
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult IsManagementRegistrationAllowed(out IntBool pfIsManagementRegistrationAllowed);
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult IsMdmUxWithoutAadAllowed(out IntBool isEnrollmentAllowed);
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult SetManagedExternally(IntBool IsManagedExternally);
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DiscoverManagementService(char16* pszUPN, out MANAGEMENT_SERVICE_INFO* ppMgmtInfo);
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RegisterDeviceWithManagementUsingAADCredentials(Handle UserToken);
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RegisterDeviceWithManagementUsingAADDeviceCredentials();
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RegisterDeviceWithManagementUsingAADDeviceCredentials2(char16* MDMApplicationID);
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RegisterDeviceWithManagement(char16* pszUPN, char16* ppszMDMServiceUri, char16* ppzsAccessToken);
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult UnregisterDeviceWithManagement(char16* enrollmentID);
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetDeviceManagementConfigInfo(char16* providerID, out uint32 configStringBufferLength, char16* configString);
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult SetDeviceManagementConfigInfo(char16* providerID, char16* configString);
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetManagementAppHyperlink(uint32 cchHyperlink, char16* pszHyperlink);
		[Import("mdmregistration.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DiscoverManagementServiceEx(char16* pszUPN, char16* pszDiscoveryServiceCandidate, out MANAGEMENT_SERVICE_INFO* ppMgmtInfo);
		[Import("mdmlocalmanagement.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RegisterDeviceWithLocalManagement(IntBool* alreadyRegistered);
		[Import("mdmlocalmanagement.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult ApplyLocalManagementSyncML(char16* syncMLRequest, char16** syncMLResult);
		[Import("mdmlocalmanagement.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult UnregisterDeviceWithLocalManagement();
	}
}
