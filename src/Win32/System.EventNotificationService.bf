using System;

// namespace System.EventNotificationService
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 NETWORK_ALIVE_LAN = 1;
		public const uint32 NETWORK_ALIVE_WAN = 2;
		public const uint32 NETWORK_ALIVE_AOL = 4;
		public const uint32 NETWORK_ALIVE_INTERNET = 8;
		public const uint32 CONNECTION_AOL = 4;
		public const Guid SENSGUID_PUBLISHER = .(0x5fee1bd6, 0x5b9b, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		public const Guid SENSGUID_SUBSCRIBER_LCE = .(0xd3938ab0, 0x5b9d, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		public const Guid SENSGUID_SUBSCRIBER_WININET = .(0xd3938ab5, 0x5b9d, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		public const Guid SENSGUID_EVENTCLASS_NETWORK = .(0xd5978620, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		public const Guid SENSGUID_EVENTCLASS_LOGON = .(0xd5978630, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		public const Guid SENSGUID_EVENTCLASS_ONNOW = .(0xd5978640, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		public const Guid SENSGUID_EVENTCLASS_LOGON2 = .(0xd5978650, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		
		// --- Enums ---
		
		public enum SENS_CONNECTION_TYPE : uint32
		{
			LAN = 0,
			WAN = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct QOCINFO
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 dwInSpeed;
			public uint32 dwOutSpeed;
		}
		[CRepr]
		public struct SENS_QOCINFO
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 dwOutSpeed;
			public uint32 dwInSpeed;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_SENS = .(0xd597cafe, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ISensNetwork : IDispatch
		{
			public const new Guid IID = .(0xd597bab1, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ConnectionMade(BSTR bstrConnection, uint32 ulType, ref SENS_QOCINFO lpQOCInfo) mut => VT.ConnectionMade(ref this, bstrConnection, ulType, ref lpQOCInfo);
			public HResult ConnectionMadeNoQOCInfo(BSTR bstrConnection, uint32 ulType) mut => VT.ConnectionMadeNoQOCInfo(ref this, bstrConnection, ulType);
			public HResult ConnectionLost(BSTR bstrConnection, SENS_CONNECTION_TYPE ulType) mut => VT.ConnectionLost(ref this, bstrConnection, ulType);
			public HResult DestinationReachable(BSTR bstrDestination, BSTR bstrConnection, uint32 ulType, ref SENS_QOCINFO lpQOCInfo) mut => VT.DestinationReachable(ref this, bstrDestination, bstrConnection, ulType, ref lpQOCInfo);
			public HResult DestinationReachableNoQOCInfo(BSTR bstrDestination, BSTR bstrConnection, uint32 ulType) mut => VT.DestinationReachableNoQOCInfo(ref this, bstrDestination, bstrConnection, ulType);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensNetwork self, BSTR bstrConnection, uint32 ulType, ref SENS_QOCINFO lpQOCInfo) ConnectionMade;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensNetwork self, BSTR bstrConnection, uint32 ulType) ConnectionMadeNoQOCInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensNetwork self, BSTR bstrConnection, SENS_CONNECTION_TYPE ulType) ConnectionLost;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensNetwork self, BSTR bstrDestination, BSTR bstrConnection, uint32 ulType, ref SENS_QOCINFO lpQOCInfo) DestinationReachable;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensNetwork self, BSTR bstrDestination, BSTR bstrConnection, uint32 ulType) DestinationReachableNoQOCInfo;
			}
		}
		[CRepr]
		public struct ISensOnNow : IDispatch
		{
			public const new Guid IID = .(0xd597bab2, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnACPower() mut => VT.OnACPower(ref this);
			public HResult OnBatteryPower(uint32 dwBatteryLifePercent) mut => VT.OnBatteryPower(ref this, dwBatteryLifePercent);
			public HResult BatteryLow(uint32 dwBatteryLifePercent) mut => VT.BatteryLow(ref this, dwBatteryLifePercent);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensOnNow self) OnACPower;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensOnNow self, uint32 dwBatteryLifePercent) OnBatteryPower;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensOnNow self, uint32 dwBatteryLifePercent) BatteryLow;
			}
		}
		[CRepr]
		public struct ISensLogon : IDispatch
		{
			public const new Guid IID = .(0xd597bab3, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Logon(BSTR bstrUserName) mut => VT.Logon(ref this, bstrUserName);
			public HResult Logoff(BSTR bstrUserName) mut => VT.Logoff(ref this, bstrUserName);
			public HResult StartShell(BSTR bstrUserName) mut => VT.StartShell(ref this, bstrUserName);
			public HResult DisplayLock(BSTR bstrUserName) mut => VT.DisplayLock(ref this, bstrUserName);
			public HResult DisplayUnlock(BSTR bstrUserName) mut => VT.DisplayUnlock(ref this, bstrUserName);
			public HResult StartScreenSaver(BSTR bstrUserName) mut => VT.StartScreenSaver(ref this, bstrUserName);
			public HResult StopScreenSaver(BSTR bstrUserName) mut => VT.StopScreenSaver(ref this, bstrUserName);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensLogon self, BSTR bstrUserName) Logon;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensLogon self, BSTR bstrUserName) Logoff;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensLogon self, BSTR bstrUserName) StartShell;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensLogon self, BSTR bstrUserName) DisplayLock;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensLogon self, BSTR bstrUserName) DisplayUnlock;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensLogon self, BSTR bstrUserName) StartScreenSaver;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensLogon self, BSTR bstrUserName) StopScreenSaver;
			}
		}
		[CRepr]
		public struct ISensLogon2 : IDispatch
		{
			public const new Guid IID = .(0xd597bab4, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Logon(BSTR bstrUserName, uint32 dwSessionId) mut => VT.Logon(ref this, bstrUserName, dwSessionId);
			public HResult Logoff(BSTR bstrUserName, uint32 dwSessionId) mut => VT.Logoff(ref this, bstrUserName, dwSessionId);
			public HResult SessionDisconnect(BSTR bstrUserName, uint32 dwSessionId) mut => VT.SessionDisconnect(ref this, bstrUserName, dwSessionId);
			public HResult SessionReconnect(BSTR bstrUserName, uint32 dwSessionId) mut => VT.SessionReconnect(ref this, bstrUserName, dwSessionId);
			public HResult PostShell(BSTR bstrUserName, uint32 dwSessionId) mut => VT.PostShell(ref this, bstrUserName, dwSessionId);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensLogon2 self, BSTR bstrUserName, uint32 dwSessionId) Logon;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensLogon2 self, BSTR bstrUserName, uint32 dwSessionId) Logoff;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensLogon2 self, BSTR bstrUserName, uint32 dwSessionId) SessionDisconnect;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensLogon2 self, BSTR bstrUserName, uint32 dwSessionId) SessionReconnect;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISensLogon2 self, BSTR bstrUserName, uint32 dwSessionId) PostShell;
			}
		}
		
		// --- Functions ---
		
		[Import("sensapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsDestinationReachableA(char8* lpszDestination, out QOCINFO lpQOCInfo);
		[Import("sensapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsDestinationReachableW(char16* lpszDestination, out QOCINFO lpQOCInfo);
		[Import("sensapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsNetworkAlive(out uint32 lpdwFlags);
	}
}
