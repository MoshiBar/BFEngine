using System;
using static Win32.System.Com.Marshal;
using static Win32.UI.Shell.PropertiesSystem;
using static Win32.System.Com;
using static System.Windows.COM_IUnknown;
using static System.Windows;

// namespace System.WinRT
namespace Win32.System
{
	static class WinRT
	{
		// --- Constants ---
		
		public const uint32 MAX_ERROR_MESSAGE_CHARS = 512;
		public const String CastingSourceInfo_Property_PreferredSourceUriScheme = "PreferredSourceUriScheme";
		public const String CastingSourceInfo_Property_CastingTypes = "CastingTypes";
		public const String CastingSourceInfo_Property_ProtectedMedia = "ProtectedMedia";
		
		// --- Typedefs ---
		
		public typealias HSTRING = int;
		public typealias HSTRING_BUFFER = int;
		public typealias ROPARAMIIDHANDLE = int;
		public typealias APARTMENT_SHUTDOWN_REGISTRATION_COOKIE = int;
		
		// --- Enums ---
		
		public enum ACTIVATIONTYPE : int32
		{
			UNCATEGORIZED = 0,
			FROM_MONIKER = 1,
			FROM_DATA = 2,
			FROM_STORAGE = 4,
			FROM_STREAM = 8,
			FROM_FILE = 16,
		}
		public enum AgileReferenceOptions : int32
		{
			DEFAULT = 0,
			DELAYEDMARSHAL = 1,
		}
		public enum TrustLevel : int32
		{
			BaseTrust = 0,
			PartialTrust = 1,
			FullTrust = 2,
		}
		public enum DISPATCHERQUEUE_THREAD_APARTMENTTYPE : int32
		{
			NONE = 0,
			ASTA = 1,
			STA = 2,
		}
		public enum DISPATCHERQUEUE_THREAD_TYPE : int32
		{
			DEDICATED = 1,
			CURRENT = 2,
		}
		public enum CASTING_CONNECTION_ERROR_STATUS : int32
		{
			SUCCEEDED = 0,
			DEVICE_DID_NOT_RESPOND = 1,
			DEVICE_ERROR = 2,
			DEVICE_LOCKED = 3,
			PROTECTED_PLAYBACK_FAILED = 4,
			INVALID_CASTING_SOURCE = 5,
			UNKNOWN = 6,
		}
		public enum CASTING_CONNECTION_STATE : int32
		{
			DISCONNECTED = 0,
			CONNECTED = 1,
			RENDERING = 2,
			DISCONNECTING = 3,
			CONNECTING = 4,
		}
		public enum RO_INIT_TYPE : int32
		{
			SINGLETHREADED = 0,
			MULTITHREADED = 1,
		}
		public enum RO_ERROR_REPORTING_FLAGS : uint32
		{
			NONE = 0,
			SUPPRESSEXCEPTIONS = 1,
			FORCEEXCEPTIONS = 2,
			USESETERRORINFO = 4,
			SUPPRESSSETERRORINFO = 8,
		}
		public enum BSOS_OPTIONS : int32
		{
			DEFAULT = 0,
			PREFERDESTINATIONSTREAM = 1,
		}
		
		// --- Function Pointers ---
		
		public function HResult PINSPECT_HSTRING_CALLBACK(void* context, uint readAddress, uint32 length, uint8* buffer);
		public function HResult PINSPECT_HSTRING_CALLBACK2(void* context, uint64 readAddress, uint32 length, uint8* buffer);
		public function HResult PINSPECT_MEMORY_CALLBACK(void* context, uint readAddress, uint32 length, uint8* buffer);
		
		// --- Structs ---
		
		[CRepr]
		public struct EventRegistrationToken
		{
			public int64 value;
		}
		[CRepr]
		public struct ServerInformation
		{
			public uint32 dwServerPid;
			public uint32 dwServerTid;
			public uint64 ui64ServerAddress;
		}
		[CRepr]
		public struct HSTRING_HEADER
		{
			public _Reserved_e__Union Reserved;
			
			[CRepr, Union]
			public struct _Reserved_e__Union
			{
				public void* Reserved1;
				public char8[24] Reserved2;
			}
		}
		[CRepr]
		public struct DispatcherQueueOptions
		{
			public uint32 dwSize;
			public DISPATCHERQUEUE_THREAD_TYPE threadType;
			public DISPATCHERQUEUE_THREAD_APARTMENTTYPE apartmentType;
		}
		[CRepr]
		public struct _RO_REGISTRATION_COOKIE {}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IAgileReference : IUnknown
		{
			public const new Guid IID = .(0xc03f6a43, 0x65a4, 0x9818, 0x98, 0x7e, 0xe0, 0xb8, 0x10, 0xd2, 0xa6, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Resolve(in Guid riid, void** ppvObjectReference) mut => VT.Resolve(ref this, riid, ppvObjectReference);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IAgileReference self, in Guid riid, void** ppvObjectReference) Resolve;
			}
		}
		[CRepr]
		public struct IApartmentShutdown : IUnknown
		{
			public const new Guid IID = .(0xa2f05a09, 0x27a2, 0x42b5, 0xbc, 0x0e, 0xac, 0x16, 0x3e, 0xf4, 0x9d, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnUninitialize(uint64 ui64ApartmentIdentifier) mut => VT.OnUninitialize(ref this, ui64ApartmentIdentifier);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IApartmentShutdown self, uint64 ui64ApartmentIdentifier) OnUninitialize;
			}
		}
		[CRepr]
		public struct ISpatialInteractionManagerInterop : IInspectable
		{
			public const new Guid IID = .(0x5c4ee536, 0x6a98, 0x4b86, 0xa1, 0x70, 0x58, 0x70, 0x13, 0xd6, 0xfd, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetForWindow(HWnd window, in Guid riid, void** spatialInteractionManager) mut => VT.GetForWindow(ref this, window, riid, spatialInteractionManager);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISpatialInteractionManagerInterop self, HWnd window, in Guid riid, void** spatialInteractionManager) GetForWindow;
			}
		}
		[CRepr]
		public struct IHolographicSpaceInterop : IInspectable
		{
			public const new Guid IID = .(0x5c4ee536, 0x6a98, 0x4b86, 0xa1, 0x70, 0x58, 0x70, 0x13, 0xd6, 0xfd, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateForWindow(HWnd window, in Guid riid, void** holographicSpace) mut => VT.CreateForWindow(ref this, window, riid, holographicSpace);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IHolographicSpaceInterop self, HWnd window, in Guid riid, void** holographicSpace) CreateForWindow;
			}
		}
		[CRepr]
		public struct IInspectable : IUnknown
		{
			public const new Guid IID = .(0xaf86e2e0, 0xb12d, 0x4c6a, 0x9c, 0x5a, 0xd7, 0xaa, 0x65, 0x10, 0x1e, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetIids(out uint32 iidCount, Guid** iids) mut => VT.GetIids(ref this, out iidCount, iids);
			public HResult GetRuntimeClassName(HSTRING* className) mut => VT.GetRuntimeClassName(ref this, className);
			public HResult GetTrustLevel(out TrustLevel trustLevel) mut => VT.GetTrustLevel(ref this, out trustLevel);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInspectable self, out uint32 iidCount, Guid** iids) GetIids;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInspectable self, HSTRING* className) GetRuntimeClassName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInspectable self, out TrustLevel trustLevel) GetTrustLevel;
			}
		}
		[CRepr]
		public struct IAccountsSettingsPaneInterop : IInspectable
		{
			public const new Guid IID = .(0xd3ee12ad, 0x3865, 0x4362, 0x97, 0x46, 0xb7, 0x5a, 0x68, 0x2d, 0xf0, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetForWindow(HWnd appWindow, in Guid riid, void** accountsSettingsPane) mut => VT.GetForWindow(ref this, appWindow, riid, accountsSettingsPane);
			public HResult ShowManageAccountsForWindowAsync(HWnd appWindow, in Guid riid, void** asyncAction) mut => VT.ShowManageAccountsForWindowAsync(ref this, appWindow, riid, asyncAction);
			public HResult ShowAddAccountForWindowAsync(HWnd appWindow, in Guid riid, void** asyncAction) mut => VT.ShowAddAccountForWindowAsync(ref this, appWindow, riid, asyncAction);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IAccountsSettingsPaneInterop self, HWnd appWindow, in Guid riid, void** accountsSettingsPane) GetForWindow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAccountsSettingsPaneInterop self, HWnd appWindow, in Guid riid, void** asyncAction) ShowManageAccountsForWindowAsync;
				public new function [CallingConvention(.Stdcall)] HResult(ref IAccountsSettingsPaneInterop self, HWnd appWindow, in Guid riid, void** asyncAction) ShowAddAccountForWindowAsync;
			}
		}
		[CRepr]
		public struct IAppServiceConnectionExtendedExecution : IUnknown
		{
			public const new Guid IID = .(0x65219584, 0xf9cb, 0x4ae3, 0x81, 0xf9, 0xa2, 0x8a, 0x6c, 0xa4, 0x50, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OpenForExtendedExecutionAsync(in Guid riid, void** operation) mut => VT.OpenForExtendedExecutionAsync(ref this, riid, operation);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IAppServiceConnectionExtendedExecution self, in Guid riid, void** operation) OpenForExtendedExecutionAsync;
			}
		}
		[CRepr]
		public struct ICorrelationVectorSource : IUnknown
		{
			public const new Guid IID = .(0x152b8a3b, 0xb9b9, 0x4685, 0xb5, 0x6e, 0x97, 0x48, 0x47, 0xbc, 0x75, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_CorrelationVector(out HSTRING cv) mut => VT.get_CorrelationVector(ref this, out cv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICorrelationVectorSource self, out HSTRING cv) get_CorrelationVector;
			}
		}
		[CRepr]
		public struct ICastingEventHandler : IUnknown
		{
			public const new Guid IID = .(0xc79a6cb7, 0xbebd, 0x47a6, 0xa2, 0xad, 0x4d, 0x45, 0xad, 0x79, 0xc7, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnStateChanged(CASTING_CONNECTION_STATE newState) mut => VT.OnStateChanged(ref this, newState);
			public HResult OnError(CASTING_CONNECTION_ERROR_STATUS errorStatus, char16* errorMessage) mut => VT.OnError(ref this, errorStatus, errorMessage);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICastingEventHandler self, CASTING_CONNECTION_STATE newState) OnStateChanged;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICastingEventHandler self, CASTING_CONNECTION_ERROR_STATUS errorStatus, char16* errorMessage) OnError;
			}
		}
		[CRepr]
		public struct ICastingController : IUnknown
		{
			public const new Guid IID = .(0xf0a56423, 0xa664, 0x4fbd, 0x8b, 0x43, 0x40, 0x9a, 0x45, 0xe8, 0xd9, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Initialize(ref IUnknown castingEngine, ref IUnknown castingSource) mut => VT.Initialize(ref this, ref castingEngine, ref castingSource);
			public HResult Connect() mut => VT.Connect(ref this);
			public HResult Disconnect() mut => VT.Disconnect(ref this);
			public HResult Advise(ref ICastingEventHandler eventHandler, out uint32 cookie) mut => VT.Advise(ref this, ref eventHandler, out cookie);
			public HResult UnAdvise(uint32 cookie) mut => VT.UnAdvise(ref this, cookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICastingController self, ref IUnknown castingEngine, ref IUnknown castingSource) Initialize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICastingController self) Connect;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICastingController self) Disconnect;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICastingController self, ref ICastingEventHandler eventHandler, out uint32 cookie) Advise;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICastingController self, uint32 cookie) UnAdvise;
			}
		}
		[CRepr]
		public struct ICastingSourceInfo : IUnknown
		{
			public const new Guid IID = .(0x45101ab7, 0x7c3a, 0x4bce, 0x95, 0x00, 0x12, 0xc0, 0x90, 0x24, 0xb2, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetController(out ICastingController* controller) mut => VT.GetController(ref this, out controller);
			public HResult GetProperties(out INamedPropertyStore* props) mut => VT.GetProperties(ref this, out props);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICastingSourceInfo self, out ICastingController* controller) GetController;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICastingSourceInfo self, out INamedPropertyStore* props) GetProperties;
			}
		}
		[CRepr]
		public struct IDragDropManagerInterop : IInspectable
		{
			public const new Guid IID = .(0x5ad8cba7, 0x4c01, 0x4dac, 0x90, 0x74, 0x82, 0x78, 0x94, 0x29, 0x2d, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetForWindow(HWnd hwnd, in Guid riid, void** ppv) mut => VT.GetForWindow(ref this, hwnd, riid, ppv);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDragDropManagerInterop self, HWnd hwnd, in Guid riid, void** ppv) GetForWindow;
			}
		}
		[CRepr]
		public struct IInputPaneInterop : IInspectable
		{
			public const new Guid IID = .(0x75cf2c57, 0x9195, 0x4931, 0x83, 0x32, 0xf0, 0xb4, 0x09, 0xe9, 0x16, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetForWindow(HWnd appWindow, in Guid riid, void** inputPane) mut => VT.GetForWindow(ref this, appWindow, riid, inputPane);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInputPaneInterop self, HWnd appWindow, in Guid riid, void** inputPane) GetForWindow;
			}
		}
		[CRepr]
		public struct IPlayToManagerInterop : IInspectable
		{
			public const new Guid IID = .(0x24394699, 0x1f2c, 0x4eb3, 0x8c, 0xd7, 0x0e, 0xc1, 0xda, 0x42, 0xa5, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetForWindow(HWnd appWindow, in Guid riid, void** playToManager) mut => VT.GetForWindow(ref this, appWindow, riid, playToManager);
			public HResult ShowPlayToUIForWindow(HWnd appWindow) mut => VT.ShowPlayToUIForWindow(ref this, appWindow);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IPlayToManagerInterop self, HWnd appWindow, in Guid riid, void** playToManager) GetForWindow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPlayToManagerInterop self, HWnd appWindow) ShowPlayToUIForWindow;
			}
		}
		[CRepr]
		public struct ICorrelationVectorInformation : IInspectable
		{
			public const new Guid IID = .(0x83c78b3c, 0xd88b, 0x4950, 0xaa, 0x6e, 0x22, 0xb8, 0xd2, 0x2a, 0xab, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_LastCorrelationVectorForThread(out HSTRING cv) mut => VT.get_LastCorrelationVectorForThread(ref this, out cv);
			public HResult get_NextCorrelationVectorForThread(out HSTRING cv) mut => VT.get_NextCorrelationVectorForThread(ref this, out cv);
			public HResult put_NextCorrelationVectorForThread(HSTRING cv) mut => VT.put_NextCorrelationVectorForThread(ref this, cv);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICorrelationVectorInformation self, out HSTRING cv) get_LastCorrelationVectorForThread;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICorrelationVectorInformation self, out HSTRING cv) get_NextCorrelationVectorForThread;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICorrelationVectorInformation self, HSTRING cv) put_NextCorrelationVectorForThread;
			}
		}
		[CRepr]
		public struct IUIViewSettingsInterop : IInspectable
		{
			public const new Guid IID = .(0x3694dbf9, 0x8f68, 0x44be, 0x8f, 0xf5, 0x19, 0x5c, 0x98, 0xed, 0xe8, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetForWindow(HWnd hwnd, in Guid riid, void** ppv) mut => VT.GetForWindow(ref this, hwnd, riid, ppv);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUIViewSettingsInterop self, HWnd hwnd, in Guid riid, void** ppv) GetForWindow;
			}
		}
		[CRepr]
		public struct IUserActivityInterop : IInspectable
		{
			public const new Guid IID = .(0x1ade314d, 0x0e0a, 0x40d9, 0x82, 0x4c, 0x9a, 0x08, 0x8a, 0x50, 0x05, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateSessionForWindow(HWnd window, in Guid iid, void** value) mut => VT.CreateSessionForWindow(ref this, window, iid, value);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUserActivityInterop self, HWnd window, in Guid iid, void** value) CreateSessionForWindow;
			}
		}
		[CRepr]
		public struct IUserActivitySourceHostInterop : IInspectable
		{
			public const new Guid IID = .(0xc15df8bc, 0x8844, 0x487a, 0xb8, 0x5b, 0x75, 0x78, 0xe0, 0xf6, 0x14, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetActivitySourceHost(HSTRING activitySourceHost) mut => VT.SetActivitySourceHost(ref this, activitySourceHost);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUserActivitySourceHostInterop self, HSTRING activitySourceHost) SetActivitySourceHost;
			}
		}
		[CRepr]
		public struct IUserActivityRequestManagerInterop : IInspectable
		{
			public const new Guid IID = .(0xdd69f876, 0x9699, 0x4715, 0x90, 0x95, 0xe3, 0x7e, 0xa3, 0x0d, 0xfa, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetForWindow(HWnd window, in Guid iid, void** value) mut => VT.GetForWindow(ref this, window, iid, value);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUserActivityRequestManagerInterop self, HWnd window, in Guid iid, void** value) GetForWindow;
			}
		}
		[CRepr]
		public struct IUserConsentVerifierInterop : IInspectable
		{
			public const new Guid IID = .(0x39e050c3, 0x4e74, 0x441a, 0x8d, 0xc0, 0xb8, 0x11, 0x04, 0xdf, 0x94, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RequestVerificationForWindowAsync(HWnd appWindow, HSTRING message, in Guid riid, void** asyncOperation) mut => VT.RequestVerificationForWindowAsync(ref this, appWindow, message, riid, asyncOperation);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IUserConsentVerifierInterop self, HWnd appWindow, HSTRING message, in Guid riid, void** asyncOperation) RequestVerificationForWindowAsync;
			}
		}
		[CRepr]
		public struct IWebAuthenticationCoreManagerInterop : IInspectable
		{
			public const new Guid IID = .(0xf4b8e804, 0x811e, 0x4436, 0xb6, 0x9c, 0x44, 0xcb, 0x67, 0xb7, 0x20, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RequestTokenForWindowAsync(HWnd appWindow, ref IInspectable request, in Guid riid, void** asyncInfo) mut => VT.RequestTokenForWindowAsync(ref this, appWindow, ref request, riid, asyncInfo);
			public HResult RequestTokenWithWebAccountForWindowAsync(HWnd appWindow, ref IInspectable request, ref IInspectable webAccount, in Guid riid, void** asyncInfo) mut => VT.RequestTokenWithWebAccountForWindowAsync(ref this, appWindow, ref request, ref webAccount, riid, asyncInfo);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebAuthenticationCoreManagerInterop self, HWnd appWindow, ref IInspectable request, in Guid riid, void** asyncInfo) RequestTokenForWindowAsync;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebAuthenticationCoreManagerInterop self, HWnd appWindow, ref IInspectable request, ref IInspectable webAccount, in Guid riid, void** asyncInfo) RequestTokenWithWebAccountForWindowAsync;
			}
		}
		[CRepr]
		public struct IRestrictedErrorInfo : IUnknown
		{
			public const new Guid IID = .(0x82ba7092, 0x4c88, 0x427d, 0xa7, 0xbc, 0x16, 0xdd, 0x93, 0xfe, 0xb6, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetErrorDetails(out char16* description, out HResult error, out char16* restrictedDescription, out char16* capabilitySid) mut => VT.GetErrorDetails(ref this, out description, out error, out restrictedDescription, out capabilitySid);
			public HResult GetReference(out char16* reference) mut => VT.GetReference(ref this, out reference);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRestrictedErrorInfo self, out char16* description, out HResult error, out char16* restrictedDescription, out char16* capabilitySid) GetErrorDetails;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRestrictedErrorInfo self, out char16* reference) GetReference;
			}
		}
		[CRepr]
		public struct ILanguageExceptionErrorInfo : IUnknown
		{
			public const new Guid IID = .(0x04a2dbf3, 0xdf83, 0x116c, 0x09, 0x46, 0x08, 0x12, 0xab, 0xf6, 0xe0, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetLanguageException(out IUnknown* languageException) mut => VT.GetLanguageException(ref this, out languageException);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ILanguageExceptionErrorInfo self, out IUnknown* languageException) GetLanguageException;
			}
		}
		[CRepr]
		public struct ILanguageExceptionTransform : IUnknown
		{
			public const new Guid IID = .(0xfeb5a271, 0xa6cd, 0x45ce, 0x88, 0x0a, 0x69, 0x67, 0x06, 0xba, 0xdc, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetTransformedRestrictedErrorInfo(out IRestrictedErrorInfo* restrictedErrorInfo) mut => VT.GetTransformedRestrictedErrorInfo(ref this, out restrictedErrorInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ILanguageExceptionTransform self, out IRestrictedErrorInfo* restrictedErrorInfo) GetTransformedRestrictedErrorInfo;
			}
		}
		[CRepr]
		public struct ILanguageExceptionStackBackTrace : IUnknown
		{
			public const new Guid IID = .(0xcbe53fb5, 0xf967, 0x4258, 0x8d, 0x34, 0x42, 0xf5, 0xe2, 0x58, 0x33, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetStackBackTrace(uint32 maxFramesToCapture, out uint stackBackTrace, out uint32 framesCaptured) mut => VT.GetStackBackTrace(ref this, maxFramesToCapture, out stackBackTrace, out framesCaptured);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ILanguageExceptionStackBackTrace self, uint32 maxFramesToCapture, out uint stackBackTrace, out uint32 framesCaptured) GetStackBackTrace;
			}
		}
		[CRepr]
		public struct ILanguageExceptionErrorInfo2 : ILanguageExceptionErrorInfo
		{
			public const new Guid IID = .(0x5746e5c4, 0x5b97, 0x424c, 0xb6, 0x20, 0x28, 0x22, 0x91, 0x57, 0x34, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetPreviousLanguageExceptionErrorInfo(out ILanguageExceptionErrorInfo2* previousLanguageExceptionErrorInfo) mut => VT.GetPreviousLanguageExceptionErrorInfo(ref this, out previousLanguageExceptionErrorInfo);
			public HResult CapturePropagationContext(ref IUnknown languageException) mut => VT.CapturePropagationContext(ref this, ref languageException);
			public HResult GetPropagationContextHead(out ILanguageExceptionErrorInfo2* propagatedLanguageExceptionErrorInfoHead) mut => VT.GetPropagationContextHead(ref this, out propagatedLanguageExceptionErrorInfoHead);

			[CRepr]
			public struct VTable : ILanguageExceptionErrorInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ILanguageExceptionErrorInfo2 self, out ILanguageExceptionErrorInfo2* previousLanguageExceptionErrorInfo) GetPreviousLanguageExceptionErrorInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref ILanguageExceptionErrorInfo2 self, ref IUnknown languageException) CapturePropagationContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref ILanguageExceptionErrorInfo2 self, out ILanguageExceptionErrorInfo2* propagatedLanguageExceptionErrorInfoHead) GetPropagationContextHead;
			}
		}
		[CRepr]
		public struct IActivationFactory : IInspectable
		{
			public const new Guid IID = .(0x00000035, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ActivateInstance(IInspectable** instance) mut => VT.ActivateInstance(ref this, instance);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IActivationFactory self, IInspectable** instance) ActivateInstance;
			}
		}
		[CRepr]
		public struct IBufferByteAccess : IUnknown
		{
			public const new Guid IID = .(0x905a0fef, 0xbc53, 0x11df, 0x8c, 0x49, 0x00, 0x1e, 0x4f, 0xc6, 0x86, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Buffer(out uint8* value) mut => VT.Buffer(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IBufferByteAccess self, out uint8* value) Buffer;
			}
		}
		[CRepr]
		public struct IRoSimpleMetaDataBuilder
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetWinRtInterface(Guid iid) mut => VT.SetWinRtInterface(ref this, iid);
			public HResult SetDelegate(Guid iid) mut => VT.SetDelegate(ref this, iid);
			public HResult SetInterfaceGroupSimpleDefault(char16* name, char16* defaultInterfaceName, Guid* defaultInterfaceIID) mut => VT.SetInterfaceGroupSimpleDefault(ref this, name, defaultInterfaceName, defaultInterfaceIID);
			public HResult SetInterfaceGroupParameterizedDefault(char16* name, uint32 elementCount, char16** defaultInterfaceNameElements) mut => VT.SetInterfaceGroupParameterizedDefault(ref this, name, elementCount, defaultInterfaceNameElements);
			public HResult SetRuntimeClassSimpleDefault(char16* name, char16* defaultInterfaceName, Guid* defaultInterfaceIID) mut => VT.SetRuntimeClassSimpleDefault(ref this, name, defaultInterfaceName, defaultInterfaceIID);
			public HResult SetRuntimeClassParameterizedDefault(char16* name, uint32 elementCount, char16** defaultInterfaceNameElements) mut => VT.SetRuntimeClassParameterizedDefault(ref this, name, elementCount, defaultInterfaceNameElements);
			public HResult SetStruct(char16* name, uint32 numFields, char16** fieldTypeNames) mut => VT.SetStruct(ref this, name, numFields, fieldTypeNames);
			public HResult SetEnum(char16* name, char16* baseType) mut => VT.SetEnum(ref this, name, baseType);
			public HResult SetParameterizedInterface(Guid piid, uint32 numArgs) mut => VT.SetParameterizedInterface(ref this, piid, numArgs);
			public HResult SetParameterizedDelegate(Guid piid, uint32 numArgs) mut => VT.SetParameterizedDelegate(ref this, piid, numArgs);

			[CRepr]
			public struct VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRoSimpleMetaDataBuilder self, Guid iid) SetWinRtInterface;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRoSimpleMetaDataBuilder self, Guid iid) SetDelegate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRoSimpleMetaDataBuilder self, char16* name, char16* defaultInterfaceName, Guid* defaultInterfaceIID) SetInterfaceGroupSimpleDefault;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRoSimpleMetaDataBuilder self, char16* name, uint32 elementCount, char16** defaultInterfaceNameElements) SetInterfaceGroupParameterizedDefault;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRoSimpleMetaDataBuilder self, char16* name, char16* defaultInterfaceName, Guid* defaultInterfaceIID) SetRuntimeClassSimpleDefault;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRoSimpleMetaDataBuilder self, char16* name, uint32 elementCount, char16** defaultInterfaceNameElements) SetRuntimeClassParameterizedDefault;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRoSimpleMetaDataBuilder self, char16* name, uint32 numFields, char16** fieldTypeNames) SetStruct;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRoSimpleMetaDataBuilder self, char16* name, char16* baseType) SetEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRoSimpleMetaDataBuilder self, Guid piid, uint32 numArgs) SetParameterizedInterface;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRoSimpleMetaDataBuilder self, Guid piid, uint32 numArgs) SetParameterizedDelegate;
			}
		}
		[CRepr]
		public struct IRoMetaDataLocator
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public HResult Locate(char16* nameElement, ref IRoSimpleMetaDataBuilder metaDataDestination) mut => VT.Locate(ref this, nameElement, ref metaDataDestination);

			[CRepr]
			public struct VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRoMetaDataLocator self, char16* nameElement, ref IRoSimpleMetaDataBuilder metaDataDestination) Locate;
			}
		}
		[CRepr]
		public struct IMemoryBufferByteAccess : IUnknown
		{
			public const new Guid IID = .(0x5b0d3235, 0x4dba, 0x4d44, 0x86, 0x5e, 0x8f, 0x1d, 0x0e, 0x4f, 0xd0, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetBuffer(out uint8* value, out uint32 capacity) mut => VT.GetBuffer(ref this, out value, out capacity);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMemoryBufferByteAccess self, out uint8* value, out uint32 capacity) GetBuffer;
			}
		}
		[CRepr]
		public struct IWeakReference : IUnknown
		{
			public const new Guid IID = .(0x00000037, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Resolve(in Guid riid, void** objectReference) mut => VT.Resolve(ref this, riid, objectReference);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWeakReference self, in Guid riid, void** objectReference) Resolve;
			}
		}
		[CRepr]
		public struct IWeakReferenceSource : IUnknown
		{
			public const new Guid IID = .(0x00000038, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetWeakReference(IWeakReference** weakReference) mut => VT.GetWeakReference(ref this, weakReference);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWeakReferenceSource self, IWeakReference** weakReference) GetWeakReference;
			}
		}
		[CRepr]
		public struct ISystemMediaTransportControlsInterop : IInspectable
		{
			public const new Guid IID = .(0xddb0472d, 0xc911, 0x4a1f, 0x86, 0xd9, 0xdc, 0x3d, 0x71, 0xa9, 0x5f, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetForWindow(HWnd appWindow, in Guid riid, void** mediaTransportControl) mut => VT.GetForWindow(ref this, appWindow, riid, mediaTransportControl);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISystemMediaTransportControlsInterop self, HWnd appWindow, in Guid riid, void** mediaTransportControl) GetForWindow;
			}
		}
		[CRepr]
		public struct IShareWindowCommandEventArgsInterop : IUnknown
		{
			public const new Guid IID = .(0x6571a721, 0x643d, 0x43d4, 0xac, 0xa4, 0x6b, 0x6f, 0x5f, 0x30, 0xf1, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetWindow(out HWnd value) mut => VT._GetWindow(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IShareWindowCommandEventArgsInterop self, out HWnd value) _GetWindow;
			}
		}
		[CRepr]
		public struct IShareWindowCommandSourceInterop : IUnknown
		{
			public const new Guid IID = .(0x461a191f, 0x8424, 0x43a6, 0xa0, 0xfa, 0x34, 0x51, 0xa2, 0x2f, 0x56, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetForWindow(HWnd appWindow, in Guid riid, void** shareWindowCommandSource) mut => VT.GetForWindow(ref this, appWindow, riid, shareWindowCommandSource);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IShareWindowCommandSourceInterop self, HWnd appWindow, in Guid riid, void** shareWindowCommandSource) GetForWindow;
			}
		}
		[CRepr]
		public struct IMessageDispatcher : IInspectable
		{
			public const new Guid IID = .(0xf5f84c8f, 0xcfd0, 0x4cd6, 0xb6, 0x6b, 0xc5, 0xd2, 0x6f, 0xf1, 0x68, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult PumpMessages() mut => VT.PumpMessages(ref this);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMessageDispatcher self) PumpMessages;
			}
		}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CoDecodeProxy(uint32 dwClientPid, uint64 ui64ProxyAddress, out ServerInformation pServerInformation);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoGetAgileReference(AgileReferenceOptions options, in Guid riid, ref IUnknown pUnk, out IAgileReference* ppAgileReference);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HSTRING_UserSize(ref uint32 param0, uint32 param1, ref HSTRING param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HSTRING_UserMarshal(ref uint32 param0, out uint8 param1, ref HSTRING param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HSTRING_UserUnmarshal(ref uint32 param0, uint8* param1, out HSTRING param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HSTRING_UserFree(ref uint32 param0, ref HSTRING param1);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HSTRING_UserSize64(ref uint32 param0, uint32 param1, ref HSTRING param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HSTRING_UserMarshal64(ref uint32 param0, out uint8 param1, ref HSTRING param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HSTRING_UserUnmarshal64(ref uint32 param0, uint8* param1, out HSTRING param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HSTRING_UserFree64(ref uint32 param0, ref HSTRING param1);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsCreateString(char16* sourceString, uint32 length, HSTRING* string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsCreateStringReference(char16* sourceString, uint32 length, out HSTRING_HEADER hstringHeader, HSTRING* string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsDeleteString(HSTRING string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsDuplicateString(HSTRING string, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WindowsGetStringLen(HSTRING string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern char16* WindowsGetStringRawBuffer(HSTRING string, uint32* length);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WindowsIsStringEmpty(HSTRING string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsStringHasEmbeddedNull(HSTRING string, out IntBool hasEmbedNull);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsCompareStringOrdinal(HSTRING string1, HSTRING string2, out int32 result);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsSubstring(HSTRING string, uint32 startIndex, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsSubstringWithSpecifiedLength(HSTRING string, uint32 startIndex, uint32 length, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsConcatString(HSTRING string1, HSTRING string2, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsReplaceString(HSTRING string, HSTRING stringReplaced, HSTRING stringReplaceWith, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsTrimStringStart(HSTRING string, HSTRING trimString, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsTrimStringEnd(HSTRING string, HSTRING trimString, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsPreallocateStringBuffer(uint32 length, out uint16* charBuffer, out HSTRING_BUFFER bufferHandle);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsPromoteStringBuffer(HSTRING_BUFFER bufferHandle, HSTRING* string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsDeleteStringBuffer(HSTRING_BUFFER bufferHandle);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsInspectString(uint targetHString, uint16 machine, PINSPECT_HSTRING_CALLBACK callback, void* context, out uint32 length, out uint targetStringAddress);
		[Import("api-ms-win-core-winrt-string-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WindowsInspectString2(uint64 targetHString, uint16 machine, PINSPECT_HSTRING_CALLBACK2 callback, void* context, out uint32 length, out uint64 targetStringAddress);
		[Import("coremessaging.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateDispatcherQueueController(DispatcherQueueOptions options, void* dispatcherQueueController);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoInitialize(RO_INIT_TYPE initType);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoUninitialize();
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoActivateInstance(HSTRING activatableClassId, out IInspectable* instance);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoRegisterActivationFactories(HSTRING* activatableClassIds, int* activationFactoryCallbacks, uint32 count, out int cookie);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoRevokeActivationFactories(int cookie);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoGetActivationFactory(HSTRING activatableClassId, in Guid iid, void** factory);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoRegisterForApartmentShutdown(ref IApartmentShutdown callbackObject, out uint64 apartmentIdentifier, out APARTMENT_SHUTDOWN_REGISTRATION_COOKIE regCookie);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoUnregisterForApartmentShutdown(APARTMENT_SHUTDOWN_REGISTRATION_COOKIE regCookie);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoGetApartmentIdentifier(out uint64 apartmentIdentifier);
		[Import("api-ms-win-core-winrt-robuffer-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoGetBufferMarshaler(out IMarshal* bufferMarshaler);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoGetErrorReportingFlags(out uint32 pflags);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoSetErrorReportingFlags(uint32 flags);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoResolveRestrictedErrorInfoReference(char16* reference, out IRestrictedErrorInfo* ppRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult SetRestrictedErrorInfo(IRestrictedErrorInfo* pRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetRestrictedErrorInfo(IRestrictedErrorInfo** ppRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool RoOriginateErrorW(HResult error, uint32 cchMax, char16* message);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool RoOriginateError(HResult error, HSTRING message);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool RoTransformErrorW(HResult oldError, HResult newError, uint32 cchMax, char16* message);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool RoTransformError(HResult oldError, HResult newError, HSTRING message);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoCaptureErrorContext(HResult hr);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoFailFastWithErrorContext(HResult hrError);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool RoOriginateLanguageException(HResult error, HSTRING message, IUnknown* languageException);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoClearError();
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoReportUnhandledError(ref IRestrictedErrorInfo pRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoInspectThreadErrorInfo(uint targetTebAddress, uint16 machine, PINSPECT_MEMORY_CALLBACK readMemoryCallback, void* context, out uint targetErrorInfoAddress);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoInspectCapturedStackBackTrace(uint targetErrorInfoAddress, uint16 machine, PINSPECT_MEMORY_CALLBACK readMemoryCallback, void* context, out uint32 frameCount, out uint targetBackTraceAddress);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoGetMatchingRestrictedErrorInfo(HResult hrIn, out IRestrictedErrorInfo* ppRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoReportFailedDelegate(ref IUnknown punkDelegate, ref IRestrictedErrorInfo pRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsErrorPropagationEnabled();
		[Import("rometadata.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult MetaDataGetDispenser(in Guid rclsid, in Guid riid, void** ppv);
		[Import("api-ms-win-core-winrt-roparameterizediid-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoGetParameterizedTypeInstanceIID(uint32 nameElementCount, char16** nameElements, in IRoMetaDataLocator metaDataLocator, out Guid iid, ROPARAMIIDHANDLE* pExtra);
		[Import("api-ms-win-core-winrt-roparameterizediid-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoFreeParameterizedTypeExtra(ROPARAMIIDHANDLE extra);
		[Import("api-ms-win-core-winrt-roparameterizediid-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern char8* RoParameterizedTypeExtraGetTypeSignature(ROPARAMIIDHANDLE extra);
		[Import("api-ms-win-core-winrt-registration-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult RoGetServerActivatableClasses(HSTRING serverName, out HSTRING* activatableClassIds, out uint32 count);
		[Import("api-ms-win-shcore-stream-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateRandomAccessStreamOnFile(char16* filePath, uint32 accessMode, in Guid riid, void** ppv);
		[Import("api-ms-win-shcore-stream-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateRandomAccessStreamOverStream(ref IStream stream, BSOS_OPTIONS options, in Guid riid, void** ppv);
		[Import("api-ms-win-shcore-stream-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateStreamOverRandomAccessStream(ref IUnknown randomAccessStream, in Guid riid, void** ppv);
	}
}
