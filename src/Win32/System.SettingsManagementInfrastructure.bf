using System;

// namespace System.SettingsManagementInfrastructure
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WCM_SETTINGS_ID_FLAG_REFERENCE = 0;
		public const uint32 WCM_SETTINGS_ID_FLAG_DEFINITION = 1;
		public const uint32 LINK_STORE_TO_ENGINE_INSTANCE = 1;
		public const uint32 LIMITED_VALIDATION_MODE = 1;
		public const HResult WCM_E_INTERNALERROR = -2145255424;
		public const HResult WCM_E_STATENODENOTFOUND = -2145255423;
		public const HResult WCM_E_STATENODENOTALLOWED = -2145255422;
		public const HResult WCM_E_ATTRIBUTENOTFOUND = -2145255421;
		public const HResult WCM_E_ATTRIBUTENOTALLOWED = -2145255420;
		public const HResult WCM_E_INVALIDVALUE = -2145255419;
		public const HResult WCM_E_INVALIDVALUEFORMAT = -2145255418;
		public const HResult WCM_E_TYPENOTSPECIFIED = -2145255417;
		public const HResult WCM_E_INVALIDDATATYPE = -2145255416;
		public const HResult WCM_E_NOTPOSITIONED = -2145255415;
		public const HResult WCM_E_READONLYITEM = -2145255414;
		public const HResult WCM_E_INVALIDPATH = -2145255413;
		public const HResult WCM_E_WRONGESCAPESTRING = -2145255412;
		public const HResult WCM_E_INVALIDVERSIONFORMAT = -2145255411;
		public const HResult WCM_E_INVALIDLANGUAGEFORMAT = -2145255410;
		public const HResult WCM_E_KEYNOTCHANGEABLE = -2145255409;
		public const HResult WCM_E_EXPRESSIONNOTFOUND = -2145255408;
		public const HResult WCM_E_SUBSTITUTIONNOTFOUND = -2145255407;
		public const HResult WCM_E_USERALREADYREGISTERED = -2145255406;
		public const HResult WCM_E_USERNOTFOUND = -2145255405;
		public const HResult WCM_E_NAMESPACENOTFOUND = -2145255404;
		public const HResult WCM_E_NAMESPACEALREADYREGISTERED = -2145255403;
		public const HResult WCM_E_STORECORRUPTED = -2145255402;
		public const HResult WCM_E_INVALIDEXPRESSIONSYNTAX = -2145255401;
		public const HResult WCM_E_NOTIFICATIONNOTFOUND = -2145255400;
		public const HResult WCM_E_CONFLICTINGASSERTION = -2145255399;
		public const HResult WCM_E_ASSERTIONFAILED = -2145255398;
		public const HResult WCM_E_DUPLICATENAME = -2145255397;
		public const HResult WCM_E_INVALIDKEY = -2145255396;
		public const HResult WCM_E_INVALIDSTREAM = -2145255395;
		public const HResult WCM_E_HANDLERNOTFOUND = -2145255394;
		public const HResult WCM_E_INVALIDHANDLERSYNTAX = -2145255393;
		public const HResult WCM_E_VALIDATIONFAILED = -2145255392;
		public const HResult WCM_E_RESTRICTIONFAILED = -2145255391;
		public const HResult WCM_E_MANIFESTCOMPILATIONFAILED = -2145255390;
		public const HResult WCM_E_CYCLICREFERENCE = -2145255389;
		public const HResult WCM_E_MIXTYPEASSERTION = -2145255388;
		public const HResult WCM_E_NOTSUPPORTEDFUNCTION = -2145255387;
		public const HResult WCM_E_VALUETOOBIG = -2145255386;
		public const HResult WCM_E_INVALIDATTRIBUTECOMBINATION = -2145255385;
		public const HResult WCM_E_ABORTOPERATION = -2145255384;
		public const HResult WCM_E_MISSINGCONFIGURATION = -2145255383;
		public const HResult WCM_E_INVALIDPROCESSORFORMAT = -2145255382;
		public const HResult WCM_E_SOURCEMANEMPTYVALUE = -2145255381;
		public const HResult WCM_S_INTERNALERROR = 2232320;
		public const HResult WCM_S_ATTRIBUTENOTFOUND = 2232321;
		public const HResult WCM_S_LEGACYSETTINGWARNING = 2232322;
		public const HResult WCM_S_INVALIDATTRIBUTECOMBINATION = 2232324;
		public const HResult WCM_S_ATTRIBUTENOTALLOWED = 2232325;
		public const HResult WCM_S_NAMESPACENOTFOUND = 2232326;
		public const HResult WCM_E_UNKNOWNRESULT = -2145251325;
		
		// --- Enums ---
		
		public enum WcmTargetMode : int32
		{
			OfflineMode = 1,
			OnlineMode = 2,
		}
		public enum WcmNamespaceEnumerationFlags : int32
		{
			SharedEnumeration = 1,
			UserEnumeration = 2,
			AllEnumeration = 3,
		}
		public enum WcmDataType : int32
		{
			Byte = 1,
			SByte = 2,
			UInt16 = 3,
			Int16 = 4,
			UInt32 = 5,
			Int32 = 6,
			UInt64 = 7,
			Int64 = 8,
			Boolean = 11,
			String = 12,
			FlagArray = 32768,
		}
		public enum WcmSettingType : int32
		{
			Scalar = 1,
			Complex = 2,
			List = 3,
		}
		public enum WcmRestrictionFacets : int32
		{
			MaxLength = 1,
			Enumeration = 2,
			MaxInclusive = 4,
			MinInclusive = 8,
		}
		public enum WcmUserStatus : int32
		{
			UnknownStatus = 0,
			UserRegistered = 1,
			UserUnregistered = 2,
			UserLoaded = 3,
			UserUnloaded = 4,
		}
		public enum WcmNamespaceAccess : int32
		{
			OnlyAccess = 1,
			WriteAccess = 2,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_SettingsEngine = .(0x9f7d7bb5, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IItemEnumerator : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb7, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Current(out VARIANT Item) mut => VT.Current(ref this, out Item);
			public HResult MoveNext(out IntBool ItemValid) mut => VT.MoveNext(ref this, out ItemValid);
			public HResult Reset() mut => VT.Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IItemEnumerator self, out VARIANT Item) Current;
				public new function [CallingConvention(.Stdcall)] HResult(ref IItemEnumerator self, out IntBool ItemValid) MoveNext;
				public new function [CallingConvention(.Stdcall)] HResult(ref IItemEnumerator self) Reset;
			}
		}
		[CRepr]
		public struct ISettingsIdentity : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb6, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetAttribute(void* Reserved, char16* Name, out BSTR Value) mut => VT.GetAttribute(ref this, Reserved, Name, out Value);
			public HResult SetAttribute(void* Reserved, char16* Name, char16* Value) mut => VT.SetAttribute(ref this, Reserved, Name, Value);
			public HResult ComGetFlags(out uint32 Flags) mut => VT.ComGetFlags(ref this, out Flags);
			public HResult SetFlags(uint32 Flags) mut => VT.SetFlags(ref this, Flags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsIdentity self, void* Reserved, char16* Name, out BSTR Value) GetAttribute;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsIdentity self, void* Reserved, char16* Name, char16* Value) SetAttribute;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsIdentity self, out uint32 Flags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsIdentity self, uint32 Flags) SetFlags;
			}
		}
		[CRepr]
		public struct ITargetInfo : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb8, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetTargetMode(out WcmTargetMode TargetMode) mut => VT.GetTargetMode(ref this, out TargetMode);
			public HResult SetTargetMode(WcmTargetMode TargetMode) mut => VT.SetTargetMode(ref this, TargetMode);
			public HResult GetTemporaryStoreLocation(out BSTR TemporaryStoreLocation) mut => VT.GetTemporaryStoreLocation(ref this, out TemporaryStoreLocation);
			public HResult SetTemporaryStoreLocation(char16* TemporaryStoreLocation) mut => VT.SetTemporaryStoreLocation(ref this, TemporaryStoreLocation);
			public HResult GetTargetID(out BSTR TargetID) mut => VT.GetTargetID(ref this, out TargetID);
			public HResult SetTargetID(Guid TargetID) mut => VT.SetTargetID(ref this, TargetID);
			public HResult GetTargetProcessorArchitecture(out BSTR ProcessorArchitecture) mut => VT.GetTargetProcessorArchitecture(ref this, out ProcessorArchitecture);
			public HResult SetTargetProcessorArchitecture(char16* ProcessorArchitecture) mut => VT.SetTargetProcessorArchitecture(ref this, ProcessorArchitecture);
			public HResult GetProperty(IntBool Offline, char16* Property, out BSTR Value) mut => VT.GetProperty(ref this, Offline, Property, out Value);
			public HResult SetProperty(IntBool Offline, char16* Property, char16* Value) mut => VT.SetProperty(ref this, Offline, Property, Value);
			public HResult GetEnumerator(out IItemEnumerator* Enumerator) mut => VT.GetEnumerator(ref this, out Enumerator);
			public HResult ExpandTarget(IntBool Offline, char16* Location, out BSTR ExpandedLocation) mut => VT.ExpandTarget(ref this, Offline, Location, out ExpandedLocation);
			public HResult ExpandTargetPath(IntBool Offline, char16* Location, out BSTR ExpandedLocation) mut => VT.ExpandTargetPath(ref this, Offline, Location, out ExpandedLocation);
			public HResult SetModulePath(char16* Module, char16* Path) mut => VT.SetModulePath(ref this, Module, Path);
			public HResult LoadModule(char16* Module, out HINSTANCE ModuleHandle) mut => VT.LoadModule(ref this, Module, out ModuleHandle);
			public HResult SetWow64Context(char16* InstallerModule, ref uint8 Wow64Context) mut => VT.SetWow64Context(ref this, InstallerModule, ref Wow64Context);
			public HResult TranslateWow64(char16* ClientArchitecture, char16* Value, out BSTR TranslatedValue) mut => VT.TranslateWow64(ref this, ClientArchitecture, Value, out TranslatedValue);
			public HResult SetSchemaHiveLocation(char16* pwzHiveDir) mut => VT.SetSchemaHiveLocation(ref this, pwzHiveDir);
			public HResult GetSchemaHiveLocation(out BSTR pHiveLocation) mut => VT.GetSchemaHiveLocation(ref this, out pHiveLocation);
			public HResult SetSchemaHiveMountName(char16* pwzMountName) mut => VT.SetSchemaHiveMountName(ref this, pwzMountName);
			public HResult GetSchemaHiveMountName(out BSTR pMountName) mut => VT.GetSchemaHiveMountName(ref this, out pMountName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, out WcmTargetMode TargetMode) GetTargetMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, WcmTargetMode TargetMode) SetTargetMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, out BSTR TemporaryStoreLocation) GetTemporaryStoreLocation;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, char16* TemporaryStoreLocation) SetTemporaryStoreLocation;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, out BSTR TargetID) GetTargetID;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, Guid TargetID) SetTargetID;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, out BSTR ProcessorArchitecture) GetTargetProcessorArchitecture;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, char16* ProcessorArchitecture) SetTargetProcessorArchitecture;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, IntBool Offline, char16* Property, out BSTR Value) GetProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, IntBool Offline, char16* Property, char16* Value) SetProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, out IItemEnumerator* Enumerator) GetEnumerator;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, IntBool Offline, char16* Location, out BSTR ExpandedLocation) ExpandTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, IntBool Offline, char16* Location, out BSTR ExpandedLocation) ExpandTargetPath;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, char16* Module, char16* Path) SetModulePath;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, char16* Module, out HINSTANCE ModuleHandle) LoadModule;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, char16* InstallerModule, ref uint8 Wow64Context) SetWow64Context;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, char16* ClientArchitecture, char16* Value, out BSTR TranslatedValue) TranslateWow64;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, char16* pwzHiveDir) SetSchemaHiveLocation;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, out BSTR pHiveLocation) GetSchemaHiveLocation;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, char16* pwzMountName) SetSchemaHiveMountName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ITargetInfo self, out BSTR pMountName) GetSchemaHiveMountName;
			}
		}
		[CRepr]
		public struct ISettingsEngine : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb9, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetNamespaces(WcmNamespaceEnumerationFlags Flags, void* Reserved, out IItemEnumerator* Namespaces) mut => VT.GetNamespaces(ref this, Flags, Reserved, out Namespaces);
			public HResult GetNamespace(ref ISettingsIdentity SettingsID, WcmNamespaceAccess Access, void* Reserved, out ISettingsNamespace* NamespaceItem) mut => VT.GetNamespace(ref this, ref SettingsID, Access, Reserved, out NamespaceItem);
			public HResult GetErrorDescription(int32 HResult, out BSTR Message) mut => VT.GetErrorDescription(ref this, HResult, out Message);
			public HResult CreateSettingsIdentity(out ISettingsIdentity* SettingsID) mut => VT.CreateSettingsIdentity(ref this, out SettingsID);
			public HResult GetStoreStatus(void* Reserved, out WcmUserStatus Status) mut => VT.GetStoreStatus(ref this, Reserved, out Status);
			public HResult LoadStore(uint32 Flags) mut => VT.LoadStore(ref this, Flags);
			public HResult UnloadStore(void* Reserved) mut => VT.UnloadStore(ref this, Reserved);
			public HResult RegisterNamespace(ref ISettingsIdentity SettingsID, ref IStream Stream, IntBool PushSettings, out VARIANT Results) mut => VT.RegisterNamespace(ref this, ref SettingsID, ref Stream, PushSettings, out Results);
			public HResult UnregisterNamespace(ref ISettingsIdentity SettingsID, IntBool RemoveSettings) mut => VT.UnregisterNamespace(ref this, ref SettingsID, RemoveSettings);
			public HResult CreateTargetInfo(out ITargetInfo* Target) mut => VT.CreateTargetInfo(ref this, out Target);
			public HResult GetTargetInfo(out ITargetInfo* Target) mut => VT.GetTargetInfo(ref this, out Target);
			public HResult SetTargetInfo(ref ITargetInfo Target) mut => VT.SetTargetInfo(ref this, ref Target);
			public HResult CreateSettingsContext(uint32 Flags, void* Reserved, out ISettingsContext* SettingsContext) mut => VT.CreateSettingsContext(ref this, Flags, Reserved, out SettingsContext);
			public HResult SetSettingsContext(ref ISettingsContext SettingsContext) mut => VT.SetSettingsContext(ref this, ref SettingsContext);
			public HResult ApplySettingsContext(ref ISettingsContext SettingsContext, out char16** pppwzIdentities, out uint pcIdentities) mut => VT.ApplySettingsContext(ref this, ref SettingsContext, out pppwzIdentities, out pcIdentities);
			public HResult GetSettingsContext(out ISettingsContext* SettingsContext) mut => VT.GetSettingsContext(ref this, out SettingsContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, WcmNamespaceEnumerationFlags Flags, void* Reserved, out IItemEnumerator* Namespaces) GetNamespaces;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, ref ISettingsIdentity SettingsID, WcmNamespaceAccess Access, void* Reserved, out ISettingsNamespace* NamespaceItem) GetNamespace;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, int32 HResult, out BSTR Message) GetErrorDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, out ISettingsIdentity* SettingsID) CreateSettingsIdentity;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, void* Reserved, out WcmUserStatus Status) GetStoreStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, uint32 Flags) LoadStore;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, void* Reserved) UnloadStore;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, ref ISettingsIdentity SettingsID, ref IStream Stream, IntBool PushSettings, out VARIANT Results) RegisterNamespace;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, ref ISettingsIdentity SettingsID, IntBool RemoveSettings) UnregisterNamespace;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, out ITargetInfo* Target) CreateTargetInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, out ITargetInfo* Target) GetTargetInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, ref ITargetInfo Target) SetTargetInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, uint32 Flags, void* Reserved, out ISettingsContext* SettingsContext) CreateSettingsContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, ref ISettingsContext SettingsContext) SetSettingsContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, ref ISettingsContext SettingsContext, out char16** pppwzIdentities, out uint pcIdentities) ApplySettingsContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsEngine self, out ISettingsContext* SettingsContext) GetSettingsContext;
			}
		}
		[CRepr]
		public struct ISettingsItem : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bbb, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetName(out BSTR Name) mut => VT.GetName(ref this, out Name);
			public HResult GetValue(out VARIANT Value) mut => VT.GetValue(ref this, out Value);
			public HResult SetValue(in VARIANT Value) mut => VT.SetValue(ref this, Value);
			public HResult GetSettingType(out WcmSettingType Type) mut => VT.GetSettingType(ref this, out Type);
			public HResult GetDataType(out WcmDataType Type) mut => VT.GetDataType(ref this, out Type);
			public HResult GetValueRaw(uint8** Data, out uint32 DataSize) mut => VT.GetValueRaw(ref this, Data, out DataSize);
			public HResult SetValueRaw(int32 DataType, uint8* Data, uint32 DataSize) mut => VT.SetValueRaw(ref this, DataType, Data, DataSize);
			public HResult HasChild(out IntBool ItemHasChild) mut => VT.HasChild(ref this, out ItemHasChild);
			public HResult Children(out IItemEnumerator* Children) mut => VT.Children(ref this, out Children);
			public HResult GetChild(char16* Name, out ISettingsItem* Child) mut => VT.GetChild(ref this, Name, out Child);
			public HResult GetSettingByPath(char16* Path, out ISettingsItem* Setting) mut => VT.GetSettingByPath(ref this, Path, out Setting);
			public HResult CreateSettingByPath(char16* Path, out ISettingsItem* Setting) mut => VT.CreateSettingByPath(ref this, Path, out Setting);
			public HResult RemoveSettingByPath(char16* Path) mut => VT.RemoveSettingByPath(ref this, Path);
			public HResult GetListKeyInformation(out BSTR KeyName, out WcmDataType DataType) mut => VT.GetListKeyInformation(ref this, out KeyName, out DataType);
			public HResult CreateListElement(in VARIANT KeyData, out ISettingsItem* Child) mut => VT.CreateListElement(ref this, KeyData, out Child);
			public HResult RemoveListElement(char16* ElementName) mut => VT.RemoveListElement(ref this, ElementName);
			public HResult Attributes(out IItemEnumerator* Attributes) mut => VT.Attributes(ref this, out Attributes);
			public HResult GetAttribute(char16* Name, out VARIANT Value) mut => VT.GetAttribute(ref this, Name, out Value);
			public HResult GetPath(out BSTR Path) mut => VT.GetPath(ref this, out Path);
			public HResult GetRestrictionFacets(out WcmRestrictionFacets RestrictionFacets) mut => VT.GetRestrictionFacets(ref this, out RestrictionFacets);
			public HResult GetRestriction(WcmRestrictionFacets RestrictionFacet, out VARIANT FacetData) mut => VT.GetRestriction(ref this, RestrictionFacet, out FacetData);
			public HResult GetKeyValue(out VARIANT Value) mut => VT.GetKeyValue(ref this, out Value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, out BSTR Name) GetName;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, out VARIANT Value) GetValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, in VARIANT Value) SetValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, out WcmSettingType Type) GetSettingType;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, out WcmDataType Type) GetDataType;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, uint8** Data, out uint32 DataSize) GetValueRaw;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, int32 DataType, uint8* Data, uint32 DataSize) SetValueRaw;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, out IntBool ItemHasChild) HasChild;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, out IItemEnumerator* Children) Children;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, char16* Name, out ISettingsItem* Child) GetChild;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, char16* Path, out ISettingsItem* Setting) GetSettingByPath;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, char16* Path, out ISettingsItem* Setting) CreateSettingByPath;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, char16* Path) RemoveSettingByPath;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, out BSTR KeyName, out WcmDataType DataType) GetListKeyInformation;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, in VARIANT KeyData, out ISettingsItem* Child) CreateListElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, char16* ElementName) RemoveListElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, out IItemEnumerator* Attributes) Attributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, char16* Name, out VARIANT Value) GetAttribute;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, out BSTR Path) GetPath;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, out WcmRestrictionFacets RestrictionFacets) GetRestrictionFacets;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, WcmRestrictionFacets RestrictionFacet, out VARIANT FacetData) GetRestriction;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsItem self, out VARIANT Value) GetKeyValue;
			}
		}
		[CRepr]
		public struct ISettingsNamespace : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bba, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetIdentity(out ISettingsIdentity* SettingsID) mut => VT.GetIdentity(ref this, out SettingsID);
			public HResult Settings(out IItemEnumerator* Settings) mut => VT.Settings(ref this, out Settings);
			public HResult Save(IntBool PushSettings, out ISettingsResult* Result) mut => VT.Save(ref this, PushSettings, out Result);
			public HResult GetSettingByPath(char16* Path, out ISettingsItem* Setting) mut => VT.GetSettingByPath(ref this, Path, out Setting);
			public HResult CreateSettingByPath(char16* Path, out ISettingsItem* Setting) mut => VT.CreateSettingByPath(ref this, Path, out Setting);
			public HResult RemoveSettingByPath(char16* Path) mut => VT.RemoveSettingByPath(ref this, Path);
			public HResult GetAttribute(char16* Name, out VARIANT Value) mut => VT.GetAttribute(ref this, Name, out Value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsNamespace self, out ISettingsIdentity* SettingsID) GetIdentity;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsNamespace self, out IItemEnumerator* Settings) Settings;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsNamespace self, IntBool PushSettings, out ISettingsResult* Result) Save;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsNamespace self, char16* Path, out ISettingsItem* Setting) GetSettingByPath;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsNamespace self, char16* Path, out ISettingsItem* Setting) CreateSettingByPath;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsNamespace self, char16* Path) RemoveSettingByPath;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsNamespace self, char16* Name, out VARIANT Value) GetAttribute;
			}
		}
		[CRepr]
		public struct ISettingsResult : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bbc, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetDescription(out BSTR description) mut => VT.GetDescription(ref this, out description);
			public HResult GetErrorCode(out HResult hrOut) mut => VT.GetErrorCode(ref this, out hrOut);
			public HResult GetContextDescription(out BSTR description) mut => VT.GetContextDescription(ref this, out description);
			public HResult GetLine(out uint32 dwLine) mut => VT.GetLine(ref this, out dwLine);
			public HResult GetColumn(out uint32 dwColumn) mut => VT.GetColumn(ref this, out dwColumn);
			public HResult GetSource(out BSTR file) mut => VT.GetSource(ref this, out file);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsResult self, out BSTR description) GetDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsResult self, out HResult hrOut) GetErrorCode;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsResult self, out BSTR description) GetContextDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsResult self, out uint32 dwLine) GetLine;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsResult self, out uint32 dwColumn) GetColumn;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsResult self, out BSTR file) GetSource;
			}
		}
		[CRepr]
		public struct ISettingsContext : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bbd, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Serialize(ref IStream pStream, ref ITargetInfo pTarget) mut => VT.Serialize(ref this, ref pStream, ref pTarget);
			public HResult Deserialize(ref IStream pStream, ref ITargetInfo pTarget, ISettingsResult*** pppResults, out uint pcResultCount) mut => VT.Deserialize(ref this, ref pStream, ref pTarget, pppResults, out pcResultCount);
			public HResult SetUserData(void* pUserData) mut => VT.SetUserData(ref this, pUserData);
			public HResult GetUserData(void** pUserData) mut => VT.GetUserData(ref this, pUserData);
			public HResult GetNamespaces(out IItemEnumerator* ppNamespaceIds) mut => VT.GetNamespaces(ref this, out ppNamespaceIds);
			public HResult GetStoredSettings(ref ISettingsIdentity pIdentity, out IItemEnumerator* ppAddedSettings, out IItemEnumerator* ppModifiedSettings, out IItemEnumerator* ppDeletedSettings) mut => VT.GetStoredSettings(ref this, ref pIdentity, out ppAddedSettings, out ppModifiedSettings, out ppDeletedSettings);
			public HResult RevertSetting(ref ISettingsIdentity pIdentity, char16* pwzSetting) mut => VT.RevertSetting(ref this, ref pIdentity, pwzSetting);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsContext self, ref IStream pStream, ref ITargetInfo pTarget) Serialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsContext self, ref IStream pStream, ref ITargetInfo pTarget, ISettingsResult*** pppResults, out uint pcResultCount) Deserialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsContext self, void* pUserData) SetUserData;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsContext self, void** pUserData) GetUserData;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsContext self, out IItemEnumerator* ppNamespaceIds) GetNamespaces;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsContext self, ref ISettingsIdentity pIdentity, out IItemEnumerator* ppAddedSettings, out IItemEnumerator* ppModifiedSettings, out IItemEnumerator* ppDeletedSettings) GetStoredSettings;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISettingsContext self, ref ISettingsIdentity pIdentity, char16* pwzSetting) RevertSetting;
			}
		}
		
	}
}
