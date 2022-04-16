using System;

// namespace System.Diagnostics.Debug.WebApp
namespace Win32
{
	extension Win32
	{
		// --- Function Pointers ---
		
		public function HResult RegisterAuthoringClientFunctionType(ref IWebApplicationAuthoringMode authoringModeObject, ref IWebApplicationHost host);
		public function HResult UnregisterAuthoringClientFunctionType(ref IWebApplicationHost host);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWebApplicationScriptEvents : IUnknown
		{
			public const new Guid IID = .(0x7c3f6998, 0x1567, 0x4bba, 0xb5, 0x2b, 0x48, 0xd3, 0x21, 0x41, 0xd6, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult BeforeScriptExecute(ref IHTMLWindow2 htmlWindow) mut => VT.BeforeScriptExecute(ref this, ref htmlWindow);
			public HResult ScriptError(IHTMLWindow2* htmlWindow, ref IActiveScriptError scriptError, char16* url, IntBool errorHandled) mut => VT.ScriptError(ref this, htmlWindow, ref scriptError, url, errorHandled);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationScriptEvents self, ref IHTMLWindow2 htmlWindow) BeforeScriptExecute;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationScriptEvents self, IHTMLWindow2* htmlWindow, ref IActiveScriptError scriptError, char16* url, IntBool errorHandled) ScriptError;
			}
		}
		[CRepr]
		public struct IWebApplicationNavigationEvents : IUnknown
		{
			public const new Guid IID = .(0xc22615d2, 0xd318, 0x4da2, 0x84, 0x22, 0x1f, 0xca, 0xf7, 0x7b, 0x10, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult BeforeNavigate(ref IHTMLWindow2 htmlWindow, char16* url, uint32 navigationFlags, char16* targetFrameName) mut => VT.BeforeNavigate(ref this, ref htmlWindow, url, navigationFlags, targetFrameName);
			public HResult NavigateComplete(ref IHTMLWindow2 htmlWindow, char16* url) mut => VT.NavigateComplete(ref this, ref htmlWindow, url);
			public HResult NavigateError(ref IHTMLWindow2 htmlWindow, char16* url, char16* targetFrameName, uint32 statusCode) mut => VT.NavigateError(ref this, ref htmlWindow, url, targetFrameName, statusCode);
			public HResult DocumentComplete(ref IHTMLWindow2 htmlWindow, char16* url) mut => VT.DocumentComplete(ref this, ref htmlWindow, url);
			public HResult DownloadBegin() mut => VT.DownloadBegin(ref this);
			public HResult DownloadComplete() mut => VT.DownloadComplete(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationNavigationEvents self, ref IHTMLWindow2 htmlWindow, char16* url, uint32 navigationFlags, char16* targetFrameName) BeforeNavigate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationNavigationEvents self, ref IHTMLWindow2 htmlWindow, char16* url) NavigateComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationNavigationEvents self, ref IHTMLWindow2 htmlWindow, char16* url, char16* targetFrameName, uint32 statusCode) NavigateError;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationNavigationEvents self, ref IHTMLWindow2 htmlWindow, char16* url) DocumentComplete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationNavigationEvents self) DownloadBegin;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationNavigationEvents self) DownloadComplete;
			}
		}
		[CRepr]
		public struct IWebApplicationUIEvents : IUnknown
		{
			public const new Guid IID = .(0x5b2b3f99, 0x328c, 0x41d5, 0xa6, 0xf7, 0x74, 0x83, 0xed, 0x8e, 0x71, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SecurityProblem(uint32 securityProblem, out HResult result) mut => VT.SecurityProblem(ref this, securityProblem, out result);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationUIEvents self, uint32 securityProblem, out HResult result) SecurityProblem;
			}
		}
		[CRepr]
		public struct IWebApplicationUpdateEvents : IUnknown
		{
			public const new Guid IID = .(0x3e59e6b7, 0xc652, 0x4daf, 0xad, 0x5e, 0x16, 0xfe, 0xb3, 0x50, 0xcd, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnPaint() mut => VT.OnPaint(ref this);
			public HResult OnCssChanged() mut => VT.OnCssChanged(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationUpdateEvents self) OnPaint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationUpdateEvents self) OnCssChanged;
			}
		}
		[CRepr]
		public struct IWebApplicationHost : IUnknown
		{
			public const new Guid IID = .(0xcecbd2c3, 0xa3a5, 0x4749, 0x96, 0x81, 0x20, 0xe9, 0x16, 0x1c, 0x67, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_HWND(out HWnd hwnd) mut => VT.get_HWND(ref this, out hwnd);
			public HResult get_Document(out IHTMLDocument2* htmlDocument) mut => VT.get_Document(ref this, out htmlDocument);
			public HResult Refresh() mut => VT.Refresh(ref this);
			public HResult Advise(in Guid interfaceId, ref IUnknown callback, out uint32 cookie) mut => VT.Advise(ref this, interfaceId, ref callback, out cookie);
			public HResult Unadvise(uint32 cookie) mut => VT.Unadvise(ref this, cookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationHost self, out HWnd hwnd) get_HWND;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationHost self, out IHTMLDocument2* htmlDocument) get_Document;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationHost self) Refresh;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationHost self, in Guid interfaceId, ref IUnknown callback, out uint32 cookie) Advise;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationHost self, uint32 cookie) Unadvise;
			}
		}
		[CRepr]
		public struct IWebApplicationActivation : IUnknown
		{
			public const new Guid IID = .(0xbcdcd0de, 0x330e, 0x481b, 0xb8, 0x43, 0x48, 0x98, 0xa6, 0xa8, 0xeb, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CancelPendingActivation() mut => VT.CancelPendingActivation(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationActivation self) CancelPendingActivation;
			}
		}
		[CRepr]
		public struct IWebApplicationAuthoringMode : IServiceProvider
		{
			public const new Guid IID = .(0x720aea93, 0x1964, 0x4db0, 0xb0, 0x05, 0x29, 0xeb, 0x9e, 0x2b, 0x18, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_AuthoringClientBinary(BSTR* designModeDllPath) mut => VT.get_AuthoringClientBinary(ref this, designModeDllPath);

			[CRepr]
			public struct VTable : IServiceProvider.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWebApplicationAuthoringMode self, BSTR* designModeDllPath) get_AuthoringClientBinary;
			}
		}
		
	}
}
