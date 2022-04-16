using System;

// namespace UI.Wpf
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MILBITMAPEFFECT_SDK_VERSION = 16777216;
		public const Guid CLSID_MILBitmapEffectGroup = .(0xac9c1a9a, 0x7e18, 0x4f64, 0xac, 0x7e, 0x47, 0xcf, 0x7f, 0x05, 0x1e, 0x95);
		public const Guid CLSID_MILBitmapEffectBlur = .(0xa924df87, 0x225d, 0x4373, 0x8f, 0x5b, 0xb9, 0x0e, 0xc8, 0x5a, 0xe3, 0xde);
		public const Guid CLSID_MILBitmapEffectDropShadow = .(0x459a3fbe, 0xd8ac, 0x4692, 0x87, 0x4b, 0x7a, 0x26, 0x57, 0x15, 0xaa, 0x16);
		public const Guid CLSID_MILBitmapEffectOuterGlow = .(0xe2161bdd, 0x7eb6, 0x4725, 0x9c, 0x0b, 0x8a, 0x2a, 0x1b, 0x4f, 0x06, 0x67);
		public const Guid CLSID_MILBitmapEffectBevel = .(0xfd361dbe, 0x6c9b, 0x4de0, 0x82, 0x90, 0xf6, 0x40, 0x0c, 0x27, 0x37, 0xed);
		public const Guid CLSID_MILBitmapEffectEmboss = .(0xcd299846, 0x824f, 0x47ec, 0xa0, 0x07, 0x12, 0xaa, 0x76, 0x7f, 0x28, 0x16);
		
		// --- Structs ---
		
		[CRepr]
		public struct MilRectD
		{
			public double left;
			public double top;
			public double right;
			public double bottom;
		}
		[CRepr]
		public struct MilPoint2D
		{
			public double X;
			public double Y;
		}
		[CRepr]
		public struct MILMatrixF
		{
			public double _11;
			public double _12;
			public double _13;
			public double _14;
			public double _21;
			public double _22;
			public double _23;
			public double _24;
			public double _31;
			public double _32;
			public double _33;
			public double _34;
			public double _41;
			public double _42;
			public double _43;
			public double _44;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IMILBitmapEffectConnectorInfo : IUnknown
		{
			public const new Guid IID = .(0xf66d2e4b, 0xb46b, 0x42fc, 0x85, 0x9e, 0x3d, 0xa0, 0xec, 0xdb, 0x3c, 0x43);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetIndex(out uint32 puiIndex) mut => VT.GetIndex(ref this, out puiIndex);
			public HResult GetOptimalFormat(out Guid pFormat) mut => VT.GetOptimalFormat(ref this, out pFormat);
			public HResult GetNumberFormats(out uint32 pulNumberFormats) mut => VT.GetNumberFormats(ref this, out pulNumberFormats);
			public HResult GetFormat(uint32 ulIndex, out Guid pFormat) mut => VT.GetFormat(ref this, ulIndex, out pFormat);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectConnectorInfo self, out uint32 puiIndex) GetIndex;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectConnectorInfo self, out Guid pFormat) GetOptimalFormat;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectConnectorInfo self, out uint32 pulNumberFormats) GetNumberFormats;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectConnectorInfo self, uint32 ulIndex, out Guid pFormat) GetFormat;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectConnectionsInfo : IUnknown
		{
			public const new Guid IID = .(0x476b538a, 0xc765, 0x4237, 0xba, 0x4a, 0xd6, 0xa8, 0x80, 0xff, 0x0c, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetNumberInputs(out uint32 puiNumInputs) mut => VT.GetNumberInputs(ref this, out puiNumInputs);
			public HResult GetNumberOutputs(out uint32 puiNumOutputs) mut => VT.GetNumberOutputs(ref this, out puiNumOutputs);
			public HResult GetInputConnectorInfo(uint32 uiIndex, out IMILBitmapEffectConnectorInfo* ppConnectorInfo) mut => VT.GetInputConnectorInfo(ref this, uiIndex, out ppConnectorInfo);
			public HResult GetOutputConnectorInfo(uint32 uiIndex, out IMILBitmapEffectConnectorInfo* ppConnectorInfo) mut => VT.GetOutputConnectorInfo(ref this, uiIndex, out ppConnectorInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectConnectionsInfo self, out uint32 puiNumInputs) GetNumberInputs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectConnectionsInfo self, out uint32 puiNumOutputs) GetNumberOutputs;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectConnectionsInfo self, uint32 uiIndex, out IMILBitmapEffectConnectorInfo* ppConnectorInfo) GetInputConnectorInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectConnectionsInfo self, uint32 uiIndex, out IMILBitmapEffectConnectorInfo* ppConnectorInfo) GetOutputConnectorInfo;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectConnections : IUnknown
		{
			public const new Guid IID = .(0xc2b5d861, 0x9b1a, 0x4374, 0x89, 0xb0, 0xde, 0xc4, 0x87, 0x4d, 0x6a, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetInputConnector(uint32 uiIndex, out IMILBitmapEffectInputConnector* ppConnector) mut => VT.GetInputConnector(ref this, uiIndex, out ppConnector);
			public HResult GetOutputConnector(uint32 uiIndex, out IMILBitmapEffectOutputConnector* ppConnector) mut => VT.GetOutputConnector(ref this, uiIndex, out ppConnector);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectConnections self, uint32 uiIndex, out IMILBitmapEffectInputConnector* ppConnector) GetInputConnector;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectConnections self, uint32 uiIndex, out IMILBitmapEffectOutputConnector* ppConnector) GetOutputConnector;
			}
		}
		[CRepr]
		public struct IMILBitmapEffect : IUnknown
		{
			public const new Guid IID = .(0x8a6ff321, 0xc944, 0x4a1b, 0x99, 0x44, 0x99, 0x54, 0xaf, 0x30, 0x12, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOutput(uint32 uiIndex, ref IMILBitmapEffectRenderContext pContext, out IWICBitmapSource* ppBitmapSource) mut => VT.GetOutput(ref this, uiIndex, ref pContext, out ppBitmapSource);
			public HResult GetParentEffect(out IMILBitmapEffectGroup* ppParentEffect) mut => VT.GetParentEffect(ref this, out ppParentEffect);
			public HResult SetInputSource(uint32 uiIndex, ref IWICBitmapSource pBitmapSource) mut => VT.SetInputSource(ref this, uiIndex, ref pBitmapSource);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffect self, uint32 uiIndex, ref IMILBitmapEffectRenderContext pContext, out IWICBitmapSource* ppBitmapSource) GetOutput;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffect self, out IMILBitmapEffectGroup* ppParentEffect) GetParentEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffect self, uint32 uiIndex, ref IWICBitmapSource pBitmapSource) SetInputSource;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectImpl : IUnknown
		{
			public const new Guid IID = .(0xcc2468f2, 0x9936, 0x47be, 0xb4, 0xaf, 0x06, 0xb5, 0xdf, 0x5d, 0xbc, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult IsInPlaceModificationAllowed(ref IMILBitmapEffectOutputConnector pOutputConnector, out int16 pfModifyInPlace) mut => VT.IsInPlaceModificationAllowed(ref this, ref pOutputConnector, out pfModifyInPlace);
			public HResult SetParentEffect(ref IMILBitmapEffectGroup pParentEffect) mut => VT.SetParentEffect(ref this, ref pParentEffect);
			public HResult GetInputSource(uint32 uiIndex, out IWICBitmapSource* ppBitmapSource) mut => VT.GetInputSource(ref this, uiIndex, out ppBitmapSource);
			public HResult GetInputSourceBounds(uint32 uiIndex, out MilRectD pRect) mut => VT.GetInputSourceBounds(ref this, uiIndex, out pRect);
			public HResult GetInputBitmapSource(uint32 uiIndex, ref IMILBitmapEffectRenderContext pRenderContext, out int16 pfModifyInPlace, out IWICBitmapSource* ppBitmapSource) mut => VT.GetInputBitmapSource(ref this, uiIndex, ref pRenderContext, out pfModifyInPlace, out ppBitmapSource);
			public HResult GetOutputBitmapSource(uint32 uiIndex, ref IMILBitmapEffectRenderContext pRenderContext, out int16 pfModifyInPlace, out IWICBitmapSource* ppBitmapSource) mut => VT.GetOutputBitmapSource(ref this, uiIndex, ref pRenderContext, out pfModifyInPlace, out ppBitmapSource);
			public HResult Initialize(ref IUnknown pInner) mut => VT.Initialize(ref this, ref pInner);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectImpl self, ref IMILBitmapEffectOutputConnector pOutputConnector, out int16 pfModifyInPlace) IsInPlaceModificationAllowed;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectImpl self, ref IMILBitmapEffectGroup pParentEffect) SetParentEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectImpl self, uint32 uiIndex, out IWICBitmapSource* ppBitmapSource) GetInputSource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectImpl self, uint32 uiIndex, out MilRectD pRect) GetInputSourceBounds;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectImpl self, uint32 uiIndex, ref IMILBitmapEffectRenderContext pRenderContext, out int16 pfModifyInPlace, out IWICBitmapSource* ppBitmapSource) GetInputBitmapSource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectImpl self, uint32 uiIndex, ref IMILBitmapEffectRenderContext pRenderContext, out int16 pfModifyInPlace, out IWICBitmapSource* ppBitmapSource) GetOutputBitmapSource;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectImpl self, ref IUnknown pInner) Initialize;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectGroup : IUnknown
		{
			public const new Guid IID = .(0x2f952360, 0x698a, 0x4ac6, 0x81, 0xa1, 0xbc, 0xfd, 0xf0, 0x8e, 0xb8, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetInteriorInputConnector(uint32 uiIndex, out IMILBitmapEffectOutputConnector* ppConnector) mut => VT.GetInteriorInputConnector(ref this, uiIndex, out ppConnector);
			public HResult GetInteriorOutputConnector(uint32 uiIndex, out IMILBitmapEffectInputConnector* ppConnector) mut => VT.GetInteriorOutputConnector(ref this, uiIndex, out ppConnector);
			public HResult Add(ref IMILBitmapEffect pEffect) mut => VT.Add(ref this, ref pEffect);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectGroup self, uint32 uiIndex, out IMILBitmapEffectOutputConnector* ppConnector) GetInteriorInputConnector;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectGroup self, uint32 uiIndex, out IMILBitmapEffectInputConnector* ppConnector) GetInteriorOutputConnector;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectGroup self, ref IMILBitmapEffect pEffect) Add;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectGroupImpl : IUnknown
		{
			public const new Guid IID = .(0x78fed518, 0x1cfc, 0x4807, 0x8b, 0x85, 0x6b, 0x6e, 0x51, 0x39, 0x8f, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Preprocess(ref IMILBitmapEffectRenderContext pContext) mut => VT.Preprocess(ref this, ref pContext);
			public HResult GetNumberChildren(out uint32 puiNumberChildren) mut => VT.GetNumberChildren(ref this, out puiNumberChildren);
			public HResult GetChildren(out IMILBitmapEffects* pChildren) mut => VT.GetChildren(ref this, out pChildren);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectGroupImpl self, ref IMILBitmapEffectRenderContext pContext) Preprocess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectGroupImpl self, out uint32 puiNumberChildren) GetNumberChildren;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectGroupImpl self, out IMILBitmapEffects* pChildren) GetChildren;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectRenderContext : IUnknown
		{
			public const new Guid IID = .(0x12a2ec7e, 0x2d33, 0x44b2, 0xb3, 0x34, 0x1a, 0xbb, 0x78, 0x46, 0xe3, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetOutputPixelFormat(ref Guid format) mut => VT.SetOutputPixelFormat(ref this, ref format);
			public HResult GetOutputPixelFormat(out Guid pFormat) mut => VT.GetOutputPixelFormat(ref this, out pFormat);
			public HResult SetUseSoftwareRenderer(int16 fSoftware) mut => VT.SetUseSoftwareRenderer(ref this, fSoftware);
			public HResult SetInitialTransform(ref MILMatrixF pMatrix) mut => VT.SetInitialTransform(ref this, ref pMatrix);
			public HResult GetFinalTransform(out MILMatrixF pMatrix) mut => VT.GetFinalTransform(ref this, out pMatrix);
			public HResult SetOutputDPI(double dblDpiX, double dblDpiY) mut => VT.SetOutputDPI(ref this, dblDpiX, dblDpiY);
			public HResult GetOutputDPI(out double pdblDpiX, out double pdblDpiY) mut => VT.GetOutputDPI(ref this, out pdblDpiX, out pdblDpiY);
			public HResult SetRegionOfInterest(ref MilRectD pRect) mut => VT.SetRegionOfInterest(ref this, ref pRect);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectRenderContext self, ref Guid format) SetOutputPixelFormat;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectRenderContext self, out Guid pFormat) GetOutputPixelFormat;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectRenderContext self, int16 fSoftware) SetUseSoftwareRenderer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectRenderContext self, ref MILMatrixF pMatrix) SetInitialTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectRenderContext self, out MILMatrixF pMatrix) GetFinalTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectRenderContext self, double dblDpiX, double dblDpiY) SetOutputDPI;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectRenderContext self, out double pdblDpiX, out double pdblDpiY) GetOutputDPI;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectRenderContext self, ref MilRectD pRect) SetRegionOfInterest;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectRenderContextImpl : IUnknown
		{
			public const new Guid IID = .(0x4d25accb, 0x797d, 0x4fd2, 0xb1, 0x28, 0xdf, 0xfe, 0xff, 0x84, 0xfc, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetUseSoftwareRenderer(out int16 pfSoftware) mut => VT.GetUseSoftwareRenderer(ref this, out pfSoftware);
			public HResult GetTransform(out MILMatrixF pMatrix) mut => VT.GetTransform(ref this, out pMatrix);
			public HResult UpdateTransform(ref MILMatrixF pMatrix) mut => VT.UpdateTransform(ref this, ref pMatrix);
			public HResult GetOutputBounds(out MilRectD pRect) mut => VT.GetOutputBounds(ref this, out pRect);
			public HResult UpdateOutputBounds(ref MilRectD pRect) mut => VT.UpdateOutputBounds(ref this, ref pRect);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectRenderContextImpl self, out int16 pfSoftware) GetUseSoftwareRenderer;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectRenderContextImpl self, out MILMatrixF pMatrix) GetTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectRenderContextImpl self, ref MILMatrixF pMatrix) UpdateTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectRenderContextImpl self, out MilRectD pRect) GetOutputBounds;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectRenderContextImpl self, ref MilRectD pRect) UpdateOutputBounds;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectFactory : IUnknown
		{
			public const new Guid IID = .(0x33a9df34, 0xa403, 0x4ec7, 0xb0, 0x7e, 0xbc, 0x06, 0x82, 0x37, 0x08, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateEffect(in Guid pguidEffect, out IMILBitmapEffect* ppEffect) mut => VT.CreateEffect(ref this, pguidEffect, out ppEffect);
			public HResult CreateContext(out IMILBitmapEffectRenderContext* ppContext) mut => VT.CreateContext(ref this, out ppContext);
			public HResult CreateEffectOuter(out IMILBitmapEffect* ppEffect) mut => VT.CreateEffectOuter(ref this, out ppEffect);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectFactory self, in Guid pguidEffect, out IMILBitmapEffect* ppEffect) CreateEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectFactory self, out IMILBitmapEffectRenderContext* ppContext) CreateContext;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectFactory self, out IMILBitmapEffect* ppEffect) CreateEffectOuter;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectPrimitive : IUnknown
		{
			public const new Guid IID = .(0x67e31025, 0x3091, 0x4dfc, 0x98, 0xd6, 0xdd, 0x49, 0x45, 0x51, 0x46, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOutput(uint32 uiIndex, ref IMILBitmapEffectRenderContext pContext, out int16 pfModifyInPlace, out IWICBitmapSource* ppBitmapSource) mut => VT.GetOutput(ref this, uiIndex, ref pContext, out pfModifyInPlace, out ppBitmapSource);
			public HResult TransformPoint(uint32 uiIndex, out MilPoint2D p, int16 fForwardTransform, ref IMILBitmapEffectRenderContext pContext, out int16 pfPointTransformed) mut => VT.TransformPoint(ref this, uiIndex, out p, fForwardTransform, ref pContext, out pfPointTransformed);
			public HResult TransformRect(uint32 uiIndex, out MilRectD p, int16 fForwardTransform, ref IMILBitmapEffectRenderContext pContext) mut => VT.TransformRect(ref this, uiIndex, out p, fForwardTransform, ref pContext);
			public HResult HasAffineTransform(uint32 uiIndex, out int16 pfAffine) mut => VT.HasAffineTransform(ref this, uiIndex, out pfAffine);
			public HResult HasInverseTransform(uint32 uiIndex, out int16 pfHasInverse) mut => VT.HasInverseTransform(ref this, uiIndex, out pfHasInverse);
			public HResult GetAffineMatrix(uint32 uiIndex, out MilMatrix3x2D pMatrix) mut => VT.GetAffineMatrix(ref this, uiIndex, out pMatrix);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectPrimitive self, uint32 uiIndex, ref IMILBitmapEffectRenderContext pContext, out int16 pfModifyInPlace, out IWICBitmapSource* ppBitmapSource) GetOutput;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectPrimitive self, uint32 uiIndex, out MilPoint2D p, int16 fForwardTransform, ref IMILBitmapEffectRenderContext pContext, out int16 pfPointTransformed) TransformPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectPrimitive self, uint32 uiIndex, out MilRectD p, int16 fForwardTransform, ref IMILBitmapEffectRenderContext pContext) TransformRect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectPrimitive self, uint32 uiIndex, out int16 pfAffine) HasAffineTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectPrimitive self, uint32 uiIndex, out int16 pfHasInverse) HasInverseTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectPrimitive self, uint32 uiIndex, out MilMatrix3x2D pMatrix) GetAffineMatrix;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectPrimitiveImpl : IUnknown
		{
			public const new Guid IID = .(0xce41e00b, 0xefa6, 0x44e7, 0xb0, 0x07, 0xdd, 0x04, 0x2e, 0x3a, 0xe1, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult IsDirty(uint32 uiOutputIndex, out int16 pfDirty) mut => VT.IsDirty(ref this, uiOutputIndex, out pfDirty);
			public HResult IsVolatile(uint32 uiOutputIndex, out int16 pfVolatile) mut => VT.IsVolatile(ref this, uiOutputIndex, out pfVolatile);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectPrimitiveImpl self, uint32 uiOutputIndex, out int16 pfDirty) IsDirty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectPrimitiveImpl self, uint32 uiOutputIndex, out int16 pfVolatile) IsVolatile;
			}
		}
		[CRepr]
		public struct IMILBitmapEffects : IUnknown
		{
			public const new Guid IID = .(0x51ac3dce, 0x67c5, 0x448b, 0x91, 0x80, 0xad, 0x3e, 0xab, 0xdd, 0xd5, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult _NewEnum(out IUnknown* ppiuReturn) mut => VT._NewEnum(ref this, out ppiuReturn);
			public HResult get_Parent(out IMILBitmapEffectGroup* ppEffect) mut => VT.get_Parent(ref this, out ppEffect);
			public HResult Item(uint32 uindex, out IMILBitmapEffect* ppEffect) mut => VT.Item(ref this, uindex, out ppEffect);
			public HResult get_Count(out uint32 puiCount) mut => VT.get_Count(ref this, out puiCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffects self, out IUnknown* ppiuReturn) _NewEnum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffects self, out IMILBitmapEffectGroup* ppEffect) get_Parent;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffects self, uint32 uindex, out IMILBitmapEffect* ppEffect) Item;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffects self, out uint32 puiCount) get_Count;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectConnector : IMILBitmapEffectConnectorInfo
		{
			public const new Guid IID = .(0xf59567b3, 0x76c1, 0x4d47, 0xba, 0x1e, 0x79, 0xf9, 0x55, 0xe3, 0x50, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult IsConnected(out int16 pfConnected) mut => VT.IsConnected(ref this, out pfConnected);
			public HResult GetBitmapEffect(out IMILBitmapEffect* ppEffect) mut => VT.GetBitmapEffect(ref this, out ppEffect);

			[CRepr]
			public struct VTable : IMILBitmapEffectConnectorInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectConnector self, out int16 pfConnected) IsConnected;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectConnector self, out IMILBitmapEffect* ppEffect) GetBitmapEffect;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectInputConnector : IMILBitmapEffectConnector
		{
			public const new Guid IID = .(0xa9b4ecaa, 0x7a3c, 0x45e7, 0x85, 0x73, 0xf4, 0xb8, 0x1b, 0x60, 0xdd, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ConnectTo(ref IMILBitmapEffectOutputConnector pConnector) mut => VT.ConnectTo(ref this, ref pConnector);
			public HResult GetConnection(out IMILBitmapEffectOutputConnector* ppConnector) mut => VT.GetConnection(ref this, out ppConnector);

			[CRepr]
			public struct VTable : IMILBitmapEffectConnector.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectInputConnector self, ref IMILBitmapEffectOutputConnector pConnector) ConnectTo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectInputConnector self, out IMILBitmapEffectOutputConnector* ppConnector) GetConnection;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectOutputConnector : IMILBitmapEffectConnector
		{
			public const new Guid IID = .(0x92957aad, 0x841b, 0x4866, 0x82, 0xec, 0x87, 0x52, 0x46, 0x8b, 0x07, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetNumberConnections(out uint32 puiNumberConnections) mut => VT.GetNumberConnections(ref this, out puiNumberConnections);
			public HResult GetConnection(uint32 uiIndex, out IMILBitmapEffectInputConnector* ppConnection) mut => VT.GetConnection(ref this, uiIndex, out ppConnection);

			[CRepr]
			public struct VTable : IMILBitmapEffectConnector.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectOutputConnector self, out uint32 puiNumberConnections) GetNumberConnections;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectOutputConnector self, uint32 uiIndex, out IMILBitmapEffectInputConnector* ppConnection) GetConnection;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectOutputConnectorImpl : IUnknown
		{
			public const new Guid IID = .(0x21fae777, 0x8b39, 0x4bfa, 0x9f, 0x2d, 0xf3, 0x94, 0x1e, 0xd3, 0x69, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddBackLink(ref IMILBitmapEffectInputConnector pConnection) mut => VT.AddBackLink(ref this, ref pConnection);
			public HResult RemoveBackLink(ref IMILBitmapEffectInputConnector pConnection) mut => VT.RemoveBackLink(ref this, ref pConnection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectOutputConnectorImpl self, ref IMILBitmapEffectInputConnector pConnection) AddBackLink;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectOutputConnectorImpl self, ref IMILBitmapEffectInputConnector pConnection) RemoveBackLink;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectInteriorInputConnector : IUnknown
		{
			public const new Guid IID = .(0x20287e9e, 0x86a2, 0x4e15, 0x95, 0x3d, 0xeb, 0x14, 0x38, 0xa5, 0xb8, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetInputConnector(out IMILBitmapEffectInputConnector* pInputConnector) mut => VT.GetInputConnector(ref this, out pInputConnector);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectInteriorInputConnector self, out IMILBitmapEffectInputConnector* pInputConnector) GetInputConnector;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectInteriorOutputConnector : IUnknown
		{
			public const new Guid IID = .(0x00bbb6dc, 0xacc9, 0x4bfc, 0xb3, 0x44, 0x8b, 0xee, 0x38, 0x3d, 0xfe, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetOutputConnector(out IMILBitmapEffectOutputConnector* pOutputConnector) mut => VT.GetOutputConnector(ref this, out pOutputConnector);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectInteriorOutputConnector self, out IMILBitmapEffectOutputConnector* pOutputConnector) GetOutputConnector;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectEvents : IUnknown
		{
			public const new Guid IID = .(0x2e880dd8, 0xf8ce, 0x457b, 0x81, 0x99, 0xd6, 0x0b, 0xb3, 0xd7, 0xef, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult PropertyChange(ref IMILBitmapEffect pEffect, BSTR bstrPropertyName) mut => VT.PropertyChange(ref this, ref pEffect, bstrPropertyName);
			public HResult DirtyRegion(ref IMILBitmapEffect pEffect, ref MilRectD pRect) mut => VT.DirtyRegion(ref this, ref pEffect, ref pRect);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectEvents self, ref IMILBitmapEffect pEffect, BSTR bstrPropertyName) PropertyChange;
				public new function [CallingConvention(.Stdcall)] HResult(ref IMILBitmapEffectEvents self, ref IMILBitmapEffect pEffect, ref MilRectD pRect) DirtyRegion;
			}
		}
		
	}
}
