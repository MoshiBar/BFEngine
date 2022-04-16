using System;

// namespace System.WinRT.Isolation
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IIsolatedEnvironmentInterop : IUnknown
		{
			public const new Guid IID = .(0x85713c2e, 0x8e62, 0x46c5, 0x8d, 0xe2, 0xc6, 0x47, 0xe1, 0xd5, 0x46, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetHostHwndInterop(HWnd containerHwnd, out HWnd hostHwnd) mut => VT.GetHostHwndInterop(ref this, containerHwnd, out hostHwnd);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IIsolatedEnvironmentInterop self, HWnd containerHwnd, out HWnd hostHwnd) GetHostHwndInterop;
			}
		}
		
	}
}
