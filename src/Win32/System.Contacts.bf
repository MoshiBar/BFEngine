using System;

// namespace System.Contacts
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 CGD_DEFAULT = 0;
		public const uint32 CGD_UNKNOWN_PROPERTY = 0;
		public const uint32 CGD_STRING_PROPERTY = 1;
		public const uint32 CGD_DATE_PROPERTY = 2;
		public const uint32 CGD_BINARY_PROPERTY = 4;
		public const uint32 CGD_ARRAY_NODE = 8;
		public const Guid CLSID_ContactAggregationManager = .(0x96c8ad95, 0xc199, 0x44de, 0xb3, 0x4e, 0xac, 0x33, 0xc4, 0x42, 0xdf, 0x39);
		
		// --- Enums ---
		
		public enum CONTACT_AGGREGATION_CREATE_OR_OPEN_OPTIONS : int32
		{
			LOCAL = 0,
			EXTERNAL = 1,
		}
		public enum CONTACT_AGGREGATION_COLLECTION_OPTIONS : int32
		{
			DEFAULT = 0,
			INCLUDE_EXTERNAL = 1,
			EXTERNAL_ONLY = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct CONTACT_AGGREGATION_BLOB
		{
			public uint32 dwCount;
			public uint8* lpb;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_Contact = .(0x61b68808, 0x8eee, 0x4fd1, 0xac, 0xb8, 0x3d, 0x80, 0x4c, 0x8d, 0xb0, 0x56);
		public const Guid CLSID_ContactManager = .(0x7165c8ab, 0xaf88, 0x42bd, 0x86, 0xfd, 0x53, 0x10, 0xb4, 0x28, 0x5a, 0x02);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IContactManager : IUnknown
		{
			public const new Guid IID = .(0xad553d98, 0xdeb1, 0x474a, 0x8e, 0x17, 0xfc, 0x0c, 0x20, 0x75, 0xb7, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Initialize(char16* pszAppName, char16* pszAppVersion) mut => VT.Initialize(ref this, pszAppName, pszAppVersion);
			public HResult Load(char16* pszContactID, out IContact* ppContact) mut => VT.Load(ref this, pszContactID, out ppContact);
			public HResult MergeContactIDs(char16* pszNewContactID, char16* pszOldContactID) mut => VT.MergeContactIDs(ref this, pszNewContactID, pszOldContactID);
			public HResult GetMeContact(out IContact* ppMeContact) mut => VT.GetMeContact(ref this, out ppMeContact);
			public HResult SetMeContact(ref IContact pMeContact) mut => VT.SetMeContact(ref this, ref pMeContact);
			public HResult GetContactCollection(out IContactCollection* ppContactCollection) mut => VT.GetContactCollection(ref this, out ppContactCollection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactManager self, char16* pszAppName, char16* pszAppVersion) Initialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactManager self, char16* pszContactID, out IContact* ppContact) Load;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactManager self, char16* pszNewContactID, char16* pszOldContactID) MergeContactIDs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactManager self, out IContact* ppMeContact) GetMeContact;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactManager self, ref IContact pMeContact) SetMeContact;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactManager self, out IContactCollection* ppContactCollection) GetContactCollection;
			}
		}
		[CRepr]
		public struct IContactCollection : IUnknown
		{
			public const new Guid IID = .(0xb6afa338, 0xd779, 0x11d9, 0x8b, 0xde, 0xf6, 0x6b, 0xad, 0x1e, 0x3f, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Reset() mut => VT.Reset(ref this);
			public HResult Next() mut => VT.Next(ref this);
			public HResult GetCurrent(out IContact* ppContact) mut => VT.GetCurrent(ref this, out ppContact);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactCollection self) Reset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactCollection self) Next;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactCollection self, out IContact* ppContact) GetCurrent;
			}
		}
		[CRepr]
		public struct IContactProperties : IUnknown
		{
			public const new Guid IID = .(0x70dd27dd, 0x5cbd, 0x46e8, 0xbe, 0xf0, 0x23, 0xb6, 0xb3, 0x46, 0x28, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetString(char16* pszPropertyName, uint32 dwFlags, char16* pszValue, uint32 cchValue, out uint32 pdwcchPropertyValueRequired) mut => VT.GetString(ref this, pszPropertyName, dwFlags, pszValue, cchValue, out pdwcchPropertyValueRequired);
			public HResult GetDate(char16* pszPropertyName, uint32 dwFlags, out FileTime pftDateTime) mut => VT.GetDate(ref this, pszPropertyName, dwFlags, out pftDateTime);
			public HResult GetBinary(char16* pszPropertyName, uint32 dwFlags, char16* pszContentType, uint32 cchContentType, out uint32 pdwcchContentTypeRequired, out IStream* ppStream) mut => VT.GetBinary(ref this, pszPropertyName, dwFlags, pszContentType, cchContentType, out pdwcchContentTypeRequired, out ppStream);
			public HResult GetLabels(char16* pszArrayElementName, uint32 dwFlags, char16* pszLabels, uint32 cchLabels, out uint32 pdwcchLabelsRequired) mut => VT.GetLabels(ref this, pszArrayElementName, dwFlags, pszLabels, cchLabels, out pdwcchLabelsRequired);
			public HResult SetString(char16* pszPropertyName, uint32 dwFlags, char16* pszValue) mut => VT.SetString(ref this, pszPropertyName, dwFlags, pszValue);
			public HResult SetDate(char16* pszPropertyName, uint32 dwFlags, FileTime ftDateTime) mut => VT.SetDate(ref this, pszPropertyName, dwFlags, ftDateTime);
			public HResult SetBinary(char16* pszPropertyName, uint32 dwFlags, char16* pszContentType, ref IStream pStream) mut => VT.SetBinary(ref this, pszPropertyName, dwFlags, pszContentType, ref pStream);
			public HResult SetLabels(char16* pszArrayElementName, uint32 dwFlags, uint32 dwLabelCount, char16** ppszLabels) mut => VT.SetLabels(ref this, pszArrayElementName, dwFlags, dwLabelCount, ppszLabels);
			public HResult CreateArrayNode(char16* pszArrayName, uint32 dwFlags, IntBool fAppend, char16* pszNewArrayElementName, uint32 cchNewArrayElementName, out uint32 pdwcchNewArrayElementNameRequired) mut => VT.CreateArrayNode(ref this, pszArrayName, dwFlags, fAppend, pszNewArrayElementName, cchNewArrayElementName, out pdwcchNewArrayElementNameRequired);
			public HResult DeleteProperty(char16* pszPropertyName, uint32 dwFlags) mut => VT.DeleteProperty(ref this, pszPropertyName, dwFlags);
			public HResult DeleteArrayNode(char16* pszArrayElementName, uint32 dwFlags) mut => VT.DeleteArrayNode(ref this, pszArrayElementName, dwFlags);
			public HResult DeleteLabels(char16* pszArrayElementName, uint32 dwFlags) mut => VT.DeleteLabels(ref this, pszArrayElementName, dwFlags);
			public HResult GetPropertyCollection(out IContactPropertyCollection* ppPropertyCollection, uint32 dwFlags, char16* pszMultiValueName, uint32 dwLabelCount, char16** ppszLabels, IntBool fAnyLabelMatches) mut => VT.GetPropertyCollection(ref this, out ppPropertyCollection, dwFlags, pszMultiValueName, dwLabelCount, ppszLabels, fAnyLabelMatches);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactProperties self, char16* pszPropertyName, uint32 dwFlags, char16* pszValue, uint32 cchValue, out uint32 pdwcchPropertyValueRequired) GetString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactProperties self, char16* pszPropertyName, uint32 dwFlags, out FileTime pftDateTime) GetDate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactProperties self, char16* pszPropertyName, uint32 dwFlags, char16* pszContentType, uint32 cchContentType, out uint32 pdwcchContentTypeRequired, out IStream* ppStream) GetBinary;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactProperties self, char16* pszArrayElementName, uint32 dwFlags, char16* pszLabels, uint32 cchLabels, out uint32 pdwcchLabelsRequired) GetLabels;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactProperties self, char16* pszPropertyName, uint32 dwFlags, char16* pszValue) SetString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactProperties self, char16* pszPropertyName, uint32 dwFlags, FileTime ftDateTime) SetDate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactProperties self, char16* pszPropertyName, uint32 dwFlags, char16* pszContentType, ref IStream pStream) SetBinary;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactProperties self, char16* pszArrayElementName, uint32 dwFlags, uint32 dwLabelCount, char16** ppszLabels) SetLabels;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactProperties self, char16* pszArrayName, uint32 dwFlags, IntBool fAppend, char16* pszNewArrayElementName, uint32 cchNewArrayElementName, out uint32 pdwcchNewArrayElementNameRequired) CreateArrayNode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactProperties self, char16* pszPropertyName, uint32 dwFlags) DeleteProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactProperties self, char16* pszArrayElementName, uint32 dwFlags) DeleteArrayNode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactProperties self, char16* pszArrayElementName, uint32 dwFlags) DeleteLabels;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactProperties self, out IContactPropertyCollection* ppPropertyCollection, uint32 dwFlags, char16* pszMultiValueName, uint32 dwLabelCount, char16** ppszLabels, IntBool fAnyLabelMatches) GetPropertyCollection;
			}
		}
		[CRepr]
		public struct IContact : IUnknown
		{
			public const new Guid IID = .(0xf941b671, 0xbda7, 0x4f77, 0x88, 0x4a, 0xf4, 0x64, 0x62, 0xf2, 0x26, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetContactID(char16* pszContactID, uint32 cchContactID, out uint32 pdwcchContactIDRequired) mut => VT.GetContactID(ref this, pszContactID, cchContactID, out pdwcchContactIDRequired);
			public HResult GetPath(char16* pszPath, uint32 cchPath, out uint32 pdwcchPathRequired) mut => VT.GetPath(ref this, pszPath, cchPath, out pdwcchPathRequired);
			public HResult CommitChanges(uint32 dwCommitFlags) mut => VT.CommitChanges(ref this, dwCommitFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContact self, char16* pszContactID, uint32 cchContactID, out uint32 pdwcchContactIDRequired) GetContactID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContact self, char16* pszPath, uint32 cchPath, out uint32 pdwcchPathRequired) GetPath;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContact self, uint32 dwCommitFlags) CommitChanges;
			}
		}
		[CRepr]
		public struct IContactPropertyCollection : IUnknown
		{
			public const new Guid IID = .(0xffd3adf8, 0xfa64, 0x4328, 0xb1, 0xb6, 0x2e, 0x0d, 0xb5, 0x09, 0xcb, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Reset() mut => VT.Reset(ref this);
			public HResult Next() mut => VT.Next(ref this);
			public HResult GetPropertyName(char16* pszPropertyName, uint32 cchPropertyName, out uint32 pdwcchPropertyNameRequired) mut => VT.GetPropertyName(ref this, pszPropertyName, cchPropertyName, out pdwcchPropertyNameRequired);
			public HResult GetPropertyType(out uint32 pdwType) mut => VT.GetPropertyType(ref this, out pdwType);
			public HResult GetPropertyVersion(out uint32 pdwVersion) mut => VT.GetPropertyVersion(ref this, out pdwVersion);
			public HResult GetPropertyModificationDate(out FileTime pftModificationDate) mut => VT.GetPropertyModificationDate(ref this, out pftModificationDate);
			public HResult GetPropertyArrayElementID(char16* pszArrayElementID, uint32 cchArrayElementID, out uint32 pdwcchArrayElementIDRequired) mut => VT.GetPropertyArrayElementID(ref this, pszArrayElementID, cchArrayElementID, out pdwcchArrayElementIDRequired);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactPropertyCollection self) Reset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactPropertyCollection self) Next;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactPropertyCollection self, char16* pszPropertyName, uint32 cchPropertyName, out uint32 pdwcchPropertyNameRequired) GetPropertyName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactPropertyCollection self, out uint32 pdwType) GetPropertyType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactPropertyCollection self, out uint32 pdwVersion) GetPropertyVersion;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactPropertyCollection self, out FileTime pftModificationDate) GetPropertyModificationDate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactPropertyCollection self, char16* pszArrayElementID, uint32 cchArrayElementID, out uint32 pdwcchArrayElementIDRequired) GetPropertyArrayElementID;
			}
		}
		[CRepr]
		public struct IContactAggregationManager : IUnknown
		{
			public const new Guid IID = .(0x1d865989, 0x4b1f, 0x4b60, 0x8f, 0x34, 0xc2, 0xad, 0x46, 0x8b, 0x2b, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetVersionInfo(out int32 plMajorVersion, out int32 plMinorVersion) mut => VT.GetVersionInfo(ref this, out plMajorVersion, out plMinorVersion);
			public HResult CreateOrOpenGroup(char16* pGroupName, CONTACT_AGGREGATION_CREATE_OR_OPEN_OPTIONS options, out IntBool pCreatedGroup, out IContactAggregationGroup* ppGroup) mut => VT.CreateOrOpenGroup(ref this, pGroupName, options, out pCreatedGroup, out ppGroup);
			public HResult CreateExternalContact(out IContactAggregationContact* ppItem) mut => VT.CreateExternalContact(ref this, out ppItem);
			public HResult CreateServerPerson(out IContactAggregationServerPerson* ppServerPerson) mut => VT.CreateServerPerson(ref this, out ppServerPerson);
			public HResult CreateServerContactLink(out IContactAggregationLink* ppServerContactLink) mut => VT.CreateServerContactLink(ref this, out ppServerContactLink);
			public HResult Flush() mut => VT.Flush(ref this);
			public HResult OpenAggregateContact(char16* pItemId, out IContactAggregationAggregate* ppItem) mut => VT.OpenAggregateContact(ref this, pItemId, out ppItem);
			public HResult OpenContact(char16* pItemId, out IContactAggregationContact* ppItem) mut => VT.OpenContact(ref this, pItemId, out ppItem);
			public HResult OpenServerContactLink(char16* pItemId, out IContactAggregationLink* ppItem) mut => VT.OpenServerContactLink(ref this, pItemId, out ppItem);
			public HResult OpenServerPerson(char16* pItemId, out IContactAggregationServerPerson* ppItem) mut => VT.OpenServerPerson(ref this, pItemId, out ppItem);
			public HResult get_Contacts(CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationContactCollection* ppItems) mut => VT.get_Contacts(ref this, options, out ppItems);
			public HResult get_AggregateContacts(CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationAggregateCollection* ppAggregates) mut => VT.get_AggregateContacts(ref this, options, out ppAggregates);
			public HResult get_Groups(CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationGroupCollection* ppGroups) mut => VT.get_Groups(ref this, options, out ppGroups);
			public HResult get_ServerPersons(out IContactAggregationServerPersonCollection* ppServerPersonCollection) mut => VT.get_ServerPersons(ref this, out ppServerPersonCollection);
			public HResult get_ServerContactLinks(char16* pPersonItemId, out IContactAggregationLinkCollection* ppServerContactLinkCollection) mut => VT.get_ServerContactLinks(ref this, pPersonItemId, out ppServerContactLinkCollection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, out int32 plMajorVersion, out int32 plMinorVersion) GetVersionInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, char16* pGroupName, CONTACT_AGGREGATION_CREATE_OR_OPEN_OPTIONS options, out IntBool pCreatedGroup, out IContactAggregationGroup* ppGroup) CreateOrOpenGroup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, out IContactAggregationContact* ppItem) CreateExternalContact;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, out IContactAggregationServerPerson* ppServerPerson) CreateServerPerson;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, out IContactAggregationLink* ppServerContactLink) CreateServerContactLink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self) Flush;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, char16* pItemId, out IContactAggregationAggregate* ppItem) OpenAggregateContact;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, char16* pItemId, out IContactAggregationContact* ppItem) OpenContact;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, char16* pItemId, out IContactAggregationLink* ppItem) OpenServerContactLink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, char16* pItemId, out IContactAggregationServerPerson* ppItem) OpenServerPerson;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationContactCollection* ppItems) get_Contacts;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationAggregateCollection* ppAggregates) get_AggregateContacts;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationGroupCollection* ppGroups) get_Groups;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, out IContactAggregationServerPersonCollection* ppServerPersonCollection) get_ServerPersons;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationManager self, char16* pPersonItemId, out IContactAggregationLinkCollection* ppServerContactLinkCollection) get_ServerContactLinks;
			}
		}
		[CRepr]
		public struct IContactAggregationContact : IUnknown
		{
			public const new Guid IID = .(0x1eb22e86, 0x4c86, 0x41f0, 0x9f, 0x9f, 0xc2, 0x51, 0xe9, 0xfd, 0xa6, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Delete() mut => VT.Delete(ref this);
			public HResult Save() mut => VT.Save(ref this);
			public HResult MoveToAggregate(char16* pAggregateId) mut => VT.MoveToAggregate(ref this, pAggregateId);
			public HResult Unlink() mut => VT.Unlink(ref this);
			public HResult get_AccountId(out char16* ppAccountId) mut => VT.get_AccountId(ref this, out ppAccountId);
			public HResult put_AccountId(char16* pAccountId) mut => VT.put_AccountId(ref this, pAccountId);
			public HResult get_AggregateId(out char16* ppAggregateId) mut => VT.get_AggregateId(ref this, out ppAggregateId);
			public HResult get_Id(out char16* ppItemId) mut => VT.get_Id(ref this, out ppItemId);
			public HResult get_IsMe(out IntBool pIsMe) mut => VT.get_IsMe(ref this, out pIsMe);
			public HResult get_IsExternal(out IntBool pIsExternal) mut => VT.get_IsExternal(ref this, out pIsExternal);
			public HResult get_NetworkSourceId(out uint32 pNetworkSourceId) mut => VT.get_NetworkSourceId(ref this, out pNetworkSourceId);
			public HResult put_NetworkSourceId(uint32 networkSourceId) mut => VT.put_NetworkSourceId(ref this, networkSourceId);
			public HResult get_NetworkSourceIdString(out char16* ppNetworkSourceId) mut => VT.get_NetworkSourceIdString(ref this, out ppNetworkSourceId);
			public HResult put_NetworkSourceIdString(char16* pNetworkSourceId) mut => VT.put_NetworkSourceIdString(ref this, pNetworkSourceId);
			public HResult get_RemoteObjectId(out CONTACT_AGGREGATION_BLOB* ppRemoteObjectId) mut => VT.get_RemoteObjectId(ref this, out ppRemoteObjectId);
			public HResult put_RemoteObjectId(in CONTACT_AGGREGATION_BLOB pRemoteObjectId) mut => VT.put_RemoteObjectId(ref this, pRemoteObjectId);
			public HResult get_SyncIdentityHash(out CONTACT_AGGREGATION_BLOB* ppSyncIdentityHash) mut => VT.get_SyncIdentityHash(ref this, out ppSyncIdentityHash);
			public HResult put_SyncIdentityHash(in CONTACT_AGGREGATION_BLOB pSyncIdentityHash) mut => VT.put_SyncIdentityHash(ref this, pSyncIdentityHash);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self) Delete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self) Save;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, char16* pAggregateId) MoveToAggregate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self) Unlink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, out char16* ppAccountId) get_AccountId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, char16* pAccountId) put_AccountId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, out char16* ppAggregateId) get_AggregateId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, out char16* ppItemId) get_Id;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, out IntBool pIsMe) get_IsMe;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, out IntBool pIsExternal) get_IsExternal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, out uint32 pNetworkSourceId) get_NetworkSourceId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, uint32 networkSourceId) put_NetworkSourceId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, out char16* ppNetworkSourceId) get_NetworkSourceIdString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, char16* pNetworkSourceId) put_NetworkSourceIdString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, out CONTACT_AGGREGATION_BLOB* ppRemoteObjectId) get_RemoteObjectId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, in CONTACT_AGGREGATION_BLOB pRemoteObjectId) put_RemoteObjectId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, out CONTACT_AGGREGATION_BLOB* ppSyncIdentityHash) get_SyncIdentityHash;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContact self, in CONTACT_AGGREGATION_BLOB pSyncIdentityHash) put_SyncIdentityHash;
			}
		}
		[CRepr]
		public struct IContactAggregationContactCollection : IUnknown
		{
			public const new Guid IID = .(0x826e66fa, 0x81de, 0x43ca, 0xa6, 0xfb, 0x8c, 0x78, 0x5c, 0xd9, 0x96, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult FindFirst(out IContactAggregationContact* ppItem) mut => VT.FindFirst(ref this, out ppItem);
			public HResult FindNext(out IContactAggregationContact* ppItem) mut => VT.FindNext(ref this, out ppItem);
			public HResult FindFirstByIdentityHash(char16* pSourceType, char16* pAccountId, in CONTACT_AGGREGATION_BLOB pIdentityHash, out IContactAggregationContact* ppItem) mut => VT.FindFirstByIdentityHash(ref this, pSourceType, pAccountId, pIdentityHash, out ppItem);
			public HResult get_Count(out int32 pCount) mut => VT.get_Count(ref this, out pCount);
			public HResult FindFirstByRemoteId(char16* pSourceType, char16* pAccountId, in CONTACT_AGGREGATION_BLOB pRemoteObjectId, out IContactAggregationContact* ppItem) mut => VT.FindFirstByRemoteId(ref this, pSourceType, pAccountId, pRemoteObjectId, out ppItem);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContactCollection self, out IContactAggregationContact* ppItem) FindFirst;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContactCollection self, out IContactAggregationContact* ppItem) FindNext;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContactCollection self, char16* pSourceType, char16* pAccountId, in CONTACT_AGGREGATION_BLOB pIdentityHash, out IContactAggregationContact* ppItem) FindFirstByIdentityHash;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContactCollection self, out int32 pCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationContactCollection self, char16* pSourceType, char16* pAccountId, in CONTACT_AGGREGATION_BLOB pRemoteObjectId, out IContactAggregationContact* ppItem) FindFirstByRemoteId;
			}
		}
		[CRepr]
		public struct IContactAggregationAggregate : IUnknown
		{
			public const new Guid IID = .(0x7ed1c814, 0xcd30, 0x43c8, 0x9b, 0x8d, 0x2e, 0x48, 0x9e, 0x53, 0xd5, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Save() mut => VT.Save(ref this);
			public HResult GetComponentItems(out IContactAggregationContactCollection* pComponentItems) mut => VT.GetComponentItems(ref this, out pComponentItems);
			public HResult Link(char16* pAggregateId) mut => VT.Link(ref this, pAggregateId);
			public HResult get_Groups(CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationGroupCollection* ppGroups) mut => VT.get_Groups(ref this, options, out ppGroups);
			public HResult get_AntiLink(out char16* ppAntiLink) mut => VT.get_AntiLink(ref this, out ppAntiLink);
			public HResult put_AntiLink(char16* pAntiLink) mut => VT.put_AntiLink(ref this, pAntiLink);
			public HResult get_FavoriteOrder(out uint32 pFavoriteOrder) mut => VT.get_FavoriteOrder(ref this, out pFavoriteOrder);
			public HResult put_FavoriteOrder(uint32 favoriteOrder) mut => VT.put_FavoriteOrder(ref this, favoriteOrder);
			public HResult get_Id(out char16* ppItemId) mut => VT.get_Id(ref this, out ppItemId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationAggregate self) Save;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationAggregate self, out IContactAggregationContactCollection* pComponentItems) GetComponentItems;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationAggregate self, char16* pAggregateId) Link;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationAggregate self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationGroupCollection* ppGroups) get_Groups;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationAggregate self, out char16* ppAntiLink) get_AntiLink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationAggregate self, char16* pAntiLink) put_AntiLink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationAggregate self, out uint32 pFavoriteOrder) get_FavoriteOrder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationAggregate self, uint32 favoriteOrder) put_FavoriteOrder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationAggregate self, out char16* ppItemId) get_Id;
			}
		}
		[CRepr]
		public struct IContactAggregationAggregateCollection : IUnknown
		{
			public const new Guid IID = .(0x2359f3a6, 0x3a68, 0x40af, 0x98, 0xdb, 0x0f, 0x9e, 0xb1, 0x43, 0xc3, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult FindFirst(out IContactAggregationAggregate* ppAggregate) mut => VT.FindFirst(ref this, out ppAggregate);
			public HResult FindFirstByAntiLinkId(char16* pAntiLinkId, out IContactAggregationAggregate* ppAggregate) mut => VT.FindFirstByAntiLinkId(ref this, pAntiLinkId, out ppAggregate);
			public HResult FindNext(out IContactAggregationAggregate* ppAggregate) mut => VT.FindNext(ref this, out ppAggregate);
			public HResult get_Count(out int32 pCount) mut => VT.get_Count(ref this, out pCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationAggregateCollection self, out IContactAggregationAggregate* ppAggregate) FindFirst;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationAggregateCollection self, char16* pAntiLinkId, out IContactAggregationAggregate* ppAggregate) FindFirstByAntiLinkId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationAggregateCollection self, out IContactAggregationAggregate* ppAggregate) FindNext;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationAggregateCollection self, out int32 pCount) get_Count;
			}
		}
		[CRepr]
		public struct IContactAggregationGroup : IUnknown
		{
			public const new Guid IID = .(0xc93c545f, 0x1284, 0x499b, 0x96, 0xaf, 0x07, 0x37, 0x2a, 0xf4, 0x73, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Delete() mut => VT.Delete(ref this);
			public HResult Save() mut => VT.Save(ref this);
			public HResult Add(char16* pAggregateId) mut => VT.Add(ref this, pAggregateId);
			public HResult Remove(char16* pAggregateId) mut => VT.Remove(ref this, pAggregateId);
			public HResult get_Members(out IContactAggregationAggregateCollection* ppAggregateContactCollection) mut => VT.get_Members(ref this, out ppAggregateContactCollection);
			public HResult get_GlobalObjectId(out Guid pGlobalObjectId) mut => VT.get_GlobalObjectId(ref this, out pGlobalObjectId);
			public HResult put_GlobalObjectId(in Guid pGlobalObjectId) mut => VT.put_GlobalObjectId(ref this, pGlobalObjectId);
			public HResult get_Id(out char16* ppItemId) mut => VT.get_Id(ref this, out ppItemId);
			public HResult get_Name(out char16* ppName) mut => VT.get_Name(ref this, out ppName);
			public HResult put_Name(char16* pName) mut => VT.put_Name(ref this, pName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroup self) Delete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroup self) Save;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroup self, char16* pAggregateId) Add;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroup self, char16* pAggregateId) Remove;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroup self, out IContactAggregationAggregateCollection* ppAggregateContactCollection) get_Members;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroup self, out Guid pGlobalObjectId) get_GlobalObjectId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroup self, in Guid pGlobalObjectId) put_GlobalObjectId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroup self, out char16* ppItemId) get_Id;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroup self, out char16* ppName) get_Name;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroup self, char16* pName) put_Name;
			}
		}
		[CRepr]
		public struct IContactAggregationGroupCollection : IUnknown
		{
			public const new Guid IID = .(0x20a19a9c, 0xd2f3, 0x4b83, 0x91, 0x43, 0xbe, 0xff, 0xd2, 0xcc, 0x22, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult FindFirst(out IContactAggregationGroup* ppGroup) mut => VT.FindFirst(ref this, out ppGroup);
			public HResult FindFirstByGlobalObjectId(in Guid pGlobalObjectId, out IContactAggregationGroup* ppGroup) mut => VT.FindFirstByGlobalObjectId(ref this, pGlobalObjectId, out ppGroup);
			public HResult FindNext(out IContactAggregationGroup* ppGroup) mut => VT.FindNext(ref this, out ppGroup);
			public HResult get_Count(out uint32 pCount) mut => VT.get_Count(ref this, out pCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroupCollection self, out IContactAggregationGroup* ppGroup) FindFirst;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroupCollection self, in Guid pGlobalObjectId, out IContactAggregationGroup* ppGroup) FindFirstByGlobalObjectId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroupCollection self, out IContactAggregationGroup* ppGroup) FindNext;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationGroupCollection self, out uint32 pCount) get_Count;
			}
		}
		[CRepr]
		public struct IContactAggregationLink : IUnknown
		{
			public const new Guid IID = .(0xb6813323, 0xa183, 0x4654, 0x86, 0x27, 0x79, 0xb3, 0x0d, 0xe3, 0xa0, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Delete() mut => VT.Delete(ref this);
			public HResult Save() mut => VT.Save(ref this);
			public HResult get_AccountId(out char16* ppAccountId) mut => VT.get_AccountId(ref this, out ppAccountId);
			public HResult put_AccountId(char16* pAccountId) mut => VT.put_AccountId(ref this, pAccountId);
			public HResult get_Id(out char16* ppItemId) mut => VT.get_Id(ref this, out ppItemId);
			public HResult get_IsLinkResolved(out IntBool pIsLinkResolved) mut => VT.get_IsLinkResolved(ref this, out pIsLinkResolved);
			public HResult put_IsLinkResolved(IntBool isLinkResolved) mut => VT.put_IsLinkResolved(ref this, isLinkResolved);
			public HResult get_NetworkSourceIdString(out char16* ppNetworkSourceId) mut => VT.get_NetworkSourceIdString(ref this, out ppNetworkSourceId);
			public HResult put_NetworkSourceIdString(char16* pNetworkSourceId) mut => VT.put_NetworkSourceIdString(ref this, pNetworkSourceId);
			public HResult get_RemoteObjectId(out CONTACT_AGGREGATION_BLOB* ppRemoteObjectId) mut => VT.get_RemoteObjectId(ref this, out ppRemoteObjectId);
			public HResult put_RemoteObjectId(in CONTACT_AGGREGATION_BLOB pRemoteObjectId) mut => VT.put_RemoteObjectId(ref this, pRemoteObjectId);
			public HResult get_ServerPerson(out char16* ppServerPersonId) mut => VT.get_ServerPerson(ref this, out ppServerPersonId);
			public HResult put_ServerPerson(char16* pServerPersonId) mut => VT.put_ServerPerson(ref this, pServerPersonId);
			public HResult get_ServerPersonBaseline(out char16* ppServerPersonId) mut => VT.get_ServerPersonBaseline(ref this, out ppServerPersonId);
			public HResult put_ServerPersonBaseline(char16* pServerPersonId) mut => VT.put_ServerPersonBaseline(ref this, pServerPersonId);
			public HResult get_SyncIdentityHash(out CONTACT_AGGREGATION_BLOB* ppSyncIdentityHash) mut => VT.get_SyncIdentityHash(ref this, out ppSyncIdentityHash);
			public HResult put_SyncIdentityHash(in CONTACT_AGGREGATION_BLOB pSyncIdentityHash) mut => VT.put_SyncIdentityHash(ref this, pSyncIdentityHash);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self) Delete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self) Save;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, out char16* ppAccountId) get_AccountId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, char16* pAccountId) put_AccountId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, out char16* ppItemId) get_Id;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, out IntBool pIsLinkResolved) get_IsLinkResolved;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, IntBool isLinkResolved) put_IsLinkResolved;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, out char16* ppNetworkSourceId) get_NetworkSourceIdString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, char16* pNetworkSourceId) put_NetworkSourceIdString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, out CONTACT_AGGREGATION_BLOB* ppRemoteObjectId) get_RemoteObjectId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, in CONTACT_AGGREGATION_BLOB pRemoteObjectId) put_RemoteObjectId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, out char16* ppServerPersonId) get_ServerPerson;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, char16* pServerPersonId) put_ServerPerson;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, out char16* ppServerPersonId) get_ServerPersonBaseline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, char16* pServerPersonId) put_ServerPersonBaseline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, out CONTACT_AGGREGATION_BLOB* ppSyncIdentityHash) get_SyncIdentityHash;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLink self, in CONTACT_AGGREGATION_BLOB pSyncIdentityHash) put_SyncIdentityHash;
			}
		}
		[CRepr]
		public struct IContactAggregationLinkCollection : IUnknown
		{
			public const new Guid IID = .(0xf8bc0e93, 0xfb55, 0x4f28, 0xb9, 0xfa, 0xb1, 0xc2, 0x74, 0x15, 0x32, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult FindFirst(out IContactAggregationLink* ppServerContactLink) mut => VT.FindFirst(ref this, out ppServerContactLink);
			public HResult FindFirstByRemoteId(char16* pSourceType, char16* pAccountId, in CONTACT_AGGREGATION_BLOB pRemoteId, out IContactAggregationLink* ppServerContactLink) mut => VT.FindFirstByRemoteId(ref this, pSourceType, pAccountId, pRemoteId, out ppServerContactLink);
			public HResult FindNext(out IContactAggregationLink* ppServerContactLink) mut => VT.FindNext(ref this, out ppServerContactLink);
			public HResult get_Count(out uint32 pCount) mut => VT.get_Count(ref this, out pCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLinkCollection self, out IContactAggregationLink* ppServerContactLink) FindFirst;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLinkCollection self, char16* pSourceType, char16* pAccountId, in CONTACT_AGGREGATION_BLOB pRemoteId, out IContactAggregationLink* ppServerContactLink) FindFirstByRemoteId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLinkCollection self, out IContactAggregationLink* ppServerContactLink) FindNext;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationLinkCollection self, out uint32 pCount) get_Count;
			}
		}
		[CRepr]
		public struct IContactAggregationServerPerson : IUnknown
		{
			public const new Guid IID = .(0x7fdc3d4b, 0x1b82, 0x4334, 0x85, 0xc5, 0x25, 0x18, 0x4e, 0xe5, 0xa5, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Delete() mut => VT.Delete(ref this);
			public HResult Save() mut => VT.Save(ref this);
			public HResult get_AggregateId(out char16* ppAggregateId) mut => VT.get_AggregateId(ref this, out ppAggregateId);
			public HResult put_AggregateId(char16* pAggregateId) mut => VT.put_AggregateId(ref this, pAggregateId);
			public HResult get_AntiLink(out char16* ppAntiLink) mut => VT.get_AntiLink(ref this, out ppAntiLink);
			public HResult put_AntiLink(char16* pAntiLink) mut => VT.put_AntiLink(ref this, pAntiLink);
			public HResult get_AntiLinkBaseline(out char16* ppAntiLink) mut => VT.get_AntiLinkBaseline(ref this, out ppAntiLink);
			public HResult put_AntiLinkBaseline(char16* pAntiLink) mut => VT.put_AntiLinkBaseline(ref this, pAntiLink);
			public HResult get_FavoriteOrder(out uint32 pFavoriteOrder) mut => VT.get_FavoriteOrder(ref this, out pFavoriteOrder);
			public HResult put_FavoriteOrder(uint32 favoriteOrder) mut => VT.put_FavoriteOrder(ref this, favoriteOrder);
			public HResult get_FavoriteOrderBaseline(out uint32 pFavoriteOrder) mut => VT.get_FavoriteOrderBaseline(ref this, out pFavoriteOrder);
			public HResult put_FavoriteOrderBaseline(uint32 favoriteOrder) mut => VT.put_FavoriteOrderBaseline(ref this, favoriteOrder);
			public HResult get_Groups(out CONTACT_AGGREGATION_BLOB* pGroups) mut => VT.get_Groups(ref this, out pGroups);
			public HResult put_Groups(in CONTACT_AGGREGATION_BLOB pGroups) mut => VT.put_Groups(ref this, pGroups);
			public HResult get_GroupsBaseline(out CONTACT_AGGREGATION_BLOB* ppGroups) mut => VT.get_GroupsBaseline(ref this, out ppGroups);
			public HResult put_GroupsBaseline(in CONTACT_AGGREGATION_BLOB pGroups) mut => VT.put_GroupsBaseline(ref this, pGroups);
			public HResult get_Id(out char16* ppId) mut => VT.get_Id(ref this, out ppId);
			public HResult get_IsTombstone(out IntBool pIsTombstone) mut => VT.get_IsTombstone(ref this, out pIsTombstone);
			public HResult put_IsTombstone(IntBool isTombstone) mut => VT.put_IsTombstone(ref this, isTombstone);
			public HResult get_LinkedAggregateId(out char16* ppLinkedAggregateId) mut => VT.get_LinkedAggregateId(ref this, out ppLinkedAggregateId);
			public HResult put_LinkedAggregateId(char16* pLinkedAggregateId) mut => VT.put_LinkedAggregateId(ref this, pLinkedAggregateId);
			public HResult get_ObjectId(out char16* ppObjectId) mut => VT.get_ObjectId(ref this, out ppObjectId);
			public HResult put_ObjectId(char16* pObjectId) mut => VT.put_ObjectId(ref this, pObjectId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self) Delete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self) Save;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, out char16* ppAggregateId) get_AggregateId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, char16* pAggregateId) put_AggregateId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, out char16* ppAntiLink) get_AntiLink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, char16* pAntiLink) put_AntiLink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, out char16* ppAntiLink) get_AntiLinkBaseline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, char16* pAntiLink) put_AntiLinkBaseline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, out uint32 pFavoriteOrder) get_FavoriteOrder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, uint32 favoriteOrder) put_FavoriteOrder;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, out uint32 pFavoriteOrder) get_FavoriteOrderBaseline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, uint32 favoriteOrder) put_FavoriteOrderBaseline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, out CONTACT_AGGREGATION_BLOB* pGroups) get_Groups;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, in CONTACT_AGGREGATION_BLOB pGroups) put_Groups;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, out CONTACT_AGGREGATION_BLOB* ppGroups) get_GroupsBaseline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, in CONTACT_AGGREGATION_BLOB pGroups) put_GroupsBaseline;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, out char16* ppId) get_Id;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, out IntBool pIsTombstone) get_IsTombstone;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, IntBool isTombstone) put_IsTombstone;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, out char16* ppLinkedAggregateId) get_LinkedAggregateId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, char16* pLinkedAggregateId) put_LinkedAggregateId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, out char16* ppObjectId) get_ObjectId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPerson self, char16* pObjectId) put_ObjectId;
			}
		}
		[CRepr]
		public struct IContactAggregationServerPersonCollection : IUnknown
		{
			public const new Guid IID = .(0x4f730a4a, 0x6604, 0x47b6, 0xa9, 0x87, 0x66, 0x9e, 0xcf, 0x1e, 0x57, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult FindFirst(out IContactAggregationServerPerson* ppServerPerson) mut => VT.FindFirst(ref this, out ppServerPerson);
			public HResult FindFirstByServerId(char16* pServerId, out IContactAggregationServerPerson* ppServerPerson) mut => VT.FindFirstByServerId(ref this, pServerId, out ppServerPerson);
			public HResult FindFirstByAggregateId(char16* pAggregateId, out IContactAggregationServerPerson* ppServerPerson) mut => VT.FindFirstByAggregateId(ref this, pAggregateId, out ppServerPerson);
			public HResult FindFirstByLinkedAggregateId(char16* pAggregateId, out IContactAggregationServerPerson* ppServerPerson) mut => VT.FindFirstByLinkedAggregateId(ref this, pAggregateId, out ppServerPerson);
			public HResult FindNext(out IContactAggregationServerPerson* ppServerPerson) mut => VT.FindNext(ref this, out ppServerPerson);
			public HResult get_Count(out uint32 pCount) mut => VT.get_Count(ref this, out pCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPersonCollection self, out IContactAggregationServerPerson* ppServerPerson) FindFirst;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPersonCollection self, char16* pServerId, out IContactAggregationServerPerson* ppServerPerson) FindFirstByServerId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPersonCollection self, char16* pAggregateId, out IContactAggregationServerPerson* ppServerPerson) FindFirstByAggregateId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPersonCollection self, char16* pAggregateId, out IContactAggregationServerPerson* ppServerPerson) FindFirstByLinkedAggregateId;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPersonCollection self, out IContactAggregationServerPerson* ppServerPerson) FindNext;
				public new function [CallingConvention(.Stdcall)] HResult(ref IContactAggregationServerPersonCollection self, out uint32 pCount) get_Count;
			}
		}
		
	}
}
