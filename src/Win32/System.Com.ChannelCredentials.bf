using System;

// namespace System.Com.ChannelCredentials
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IChannelCredentials : IDispatch
		{
			public const new Guid IID = .(0x181b448c, 0xc17c, 0x4b17, 0xac, 0x6d, 0x06, 0x69, 0x9b, 0x93, 0x19, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetWindowsCredential(BSTR domain, BSTR username, BSTR password, int32 impersonationLevel, IntBool allowNtlm) mut => VT.SetWindowsCredential(ref this, domain, username, password, impersonationLevel, allowNtlm);
			public HResult SetUserNameCredential(BSTR username, BSTR password) mut => VT.SetUserNameCredential(ref this, username, password);
			public HResult SetClientCertificateFromStore(BSTR storeLocation, BSTR storeName, BSTR findYype, VARIANT findValue) mut => VT.SetClientCertificateFromStore(ref this, storeLocation, storeName, findYype, findValue);
			public HResult SetClientCertificateFromStoreByName(BSTR subjectName, BSTR storeLocation, BSTR storeName) mut => VT.SetClientCertificateFromStoreByName(ref this, subjectName, storeLocation, storeName);
			public HResult SetClientCertificateFromFile(BSTR filename, BSTR password, BSTR keystorageFlags) mut => VT.SetClientCertificateFromFile(ref this, filename, password, keystorageFlags);
			public HResult SetDefaultServiceCertificateFromStore(BSTR storeLocation, BSTR storeName, BSTR findType, VARIANT findValue) mut => VT.SetDefaultServiceCertificateFromStore(ref this, storeLocation, storeName, findType, findValue);
			public HResult SetDefaultServiceCertificateFromStoreByName(BSTR subjectName, BSTR storeLocation, BSTR storeName) mut => VT.SetDefaultServiceCertificateFromStoreByName(ref this, subjectName, storeLocation, storeName);
			public HResult SetDefaultServiceCertificateFromFile(BSTR filename, BSTR password, BSTR keystorageFlags) mut => VT.SetDefaultServiceCertificateFromFile(ref this, filename, password, keystorageFlags);
			public HResult SetServiceCertificateAuthentication(BSTR storeLocation, BSTR revocationMode, BSTR certificateValidationMode) mut => VT.SetServiceCertificateAuthentication(ref this, storeLocation, revocationMode, certificateValidationMode);
			public HResult SetIssuedToken(BSTR localIssuerAddres, BSTR localIssuerBindingType, BSTR localIssuerBinding) mut => VT.SetIssuedToken(ref this, localIssuerAddres, localIssuerBindingType, localIssuerBinding);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IChannelCredentials self, BSTR domain, BSTR username, BSTR password, int32 impersonationLevel, IntBool allowNtlm) SetWindowsCredential;
				public new function [CallingConvention(.Stdcall)] HResult(ref IChannelCredentials self, BSTR username, BSTR password) SetUserNameCredential;
				public new function [CallingConvention(.Stdcall)] HResult(ref IChannelCredentials self, BSTR storeLocation, BSTR storeName, BSTR findYype, VARIANT findValue) SetClientCertificateFromStore;
				public new function [CallingConvention(.Stdcall)] HResult(ref IChannelCredentials self, BSTR subjectName, BSTR storeLocation, BSTR storeName) SetClientCertificateFromStoreByName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IChannelCredentials self, BSTR filename, BSTR password, BSTR keystorageFlags) SetClientCertificateFromFile;
				public new function [CallingConvention(.Stdcall)] HResult(ref IChannelCredentials self, BSTR storeLocation, BSTR storeName, BSTR findType, VARIANT findValue) SetDefaultServiceCertificateFromStore;
				public new function [CallingConvention(.Stdcall)] HResult(ref IChannelCredentials self, BSTR subjectName, BSTR storeLocation, BSTR storeName) SetDefaultServiceCertificateFromStoreByName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IChannelCredentials self, BSTR filename, BSTR password, BSTR keystorageFlags) SetDefaultServiceCertificateFromFile;
				public new function [CallingConvention(.Stdcall)] HResult(ref IChannelCredentials self, BSTR storeLocation, BSTR revocationMode, BSTR certificateValidationMode) SetServiceCertificateAuthentication;
				public new function [CallingConvention(.Stdcall)] HResult(ref IChannelCredentials self, BSTR localIssuerAddres, BSTR localIssuerBindingType, BSTR localIssuerBinding) SetIssuedToken;
			}
		}
		
	}
}
