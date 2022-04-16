using System;

// namespace UI.Xaml.Diagnostics
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const HResult E_UNKNOWNTYPE = -2144665560;
		
		// --- Enums ---
		
		public enum VisualMutationType : int32
		{
			Add = 0,
			Remove = 1,
		}
		public enum BaseValueSource : int32
		{
			BaseValueSourceUnknown = 0,
			BaseValueSourceDefault = 1,
			BaseValueSourceBuiltInStyle = 2,
			BaseValueSourceStyle = 3,
			BaseValueSourceLocal = 4,
			Inherited = 5,
			DefaultStyleTrigger = 6,
			TemplateTrigger = 7,
			StyleTrigger = 8,
			ImplicitStyleReference = 9,
			ParentTemplate = 10,
			ParentTemplateTrigger = 11,
			Animation = 12,
			Coercion = 13,
			BaseValueSourceVisualState = 14,
		}
		public enum MetadataBit : int32
		{
			None = 0,
			IsValueHandle = 1,
			IsPropertyReadOnly = 2,
			IsValueCollection = 4,
			IsValueCollectionReadOnly = 8,
			IsValueBindingExpression = 16,
			IsValueNull = 32,
			IsValueHandleAndEvaluatedValue = 64,
		}
		public enum RenderTargetBitmapOptions : int32
		{
			Target = 0,
			TargetAndChildren = 1,
		}
		public enum ResourceType : int32
		{
			Static = 0,
			Theme = 1,
		}
		public enum VisualElementState : int32
		{
			Resolved = 0,
			ResourceNotFound = 1,
			InvalidResource = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct SourceInfo
		{
			public BSTR FileName;
			public uint32 LineNumber;
			public uint32 ColumnNumber;
			public uint32 CharPosition;
			public BSTR Hash;
		}
		[CRepr]
		public struct ParentChildRelation
		{
			public uint64 Parent;
			public uint64 Child;
			public uint32 ChildIndex;
		}
		[CRepr]
		public struct VisualElement
		{
			public uint64 Handle;
			public SourceInfo SrcInfo;
			public BSTR Type;
			public BSTR Name;
			public uint32 NumChildren;
		}
		[CRepr]
		public struct PropertyChainSource
		{
			public uint64 Handle;
			public BSTR TargetType;
			public BSTR Name;
			public BaseValueSource Source;
			public SourceInfo SrcInfo;
		}
		[CRepr]
		public struct PropertyChainValue
		{
			public uint32 Index;
			public BSTR Type;
			public BSTR DeclaringType;
			public BSTR ValueType;
			public BSTR ItemType;
			public BSTR Value;
			public IntBool Overridden;
			public int64 MetadataBits;
			public BSTR PropertyName;
			public uint32 PropertyChainIndex;
		}
		[CRepr]
		public struct EnumType
		{
			public BSTR Name;
			public SAFEARRAY* ValueInts;
			public SAFEARRAY* ValueStrings;
		}
		[CRepr]
		public struct CollectionElementValue
		{
			public uint32 Index;
			public BSTR ValueType;
			public BSTR Value;
			public int64 MetadataBits;
		}
		[CRepr]
		public struct BitmapDescription
		{
			public uint32 Width;
			public uint32 Height;
			public DXGIFormat Format;
			public DXGI_ALPHA_MODE AlphaMode;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IVisualTreeServiceCallback : IUnknown
		{
			public const new Guid IID = .(0xaa7a8931, 0x80e4, 0x4fec, 0x8f, 0x3b, 0x55, 0x3f, 0x87, 0xb4, 0x96, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnVisualTreeChange(ParentChildRelation relation, VisualElement element, VisualMutationType mutationType) mut => VT.OnVisualTreeChange(ref this, relation, element, mutationType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeServiceCallback self, ParentChildRelation relation, VisualElement element, VisualMutationType mutationType) OnVisualTreeChange;
			}
		}
		[CRepr]
		public struct IVisualTreeServiceCallback2 : IVisualTreeServiceCallback
		{
			public const new Guid IID = .(0xbad9eb88, 0xae77, 0x4397, 0xb9, 0x48, 0x5f, 0xa2, 0xdb, 0x0a, 0x19, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnElementStateChanged(uint64 element, VisualElementState elementState, char16* context) mut => VT.OnElementStateChanged(ref this, element, elementState, context);

			[CRepr]
			public struct VTable : IVisualTreeServiceCallback.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeServiceCallback2 self, uint64 element, VisualElementState elementState, char16* context) OnElementStateChanged;
			}
		}
		[CRepr]
		public struct IVisualTreeService : IUnknown
		{
			public const new Guid IID = .(0xa593b11a, 0xd17f, 0x48bb, 0x8f, 0x66, 0x83, 0x91, 0x07, 0x31, 0xc8, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AdviseVisualTreeChange(ref IVisualTreeServiceCallback pCallback) mut => VT.AdviseVisualTreeChange(ref this, ref pCallback);
			public HResult UnadviseVisualTreeChange(ref IVisualTreeServiceCallback pCallback) mut => VT.UnadviseVisualTreeChange(ref this, ref pCallback);
			public HResult GetEnums(out uint32 pCount, EnumType** ppEnums) mut => VT.GetEnums(ref this, out pCount, ppEnums);
			public HResult CreateInstance(BSTR typeName, BSTR value, out uint64 pInstanceHandle) mut => VT.CreateInstance(ref this, typeName, value, out pInstanceHandle);
			public HResult GetPropertyValuesChain(uint64 instanceHandle, out uint32 pSourceCount, PropertyChainSource** ppPropertySources, out uint32 pPropertyCount, PropertyChainValue** ppPropertyValues) mut => VT.GetPropertyValuesChain(ref this, instanceHandle, out pSourceCount, ppPropertySources, out pPropertyCount, ppPropertyValues);
			public HResult SetProperty(uint64 instanceHandle, uint64 value, uint32 propertyIndex) mut => VT.SetProperty(ref this, instanceHandle, value, propertyIndex);
			public HResult ClearProperty(uint64 instanceHandle, uint32 propertyIndex) mut => VT.ClearProperty(ref this, instanceHandle, propertyIndex);
			public HResult GetCollectionCount(uint64 instanceHandle, out uint32 pCollectionSize) mut => VT.GetCollectionCount(ref this, instanceHandle, out pCollectionSize);
			public HResult GetCollectionElements(uint64 instanceHandle, uint32 startIndex, out uint32 pElementCount, CollectionElementValue** ppElementValues) mut => VT.GetCollectionElements(ref this, instanceHandle, startIndex, out pElementCount, ppElementValues);
			public HResult AddChild(uint64 parent, uint64 child, uint32 index) mut => VT.AddChild(ref this, parent, child, index);
			public HResult RemoveChild(uint64 parent, uint32 index) mut => VT.RemoveChild(ref this, parent, index);
			public HResult ClearChildren(uint64 parent) mut => VT.ClearChildren(ref this, parent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService self, ref IVisualTreeServiceCallback pCallback) AdviseVisualTreeChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService self, ref IVisualTreeServiceCallback pCallback) UnadviseVisualTreeChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService self, out uint32 pCount, EnumType** ppEnums) GetEnums;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService self, BSTR typeName, BSTR value, out uint64 pInstanceHandle) CreateInstance;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService self, uint64 instanceHandle, out uint32 pSourceCount, PropertyChainSource** ppPropertySources, out uint32 pPropertyCount, PropertyChainValue** ppPropertyValues) GetPropertyValuesChain;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService self, uint64 instanceHandle, uint64 value, uint32 propertyIndex) SetProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService self, uint64 instanceHandle, uint32 propertyIndex) ClearProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService self, uint64 instanceHandle, out uint32 pCollectionSize) GetCollectionCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService self, uint64 instanceHandle, uint32 startIndex, out uint32 pElementCount, CollectionElementValue** ppElementValues) GetCollectionElements;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService self, uint64 parent, uint64 child, uint32 index) AddChild;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService self, uint64 parent, uint32 index) RemoveChild;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService self, uint64 parent) ClearChildren;
			}
		}
		[CRepr]
		public struct IXamlDiagnostics : IUnknown
		{
			public const new Guid IID = .(0x18c9e2b6, 0x3f43, 0x4116, 0x9f, 0x2b, 0xff, 0x93, 0x5d, 0x77, 0x70, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetDispatcher(out IInspectable* ppDispatcher) mut => VT.GetDispatcher(ref this, out ppDispatcher);
			public HResult GetUiLayer(out IInspectable* ppLayer) mut => VT.GetUiLayer(ref this, out ppLayer);
			public HResult GetApplication(out IInspectable* ppApplication) mut => VT.GetApplication(ref this, out ppApplication);
			public HResult GetIInspectableFromHandle(uint64 instanceHandle, out IInspectable* ppInstance) mut => VT.GetIInspectableFromHandle(ref this, instanceHandle, out ppInstance);
			public HResult GetHandleFromIInspectable(ref IInspectable pInstance, out uint64 pHandle) mut => VT.GetHandleFromIInspectable(ref this, ref pInstance, out pHandle);
			public HResult HitTest(RectI rect, out uint32 pCount, uint64** ppInstanceHandles) mut => VT.HitTest(ref this, rect, out pCount, ppInstanceHandles);
			public HResult RegisterInstance(ref IInspectable pInstance, out uint64 pInstanceHandle) mut => VT.RegisterInstance(ref this, ref pInstance, out pInstanceHandle);
			public HResult GetInitializationData(out BSTR pInitializationData) mut => VT.GetInitializationData(ref this, out pInitializationData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXamlDiagnostics self, out IInspectable* ppDispatcher) GetDispatcher;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXamlDiagnostics self, out IInspectable* ppLayer) GetUiLayer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXamlDiagnostics self, out IInspectable* ppApplication) GetApplication;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXamlDiagnostics self, uint64 instanceHandle, out IInspectable* ppInstance) GetIInspectableFromHandle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXamlDiagnostics self, ref IInspectable pInstance, out uint64 pHandle) GetHandleFromIInspectable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXamlDiagnostics self, RectI rect, out uint32 pCount, uint64** ppInstanceHandles) HitTest;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXamlDiagnostics self, ref IInspectable pInstance, out uint64 pInstanceHandle) RegisterInstance;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXamlDiagnostics self, out BSTR pInitializationData) GetInitializationData;
			}
		}
		[CRepr]
		public struct IBitmapData : IUnknown
		{
			public const new Guid IID = .(0xd1a34ef2, 0xcad8, 0x4635, 0xa3, 0xd2, 0xfc, 0xda, 0x8d, 0x3f, 0x3c, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CopyBytesTo(uint32 sourceOffsetInBytes, uint32 maxBytesToCopy, uint8* pvBytes, out uint32 numberOfBytesCopied) mut => VT.CopyBytesTo(ref this, sourceOffsetInBytes, maxBytesToCopy, pvBytes, out numberOfBytesCopied);
			public HResult GetStride(out uint32 pStride) mut => VT.GetStride(ref this, out pStride);
			public HResult GetBitmapDescription(out BitmapDescription pBitmapDescription) mut => VT.GetBitmapDescription(ref this, out pBitmapDescription);
			public HResult GetSourceBitmapDescription(out BitmapDescription pBitmapDescription) mut => VT.GetSourceBitmapDescription(ref this, out pBitmapDescription);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IBitmapData self, uint32 sourceOffsetInBytes, uint32 maxBytesToCopy, uint8* pvBytes, out uint32 numberOfBytesCopied) CopyBytesTo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IBitmapData self, out uint32 pStride) GetStride;
				public new function [CallingConvention(.Stdcall)] HResult(ref IBitmapData self, out BitmapDescription pBitmapDescription) GetBitmapDescription;
				public new function [CallingConvention(.Stdcall)] HResult(ref IBitmapData self, out BitmapDescription pBitmapDescription) GetSourceBitmapDescription;
			}
		}
		[CRepr]
		public struct IVisualTreeService2 : IVisualTreeService
		{
			public const new Guid IID = .(0x130f5136, 0xec43, 0x4f61, 0x89, 0xc7, 0x98, 0x01, 0xa3, 0x6d, 0x2e, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetPropertyIndex(uint64 object, char16* propertyName, out uint32 pPropertyIndex) mut => VT.GetPropertyIndex(ref this, object, propertyName, out pPropertyIndex);
			public HResult GetProperty(uint64 object, uint32 propertyIndex, out uint64 pValue) mut => VT.GetProperty(ref this, object, propertyIndex, out pValue);
			public HResult ReplaceResource(uint64 resourceDictionary, uint64 key, uint64 newValue) mut => VT.ReplaceResource(ref this, resourceDictionary, key, newValue);
			public HResult RenderTargetBitmap(uint64 handle, RenderTargetBitmapOptions options, uint32 maxPixelWidth, uint32 maxPixelHeight, out IBitmapData* ppBitmapData) mut => VT.RenderTargetBitmap(ref this, handle, options, maxPixelWidth, maxPixelHeight, out ppBitmapData);

			[CRepr]
			public struct VTable : IVisualTreeService.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService2 self, uint64 object, char16* propertyName, out uint32 pPropertyIndex) GetPropertyIndex;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService2 self, uint64 object, uint32 propertyIndex, out uint64 pValue) GetProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService2 self, uint64 resourceDictionary, uint64 key, uint64 newValue) ReplaceResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService2 self, uint64 handle, RenderTargetBitmapOptions options, uint32 maxPixelWidth, uint32 maxPixelHeight, out IBitmapData* ppBitmapData) RenderTargetBitmap;
			}
		}
		[CRepr]
		public struct IVisualTreeService3 : IVisualTreeService2
		{
			public const new Guid IID = .(0x0e79c6e0, 0x85a0, 0x4be8, 0xb4, 0x1a, 0x65, 0x5c, 0xf1, 0xfd, 0x19, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ResolveResource(uint64 resourceContext, char16* resourceName, ResourceType resourceType, uint32 propertyIndex) mut => VT.ResolveResource(ref this, resourceContext, resourceName, resourceType, propertyIndex);
			public HResult GetDictionaryItem(uint64 dictionaryHandle, char16* resourceName, IntBool resourceIsImplicitStyle, out uint64 resourceHandle) mut => VT.GetDictionaryItem(ref this, dictionaryHandle, resourceName, resourceIsImplicitStyle, out resourceHandle);
			public HResult AddDictionaryItem(uint64 dictionaryHandle, uint64 resourceKey, uint64 resourceHandle) mut => VT.AddDictionaryItem(ref this, dictionaryHandle, resourceKey, resourceHandle);
			public HResult RemoveDictionaryItem(uint64 dictionaryHandle, uint64 resourceKey) mut => VT.RemoveDictionaryItem(ref this, dictionaryHandle, resourceKey);

			[CRepr]
			public struct VTable : IVisualTreeService2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService3 self, uint64 resourceContext, char16* resourceName, ResourceType resourceType, uint32 propertyIndex) ResolveResource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService3 self, uint64 dictionaryHandle, char16* resourceName, IntBool resourceIsImplicitStyle, out uint64 resourceHandle) GetDictionaryItem;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService3 self, uint64 dictionaryHandle, uint64 resourceKey, uint64 resourceHandle) AddDictionaryItem;
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualTreeService3 self, uint64 dictionaryHandle, uint64 resourceKey) RemoveDictionaryItem;
			}
		}
		
		// --- Functions ---
		
		[Import("windows.ui.xaml.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult InitializeXamlDiagnostic(char16* endPointName, uint32 pid, char16* wszDllXamlDiagnostics, char16* wszTAPDllName, Guid tapClsid);
		[Import("windows.ui.xaml.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult InitializeXamlDiagnosticsEx(char16* endPointName, uint32 pid, char16* wszDllXamlDiagnostics, char16* wszTAPDllName, Guid tapClsid, char16* wszInitializationData);
	}
}
