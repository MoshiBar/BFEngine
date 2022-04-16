using System;

// namespace Data.RightsManagement
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DRMHANDLE_INVALID = 0;
		public const uint32 DRMENVHANDLE_INVALID = 0;
		public const uint32 DRMQUERYHANDLE_INVALID = 0;
		public const uint32 DRMHSESSION_INVALID = 0;
		public const uint32 DRMPUBHANDLE_INVALID = 0;
		public const uint32 DRM_AL_NONSILENT = 1;
		public const uint32 DRM_AL_NOPERSIST = 2;
		public const uint32 DRM_AL_CANCEL = 4;
		public const uint32 DRM_AL_FETCHNOADVISORY = 8;
		public const uint32 DRM_AL_NOUI = 16;
		public const uint32 DRM_ACTIVATE_MACHINE = 1;
		public const uint32 DRM_ACTIVATE_GROUPIDENTITY = 2;
		public const uint32 DRM_ACTIVATE_TEMPORARY = 4;
		public const uint32 DRM_ACTIVATE_CANCEL = 8;
		public const uint32 DRM_ACTIVATE_SILENT = 16;
		public const uint32 DRM_ACTIVATE_SHARED_GROUPIDENTITY = 32;
		public const uint32 DRM_ACTIVATE_DELAYED = 64;
		public const uint32 DRM_EL_MACHINE = 1;
		public const uint32 DRM_EL_GROUPIDENTITY = 2;
		public const uint32 DRM_EL_GROUPIDENTITY_NAME = 4;
		public const uint32 DRM_EL_GROUPIDENTITY_LID = 8;
		public const uint32 DRM_EL_SPECIFIED_GROUPIDENTITY = 16;
		public const uint32 DRM_EL_EUL = 32;
		public const uint32 DRM_EL_EUL_LID = 64;
		public const uint32 DRM_EL_CLIENTLICENSOR = 128;
		public const uint32 DRM_EL_CLIENTLICENSOR_LID = 256;
		public const uint32 DRM_EL_SPECIFIED_CLIENTLICENSOR = 512;
		public const uint32 DRM_EL_REVOCATIONLIST = 1024;
		public const uint32 DRM_EL_REVOCATIONLIST_LID = 2048;
		public const uint32 DRM_EL_EXPIRED = 4096;
		public const uint32 DRM_EL_ISSUERNAME = 8192;
		public const uint32 DRM_EL_ISSUANCELICENSE_TEMPLATE = 16384;
		public const uint32 DRM_EL_ISSUANCELICENSE_TEMPLATE_LID = 32768;
		public const uint32 DRM_ADD_LICENSE_NOPERSIST = 0;
		public const uint32 DRM_ADD_LICENSE_PERSIST = 1;
		public const uint32 DRM_SERVICE_TYPE_ACTIVATION = 1;
		public const uint32 DRM_SERVICE_TYPE_CERTIFICATION = 2;
		public const uint32 DRM_SERVICE_TYPE_PUBLISHING = 4;
		public const uint32 DRM_SERVICE_TYPE_CLIENTLICENSOR = 8;
		public const uint32 DRM_SERVICE_TYPE_SILENT = 16;
		public const uint32 DRM_SERVICE_LOCATION_INTERNET = 1;
		public const uint32 DRM_SERVICE_LOCATION_ENTERPRISE = 2;
		public const uint32 DRM_SIGN_ONLINE = 1;
		public const uint32 DRM_SIGN_OFFLINE = 2;
		public const uint32 DRM_SIGN_CANCEL = 4;
		public const uint32 DRM_SERVER_ISSUANCELICENSE = 8;
		public const uint32 DRM_AUTO_GENERATE_KEY = 16;
		public const uint32 DRM_OWNER_LICENSE_NOPERSIST = 32;
		public const uint32 DRM_REUSE_KEY = 64;
		public const uint32 DRM_LOCKBOXTYPE_NONE = 0;
		public const uint32 DRM_LOCKBOXTYPE_WHITEBOX = 1;
		public const uint32 DRM_LOCKBOXTYPE_BLACKBOX = 2;
		public const uint32 DRM_LOCKBOXTYPE_DEFAULT = 2;
		public const uint32 DRM_AILT_NONSILENT = 1;
		public const uint32 DRM_AILT_OBTAIN_ALL = 2;
		public const uint32 DRM_AILT_CANCEL = 4;
		public const uint32 MSDRM_CLIENT_ZONE = 52992;
		public const uint32 MSDRM_POLICY_ZONE = 37632;
		public const uint32 DRMIDVERSION = 0;
		public const uint32 DRMBOUNDLICENSEPARAMSVERSION = 1;
		public const uint32 DRMBINDINGFLAGS_IGNORE_VALIDITY_INTERVALS = 1;
		public const uint32 DRMLICENSEACQDATAVERSION = 0;
		public const uint32 DRMACTSERVINFOVERSION = 0;
		public const uint32 DRMCLIENTSTRUCTVERSION = 1;
		public const uint32 DRMCALLBACKVERSION = 1;
		
		// --- Enums ---
		
		public enum DRMTIMETYPE : int32
		{
			SYSTEMUTC = 0,
			SYSTEMLOCAL = 1,
		}
		public enum DRMENCODINGTYPE : int32
		{
			BASE64 = 0,
			STRING = 1,
			LONG = 2,
			TIME = 3,
			UINT = 4,
			RAW = 5,
		}
		public enum DRMATTESTTYPE : int32
		{
			FULLENVIRONMENT = 0,
			HASHONLY = 1,
		}
		public enum DRMSPECTYPE : int32
		{
			UNKNOWN = 0,
			FILENAME = 1,
		}
		public enum DRMSECURITYPROVIDERTYPE : int32
		{
			DRMSECURITYPROVIDERTYPE_SOFTWARESECREP = 0,
		}
		public enum DRMGLOBALOPTIONS : int32
		{
			WINHTTP = 0,
			SERVERSECURITYPROCESSOR = 1,
		}
		public enum DRM_STATUS_MSG : int32
		{
			ACTIVATE_MACHINE = 0,
			ACTIVATE_GROUPIDENTITY = 1,
			ACQUIRE_LICENSE = 2,
			ACQUIRE_ADVISORY = 3,
			SIGN_ISSUANCE_LICENSE = 4,
			ACQUIRE_CLIENTLICENSOR = 5,
			ACQUIRE_ISSUANCE_LICENSE_TEMPLATE = 6,
		}
		public enum DRM_USAGEPOLICY_TYPE : int32
		{
			BYNAME = 0,
			BYPUBLICKEY = 1,
			BYDIGEST = 2,
			OSEXCLUSION = 3,
		}
		public enum DRM_DISTRIBUTION_POINT_INFO : int32
		{
			LICENSE_ACQUISITION = 0,
			PUBLISHING = 1,
			REFERRAL_INFO = 2,
		}
		
		// --- Function Pointers ---
		
		public function HResult DRMCALLBACK(DRM_STATUS_MSG param0, HResult param1, void* param2, void* param3);
		
		// --- Structs ---
		
		[CRepr]
		public struct DRMID
		{
			public uint32 uVersion;
			public char16* wszIDType;
			public char16* wszID;
		}
		[CRepr]
		public struct DRMBOUNDLICENSEPARAMS
		{
			public uint32 uVersion;
			public uint32 hEnablingPrincipal;
			public uint32 hSecureStore;
			public char16* wszRightsRequested;
			public char16* wszRightsGroup;
			public DRMID idResource;
			public uint32 cAuthenticatorCount;
			public uint32* rghAuthenticators;
			public char16* wszDefaultEnablingPrincipalCredentials;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct DRM_LICENSE_ACQ_DATA
		{
			public uint32 uVersion;
			public char16* wszURL;
			public char16* wszLocalFilename;
			public uint8* pbPostData;
			public uint32 dwPostDataSize;
			public char16* wszFriendlyName;
		}
		[CRepr]
		public struct DRM_ACTSERV_INFO
		{
			public uint32 uVersion;
			public char16* wszPubKey;
			public char16* wszURL;
		}
		[CRepr]
		public struct DRM_CLIENT_VERSION_INFO
		{
			public uint32 uStructVersion;
			public uint32[4] dwVersion;
			public char16[256] wszHierarchy;
			public char16[256] wszProductId;
			public char16[256] wszProductDescription;
		}
		
		// --- Functions ---
		
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMSetGlobalOptions(DRMGLOBALOPTIONS eGlobalOptions, void* pvdata, uint32 dwlen);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetClientVersion(out DRM_CLIENT_VERSION_INFO pDRMClientVersionInfo);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMInitEnvironment(DRMSECURITYPROVIDERTYPE eSecurityProviderType, DRMSPECTYPE eSpecification, char16* wszSecurityProvider, char16* wszManifestCredentials, char16* wszMachineCredentials, out uint32 phEnv, out uint32 phDefaultLibrary);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMLoadLibrary(uint32 hEnv, DRMSPECTYPE eSpecification, char16* wszLibraryProvider, char16* wszCredentials, out uint32 phLibrary);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCreateEnablingPrincipal(uint32 hEnv, uint32 hLibrary, char16* wszObject, out DRMID pidPrincipal, char16* wszCredentials, out uint32 phEnablingPrincipal);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCloseHandle(uint32 handle);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCloseEnvironmentHandle(uint32 hEnv);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMDuplicateHandle(uint32 hToCopy, out uint32 phCopy);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMDuplicateEnvironmentHandle(uint32 hToCopy, out uint32 phCopy);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMRegisterRevocationList(uint32 hEnv, char16* wszRevocationList);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCheckSecurity(uint32 hEnv, uint32 cLevel);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMRegisterContent(IntBool fRegister);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMEncrypt(uint32 hCryptoProvider, uint32 iPosition, uint32 cNumInBytes, out uint8 pbInData, out uint32 pcNumOutBytes, out uint8 pbOutData);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMDecrypt(uint32 hCryptoProvider, uint32 iPosition, uint32 cNumInBytes, out uint8 pbInData, out uint32 pcNumOutBytes, out uint8 pbOutData);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCreateBoundLicense(uint32 hEnv, out DRMBOUNDLICENSEPARAMS pParams, char16* wszLicenseChain, out uint32 phBoundLicense, out uint32 phErrorLog);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCreateEnablingBitsDecryptor(uint32 hBoundLicense, char16* wszRight, uint32 hAuxLib, char16* wszAuxPlug, out uint32 phDecryptor);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCreateEnablingBitsEncryptor(uint32 hBoundLicense, char16* wszRight, uint32 hAuxLib, char16* wszAuxPlug, out uint32 phEncryptor);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMAttest(uint32 hEnablingPrincipal, char16* wszData, DRMATTESTTYPE eType, out uint32 pcAttestedBlob, char16* wszAttestedBlob);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetTime(uint32 hEnv, DRMTIMETYPE eTimerIdType, out SYSTEMTIME poTimeObject);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetInfo(uint32 handle, char16* wszAttribute, ref DRMENCODINGTYPE peEncoding, out uint32 pcBuffer, out uint8 pbBuffer);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetEnvironmentInfo(uint32 handle, char16* wszAttribute, out DRMENCODINGTYPE peEncoding, out uint32 pcBuffer, out uint8 pbBuffer);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetProcAddress(uint32 hLibrary, char16* wszProcName, out FARPROC ppfnProcAddress);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetBoundLicenseObjectCount(uint32 hQueryRoot, char16* wszSubObjectType, out uint32 pcSubObjects);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetBoundLicenseObject(uint32 hQueryRoot, char16* wszSubObjectType, uint32 iWhich, out uint32 phSubObject);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetBoundLicenseAttributeCount(uint32 hQueryRoot, char16* wszAttribute, out uint32 pcAttributes);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetBoundLicenseAttribute(uint32 hQueryRoot, char16* wszAttribute, uint32 iWhich, out DRMENCODINGTYPE peEncoding, out uint32 pcBuffer, out uint8 pbBuffer);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCreateClientSession(DRMCALLBACK pfnCallback, uint32 uCallbackVersion, char16* wszGroupIDProviderType, char16* wszGroupID, out uint32 phClient);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMIsActivated(uint32 hClient, uint32 uFlags, out DRM_ACTSERV_INFO pActServInfo);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMActivate(uint32 hClient, uint32 uFlags, uint32 uLangID, out DRM_ACTSERV_INFO pActServInfo, void* pvContext, HWnd hParentWnd);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetServiceLocation(uint32 hClient, uint32 uServiceType, uint32 uServiceLocation, char16* wszIssuanceLicense, out uint32 puServiceURLLength, char16* wszServiceURL);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCreateLicenseStorageSession(uint32 hEnv, uint32 hDefaultLibrary, uint32 hClient, uint32 uFlags, char16* wszIssuanceLicense, out uint32 phLicenseStorage);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMAddLicense(uint32 hLicenseStorage, uint32 uFlags, char16* wszLicense);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMAcquireAdvisories(uint32 hLicenseStorage, char16* wszLicense, char16* wszURL, void* pvContext);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMEnumerateLicense(uint32 hSession, uint32 uFlags, uint32 uIndex, out IntBool pfSharedFlag, out uint32 puCertificateDataLen, char16* wszCertificateData);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMAcquireLicense(uint32 hSession, uint32 uFlags, char16* wszGroupIdentityCredential, char16* wszRequestedRights, char16* wszCustomData, char16* wszURL, void* pvContext);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMDeleteLicense(uint32 hSession, char16* wszLicenseId);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCloseSession(uint32 hSession);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMDuplicateSession(uint32 hSessionIn, out uint32 phSessionOut);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetSecurityProvider(uint32 uFlags, out uint32 puTypeLen, char16* wszType, out uint32 puPathLen, char16* wszPath);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMEncode(char16* wszAlgID, uint32 uDataLen, out uint8 pbDecodedData, out uint32 puEncodedStringLen, char16* wszEncodedString);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMDecode(char16* wszAlgID, char16* wszEncodedString, out uint32 puDecodedDataLen, out uint8 pbDecodedData);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMConstructCertificateChain(uint32 cCertificates, char16** rgwszCertificates, out uint32 pcChain, char16* wszChain);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMParseUnboundLicense(char16* wszCertificate, out uint32 phQueryRoot);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCloseQueryHandle(uint32 hQuery);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetUnboundLicenseObjectCount(uint32 hQueryRoot, char16* wszSubObjectType, out uint32 pcSubObjects);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetUnboundLicenseObject(uint32 hQueryRoot, char16* wszSubObjectType, uint32 iIndex, out uint32 phSubQuery);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetUnboundLicenseAttributeCount(uint32 hQueryRoot, char16* wszAttributeType, out uint32 pcAttributes);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetUnboundLicenseAttribute(uint32 hQueryRoot, char16* wszAttributeType, uint32 iWhich, out DRMENCODINGTYPE peEncoding, out uint32 pcBuffer, out uint8 pbBuffer);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetCertificateChainCount(char16* wszChain, out uint32 pcCertCount);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMDeconstructCertificateChain(char16* wszChain, uint32 iWhich, out uint32 pcCert, char16* wszCert);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMVerify(char16* wszData, out uint32 pcAttestedData, char16* wszAttestedData, out DRMATTESTTYPE peType, out uint32 pcPrincipal, char16* wszPrincipal, out uint32 pcManifest, char16* wszManifest);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCreateUser(char16* wszUserName, char16* wszUserId, char16* wszUserIdType, out uint32 phUser);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCreateRight(char16* wszRightName, out SYSTEMTIME pstFrom, out SYSTEMTIME pstUntil, uint32 cExtendedInfo, char16** pwszExtendedInfoName, char16** pwszExtendedInfoValue, out uint32 phRight);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMCreateIssuanceLicense(out SYSTEMTIME pstTimeFrom, out SYSTEMTIME pstTimeUntil, char16* wszReferralInfoName, char16* wszReferralInfoURL, uint32 hOwner, char16* wszIssuanceLicense, uint32 hBoundLicense, out uint32 phIssuanceLicense);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMAddRightWithUser(uint32 hIssuanceLicense, uint32 hRight, uint32 hUser);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMClearAllRights(uint32 hIssuanceLicense);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMSetMetaData(uint32 hIssuanceLicense, char16* wszContentId, char16* wszContentIdType, char16* wszSKUId, char16* wszSKUIdType, char16* wszContentType, char16* wszContentName);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMSetUsagePolicy(uint32 hIssuanceLicense, DRM_USAGEPOLICY_TYPE eUsagePolicyType, IntBool fDelete, IntBool fExclusion, char16* wszName, char16* wszMinVersion, char16* wszMaxVersion, char16* wszPublicKey, char16* wszDigestAlgorithm, out uint8 pbDigest, uint32 cbDigest);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMSetRevocationPoint(uint32 hIssuanceLicense, IntBool fDelete, char16* wszId, char16* wszIdType, char16* wszURL, out SYSTEMTIME pstFrequency, char16* wszName, char16* wszPublicKey);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMSetApplicationSpecificData(uint32 hIssuanceLicense, IntBool fDelete, char16* wszName, char16* wszValue);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMSetNameAndDescription(uint32 hIssuanceLicense, IntBool fDelete, uint32 lcid, char16* wszName, char16* wszDescription);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMSetIntervalTime(uint32 hIssuanceLicense, uint32 cDays);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetIssuanceLicenseTemplate(uint32 hIssuanceLicense, out uint32 puIssuanceLicenseTemplateLength, char16* wszIssuanceLicenseTemplate);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetSignedIssuanceLicense(uint32 hEnv, uint32 hIssuanceLicense, uint32 uFlags, out uint8 pbSymKey, uint32 cbSymKey, char16* wszSymKeyType, char16* wszClientLicensorCertificate, DRMCALLBACK pfnCallback, char16* wszURL, void* pvContext);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetSignedIssuanceLicenseEx(uint32 hEnv, uint32 hIssuanceLicense, uint32 uFlags, uint8* pbSymKey, uint32 cbSymKey, char16* wszSymKeyType, void* pvReserved, uint32 hEnablingPrincipal, uint32 hBoundLicenseCLC, DRMCALLBACK pfnCallback, void* pvContext);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMClosePubHandle(uint32 hPub);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMDuplicatePubHandle(uint32 hPubIn, out uint32 phPubOut);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetUserInfo(uint32 hUser, out uint32 puUserNameLength, char16* wszUserName, out uint32 puUserIdLength, char16* wszUserId, out uint32 puUserIdTypeLength, char16* wszUserIdType);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetRightInfo(uint32 hRight, out uint32 puRightNameLength, char16* wszRightName, out SYSTEMTIME pstFrom, out SYSTEMTIME pstUntil);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetRightExtendedInfo(uint32 hRight, uint32 uIndex, out uint32 puExtendedInfoNameLength, char16* wszExtendedInfoName, out uint32 puExtendedInfoValueLength, char16* wszExtendedInfoValue);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetUsers(uint32 hIssuanceLicense, uint32 uIndex, out uint32 phUser);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetUserRights(uint32 hIssuanceLicense, uint32 hUser, uint32 uIndex, out uint32 phRight);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetMetaData(uint32 hIssuanceLicense, out uint32 puContentIdLength, char16* wszContentId, out uint32 puContentIdTypeLength, char16* wszContentIdType, out uint32 puSKUIdLength, char16* wszSKUId, out uint32 puSKUIdTypeLength, char16* wszSKUIdType, out uint32 puContentTypeLength, char16* wszContentType, out uint32 puContentNameLength, char16* wszContentName);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetApplicationSpecificData(uint32 hIssuanceLicense, uint32 uIndex, out uint32 puNameLength, char16* wszName, out uint32 puValueLength, char16* wszValue);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetIssuanceLicenseInfo(uint32 hIssuanceLicense, out SYSTEMTIME pstTimeFrom, out SYSTEMTIME pstTimeUntil, uint32 uFlags, out uint32 puDistributionPointNameLength, char16* wszDistributionPointName, out uint32 puDistributionPointURLLength, char16* wszDistributionPointURL, out uint32 phOwner, out IntBool pfOfficial);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetRevocationPoint(uint32 hIssuanceLicense, out uint32 puIdLength, char16* wszId, out uint32 puIdTypeLength, char16* wszIdType, out uint32 puURLLength, char16* wszRL, out SYSTEMTIME pstFrequency, out uint32 puNameLength, char16* wszName, out uint32 puPublicKeyLength, char16* wszPublicKey);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetUsagePolicy(uint32 hIssuanceLicense, uint32 uIndex, out DRM_USAGEPOLICY_TYPE peUsagePolicyType, out IntBool pfExclusion, out uint32 puNameLength, char16* wszName, out uint32 puMinVersionLength, char16* wszMinVersion, out uint32 puMaxVersionLength, char16* wszMaxVersion, out uint32 puPublicKeyLength, char16* wszPublicKey, out uint32 puDigestAlgorithmLength, char16* wszDigestAlgorithm, out uint32 pcbDigest, out uint8 pbDigest);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetNameAndDescription(uint32 hIssuanceLicense, uint32 uIndex, out uint32 pulcid, out uint32 puNameLength, char16* wszName, out uint32 puDescriptionLength, char16* wszDescription);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetOwnerLicense(uint32 hIssuanceLicense, out uint32 puOwnerLicenseLength, char16* wszOwnerLicense);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMGetIntervalTime(uint32 hIssuanceLicense, out uint32 pcDays);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMRepair();
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMRegisterProtectedWindow(uint32 hEnv, HWnd hwnd);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMIsWindowProtected(HWnd hwnd, out IntBool pfProtected);
		[Import("msdrm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DRMAcquireIssuanceLicenseTemplate(uint32 hClient, uint32 uFlags, void* pvReserved, uint32 cTemplates, char16** pwszTemplateIds, char16* wszUrl, void* pvContext);
	}
}
