using System;

// namespace System.Com.CallObj
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum CALLFRAME_COPY : int32
		{
			NESTED = 1,
			INDEPENDENT = 2,
		}
		public enum CALLFRAME_FREE : int32
		{
			NONE = 0,
			IN = 1,
			INOUT = 2,
			OUT = 4,
			TOP_INOUT = 8,
			TOP_OUT = 16,
			ALL = 31,
		}
		public enum CALLFRAME_NULL : int32
		{
			NONE = 0,
			INOUT = 2,
			OUT = 4,
			ALL = 6,
		}
		public enum CALLFRAME_WALK : int32
		{
			IN = 1,
			INOUT = 2,
			OUT = 4,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct CALLFRAMEINFO
		{
			public uint32 iMethod;
			public IntBool fHasInValues;
			public IntBool fHasInOutValues;
			public IntBool fHasOutValues;
			public IntBool fDerivesFromIDispatch;
			public int32 cInInterfacesMax;
			public int32 cInOutInterfacesMax;
			public int32 cOutInterfacesMax;
			public int32 cTopLevelInInterfaces;
			public Guid iid;
			public uint32 cMethod;
			public uint32 cParams;
		}
		[CRepr]
		public struct CALLFRAMEPARAMINFO
		{
			public bool fIn;
			public bool fOut;
			public uint32 stackOffset;
			public uint32 cbParam;
		}
		[CRepr]
		public struct CALLFRAME_MARSHALCONTEXT
		{
			public bool fIn;
			public uint32 dwDestContext;
			public void* pvDestContext;
			public IUnknown* punkReserved;
			public Guid guidTransferSyntax;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ICallFrame : IUnknown
		{
			public const new Guid IID = .(0xd573b4b0, 0x894e, 0x11d2, 0xb8, 0xb6, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetInfo(out CALLFRAMEINFO pInfo) mut => VT.GetInfo(ref this, out pInfo);
			public HResult GetIIDAndMethod(out Guid pIID, out uint32 piMethod) mut => VT.GetIIDAndMethod(ref this, out pIID, out piMethod);
			public HResult GetNames(PWSTR* pwszInterface, char16** pwszMethod) mut => VT.GetNames(ref this, pwszInterface, pwszMethod);
			public void* GetStackLocation() mut => VT.GetStackLocation(ref this);
			public void SetStackLocation(void* pvStack) mut => VT.SetStackLocation(ref this, pvStack);
			public void SetReturnValue(HResult hr) mut => VT.SetReturnValue(ref this, hr);
			public HResult GetReturnValue() mut => VT.GetReturnValue(ref this);
			public HResult GetParamInfo(uint32 iparam, out CALLFRAMEPARAMINFO pInfo) mut => VT.GetParamInfo(ref this, iparam, out pInfo);
			public HResult SetParam(uint32 iparam, ref VARIANT pvar) mut => VT.SetParam(ref this, iparam, ref pvar);
			public HResult GetParam(uint32 iparam, out VARIANT pvar) mut => VT.GetParam(ref this, iparam, out pvar);
			public HResult Copy(CALLFRAME_COPY copyControl, ref ICallFrameWalker pWalker, out ICallFrame* ppFrame) mut => VT.Copy(ref this, copyControl, ref pWalker, out ppFrame);
			public HResult Free(ref ICallFrame pframeArgsDest, ref ICallFrameWalker pWalkerDestFree, ref ICallFrameWalker pWalkerCopy, uint32 freeFlags, ref ICallFrameWalker pWalkerFree, uint32 nullFlags) mut => VT.Free(ref this, ref pframeArgsDest, ref pWalkerDestFree, ref pWalkerCopy, freeFlags, ref pWalkerFree, nullFlags);
			public HResult FreeParam(uint32 iparam, uint32 freeFlags, ref ICallFrameWalker pWalkerFree, uint32 nullFlags) mut => VT.FreeParam(ref this, iparam, freeFlags, ref pWalkerFree, nullFlags);
			public HResult WalkFrame(uint32 walkWhat, ref ICallFrameWalker pWalker) mut => VT.WalkFrame(ref this, walkWhat, ref pWalker);
			public HResult GetMarshalSizeMax(ref CALLFRAME_MARSHALCONTEXT pmshlContext, MSHLFLAGS mshlflags, out uint32 pcbBufferNeeded) mut => VT.GetMarshalSizeMax(ref this, ref pmshlContext, mshlflags, out pcbBufferNeeded);
			public HResult Marshal(ref CALLFRAME_MARSHALCONTEXT pmshlContext, MSHLFLAGS mshlflags, void* pBuffer, uint32 cbBuffer, out uint32 pcbBufferUsed, out uint32 pdataRep, out uint32 prpcFlags) mut => VT.Marshal(ref this, ref pmshlContext, mshlflags, pBuffer, cbBuffer, out pcbBufferUsed, out pdataRep, out prpcFlags);
			public HResult Unmarshal(void* pBuffer, uint32 cbBuffer, uint32 dataRep, ref CALLFRAME_MARSHALCONTEXT pcontext, out uint32 pcbUnmarshalled) mut => VT.Unmarshal(ref this, pBuffer, cbBuffer, dataRep, ref pcontext, out pcbUnmarshalled);
			public HResult ReleaseMarshalData(void* pBuffer, uint32 cbBuffer, uint32 ibFirstRelease, uint32 dataRep, ref CALLFRAME_MARSHALCONTEXT pcontext) mut => VT.ReleaseMarshalData(ref this, pBuffer, cbBuffer, ibFirstRelease, dataRep, ref pcontext);
			public HResult Invoke(void* pvReceiver) mut => VT.Invoke(ref this, pvReceiver);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, out CALLFRAMEINFO pInfo) GetInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, out Guid pIID, out uint32 piMethod) GetIIDAndMethod;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, char16** pwszInterface, char16** pwszMethod) GetNames;
				public new function [CallingConvention(.Stdcall)] void*(ref ICallFrame self) GetStackLocation;
				public new function [CallingConvention(.Stdcall)] void(ref ICallFrame self, void* pvStack) SetStackLocation;
				public new function [CallingConvention(.Stdcall)] void(ref ICallFrame self, HResult hr) SetReturnValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self) GetReturnValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, uint32 iparam, out CALLFRAMEPARAMINFO pInfo) GetParamInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, uint32 iparam, ref VARIANT pvar) SetParam;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, uint32 iparam, out VARIANT pvar) GetParam;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, CALLFRAME_COPY copyControl, ref ICallFrameWalker pWalker, out ICallFrame* ppFrame) Copy;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, ref ICallFrame pframeArgsDest, ref ICallFrameWalker pWalkerDestFree, ref ICallFrameWalker pWalkerCopy, uint32 freeFlags, ref ICallFrameWalker pWalkerFree, uint32 nullFlags) Free;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, uint32 iparam, uint32 freeFlags, ref ICallFrameWalker pWalkerFree, uint32 nullFlags) FreeParam;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, uint32 walkWhat, ref ICallFrameWalker pWalker) WalkFrame;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, ref CALLFRAME_MARSHALCONTEXT pmshlContext, MSHLFLAGS mshlflags, out uint32 pcbBufferNeeded) GetMarshalSizeMax;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, ref CALLFRAME_MARSHALCONTEXT pmshlContext, MSHLFLAGS mshlflags, void* pBuffer, uint32 cbBuffer, out uint32 pcbBufferUsed, out uint32 pdataRep, out uint32 prpcFlags) Marshal;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, void* pBuffer, uint32 cbBuffer, uint32 dataRep, ref CALLFRAME_MARSHALCONTEXT pcontext, out uint32 pcbUnmarshalled) Unmarshal;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, void* pBuffer, uint32 cbBuffer, uint32 ibFirstRelease, uint32 dataRep, ref CALLFRAME_MARSHALCONTEXT pcontext) ReleaseMarshalData;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrame self, void* pvReceiver) Invoke;
			}
		}
		[CRepr]
		public struct ICallIndirect : IUnknown
		{
			public const new Guid IID = .(0xd573b4b1, 0x894e, 0x11d2, 0xb8, 0xb6, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CallIndirect(out HResult phrReturn, uint32 iMethod, void* pvArgs, out uint32 cbArgs) mut => VT.CallIndirect(ref this, out phrReturn, iMethod, pvArgs, out cbArgs);
			public HResult GetMethodInfo(uint32 iMethod, out CALLFRAMEINFO pInfo, char16** pwszMethod) mut => VT.GetMethodInfo(ref this, iMethod, out pInfo, pwszMethod);
			public HResult GetStackSize(uint32 iMethod, out uint32 cbArgs) mut => VT.GetStackSize(ref this, iMethod, out cbArgs);
			public HResult GetIID(Guid* piid, IntBool* pfDerivesFromIDispatch, uint32* pcMethod, char16** pwszInterface) mut => VT.GetIID(ref this, piid, pfDerivesFromIDispatch, pcMethod, pwszInterface);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallIndirect self, out HResult phrReturn, uint32 iMethod, void* pvArgs, out uint32 cbArgs) CallIndirect;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallIndirect self, uint32 iMethod, out CALLFRAMEINFO pInfo, char16** pwszMethod) GetMethodInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallIndirect self, uint32 iMethod, out uint32 cbArgs) GetStackSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallIndirect self, Guid* piid, IntBool* pfDerivesFromIDispatch, uint32* pcMethod, char16** pwszInterface) GetIID;
			}
		}
		[CRepr]
		public struct ICallInterceptor : ICallIndirect
		{
			public const new Guid IID = .(0x60c7ca75, 0x896d, 0x11d2, 0xb8, 0xb6, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult RegisterSink(ref ICallFrameEvents psink) mut => VT.RegisterSink(ref this, ref psink);
			public HResult GetRegisteredSink(out ICallFrameEvents* ppsink) mut => VT.GetRegisteredSink(ref this, out ppsink);

			[CRepr]
			public struct VTable : ICallIndirect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallInterceptor self, ref ICallFrameEvents psink) RegisterSink;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallInterceptor self, out ICallFrameEvents* ppsink) GetRegisteredSink;
			}
		}
		[CRepr]
		public struct ICallFrameEvents : IUnknown
		{
			public const new Guid IID = .(0xfd5e0843, 0xfc91, 0x11d0, 0x97, 0xd7, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnCall(ref ICallFrame pFrame) mut => VT.OnCall(ref this, ref pFrame);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrameEvents self, ref ICallFrame pFrame) OnCall;
			}
		}
		[CRepr]
		public struct ICallUnmarshal : IUnknown
		{
			public const new Guid IID = .(0x5333b003, 0x2e42, 0x11d2, 0xb8, 0x9d, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Unmarshal(uint32 iMethod, void* pBuffer, uint32 cbBuffer, IntBool fForceBufferCopy, uint32 dataRep, ref CALLFRAME_MARSHALCONTEXT pcontext, out uint32 pcbUnmarshalled, out ICallFrame* ppFrame) mut => VT.Unmarshal(ref this, iMethod, pBuffer, cbBuffer, fForceBufferCopy, dataRep, ref pcontext, out pcbUnmarshalled, out ppFrame);
			public HResult ReleaseMarshalData(uint32 iMethod, void* pBuffer, uint32 cbBuffer, uint32 ibFirstRelease, uint32 dataRep, ref CALLFRAME_MARSHALCONTEXT pcontext) mut => VT.ReleaseMarshalData(ref this, iMethod, pBuffer, cbBuffer, ibFirstRelease, dataRep, ref pcontext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallUnmarshal self, uint32 iMethod, void* pBuffer, uint32 cbBuffer, IntBool fForceBufferCopy, uint32 dataRep, ref CALLFRAME_MARSHALCONTEXT pcontext, out uint32 pcbUnmarshalled, out ICallFrame* ppFrame) Unmarshal;
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallUnmarshal self, uint32 iMethod, void* pBuffer, uint32 cbBuffer, uint32 ibFirstRelease, uint32 dataRep, ref CALLFRAME_MARSHALCONTEXT pcontext) ReleaseMarshalData;
			}
		}
		[CRepr]
		public struct ICallFrameWalker : IUnknown
		{
			public const new Guid IID = .(0x08b23919, 0x392d, 0x11d2, 0xb8, 0xa4, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult OnWalkInterface(in Guid iid, void** ppvInterface, IntBool fIn, IntBool fOut) mut => VT.OnWalkInterface(ref this, iid, ppvInterface, fIn, fOut);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ICallFrameWalker self, in Guid iid, void** ppvInterface, IntBool fIn, IntBool fOut) OnWalkInterface;
			}
		}
		[CRepr]
		public struct IInterfaceRelated : IUnknown
		{
			public const new Guid IID = .(0xd1fb5a79, 0x7706, 0x11d1, 0xad, 0xba, 0x00, 0xc0, 0x4f, 0xc2, 0xad, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetIID(in Guid iid) mut => VT.SetIID(ref this, iid);
			public HResult GetIID(out Guid piid) mut => VT.GetIID(ref this, out piid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInterfaceRelated self, in Guid iid) SetIID;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInterfaceRelated self, out Guid piid) GetIID;
			}
		}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CoGetInterceptor(in Guid iidIntercepted, ref IUnknown punkOuter, in Guid iid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CoGetInterceptorFromTypeInfo(in Guid iidIntercepted, ref IUnknown punkOuter, ref ITypeInfo typeInfo, in Guid iid, void** ppv);
	}
}
