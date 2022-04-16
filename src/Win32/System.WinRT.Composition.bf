using System;

// namespace System.WinRT.Composition
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ICompositionDrawingSurfaceInterop : IUnknown
		{
			public const new Guid IID = .(0xfd04e6e3, 0xfe0c, 0x4c3c, 0xab, 0x19, 0xa0, 0x76, 0x01, 0xa5, 0x76, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult BeginDraw(RECT* updateRect, in Guid iid, void** updateObject, out POINT updateOffset) mut => VT.BeginDraw(ref this, updateRect, iid, updateObject, out updateOffset);
			public HResult EndDraw() mut => VT.EndDraw(ref this);
			public HResult Resize(SIZE sizePixels) mut => VT.Resize(ref this, sizePixels);
			public HResult Scroll(RECT* scrollRect, RECT* clipRect, int32 offsetX, int32 offsetY) mut => VT.Scroll(ref this, scrollRect, clipRect, offsetX, offsetY);
			public HResult ResumeDraw() mut => VT.ResumeDraw(ref this);
			public HResult SuspendDraw() mut => VT.SuspendDraw(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositionDrawingSurfaceInterop self, RECT* updateRect, in Guid iid, void** updateObject, out POINT updateOffset) BeginDraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositionDrawingSurfaceInterop self) EndDraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositionDrawingSurfaceInterop self, SIZE sizePixels) Resize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositionDrawingSurfaceInterop self, RECT* scrollRect, RECT* clipRect, int32 offsetX, int32 offsetY) Scroll;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositionDrawingSurfaceInterop self) ResumeDraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositionDrawingSurfaceInterop self) SuspendDraw;
			}
		}
		[CRepr]
		public struct ICompositionDrawingSurfaceInterop2 : ICompositionDrawingSurfaceInterop
		{
			public const new Guid IID = .(0x41e64aae, 0x98c0, 0x4239, 0x8e, 0x95, 0xa3, 0x30, 0xdd, 0x6a, 0xa1, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CopySurface(ref IUnknown destinationResource, int32 destinationOffsetX, int32 destinationOffsetY, RECT* sourceRectangle) mut => VT.CopySurface(ref this, ref destinationResource, destinationOffsetX, destinationOffsetY, sourceRectangle);

			[CRepr]
			public struct VTable : ICompositionDrawingSurfaceInterop.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositionDrawingSurfaceInterop2 self, ref IUnknown destinationResource, int32 destinationOffsetX, int32 destinationOffsetY, RECT* sourceRectangle) CopySurface;
			}
		}
		[CRepr]
		public struct ICompositionGraphicsDeviceInterop : IUnknown
		{
			public const new Guid IID = .(0xa116ff71, 0xf8bf, 0x4c8a, 0x9c, 0x98, 0x70, 0x77, 0x9a, 0x32, 0xa9, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetRenderingDevice(out IUnknown* value) mut => VT.GetRenderingDevice(ref this, out value);
			public HResult SetRenderingDevice(ref IUnknown value) mut => VT.SetRenderingDevice(ref this, ref value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositionGraphicsDeviceInterop self, out IUnknown* value) GetRenderingDevice;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositionGraphicsDeviceInterop self, ref IUnknown value) SetRenderingDevice;
			}
		}
		[CRepr]
		public struct ICompositorInterop : IUnknown
		{
			public const new Guid IID = .(0x25297d5c, 0x3ad4, 0x4c9c, 0xb5, 0xcf, 0xe3, 0x6a, 0x38, 0x51, 0x23, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateCompositionSurfaceForHandle(Handle swapChain, void* result) mut => VT.CreateCompositionSurfaceForHandle(ref this, swapChain, result);
			public HResult CreateCompositionSurfaceForSwapChain(ref IUnknown swapChain, void* result) mut => VT.CreateCompositionSurfaceForSwapChain(ref this, ref swapChain, result);
			public HResult CreateGraphicsDevice(ref IUnknown renderingDevice, void* result) mut => VT.CreateGraphicsDevice(ref this, ref renderingDevice, result);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositorInterop self, Handle swapChain, void* result) CreateCompositionSurfaceForHandle;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositorInterop self, ref IUnknown swapChain, void* result) CreateCompositionSurfaceForSwapChain;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositorInterop self, ref IUnknown renderingDevice, void* result) CreateGraphicsDevice;
			}
		}
		[CRepr]
		public struct ISwapChainInterop : IUnknown
		{
			public const new Guid IID = .(0x26f496a0, 0x7f38, 0x45fb, 0x88, 0xf7, 0xfa, 0xaa, 0xbe, 0x67, 0xdd, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetSwapChain(ref IUnknown swapChain) mut => VT.SetSwapChain(ref this, ref swapChain);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISwapChainInterop self, ref IUnknown swapChain) SetSwapChain;
			}
		}
		[CRepr]
		public struct IVisualInteractionSourceInterop : IUnknown
		{
			public const new Guid IID = .(0x11f62cd1, 0x2f9d, 0x42d3, 0xb0, 0x5f, 0xd6, 0x79, 0x0d, 0x9e, 0x9f, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult TryRedirectForManipulation(in POINTER_INFO pointerInfo) mut => VT.TryRedirectForManipulation(ref this, pointerInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IVisualInteractionSourceInterop self, in POINTER_INFO pointerInfo) TryRedirectForManipulation;
			}
		}
		[CRepr]
		public struct ICompositionCapabilitiesInteropFactory : IInspectable
		{
			public const new Guid IID = .(0x2c9db356, 0xe70d, 0x4642, 0x82, 0x98, 0xbc, 0x4a, 0xa5, 0xb4, 0x86, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetForWindow(HWnd hwnd, void* result) mut => VT.GetForWindow(ref this, hwnd, result);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositionCapabilitiesInteropFactory self, HWnd hwnd, void* result) GetForWindow;
			}
		}
		[CRepr]
		public struct ICompositorDesktopInterop : IUnknown
		{
			public const new Guid IID = .(0x29e691fa, 0x4567, 0x4dca, 0xb3, 0x19, 0xd0, 0xf2, 0x07, 0xeb, 0x68, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDesktopWindowTarget(HWnd hwndTarget, IntBool isTopmost, void* result) mut => VT.CreateDesktopWindowTarget(ref this, hwndTarget, isTopmost, result);
			public HResult EnsureOnThread(uint32 threadId) mut => VT.EnsureOnThread(ref this, threadId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositorDesktopInterop self, HWnd hwndTarget, IntBool isTopmost, void* result) CreateDesktopWindowTarget;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICompositorDesktopInterop self, uint32 threadId) EnsureOnThread;
			}
		}
		[CRepr]
		public struct IDesktopWindowTargetInterop : IUnknown
		{
			public const new Guid IID = .(0x35dbf59e, 0xe3f9, 0x45b0, 0x81, 0xe7, 0xfe, 0x75, 0xf4, 0x14, 0x5d, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_Hwnd(out HWnd value) mut => VT.get_Hwnd(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDesktopWindowTargetInterop self, out HWnd value) get_Hwnd;
			}
		}
		
	}
}
