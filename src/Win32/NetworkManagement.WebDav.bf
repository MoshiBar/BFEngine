using System;

// namespace NetworkManagement.WebDav
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DAV_AUTHN_SCHEME_BASIC = 1;
		public const uint32 DAV_AUTHN_SCHEME_NTLM = 2;
		public const uint32 DAV_AUTHN_SCHEME_PASSPORT = 4;
		public const uint32 DAV_AUTHN_SCHEME_DIGEST = 8;
		public const uint32 DAV_AUTHN_SCHEME_NEGOTIATE = 16;
		public const uint32 DAV_AUTHN_SCHEME_CERT = 65536;
		public const uint32 DAV_AUTHN_SCHEME_FBA = 1048576;
		
		// --- Enums ---
		
		public enum AUTHNEXTSTEP : int32
		{
			DefaultBehavior = 0,
			RetryRequest = 1,
			CancelRequest = 2,
		}
		
		// --- Function Pointers ---
		
		public function uint32 PFNDAVAUTHCALLBACK_FREECRED(void* pbuffer);
		public function uint32 PFNDAVAUTHCALLBACK(char16* lpwzServerName, char16* lpwzRemoteName, uint32 dwAuthScheme, uint32 dwFlags, out DAV_CALLBACK_CRED pCallbackCred, out AUTHNEXTSTEP NextStep, out PFNDAVAUTHCALLBACK_FREECRED pFreeCred);
		
		// --- Structs ---
		
		[CRepr]
		public struct DAV_CALLBACK_AUTH_BLOB
		{
			public void* pBuffer;
			public uint32 ulSize;
			public uint32 ulType;
		}
		[CRepr]
		public struct DAV_CALLBACK_AUTH_UNP
		{
			public char16* pszUserName;
			public uint32 ulUserNameLength;
			public char16* pszPassword;
			public uint32 ulPasswordLength;
		}
		[CRepr]
		public struct DAV_CALLBACK_CRED
		{
			public DAV_CALLBACK_AUTH_BLOB AuthBlob;
			public DAV_CALLBACK_AUTH_UNP UNPBlob;
			public IntBool bAuthBlobValid;
			public IntBool bSave;
		}
		
		// --- Functions ---
		
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavAddConnection(out Handle ConnectionHandle, char16* RemoteName, char16* UserName, char16* Password, ref uint8 ClientCert, uint32 CertSize);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavDeleteConnection(Handle ConnectionHandle);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavGetUNCFromHTTPPath(char16* Url, char16* UncPath, out uint32 lpSize);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavGetHTTPFromUNCPath(char16* UncPath, char16* Url, out uint32 lpSize);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavGetTheLockOwnerOfTheFile(char16* FileName, char16* LockOwnerName, out uint32 LockOwnerNameLengthInBytes);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavGetExtendedError(Handle hFile, out uint32 ExtError, char16* ExtErrorString, out uint32 cChSize);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavFlushFile(Handle hFile);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavInvalidateCache(char16* URLName);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavCancelConnectionsToServer(char16* lpName, IntBool fForce);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavRegisterAuthCallback(PFNDAVAUTHCALLBACK CallBack, uint32 Version);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DavUnregisterAuthCallback(uint32 hCallback);
	}
}
