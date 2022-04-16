using System;

// namespace System.HostComputeNetwork
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum HCN_NOTIFICATIONS : int32
		{
			Invalid = 0,
			NetworkPreCreate = 1,
			NetworkCreate = 2,
			NetworkPreDelete = 3,
			NetworkDelete = 4,
			NamespaceCreate = 5,
			NamespaceDelete = 6,
			GuestNetworkServiceCreate = 7,
			GuestNetworkServiceDelete = 8,
			NetworkEndpointAttached = 9,
			NetworkEndpointDetached = 16,
			GuestNetworkServiceStateChanged = 17,
			GuestNetworkServiceInterfaceStateChanged = 18,
			ServiceDisconnect = 16777216,
			FlagsReserved = -268435456,
		}
		public enum HCN_PORT_PROTOCOL : int32
		{
			TCP = 1,
			UDP = 2,
			BOTH = 3,
		}
		public enum HCN_PORT_ACCESS : int32
		{
			EXCLUSIVE = 1,
			SHARED = 2,
		}
		
		// --- Function Pointers ---
		
		public function void HCN_NOTIFICATION_CALLBACK(uint32 NotificationType, void* Context, HResult NotificationStatus, char16* NotificationData);
		
		// --- Structs ---
		
		[CRepr]
		public struct HCN_PORT_RANGE_RESERVATION
		{
			public uint16 startingPort;
			public uint16 endingPort;
		}
		[CRepr]
		public struct HCN_PORT_RANGE_ENTRY
		{
			public Guid OwningPartitionId;
			public Guid TargetPartitionId;
			public HCN_PORT_PROTOCOL Protocol;
			public uint64 Priority;
			public uint32 ReservationType;
			public uint32 SharingFlags;
			public uint32 DeliveryMode;
			public uint16 StartingPort;
			public uint16 EndingPort;
		}
		
		// --- Functions ---
		
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnEnumerateNetworks(char16* Query, out char16* Networks, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnCreateNetwork(in Guid Id, char16* Settings, void** Network, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnOpenNetwork(in Guid Id, void** Network, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnModifyNetwork(void* Network, char16* Settings, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnQueryNetworkProperties(void* Network, char16* Query, out char16* Properties, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnDeleteNetwork(in Guid Id, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnCloseNetwork(void* Network);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnEnumerateNamespaces(char16* Query, out char16* Namespaces, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnCreateNamespace(in Guid Id, char16* Settings, void** Namespace, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnOpenNamespace(in Guid Id, void** Namespace, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnModifyNamespace(void* Namespace, char16* Settings, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnQueryNamespaceProperties(void* Namespace, char16* Query, out char16* Properties, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnDeleteNamespace(in Guid Id, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnCloseNamespace(void* Namespace);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnEnumerateEndpoints(char16* Query, out char16* Endpoints, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnCreateEndpoint(void* Network, in Guid Id, char16* Settings, void** Endpoint, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnOpenEndpoint(in Guid Id, void** Endpoint, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnModifyEndpoint(void* Endpoint, char16* Settings, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnQueryEndpointProperties(void* Endpoint, char16* Query, out char16* Properties, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnDeleteEndpoint(in Guid Id, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnCloseEndpoint(void* Endpoint);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnEnumerateLoadBalancers(char16* Query, out char16* LoadBalancer, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnCreateLoadBalancer(in Guid Id, char16* Settings, void** LoadBalancer, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnOpenLoadBalancer(in Guid Id, void** LoadBalancer, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnModifyLoadBalancer(void* LoadBalancer, char16* Settings, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnQueryLoadBalancerProperties(void* LoadBalancer, char16* Query, out char16* Properties, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnDeleteLoadBalancer(in Guid Id, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnCloseLoadBalancer(void* LoadBalancer);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnRegisterServiceCallback(HCN_NOTIFICATION_CALLBACK Callback, void* Context, void** CallbackHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnUnregisterServiceCallback(void* CallbackHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnRegisterGuestNetworkServiceCallback(void* GuestNetworkService, HCN_NOTIFICATION_CALLBACK Callback, void* Context, void** CallbackHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnUnregisterGuestNetworkServiceCallback(void* CallbackHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnCreateGuestNetworkService(in Guid Id, char16* Settings, void** GuestNetworkService, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnCloseGuestNetworkService(void* GuestNetworkService);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnModifyGuestNetworkService(void* GuestNetworkService, char16* Settings, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnDeleteGuestNetworkService(in Guid Id, char16** ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnReserveGuestNetworkServicePort(void* GuestNetworkService, HCN_PORT_PROTOCOL Protocol, HCN_PORT_ACCESS Access, uint16 Port, out Handle PortReservationHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnReserveGuestNetworkServicePortRange(void* GuestNetworkService, uint16 PortCount, out HCN_PORT_RANGE_RESERVATION PortRangeReservation, out Handle PortReservationHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnReleaseGuestNetworkServicePortReservationHandle(Handle PortReservationHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcnEnumerateGuestNetworkPortReservations(out uint32 ReturnCount, out HCN_PORT_RANGE_ENTRY* PortEntries);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HcnFreeGuestNetworkPortReservations(HCN_PORT_RANGE_ENTRY* PortEntries);
	}
}
