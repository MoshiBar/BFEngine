using System;

// namespace NetworkManagement.MobileBroadband
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum MBN_SIGNAL_CONSTANTS : int32
		{
			RSSI_DEFAULT = -1,
			RSSI_DISABLE = 0,
			RSSI_UNKNOWN = 99,
			ERROR_RATE_UNKNOWN = 99,
		}
		public enum MBN_CELLULAR_CLASS : int32
		{
			NONE = 0,
			GSM = 1,
			CDMA = 2,
		}
		public enum MBN_VOICE_CLASS : int32
		{
			NONE = 0,
			NO_VOICE = 1,
			SEPARATE_VOICE_DATA = 2,
			SIMULTANEOUS_VOICE_DATA = 3,
		}
		public enum MBN_PROVIDER_STATE : int32
		{
			NONE = 0,
			HOME = 1,
			FORBIDDEN = 2,
			PREFERRED = 4,
			VISIBLE = 8,
			REGISTERED = 16,
			PREFERRED_MULTICARRIER = 32,
		}
		public enum MBN_PROVIDER_CONSTANTS : int32
		{
			PROVIDERNAME_LEN = 20,
			PROVIDERID_LEN = 6,
		}
		[AllowDuplicates]
		public enum MBN_INTERFACE_CAPS_CONSTANTS : int32
		{
			DEVICEID_LEN = 18,
			MANUFACTURER_LEN = 32,
			MODEL_LEN = 32,
			FIRMWARE_LEN = 32,
		}
		public enum MBN_DATA_CLASS : int32
		{
			NONE = 0,
			GPRS = 1,
			EDGE = 2,
			UMTS = 4,
			HSDPA = 8,
			HSUPA = 16,
			LTE = 32,
			_5G_NSA = 64,
			_5G_SA = 128,
			_1XRTT = 65536,
			_1XEVDO = 131072,
			_1XEVDO_REVA = 262144,
			_1XEVDV = 524288,
			_3XRTT = 1048576,
			_1XEVDO_REVB = 2097152,
			UMB = 4194304,
			CUSTOM = -2147483648,
		}
		public enum MBN_CTRL_CAPS : int32
		{
			NONE = 0,
			REG_MANUAL = 1,
			HW_RADIO_SWITCH = 2,
			CDMA_MOBILE_IP = 4,
			CDMA_SIMPLE_IP = 8,
			PROTECT_UNIQUEID = 16,
			MODEL_MULTI_CARRIER = 32,
			USSD = 64,
			MULTI_MODE = 128,
		}
		public enum MBN_SMS_CAPS : int32
		{
			NONE = 0,
			PDU_RECEIVE = 1,
			PDU_SEND = 2,
			TEXT_RECEIVE = 4,
			TEXT_SEND = 8,
		}
		public enum MBN_BAND_CLASS : int32
		{
			NONE = 0,
			_0 = 1,
			I = 2,
			II = 4,
			III = 8,
			IV = 16,
			V = 32,
			VI = 64,
			VII = 128,
			VIII = 256,
			IX = 512,
			X = 1024,
			XI = 2048,
			XII = 4096,
			XIII = 8192,
			XIV = 16384,
			XV = 32768,
			XVI = 65536,
			XVII = 131072,
			CUSTOM = -2147483648,
		}
		public enum MBN_READY_STATE : int32
		{
			OFF = 0,
			INITIALIZED = 1,
			SIM_NOT_INSERTED = 2,
			BAD_SIM = 3,
			FAILURE = 4,
			NOT_ACTIVATED = 5,
			DEVICE_LOCKED = 6,
			DEVICE_BLOCKED = 7,
			NO_ESIM_PROFILE = 8,
		}
		public enum MBN_ACTIVATION_STATE : int32
		{
			NONE = 0,
			ACTIVATED = 1,
			ACTIVATING = 2,
			DEACTIVATED = 3,
			DEACTIVATING = 4,
		}
		public enum MBN_CONNECTION_MODE : int32
		{
			PROFILE = 0,
			TMP_PROFILE = 1,
		}
		public enum MBN_VOICE_CALL_STATE : int32
		{
			NONE = 0,
			IN_PROGRESS = 1,
			HANGUP = 2,
		}
		public enum MBN_REGISTRATION_CONSTANTS : int32
		{
			ROAMTEXT_LEN = 64,
			CDMA_DEFAULT_PROVIDER_ID = 0,
		}
		public enum MBN_REGISTER_STATE : int32
		{
			NONE = 0,
			DEREGISTERED = 1,
			SEARCHING = 2,
			HOME = 3,
			ROAMING = 4,
			PARTNER = 5,
			DENIED = 6,
		}
		public enum MBN_REGISTER_MODE : int32
		{
			NONE = 0,
			AUTOMATIC = 1,
			MANUAL = 2,
		}
		[AllowDuplicates]
		public enum MBN_PIN_CONSTANTS : int32
		{
			ATTEMPTS_REMAINING_UNKNOWN = -1,
			PIN_LENGTH_UNKNOWN = -1,
		}
		public enum MBN_PIN_STATE : int32
		{
			NONE = 0,
			ENTER = 1,
			UNBLOCK = 2,
		}
		public enum MBN_PIN_TYPE : int32
		{
			NONE = 0,
			CUSTOM = 1,
			PIN1 = 2,
			PIN2 = 3,
			DEVICE_SIM_PIN = 4,
			DEVICE_FIRST_SIM_PIN = 5,
			NETWORK_PIN = 6,
			NETWORK_SUBSET_PIN = 7,
			SVC_PROVIDER_PIN = 8,
			CORPORATE_PIN = 9,
			SUBSIDY_LOCK = 10,
		}
		public enum MBN_PIN_MODE : int32
		{
			ENABLED = 1,
			DISABLED = 2,
		}
		public enum MBN_PIN_FORMAT : int32
		{
			NONE = 0,
			NUMERIC = 1,
			ALPHANUMERIC = 2,
		}
		[AllowDuplicates]
		public enum MBN_CONTEXT_CONSTANTS : int32
		{
			ACCESSSTRING_LEN = 100,
			USERNAME_LEN = 255,
			PASSWORD_LEN = 255,
			CONTEXT_ID_APPEND = -1,
		}
		public enum MBN_AUTH_PROTOCOL : int32
		{
			NONE = 0,
			PAP = 1,
			CHAP = 2,
			MSCHAPV2 = 3,
		}
		public enum MBN_COMPRESSION : int32
		{
			NONE = 0,
			ENABLE = 1,
		}
		public enum MBN_CONTEXT_TYPE : int32
		{
			NONE = 0,
			INTERNET = 1,
			VPN = 2,
			VOICE = 3,
			VIDEO_SHARE = 4,
			CUSTOM = 5,
			PURCHASE = 6,
		}
		[AllowDuplicates]
		public enum WWAEXT_SMS_CONSTANTS : int32
		{
			MESSAGE_INDEX_NONE = 0,
			CDMA_SHORT_MSG_SIZE_UNKNOWN = 0,
			CDMA_SHORT_MSG_SIZE_MAX = 160,
		}
		public enum MBN_MSG_STATUS : int32
		{
			NEW = 0,
			OLD = 1,
			DRAFT = 2,
			SENT = 3,
		}
		public enum MBN_SMS_CDMA_LANG : int32
		{
			NONE = 0,
			ENGLISH = 1,
			FRENCH = 2,
			SPANISH = 3,
			JAPANESE = 4,
			KOREAN = 5,
			CHINESE = 6,
			HEBREW = 7,
		}
		public enum MBN_SMS_CDMA_ENCODING : int32
		{
			OCTET = 0,
			EPM = 1,
			_7BIT_ASCII = 2,
			IA5 = 3,
			UNICODE = 4,
			SHIFT_JIS = 5,
			KOREAN = 6,
			LATIN_HEBREW = 7,
			LATIN = 8,
			GSM_7BIT = 9,
		}
		public enum MBN_SMS_FLAG : int32
		{
			ALL = 0,
			INDEX = 1,
			NEW = 2,
			OLD = 3,
			SENT = 4,
			DRAFT = 5,
		}
		public enum MBN_SMS_STATUS_FLAG : int32
		{
			NONE = 0,
			MESSAGE_STORE_FULL = 1,
			NEW_MESSAGE = 2,
		}
		public enum MBN_SMS_FORMAT : int32
		{
			NONE = 0,
			PDU = 1,
			TEXT = 2,
		}
		public enum MBN_RADIO : int32
		{
			OFF = 0,
			ON = 1,
		}
		public enum MBN_DEVICE_SERVICE_SESSIONS_STATE : int32
		{
			RESTORED = 0,
		}
		public enum MBN_DEVICE_SERVICES_INTERFACE_STATE : int32
		{
			ARRIVAL = 0,
			REMOVAL = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct MBN_INTERFACE_CAPS
		{
			public MBN_CELLULAR_CLASS cellularClass;
			public MBN_VOICE_CLASS voiceClass;
			public uint32 dataClass;
			public BSTR customDataClass;
			public uint32 gsmBandClass;
			public uint32 cdmaBandClass;
			public BSTR customBandClass;
			public uint32 smsCaps;
			public uint32 controlCaps;
			public BSTR deviceID;
			public BSTR manufacturer;
			public BSTR model;
			public BSTR firmwareInfo;
		}
		[CRepr]
		public struct MBN_PROVIDER
		{
			public BSTR providerID;
			public uint32 providerState;
			public BSTR providerName;
			public uint32 dataClass;
		}
		[CRepr]
		public struct MBN_PROVIDER2
		{
			public MBN_PROVIDER provider;
			public MBN_CELLULAR_CLASS cellularClass;
			public uint32 signalStrength;
			public uint32 signalError;
		}
		[CRepr]
		public struct MBN_PIN_INFO
		{
			public MBN_PIN_STATE pinState;
			public MBN_PIN_TYPE pinType;
			public uint32 attemptsRemaining;
		}
		[CRepr]
		public struct MBN_CONTEXT
		{
			public uint32 contextID;
			public MBN_CONTEXT_TYPE contextType;
			public BSTR accessString;
			public BSTR userName;
			public BSTR password;
			public MBN_COMPRESSION compression;
			public MBN_AUTH_PROTOCOL authType;
		}
		[CRepr]
		public struct MBN_SMS_FILTER
		{
			public MBN_SMS_FLAG flag;
			public uint32 messageIndex;
		}
		[CRepr]
		public struct MBN_SMS_STATUS_INFO
		{
			public uint32 flag;
			public uint32 messageIndex;
		}
		[CRepr]
		public struct MBN_DEVICE_SERVICE
		{
			public BSTR deviceServiceID;
			public int16 dataWriteSupported;
			public int16 dataReadSupported;
		}
		[CRepr]
		public struct __mbnapi_ReferenceRemainingTypes__
		{
			public MBN_BAND_CLASS bandClass;
			public MBN_CONTEXT_CONSTANTS contextConstants;
			public MBN_CTRL_CAPS ctrlCaps;
			public MBN_DATA_CLASS dataClass;
			public MBN_INTERFACE_CAPS_CONSTANTS interfaceCapsConstants;
			public MBN_PIN_CONSTANTS pinConstants;
			public MBN_PROVIDER_CONSTANTS providerConstants;
			public MBN_PROVIDER_STATE providerState;
			public MBN_REGISTRATION_CONSTANTS registrationConstants;
			public MBN_SIGNAL_CONSTANTS signalConstants;
			public MBN_SMS_CAPS smsCaps;
			public WWAEXT_SMS_CONSTANTS smsConstants;
			public WWAEXT_SMS_CONSTANTS wwaextSmsConstants;
			public MBN_SMS_STATUS_FLAG smsStatusFlag;
		}
		[CRepr]
		public struct __DummyPinType__
		{
			public uint32 pinType;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_MbnConnectionProfileManager = .(0xbdfee05a, 0x4418, 0x11dd, 0x90, 0xed, 0x00, 0x1c, 0x25, 0x7c, 0xcf, 0xf1);
		public const Guid CLSID_MbnInterfaceManager = .(0xbdfee05b, 0x4418, 0x11dd, 0x90, 0xed, 0x00, 0x1c, 0x25, 0x7c, 0xcf, 0xf1);
		public const Guid CLSID_MbnConnectionManager = .(0xbdfee05c, 0x4418, 0x11dd, 0x90, 0xed, 0x00, 0x1c, 0x25, 0x7c, 0xcf, 0xf1);
		public const Guid CLSID_MbnDeviceServicesManager = .(0x2269daa3, 0x2a9f, 0x4165, 0xa5, 0x01, 0xce, 0x00, 0xa6, 0xf7, 0xa7, 0x5b);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDummyMBNUCMExt : IDispatch
		{
			public const new Guid IID = .(0xdcbbbab6, 0xffff, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IMbnConnection : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200d, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_ConnectionID(BSTR* ConnectionID) mut => VT.get_ConnectionID(ref this, ConnectionID);
			public HResult get_InterfaceID(BSTR* InterfaceID) mut => VT.get_InterfaceID(ref this, InterfaceID);
			public HResult Connect(MBN_CONNECTION_MODE connectionMode, char16* strProfile, out uint32 requestID) mut => VT.Connect(ref this, connectionMode, strProfile, out requestID);
			public HResult Disconnect(out uint32 requestID) mut => VT.Disconnect(ref this, out requestID);
			public HResult GetConnectionState(out MBN_ACTIVATION_STATE ConnectionState, BSTR* ProfileName) mut => VT.GetConnectionState(ref this, out ConnectionState, ProfileName);
			public HResult GetVoiceCallState(out MBN_VOICE_CALL_STATE voiceCallState) mut => VT.GetVoiceCallState(ref this, out voiceCallState);
			public HResult GetActivationNetworkError(out uint32 networkError) mut => VT.GetActivationNetworkError(ref this, out networkError);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnection self, BSTR* ConnectionID) get_ConnectionID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnection self, BSTR* InterfaceID) get_InterfaceID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnection self, MBN_CONNECTION_MODE connectionMode, char16* strProfile, out uint32 requestID) Connect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnection self, out uint32 requestID) Disconnect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnection self, out MBN_ACTIVATION_STATE ConnectionState, BSTR* ProfileName) GetConnectionState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnection self, out MBN_VOICE_CALL_STATE voiceCallState) GetVoiceCallState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnection self, out uint32 networkError) GetActivationNetworkError;
			}
		}
		[CRepr]
		public struct IMbnConnectionEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200e, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnConnectComplete(ref IMbnConnection newConnection, uint32 requestID, HResult status) mut => VT.OnConnectComplete(ref this, ref newConnection, requestID, status);
			public HResult OnDisconnectComplete(ref IMbnConnection newConnection, uint32 requestID, HResult status) mut => VT.OnDisconnectComplete(ref this, ref newConnection, requestID, status);
			public HResult OnConnectStateChange(ref IMbnConnection newConnection) mut => VT.OnConnectStateChange(ref this, ref newConnection);
			public HResult OnVoiceCallStateChange(ref IMbnConnection newConnection) mut => VT.OnVoiceCallStateChange(ref this, ref newConnection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionEvents self, ref IMbnConnection newConnection, uint32 requestID, HResult status) OnConnectComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionEvents self, ref IMbnConnection newConnection, uint32 requestID, HResult status) OnDisconnectComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionEvents self, ref IMbnConnection newConnection) OnConnectStateChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionEvents self, ref IMbnConnection newConnection) OnVoiceCallStateChange;
			}
		}
		[CRepr]
		public struct IMbnInterface : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2001, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_InterfaceID(BSTR* InterfaceID) mut => VT.get_InterfaceID(ref this, InterfaceID);
			public HResult GetInterfaceCapability(out MBN_INTERFACE_CAPS interfaceCaps) mut => VT.GetInterfaceCapability(ref this, out interfaceCaps);
			public HResult GetSubscriberInformation(out IMbnSubscriberInformation* subscriberInformation) mut => VT.GetSubscriberInformation(ref this, out subscriberInformation);
			public HResult GetReadyState(out MBN_READY_STATE readyState) mut => VT.GetReadyState(ref this, out readyState);
			public HResult InEmergencyMode(out int16 emergencyMode) mut => VT.InEmergencyMode(ref this, out emergencyMode);
			public HResult GetHomeProvider(out MBN_PROVIDER homeProvider) mut => VT.GetHomeProvider(ref this, out homeProvider);
			public HResult GetPreferredProviders(SAFEARRAY** preferredProviders) mut => VT.GetPreferredProviders(ref this, preferredProviders);
			public HResult SetPreferredProviders(ref SAFEARRAY preferredProviders, out uint32 requestID) mut => VT.SetPreferredProviders(ref this, ref preferredProviders, out requestID);
			public HResult GetVisibleProviders(out uint32 age, out SAFEARRAY* visibleProviders) mut => VT.GetVisibleProviders(ref this, out age, out visibleProviders);
			public HResult ScanNetwork(out uint32 requestID) mut => VT.ScanNetwork(ref this, out requestID);
			public HResult GetConnection(out IMbnConnection* mbnConnection) mut => VT.GetConnection(ref this, out mbnConnection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterface self, BSTR* InterfaceID) get_InterfaceID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterface self, out MBN_INTERFACE_CAPS interfaceCaps) GetInterfaceCapability;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterface self, out IMbnSubscriberInformation* subscriberInformation) GetSubscriberInformation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterface self, out MBN_READY_STATE readyState) GetReadyState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterface self, out int16 emergencyMode) InEmergencyMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterface self, out MBN_PROVIDER homeProvider) GetHomeProvider;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterface self, SAFEARRAY** preferredProviders) GetPreferredProviders;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterface self, ref SAFEARRAY preferredProviders, out uint32 requestID) SetPreferredProviders;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterface self, out uint32 age, out SAFEARRAY* visibleProviders) GetVisibleProviders;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterface self, out uint32 requestID) ScanNetwork;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterface self, out IMbnConnection* mbnConnection) GetConnection;
			}
		}
		[CRepr]
		public struct IMbnInterfaceEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2002, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnInterfaceCapabilityAvailable(ref IMbnInterface newInterface) mut => VT.OnInterfaceCapabilityAvailable(ref this, ref newInterface);
			public HResult OnSubscriberInformationChange(ref IMbnInterface newInterface) mut => VT.OnSubscriberInformationChange(ref this, ref newInterface);
			public HResult OnReadyStateChange(ref IMbnInterface newInterface) mut => VT.OnReadyStateChange(ref this, ref newInterface);
			public HResult OnEmergencyModeChange(ref IMbnInterface newInterface) mut => VT.OnEmergencyModeChange(ref this, ref newInterface);
			public HResult OnHomeProviderAvailable(ref IMbnInterface newInterface) mut => VT.OnHomeProviderAvailable(ref this, ref newInterface);
			public HResult OnPreferredProvidersChange(ref IMbnInterface newInterface) mut => VT.OnPreferredProvidersChange(ref this, ref newInterface);
			public HResult OnSetPreferredProvidersComplete(ref IMbnInterface newInterface, uint32 requestID, HResult status) mut => VT.OnSetPreferredProvidersComplete(ref this, ref newInterface, requestID, status);
			public HResult OnScanNetworkComplete(ref IMbnInterface newInterface, uint32 requestID, HResult status) mut => VT.OnScanNetworkComplete(ref this, ref newInterface, requestID, status);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface) OnInterfaceCapabilityAvailable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface) OnSubscriberInformationChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface) OnReadyStateChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface) OnEmergencyModeChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface) OnHomeProviderAvailable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface) OnPreferredProvidersChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface, uint32 requestID, HResult status) OnSetPreferredProvidersComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface, uint32 requestID, HResult status) OnScanNetworkComplete;
			}
		}
		[CRepr]
		public struct IMbnInterfaceManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201b, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetInterface(char16* interfaceID, IMbnInterface** mbnInterface) mut => VT.GetInterface(ref this, interfaceID, mbnInterface);
			public HResult GetInterfaces(SAFEARRAY** mbnInterfaces) mut => VT.GetInterfaces(ref this, mbnInterfaces);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterfaceManager self, char16* interfaceID, IMbnInterface** mbnInterface) GetInterface;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterfaceManager self, SAFEARRAY** mbnInterfaces) GetInterfaces;
			}
		}
		[CRepr]
		public struct IMbnInterfaceManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201c, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnInterfaceArrival(ref IMbnInterface newInterface) mut => VT.OnInterfaceArrival(ref this, ref newInterface);
			public HResult OnInterfaceRemoval(ref IMbnInterface oldInterface) mut => VT.OnInterfaceRemoval(ref this, ref oldInterface);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterfaceManagerEvents self, ref IMbnInterface newInterface) OnInterfaceArrival;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnInterfaceManagerEvents self, ref IMbnInterface oldInterface) OnInterfaceRemoval;
			}
		}
		[CRepr]
		public struct IMbnRegistration : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2009, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetRegisterState(out MBN_REGISTER_STATE registerState) mut => VT.GetRegisterState(ref this, out registerState);
			public HResult GetRegisterMode(out MBN_REGISTER_MODE registerMode) mut => VT.GetRegisterMode(ref this, out registerMode);
			public HResult GetProviderID(BSTR* providerID) mut => VT.GetProviderID(ref this, providerID);
			public HResult GetProviderName(BSTR* providerName) mut => VT.GetProviderName(ref this, providerName);
			public HResult GetRoamingText(BSTR* roamingText) mut => VT.GetRoamingText(ref this, roamingText);
			public HResult GetAvailableDataClasses(out uint32 availableDataClasses) mut => VT.GetAvailableDataClasses(ref this, out availableDataClasses);
			public HResult GetCurrentDataClass(out uint32 currentDataClass) mut => VT.GetCurrentDataClass(ref this, out currentDataClass);
			public HResult GetRegistrationNetworkError(out uint32 registrationNetworkError) mut => VT.GetRegistrationNetworkError(ref this, out registrationNetworkError);
			public HResult GetPacketAttachNetworkError(out uint32 packetAttachNetworkError) mut => VT.GetPacketAttachNetworkError(ref this, out packetAttachNetworkError);
			public HResult SetRegisterMode(MBN_REGISTER_MODE registerMode, char16* providerID, uint32 dataClass, out uint32 requestID) mut => VT.SetRegisterMode(ref this, registerMode, providerID, dataClass, out requestID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistration self, out MBN_REGISTER_STATE registerState) GetRegisterState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistration self, out MBN_REGISTER_MODE registerMode) GetRegisterMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistration self, BSTR* providerID) GetProviderID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistration self, BSTR* providerName) GetProviderName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistration self, BSTR* roamingText) GetRoamingText;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistration self, out uint32 availableDataClasses) GetAvailableDataClasses;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistration self, out uint32 currentDataClass) GetCurrentDataClass;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistration self, out uint32 registrationNetworkError) GetRegistrationNetworkError;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistration self, out uint32 packetAttachNetworkError) GetPacketAttachNetworkError;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistration self, MBN_REGISTER_MODE registerMode, char16* providerID, uint32 dataClass, out uint32 requestID) SetRegisterMode;
			}
		}
		[CRepr]
		public struct IMbnRegistrationEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200a, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnRegisterModeAvailable(ref IMbnRegistration newInterface) mut => VT.OnRegisterModeAvailable(ref this, ref newInterface);
			public HResult OnRegisterStateChange(ref IMbnRegistration newInterface) mut => VT.OnRegisterStateChange(ref this, ref newInterface);
			public HResult OnPacketServiceStateChange(ref IMbnRegistration newInterface) mut => VT.OnPacketServiceStateChange(ref this, ref newInterface);
			public HResult OnSetRegisterModeComplete(ref IMbnRegistration newInterface, uint32 requestID, HResult status) mut => VT.OnSetRegisterModeComplete(ref this, ref newInterface, requestID, status);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistrationEvents self, ref IMbnRegistration newInterface) OnRegisterModeAvailable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistrationEvents self, ref IMbnRegistration newInterface) OnRegisterStateChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistrationEvents self, ref IMbnRegistration newInterface) OnPacketServiceStateChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRegistrationEvents self, ref IMbnRegistration newInterface, uint32 requestID, HResult status) OnSetRegisterModeComplete;
			}
		}
		[CRepr]
		public struct IMbnConnectionManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201d, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetConnection(char16* connectionID, IMbnConnection** mbnConnection) mut => VT.GetConnection(ref this, connectionID, mbnConnection);
			public HResult GetConnections(SAFEARRAY** mbnConnections) mut => VT.GetConnections(ref this, mbnConnections);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionManager self, char16* connectionID, IMbnConnection** mbnConnection) GetConnection;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionManager self, SAFEARRAY** mbnConnections) GetConnections;
			}
		}
		[CRepr]
		public struct IMbnConnectionManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201e, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnConnectionArrival(ref IMbnConnection newConnection) mut => VT.OnConnectionArrival(ref this, ref newConnection);
			public HResult OnConnectionRemoval(ref IMbnConnection oldConnection) mut => VT.OnConnectionRemoval(ref this, ref oldConnection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionManagerEvents self, ref IMbnConnection newConnection) OnConnectionArrival;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionManagerEvents self, ref IMbnConnection oldConnection) OnConnectionRemoval;
			}
		}
		[CRepr]
		public struct IMbnPinManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2005, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetPinList(SAFEARRAY** pinList) mut => VT.GetPinList(ref this, pinList);
			public HResult GetPin(MBN_PIN_TYPE pinType, IMbnPin** pin) mut => VT.GetPin(ref this, pinType, pin);
			public HResult GetPinState(out uint32 requestID) mut => VT.GetPinState(ref this, out requestID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPinManager self, SAFEARRAY** pinList) GetPinList;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPinManager self, MBN_PIN_TYPE pinType, IMbnPin** pin) GetPin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPinManager self, out uint32 requestID) GetPinState;
			}
		}
		[CRepr]
		public struct IMbnPinManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2006, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnPinListAvailable(ref IMbnPinManager pinManager) mut => VT.OnPinListAvailable(ref this, ref pinManager);
			public HResult OnGetPinStateComplete(ref IMbnPinManager pinManager, MBN_PIN_INFO pinInfo, uint32 requestID, HResult status) mut => VT.OnGetPinStateComplete(ref this, ref pinManager, pinInfo, requestID, status);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPinManagerEvents self, ref IMbnPinManager pinManager) OnPinListAvailable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPinManagerEvents self, ref IMbnPinManager pinManager, MBN_PIN_INFO pinInfo, uint32 requestID, HResult status) OnGetPinStateComplete;
			}
		}
		[CRepr]
		public struct IMbnPinEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2008, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnEnableComplete(ref IMbnPin pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HResult status) mut => VT.OnEnableComplete(ref this, ref pin, ref pinInfo, requestID, status);
			public HResult OnDisableComplete(ref IMbnPin pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HResult status) mut => VT.OnDisableComplete(ref this, ref pin, ref pinInfo, requestID, status);
			public HResult OnEnterComplete(ref IMbnPin Pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HResult status) mut => VT.OnEnterComplete(ref this, ref Pin, ref pinInfo, requestID, status);
			public HResult OnChangeComplete(ref IMbnPin Pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HResult status) mut => VT.OnChangeComplete(ref this, ref Pin, ref pinInfo, requestID, status);
			public HResult OnUnblockComplete(ref IMbnPin Pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HResult status) mut => VT.OnUnblockComplete(ref this, ref Pin, ref pinInfo, requestID, status);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPinEvents self, ref IMbnPin pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HResult status) OnEnableComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPinEvents self, ref IMbnPin pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HResult status) OnDisableComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPinEvents self, ref IMbnPin Pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HResult status) OnEnterComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPinEvents self, ref IMbnPin Pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HResult status) OnChangeComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPinEvents self, ref IMbnPin Pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HResult status) OnUnblockComplete;
			}
		}
		[CRepr]
		public struct IMbnSubscriberInformation : IUnknown
		{
			public const new Guid IID = .(0x459ecc43, 0xbcf5, 0x11dc, 0xa8, 0xa8, 0x00, 0x13, 0x21, 0xf1, 0x40, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_SubscriberID(BSTR* SubscriberID) mut => VT.get_SubscriberID(ref this, SubscriberID);
			public HResult get_SimIccID(BSTR* SimIccID) mut => VT.get_SimIccID(ref this, SimIccID);
			public HResult get_TelephoneNumbers(SAFEARRAY** TelephoneNumbers) mut => VT.get_TelephoneNumbers(ref this, TelephoneNumbers);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSubscriberInformation self, BSTR* SubscriberID) get_SubscriberID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSubscriberInformation self, BSTR* SimIccID) get_SimIccID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSubscriberInformation self, SAFEARRAY** TelephoneNumbers) get_TelephoneNumbers;
			}
		}
		[CRepr]
		public struct IMbnSignal : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2003, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetSignalStrength(out uint32 signalStrength) mut => VT.GetSignalStrength(ref this, out signalStrength);
			public HResult GetSignalError(out uint32 signalError) mut => VT.GetSignalError(ref this, out signalError);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSignal self, out uint32 signalStrength) GetSignalStrength;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSignal self, out uint32 signalError) GetSignalError;
			}
		}
		[CRepr]
		public struct IMbnSignalEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2004, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnSignalStateChange(ref IMbnSignal newInterface) mut => VT.OnSignalStateChange(ref this, ref newInterface);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSignalEvents self, ref IMbnSignal newInterface) OnSignalStateChange;
			}
		}
		[CRepr]
		public struct IMbnConnectionContext : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200b, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetProvisionedContexts(SAFEARRAY** provisionedContexts) mut => VT.GetProvisionedContexts(ref this, provisionedContexts);
			public HResult SetProvisionedContext(MBN_CONTEXT provisionedContexts, char16* providerID, out uint32 requestID) mut => VT.SetProvisionedContext(ref this, provisionedContexts, providerID, out requestID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionContext self, SAFEARRAY** provisionedContexts) GetProvisionedContexts;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionContext self, MBN_CONTEXT provisionedContexts, char16* providerID, out uint32 requestID) SetProvisionedContext;
			}
		}
		[CRepr]
		public struct IMbnConnectionContextEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200c, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnProvisionedContextListChange(ref IMbnConnectionContext newInterface) mut => VT.OnProvisionedContextListChange(ref this, ref newInterface);
			public HResult OnSetProvisionedContextComplete(ref IMbnConnectionContext newInterface, uint32 requestID, HResult status) mut => VT.OnSetProvisionedContextComplete(ref this, ref newInterface, requestID, status);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionContextEvents self, ref IMbnConnectionContext newInterface) OnProvisionedContextListChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionContextEvents self, ref IMbnConnectionContext newInterface, uint32 requestID, HResult status) OnSetProvisionedContextComplete;
			}
		}
		[CRepr]
		public struct IMbnConnectionProfileManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetConnectionProfiles(ref IMbnInterface mbnInterface, SAFEARRAY** connectionProfiles) mut => VT.GetConnectionProfiles(ref this, ref mbnInterface, connectionProfiles);
			public HResult GetConnectionProfile(ref IMbnInterface mbnInterface, char16* profileName, IMbnConnectionProfile** connectionProfile) mut => VT.GetConnectionProfile(ref this, ref mbnInterface, profileName, connectionProfile);
			public HResult CreateConnectionProfile(char16* xmlProfile) mut => VT.CreateConnectionProfile(ref this, xmlProfile);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionProfileManager self, ref IMbnInterface mbnInterface, SAFEARRAY** connectionProfiles) GetConnectionProfiles;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionProfileManager self, ref IMbnInterface mbnInterface, char16* profileName, IMbnConnectionProfile** connectionProfile) GetConnectionProfile;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionProfileManager self, char16* xmlProfile) CreateConnectionProfile;
			}
		}
		[CRepr]
		public struct IMbnConnectionProfile : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2010, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetProfileXmlData(BSTR* profileData) mut => VT.GetProfileXmlData(ref this, profileData);
			public HResult UpdateProfile(char16* strProfile) mut => VT.UpdateProfile(ref this, strProfile);
			public HResult Delete() mut => VT.Delete(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionProfile self, BSTR* profileData) GetProfileXmlData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionProfile self, char16* strProfile) UpdateProfile;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionProfile self) Delete;
			}
		}
		[CRepr]
		public struct IMbnConnectionProfileEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2011, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnProfileUpdate(ref IMbnConnectionProfile newProfile) mut => VT.OnProfileUpdate(ref this, ref newProfile);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionProfileEvents self, ref IMbnConnectionProfile newProfile) OnProfileUpdate;
			}
		}
		[CRepr]
		public struct IMbnSmsConfiguration : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2012, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_ServiceCenterAddress(BSTR* scAddress) mut => VT.get_ServiceCenterAddress(ref this, scAddress);
			public HResult put_ServiceCenterAddress(char16* scAddress) mut => VT.put_ServiceCenterAddress(ref this, scAddress);
			public HResult get_MaxMessageIndex(out uint32 index) mut => VT.get_MaxMessageIndex(ref this, out index);
			public HResult get_CdmaShortMsgSize(out uint32 shortMsgSize) mut => VT.get_CdmaShortMsgSize(ref this, out shortMsgSize);
			public HResult get_SmsFormat(out MBN_SMS_FORMAT smsFormat) mut => VT.get_SmsFormat(ref this, out smsFormat);
			public HResult put_SmsFormat(MBN_SMS_FORMAT smsFormat) mut => VT.put_SmsFormat(ref this, smsFormat);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsConfiguration self, BSTR* scAddress) get_ServiceCenterAddress;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsConfiguration self, char16* scAddress) put_ServiceCenterAddress;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsConfiguration self, out uint32 index) get_MaxMessageIndex;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsConfiguration self, out uint32 shortMsgSize) get_CdmaShortMsgSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsConfiguration self, out MBN_SMS_FORMAT smsFormat) get_SmsFormat;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsConfiguration self, MBN_SMS_FORMAT smsFormat) put_SmsFormat;
			}
		}
		[CRepr]
		public struct IMbnSmsReadMsgPdu : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2013, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Index(out uint32 Index) mut => VT.get_Index(ref this, out Index);
			public HResult get_Status(out MBN_MSG_STATUS Status) mut => VT.get_Status(ref this, out Status);
			public HResult get_PduData(BSTR* PduData) mut => VT.get_PduData(ref this, PduData);
			public HResult get_Message(SAFEARRAY** Message) mut => VT.get_Message(ref this, Message);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsReadMsgPdu self, out uint32 Index) get_Index;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsReadMsgPdu self, out MBN_MSG_STATUS Status) get_Status;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsReadMsgPdu self, BSTR* PduData) get_PduData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsReadMsgPdu self, SAFEARRAY** Message) get_Message;
			}
		}
		[CRepr]
		public struct IMbnSmsReadMsgTextCdma : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2014, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Index(out uint32 Index) mut => VT.get_Index(ref this, out Index);
			public HResult get_Status(out MBN_MSG_STATUS Status) mut => VT.get_Status(ref this, out Status);
			public HResult get_Address(BSTR* Address) mut => VT.get_Address(ref this, Address);
			public HResult get_Timestamp(BSTR* Timestamp) mut => VT.get_Timestamp(ref this, Timestamp);
			public HResult get_EncodingID(out MBN_SMS_CDMA_ENCODING EncodingID) mut => VT.get_EncodingID(ref this, out EncodingID);
			public HResult get_LanguageID(out MBN_SMS_CDMA_LANG LanguageID) mut => VT.get_LanguageID(ref this, out LanguageID);
			public HResult get_SizeInCharacters(out uint32 SizeInCharacters) mut => VT.get_SizeInCharacters(ref this, out SizeInCharacters);
			public HResult get_Message(SAFEARRAY** Message) mut => VT.get_Message(ref this, Message);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsReadMsgTextCdma self, out uint32 Index) get_Index;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsReadMsgTextCdma self, out MBN_MSG_STATUS Status) get_Status;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsReadMsgTextCdma self, BSTR* Address) get_Address;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsReadMsgTextCdma self, BSTR* Timestamp) get_Timestamp;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsReadMsgTextCdma self, out MBN_SMS_CDMA_ENCODING EncodingID) get_EncodingID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsReadMsgTextCdma self, out MBN_SMS_CDMA_LANG LanguageID) get_LanguageID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsReadMsgTextCdma self, out uint32 SizeInCharacters) get_SizeInCharacters;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsReadMsgTextCdma self, SAFEARRAY** Message) get_Message;
			}
		}
		[CRepr]
		public struct IMbnSms : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2015, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetSmsConfiguration(IMbnSmsConfiguration** smsConfiguration) mut => VT.GetSmsConfiguration(ref this, smsConfiguration);
			public HResult SetSmsConfiguration(ref IMbnSmsConfiguration smsConfiguration, out uint32 requestID) mut => VT.SetSmsConfiguration(ref this, ref smsConfiguration, out requestID);
			public HResult SmsSendPdu(char16* pduData, uint8 size, out uint32 requestID) mut => VT.SmsSendPdu(ref this, pduData, size, out requestID);
			public HResult SmsSendCdma(char16* address, MBN_SMS_CDMA_ENCODING encoding, MBN_SMS_CDMA_LANG language, uint32 sizeInCharacters, ref SAFEARRAY message, out uint32 requestID) mut => VT.SmsSendCdma(ref this, address, encoding, language, sizeInCharacters, ref message, out requestID);
			public HResult SmsSendCdmaPdu(ref SAFEARRAY message, out uint32 requestID) mut => VT.SmsSendCdmaPdu(ref this, ref message, out requestID);
			public HResult SmsRead(ref MBN_SMS_FILTER smsFilter, MBN_SMS_FORMAT smsFormat, out uint32 requestID) mut => VT.SmsRead(ref this, ref smsFilter, smsFormat, out requestID);
			public HResult SmsDelete(ref MBN_SMS_FILTER smsFilter, out uint32 requestID) mut => VT.SmsDelete(ref this, ref smsFilter, out requestID);
			public HResult GetSmsStatus(out MBN_SMS_STATUS_INFO smsStatusInfo) mut => VT.GetSmsStatus(ref this, out smsStatusInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSms self, IMbnSmsConfiguration** smsConfiguration) GetSmsConfiguration;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSms self, ref IMbnSmsConfiguration smsConfiguration, out uint32 requestID) SetSmsConfiguration;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSms self, char16* pduData, uint8 size, out uint32 requestID) SmsSendPdu;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSms self, char16* address, MBN_SMS_CDMA_ENCODING encoding, MBN_SMS_CDMA_LANG language, uint32 sizeInCharacters, ref SAFEARRAY message, out uint32 requestID) SmsSendCdma;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSms self, ref SAFEARRAY message, out uint32 requestID) SmsSendCdmaPdu;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSms self, ref MBN_SMS_FILTER smsFilter, MBN_SMS_FORMAT smsFormat, out uint32 requestID) SmsRead;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSms self, ref MBN_SMS_FILTER smsFilter, out uint32 requestID) SmsDelete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSms self, out MBN_SMS_STATUS_INFO smsStatusInfo) GetSmsStatus;
			}
		}
		[CRepr]
		public struct IMbnSmsEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2016, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnSmsConfigurationChange(ref IMbnSms sms) mut => VT.OnSmsConfigurationChange(ref this, ref sms);
			public HResult OnSetSmsConfigurationComplete(ref IMbnSms sms, uint32 requestID, HResult status) mut => VT.OnSetSmsConfigurationComplete(ref this, ref sms, requestID, status);
			public HResult OnSmsSendComplete(ref IMbnSms sms, uint32 requestID, HResult status) mut => VT.OnSmsSendComplete(ref this, ref sms, requestID, status);
			public HResult OnSmsReadComplete(ref IMbnSms sms, MBN_SMS_FORMAT smsFormat, ref SAFEARRAY readMsgs, int16 moreMsgs, uint32 requestID, HResult status) mut => VT.OnSmsReadComplete(ref this, ref sms, smsFormat, ref readMsgs, moreMsgs, requestID, status);
			public HResult OnSmsNewClass0Message(ref IMbnSms sms, MBN_SMS_FORMAT smsFormat, ref SAFEARRAY readMsgs) mut => VT.OnSmsNewClass0Message(ref this, ref sms, smsFormat, ref readMsgs);
			public HResult OnSmsDeleteComplete(ref IMbnSms sms, uint32 requestID, HResult status) mut => VT.OnSmsDeleteComplete(ref this, ref sms, requestID, status);
			public HResult OnSmsStatusChange(ref IMbnSms sms) mut => VT.OnSmsStatusChange(ref this, ref sms);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsEvents self, ref IMbnSms sms) OnSmsConfigurationChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsEvents self, ref IMbnSms sms, uint32 requestID, HResult status) OnSetSmsConfigurationComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsEvents self, ref IMbnSms sms, uint32 requestID, HResult status) OnSmsSendComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsEvents self, ref IMbnSms sms, MBN_SMS_FORMAT smsFormat, ref SAFEARRAY readMsgs, int16 moreMsgs, uint32 requestID, HResult status) OnSmsReadComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsEvents self, ref IMbnSms sms, MBN_SMS_FORMAT smsFormat, ref SAFEARRAY readMsgs) OnSmsNewClass0Message;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsEvents self, ref IMbnSms sms, uint32 requestID, HResult status) OnSmsDeleteComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnSmsEvents self, ref IMbnSms sms) OnSmsStatusChange;
			}
		}
		[CRepr]
		public struct IMbnServiceActivation : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2017, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Activate(ref SAFEARRAY vendorSpecificData, out uint32 requestID) mut => VT.Activate(ref this, ref vendorSpecificData, out requestID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnServiceActivation self, ref SAFEARRAY vendorSpecificData, out uint32 requestID) Activate;
			}
		}
		[CRepr]
		public struct IMbnServiceActivationEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2018, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnActivationComplete(ref IMbnServiceActivation serviceActivation, ref SAFEARRAY vendorSpecificData, uint32 requestID, HResult status, uint32 networkError) mut => VT.OnActivationComplete(ref this, ref serviceActivation, ref vendorSpecificData, requestID, status, networkError);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnServiceActivationEvents self, ref IMbnServiceActivation serviceActivation, ref SAFEARRAY vendorSpecificData, uint32 requestID, HResult status, uint32 networkError) OnActivationComplete;
			}
		}
		[CRepr]
		public struct IMbnVendorSpecificOperation : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2019, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetVendorSpecific(ref SAFEARRAY vendorSpecificData, out uint32 requestID) mut => VT.SetVendorSpecific(ref this, ref vendorSpecificData, out requestID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnVendorSpecificOperation self, ref SAFEARRAY vendorSpecificData, out uint32 requestID) SetVendorSpecific;
			}
		}
		[CRepr]
		public struct IMbnVendorSpecificEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201a, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnEventNotification(ref IMbnVendorSpecificOperation vendorOperation, ref SAFEARRAY vendorSpecificData) mut => VT.OnEventNotification(ref this, ref vendorOperation, ref vendorSpecificData);
			public HResult OnSetVendorSpecificComplete(ref IMbnVendorSpecificOperation vendorOperation, ref SAFEARRAY vendorSpecificData, uint32 requestID) mut => VT.OnSetVendorSpecificComplete(ref this, ref vendorOperation, ref vendorSpecificData, requestID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnVendorSpecificEvents self, ref IMbnVendorSpecificOperation vendorOperation, ref SAFEARRAY vendorSpecificData) OnEventNotification;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnVendorSpecificEvents self, ref IMbnVendorSpecificOperation vendorOperation, ref SAFEARRAY vendorSpecificData, uint32 requestID) OnSetVendorSpecificComplete;
			}
		}
		[CRepr]
		public struct IMbnConnectionProfileManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnConnectionProfileArrival(ref IMbnConnectionProfile newConnectionProfile) mut => VT.OnConnectionProfileArrival(ref this, ref newConnectionProfile);
			public HResult OnConnectionProfileRemoval(ref IMbnConnectionProfile oldConnectionProfile) mut => VT.OnConnectionProfileRemoval(ref this, ref oldConnectionProfile);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionProfileManagerEvents self, ref IMbnConnectionProfile newConnectionProfile) OnConnectionProfileArrival;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnConnectionProfileManagerEvents self, ref IMbnConnectionProfile oldConnectionProfile) OnConnectionProfileRemoval;
			}
		}
		[CRepr]
		public struct IMbnRadio : IUnknown
		{
			public const new Guid IID = .(0xdccccab6, 0x201f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_SoftwareRadioState(out MBN_RADIO SoftwareRadioState) mut => VT.get_SoftwareRadioState(ref this, out SoftwareRadioState);
			public HResult get_HardwareRadioState(out MBN_RADIO HardwareRadioState) mut => VT.get_HardwareRadioState(ref this, out HardwareRadioState);
			public HResult SetSoftwareRadioState(MBN_RADIO radioState, out uint32 requestID) mut => VT.SetSoftwareRadioState(ref this, radioState, out requestID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRadio self, out MBN_RADIO SoftwareRadioState) get_SoftwareRadioState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRadio self, out MBN_RADIO HardwareRadioState) get_HardwareRadioState;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRadio self, MBN_RADIO radioState, out uint32 requestID) SetSoftwareRadioState;
			}
		}
		[CRepr]
		public struct IMbnRadioEvents : IUnknown
		{
			public const new Guid IID = .(0xdcdddab6, 0x201f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnRadioStateChange(ref IMbnRadio newInterface) mut => VT.OnRadioStateChange(ref this, ref newInterface);
			public HResult OnSetSoftwareRadioStateComplete(ref IMbnRadio newInterface, uint32 requestID, HResult status) mut => VT.OnSetSoftwareRadioStateComplete(ref this, ref newInterface, requestID, status);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRadioEvents self, ref IMbnRadio newInterface) OnRadioStateChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnRadioEvents self, ref IMbnRadio newInterface, uint32 requestID, HResult status) OnSetSoftwareRadioStateComplete;
			}
		}
		[CRepr]
		public struct IMbnMultiCarrier : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2020, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetHomeProvider(ref MBN_PROVIDER2 homeProvider, out uint32 requestID) mut => VT.SetHomeProvider(ref this, ref homeProvider, out requestID);
			public HResult GetPreferredProviders(SAFEARRAY** preferredMulticarrierProviders) mut => VT.GetPreferredProviders(ref this, preferredMulticarrierProviders);
			public HResult GetVisibleProviders(out uint32 age, out SAFEARRAY* visibleProviders) mut => VT.GetVisibleProviders(ref this, out age, out visibleProviders);
			public HResult GetSupportedCellularClasses(SAFEARRAY** cellularClasses) mut => VT.GetSupportedCellularClasses(ref this, cellularClasses);
			public HResult GetCurrentCellularClass(out MBN_CELLULAR_CLASS currentCellularClass) mut => VT.GetCurrentCellularClass(ref this, out currentCellularClass);
			public HResult ScanNetwork(out uint32 requestID) mut => VT.ScanNetwork(ref this, out requestID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnMultiCarrier self, ref MBN_PROVIDER2 homeProvider, out uint32 requestID) SetHomeProvider;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnMultiCarrier self, SAFEARRAY** preferredMulticarrierProviders) GetPreferredProviders;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnMultiCarrier self, out uint32 age, out SAFEARRAY* visibleProviders) GetVisibleProviders;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnMultiCarrier self, SAFEARRAY** cellularClasses) GetSupportedCellularClasses;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnMultiCarrier self, out MBN_CELLULAR_CLASS currentCellularClass) GetCurrentCellularClass;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnMultiCarrier self, out uint32 requestID) ScanNetwork;
			}
		}
		[CRepr]
		public struct IMbnMultiCarrierEvents : IUnknown
		{
			public const new Guid IID = .(0xdcdddab6, 0x2021, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnSetHomeProviderComplete(ref IMbnMultiCarrier mbnInterface, uint32 requestID, HResult status) mut => VT.OnSetHomeProviderComplete(ref this, ref mbnInterface, requestID, status);
			public HResult OnCurrentCellularClassChange(ref IMbnMultiCarrier mbnInterface) mut => VT.OnCurrentCellularClassChange(ref this, ref mbnInterface);
			public HResult OnPreferredProvidersChange(ref IMbnMultiCarrier mbnInterface) mut => VT.OnPreferredProvidersChange(ref this, ref mbnInterface);
			public HResult OnScanNetworkComplete(ref IMbnMultiCarrier mbnInterface, uint32 requestID, HResult status) mut => VT.OnScanNetworkComplete(ref this, ref mbnInterface, requestID, status);
			public HResult OnInterfaceCapabilityChange(ref IMbnMultiCarrier mbnInterface) mut => VT.OnInterfaceCapabilityChange(ref this, ref mbnInterface);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnMultiCarrierEvents self, ref IMbnMultiCarrier mbnInterface, uint32 requestID, HResult status) OnSetHomeProviderComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnMultiCarrierEvents self, ref IMbnMultiCarrier mbnInterface) OnCurrentCellularClassChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnMultiCarrierEvents self, ref IMbnMultiCarrier mbnInterface) OnPreferredProvidersChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnMultiCarrierEvents self, ref IMbnMultiCarrier mbnInterface, uint32 requestID, HResult status) OnScanNetworkComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnMultiCarrierEvents self, ref IMbnMultiCarrier mbnInterface) OnInterfaceCapabilityChange;
			}
		}
		[CRepr]
		public struct IMbnDeviceServiceStateEvents : IUnknown
		{
			public const new Guid IID = .(0x5d3ff196, 0x89ee, 0x49d8, 0x8b, 0x60, 0x33, 0xff, 0xdd, 0xff, 0xc5, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnSessionsStateChange(BSTR interfaceID, MBN_DEVICE_SERVICE_SESSIONS_STATE stateChange) mut => VT.OnSessionsStateChange(ref this, interfaceID, stateChange);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServiceStateEvents self, BSTR interfaceID, MBN_DEVICE_SERVICE_SESSIONS_STATE stateChange) OnSessionsStateChange;
			}
		}
		[CRepr]
		public struct IMbnDeviceServicesManager : IUnknown
		{
			public const new Guid IID = .(0x20a26258, 0x6811, 0x4478, 0xac, 0x1d, 0x13, 0x32, 0x4e, 0x45, 0xe4, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetDeviceServicesContext(BSTR networkInterfaceID, IMbnDeviceServicesContext** mbnDevicesContext) mut => VT.GetDeviceServicesContext(ref this, networkInterfaceID, mbnDevicesContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesManager self, BSTR networkInterfaceID, IMbnDeviceServicesContext** mbnDevicesContext) GetDeviceServicesContext;
			}
		}
		[CRepr]
		public struct IMbnDeviceServicesContext : IUnknown
		{
			public const new Guid IID = .(0xfc5ac347, 0x1592, 0x4068, 0x80, 0xbb, 0x6a, 0x57, 0x58, 0x01, 0x50, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult EnumerateDeviceServices(out SAFEARRAY* deviceServices) mut => VT.EnumerateDeviceServices(ref this, out deviceServices);
			public HResult GetDeviceService(BSTR deviceServiceID, IMbnDeviceService** mbnDeviceService) mut => VT.GetDeviceService(ref this, deviceServiceID, mbnDeviceService);
			public HResult get_MaxCommandSize(out uint32 maxCommandSize) mut => VT.get_MaxCommandSize(ref this, out maxCommandSize);
			public HResult get_MaxDataSize(out uint32 maxDataSize) mut => VT.get_MaxDataSize(ref this, out maxDataSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesContext self, out SAFEARRAY* deviceServices) EnumerateDeviceServices;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesContext self, BSTR deviceServiceID, IMbnDeviceService** mbnDeviceService) GetDeviceService;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesContext self, out uint32 maxCommandSize) get_MaxCommandSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesContext self, out uint32 maxDataSize) get_MaxDataSize;
			}
		}
		[CRepr]
		public struct IMbnDeviceServicesEvents : IUnknown
		{
			public const new Guid IID = .(0x0a900c19, 0x6824, 0x4e97, 0xb7, 0x6e, 0xcf, 0x23, 0x9d, 0x0c, 0xa6, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnQuerySupportedCommandsComplete(ref IMbnDeviceService deviceService, ref SAFEARRAY commandIDList, HResult status, uint32 requestID) mut => VT.OnQuerySupportedCommandsComplete(ref this, ref deviceService, ref commandIDList, status, requestID);
			public HResult OnOpenCommandSessionComplete(ref IMbnDeviceService deviceService, HResult status, uint32 requestID) mut => VT.OnOpenCommandSessionComplete(ref this, ref deviceService, status, requestID);
			public HResult OnCloseCommandSessionComplete(ref IMbnDeviceService deviceService, HResult status, uint32 requestID) mut => VT.OnCloseCommandSessionComplete(ref this, ref deviceService, status, requestID);
			public HResult OnSetCommandComplete(ref IMbnDeviceService deviceService, uint32 responseID, ref SAFEARRAY deviceServiceData, HResult status, uint32 requestID) mut => VT.OnSetCommandComplete(ref this, ref deviceService, responseID, ref deviceServiceData, status, requestID);
			public HResult OnQueryCommandComplete(ref IMbnDeviceService deviceService, uint32 responseID, ref SAFEARRAY deviceServiceData, HResult status, uint32 requestID) mut => VT.OnQueryCommandComplete(ref this, ref deviceService, responseID, ref deviceServiceData, status, requestID);
			public HResult OnEventNotification(ref IMbnDeviceService deviceService, uint32 eventID, ref SAFEARRAY deviceServiceData) mut => VT.OnEventNotification(ref this, ref deviceService, eventID, ref deviceServiceData);
			public HResult OnOpenDataSessionComplete(ref IMbnDeviceService deviceService, HResult status, uint32 requestID) mut => VT.OnOpenDataSessionComplete(ref this, ref deviceService, status, requestID);
			public HResult OnCloseDataSessionComplete(ref IMbnDeviceService deviceService, HResult status, uint32 requestID) mut => VT.OnCloseDataSessionComplete(ref this, ref deviceService, status, requestID);
			public HResult OnWriteDataComplete(ref IMbnDeviceService deviceService, HResult status, uint32 requestID) mut => VT.OnWriteDataComplete(ref this, ref deviceService, status, requestID);
			public HResult OnReadData(ref IMbnDeviceService deviceService, ref SAFEARRAY deviceServiceData) mut => VT.OnReadData(ref this, ref deviceService, ref deviceServiceData);
			public HResult OnInterfaceStateChange(BSTR interfaceID, MBN_DEVICE_SERVICES_INTERFACE_STATE stateChange) mut => VT.OnInterfaceStateChange(ref this, interfaceID, stateChange);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, ref SAFEARRAY commandIDList, HResult status, uint32 requestID) OnQuerySupportedCommandsComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, HResult status, uint32 requestID) OnOpenCommandSessionComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, HResult status, uint32 requestID) OnCloseCommandSessionComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, uint32 responseID, ref SAFEARRAY deviceServiceData, HResult status, uint32 requestID) OnSetCommandComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, uint32 responseID, ref SAFEARRAY deviceServiceData, HResult status, uint32 requestID) OnQueryCommandComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, uint32 eventID, ref SAFEARRAY deviceServiceData) OnEventNotification;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, HResult status, uint32 requestID) OnOpenDataSessionComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, HResult status, uint32 requestID) OnCloseDataSessionComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, HResult status, uint32 requestID) OnWriteDataComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, ref SAFEARRAY deviceServiceData) OnReadData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceServicesEvents self, BSTR interfaceID, MBN_DEVICE_SERVICES_INTERFACE_STATE stateChange) OnInterfaceStateChange;
			}
		}
		[CRepr]
		public struct IMbnDeviceService : IUnknown
		{
			public const new Guid IID = .(0xb3bb9a71, 0xdc70, 0x4be9, 0xa4, 0xda, 0x78, 0x86, 0xae, 0x8b, 0x19, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult QuerySupportedCommands(out uint32 requestID) mut => VT.QuerySupportedCommands(ref this, out requestID);
			public HResult OpenCommandSession(out uint32 requestID) mut => VT.OpenCommandSession(ref this, out requestID);
			public HResult CloseCommandSession(out uint32 requestID) mut => VT.CloseCommandSession(ref this, out requestID);
			public HResult SetCommand(uint32 commandID, ref SAFEARRAY deviceServiceData, out uint32 requestID) mut => VT.SetCommand(ref this, commandID, ref deviceServiceData, out requestID);
			public HResult QueryCommand(uint32 commandID, ref SAFEARRAY deviceServiceData, out uint32 requestID) mut => VT.QueryCommand(ref this, commandID, ref deviceServiceData, out requestID);
			public HResult OpenDataSession(out uint32 requestID) mut => VT.OpenDataSession(ref this, out requestID);
			public HResult CloseDataSession(out uint32 requestID) mut => VT.CloseDataSession(ref this, out requestID);
			public HResult WriteData(ref SAFEARRAY deviceServiceData, out uint32 requestID) mut => VT.WriteData(ref this, ref deviceServiceData, out requestID);
			public HResult get_InterfaceID(BSTR* InterfaceID) mut => VT.get_InterfaceID(ref this, InterfaceID);
			public HResult get_DeviceServiceID(BSTR* DeviceServiceID) mut => VT.get_DeviceServiceID(ref this, DeviceServiceID);
			public HResult get_IsCommandSessionOpen(out IntBool value) mut => VT.get_IsCommandSessionOpen(ref this, out value);
			public HResult get_IsDataSessionOpen(out IntBool value) mut => VT.get_IsDataSessionOpen(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceService self, out uint32 requestID) QuerySupportedCommands;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceService self, out uint32 requestID) OpenCommandSession;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceService self, out uint32 requestID) CloseCommandSession;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceService self, uint32 commandID, ref SAFEARRAY deviceServiceData, out uint32 requestID) SetCommand;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceService self, uint32 commandID, ref SAFEARRAY deviceServiceData, out uint32 requestID) QueryCommand;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceService self, out uint32 requestID) OpenDataSession;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceService self, out uint32 requestID) CloseDataSession;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceService self, ref SAFEARRAY deviceServiceData, out uint32 requestID) WriteData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceService self, BSTR* InterfaceID) get_InterfaceID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceService self, BSTR* DeviceServiceID) get_DeviceServiceID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceService self, out IntBool value) get_IsCommandSessionOpen;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnDeviceService self, out IntBool value) get_IsDataSessionOpen;
			}
		}
		[CRepr]
		public struct IMbnPin : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2007, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_PinType(out MBN_PIN_TYPE PinType) mut => VT.get_PinType(ref this, out PinType);
			public HResult get_PinFormat(out MBN_PIN_FORMAT PinFormat) mut => VT.get_PinFormat(ref this, out PinFormat);
			public HResult get_PinLengthMin(out uint32 PinLengthMin) mut => VT.get_PinLengthMin(ref this, out PinLengthMin);
			public HResult get_PinLengthMax(out uint32 PinLengthMax) mut => VT.get_PinLengthMax(ref this, out PinLengthMax);
			public HResult get_PinMode(out MBN_PIN_MODE PinMode) mut => VT.get_PinMode(ref this, out PinMode);
			public HResult Enable(char16* pin, out uint32 requestID) mut => VT.Enable(ref this, pin, out requestID);
			public HResult Disable(char16* pin, out uint32 requestID) mut => VT.Disable(ref this, pin, out requestID);
			public HResult Enter(char16* pin, out uint32 requestID) mut => VT.Enter(ref this, pin, out requestID);
			public HResult Change(char16* pin, char16* newPin, out uint32 requestID) mut => VT.Change(ref this, pin, newPin, out requestID);
			public HResult Unblock(char16* puk, char16* newPin, out uint32 requestID) mut => VT.Unblock(ref this, puk, newPin, out requestID);
			public HResult GetPinManager(IMbnPinManager** pinManager) mut => VT.GetPinManager(ref this, pinManager);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPin self, out MBN_PIN_TYPE PinType) get_PinType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPin self, out MBN_PIN_FORMAT PinFormat) get_PinFormat;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPin self, out uint32 PinLengthMin) get_PinLengthMin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPin self, out uint32 PinLengthMax) get_PinLengthMax;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPin self, out MBN_PIN_MODE PinMode) get_PinMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPin self, char16* pin, out uint32 requestID) Enable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPin self, char16* pin, out uint32 requestID) Disable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPin self, char16* pin, out uint32 requestID) Enter;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPin self, char16* pin, char16* newPin, out uint32 requestID) Change;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPin self, char16* puk, char16* newPin, out uint32 requestID) Unblock;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMbnPin self, IMbnPinManager** pinManager) GetPinManager;
			}
		}
		
	}
}
