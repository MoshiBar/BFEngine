using System;

// namespace UI.Notifications
namespace Win32
{
	extension Win32
	{
		// --- Structs ---
		
		[CRepr]
		public struct NOTIFICATION_USER_INPUT_DATA
		{
			public char16* Key;
			public char16* Value;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct INotificationActivationCallback : IUnknown
		{
			public const new Guid IID = .(0x53e31837, 0x6600, 0x4a81, 0x93, 0x95, 0x75, 0xcf, 0xfe, 0x74, 0x6f, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Activate(char16* appUserModelId, char16* invokedArgs, NOTIFICATION_USER_INPUT_DATA* data, uint32 count) mut => VT.Activate(ref this, appUserModelId, invokedArgs, data, count);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref INotificationActivationCallback self, char16* appUserModelId, char16* invokedArgs, NOTIFICATION_USER_INPUT_DATA* data, uint32 count) Activate;
			}
		}
		
	}
}
