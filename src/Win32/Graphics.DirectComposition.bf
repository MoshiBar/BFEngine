using System;
using System.IO;
using BfEngine;
using static Win32.Graphics.Dxgi;
using static Win32.Win32;
using static Win32.System.Com;
using static Win32.Graphics.Direct3D;
using static Win32.Graphics.Direct2D;
using static System.Windows;
using static System.Windows.COM_IUnknown;

// namespace Graphics.DirectComposition
namespace Win32.Graphics
{
	public static class DirectComposition
	{
		// --- Constants ---
		
		public const int32 COMPOSITIONOBJECT_READ = 1;
		public const int32 COMPOSITIONOBJECT_WRITE = 2;
		public const uint32 DCOMPOSITION_MAX_WAITFORCOMPOSITORCLOCK_OBJECTS = 32;
		public const uint32 COMPOSITION_STATS_MAX_TARGETS = 256;
		
		// --- Enums ---
		
		public enum DCOMPOSITION_BITMAP_INTERPOLATION_MODE : int32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			INHERIT = -1,
		}
		public enum DCOMPOSITION_BORDER_MODE : int32
		{
			SOFT = 0,
			HARD = 1,
			INHERIT = -1,
		}
		public enum DCOMPOSITION_COMPOSITE_MODE : int32
		{
			SOURCE_OVER = 0,
			DESTINATION_INVERT = 1,
			MIN_BLEND = 2,
			INHERIT = -1,
		}
		public enum DCOMPOSITION_BACKFACE_VISIBILITY : int32
		{
			VISIBLE = 0,
			HIDDEN = 1,
			INHERIT = -1,
		}
		public enum DCOMPOSITION_OPACITY_MODE : int32
		{
			LAYER = 0,
			MULTIPLY = 1,
			INHERIT = -1,
		}
		public enum DCOMPOSITION_DEPTH_MODE : int32
		{
			TREE = 0,
			SPATIAL = 1,
			SORTED = 3,
			INHERIT = -1,
		}
		public enum COMPOSITION_FRAME_ID_TYPE : int32
		{
			CREATED = 0,
			CONFIRMED = 1,
			COMPLETED = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct DCOMPOSITION_FRAME_STATISTICS
		{
			public LARGE_INTEGER lastFrameTime;
			public DXGI_RATIONAL currentCompositionRate;
			public LARGE_INTEGER currentTime;
			public LARGE_INTEGER timeFrequency;
			public LARGE_INTEGER nextEstimatedFrameTime;
		}
		[CRepr]
		public struct COMPOSITION_FRAME_STATS
		{
			public uint64 startTime;
			public uint64 targetTime;
			public uint64 framePeriod;
		}
		[CRepr]
		public struct COMPOSITION_TARGET_ID
		{
			public LUID displayAdapterLuid;
			public LUID renderAdapterLuid;
			public uint32 vidPnSourceId;
			public uint32 vidPnTargetId;
			public uint32 uniqueId;
		}
		[CRepr]
		public struct COMPOSITION_STATS
		{
			public uint32 presentCount;
			public uint32 refreshCount;
			public uint32 virtualRefreshCount;
			public uint64 time;
		}
		[CRepr]
		public struct COMPOSITION_TARGET_STATS
		{
			public uint32 outstandingPresents;
			public uint64 presentTime;
			public uint64 vblankDuration;
			public COMPOSITION_STATS presentedStats;
			public COMPOSITION_STATS completedStats;
		}
		[CRepr]
		public struct DCompositionInkTrailPoint
		{
			public float x;
			public float y;
			public float radius;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDCompositionAnimation : IUnknown
		{
			public const new Guid IID = .(0xcbfd91d9, 0x51b2, 0x45e4, 0xb3, 0xde, 0xd1, 0x9c, 0xcf, 0xb8, 0x63, 0xc5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Reset() mut => VT.Reset(ref this);
			public HResult SetAbsoluteBeginTime(LARGE_INTEGER beginTime) mut => VT.SetAbsoluteBeginTime(ref this, beginTime);
			public HResult AddCubic(double beginOffset, float constantCoefficient, float linearCoefficient, float quadraticCoefficient, float cubicCoefficient) mut => VT.AddCubic(ref this, beginOffset, constantCoefficient, linearCoefficient, quadraticCoefficient, cubicCoefficient);
			public HResult AddSinusoidal(double beginOffset, float bias, float amplitude, float frequency, float phase) mut => VT.AddSinusoidal(ref this, beginOffset, bias, amplitude, frequency, phase);
			public HResult AddRepeat(double beginOffset, double durationToRepeat) mut => VT.AddRepeat(ref this, beginOffset, durationToRepeat);
			public HResult End(double endOffset, float endValue) mut => VT.End(ref this, endOffset, endValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionAnimation self) Reset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionAnimation self, LARGE_INTEGER beginTime) SetAbsoluteBeginTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionAnimation self, double beginOffset, float constantCoefficient, float linearCoefficient, float quadraticCoefficient, float cubicCoefficient) AddCubic;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionAnimation self, double beginOffset, float bias, float amplitude, float frequency, float phase) AddSinusoidal;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionAnimation self, double beginOffset, double durationToRepeat) AddRepeat;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionAnimation self, double endOffset, float endValue) End;
			}
		}
		[CRepr]
		public struct IDCompositionDevice : IUnknown
		{
			public const new Guid IID = .(0xc37ea93a, 0xe7aa, 0x450d, 0xb1, 0x6f, 0x97, 0x46, 0xcb, 0x04, 0x07, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Commit() mut => VT.Commit(ref this);
			public HResult WaitForCommitCompletion() mut => VT.WaitForCommitCompletion(ref this);
			public HResult GetFrameStatistics(out DCOMPOSITION_FRAME_STATISTICS statistics) mut => VT.GetFrameStatistics(ref this, out statistics);
			public HResult CreateTargetForHwnd(HWnd hwnd, IntBool topmost, out IDCompositionTarget* target) mut => VT.CreateTargetForHwnd(ref this, hwnd, topmost, out target);
			public HResult CreateVisual(out IDCompositionVisual* visual) mut => VT.CreateVisual(ref this, out visual);
			public HResult CreateSurface(uint32 width, uint32 height, DXGIFormat pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionSurface* surface) mut => VT.CreateSurface(ref this, width, height, pixelFormat, alphaMode, out surface);
			public HResult CreateVirtualSurface(uint32 initialWidth, uint32 initialHeight, DXGIFormat pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionVirtualSurface* virtualSurface) mut => VT.CreateVirtualSurface(ref this, initialWidth, initialHeight, pixelFormat, alphaMode, out virtualSurface);
			public HResult CreateSurfaceFromHandle(Handle handle, out IUnknown* surface) mut => VT.CreateSurfaceFromHandle(ref this, handle, out surface);
			public HResult CreateSurfaceFromHwnd(HWnd hwnd, out IUnknown* surface) mut => VT.CreateSurfaceFromHwnd(ref this, hwnd, out surface);
			public HResult CreateTranslateTransform(out IDCompositionTranslateTransform* translateTransform) mut => VT.CreateTranslateTransform(ref this, out translateTransform);
			public HResult CreateScaleTransform(out IDCompositionScaleTransform* scaleTransform) mut => VT.CreateScaleTransform(ref this, out scaleTransform);
			public HResult CreateRotateTransform(out IDCompositionRotateTransform* rotateTransform) mut => VT.CreateRotateTransform(ref this, out rotateTransform);
			public HResult CreateSkewTransform(out IDCompositionSkewTransform* skewTransform) mut => VT.CreateSkewTransform(ref this, out skewTransform);
			public HResult CreateMatrixTransform(out IDCompositionMatrixTransform* matrixTransform) mut => VT.CreateMatrixTransform(ref this, out matrixTransform);
			public HResult CreateTransformGroup(IDCompositionTransform** transforms, uint32 elements, out IDCompositionTransform* transformGroup) mut => VT.CreateTransformGroup(ref this, transforms, elements, out transformGroup);
			public HResult CreateTranslateTransform3D(out IDCompositionTranslateTransform3D* translateTransform3D) mut => VT.CreateTranslateTransform3D(ref this, out translateTransform3D);
			public HResult CreateScaleTransform3D(out IDCompositionScaleTransform3D* scaleTransform3D) mut => VT.CreateScaleTransform3D(ref this, out scaleTransform3D);
			public HResult CreateRotateTransform3D(out IDCompositionRotateTransform3D* rotateTransform3D) mut => VT.CreateRotateTransform3D(ref this, out rotateTransform3D);
			public HResult CreateMatrixTransform3D(out IDCompositionMatrixTransform3D* matrixTransform3D) mut => VT.CreateMatrixTransform3D(ref this, out matrixTransform3D);
			public HResult CreateTransform3DGroup(IDCompositionTransform3D** transforms3D, uint32 elements, out IDCompositionTransform3D* transform3DGroup) mut => VT.CreateTransform3DGroup(ref this, transforms3D, elements, out transform3DGroup);
			public HResult CreateEffectGroup(out IDCompositionEffectGroup* effectGroup) mut => VT.CreateEffectGroup(ref this, out effectGroup);
			public HResult CreateRectangleClip(out IDCompositionRectangleClip* clip) mut => VT.CreateRectangleClip(ref this, out clip);
			public HResult CreateAnimation(out IDCompositionAnimation* animation) mut => VT.CreateAnimation(ref this, out animation);
			public HResult CheckDeviceState(out IntBool pfValid) mut => VT.CheckDeviceState(ref this, out pfValid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self) Commit;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self) WaitForCommitCompletion;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out DCOMPOSITION_FRAME_STATISTICS statistics) GetFrameStatistics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, HWnd hwnd, IntBool topmost, out IDCompositionTarget* target) CreateTargetForHwnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IDCompositionVisual* visual) CreateVisual;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, uint32 width, uint32 height, DXGIFormat pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionSurface* surface) CreateSurface;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, uint32 initialWidth, uint32 initialHeight, DXGIFormat pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionVirtualSurface* virtualSurface) CreateVirtualSurface;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, Handle handle, out IUnknown* surface) CreateSurfaceFromHandle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, HWnd hwnd, out IUnknown* surface) CreateSurfaceFromHwnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IDCompositionTranslateTransform* translateTransform) CreateTranslateTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IDCompositionScaleTransform* scaleTransform) CreateScaleTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IDCompositionRotateTransform* rotateTransform) CreateRotateTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IDCompositionSkewTransform* skewTransform) CreateSkewTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IDCompositionMatrixTransform* matrixTransform) CreateMatrixTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, IDCompositionTransform** transforms, uint32 elements, out IDCompositionTransform* transformGroup) CreateTransformGroup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IDCompositionTranslateTransform3D* translateTransform3D) CreateTranslateTransform3D;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IDCompositionScaleTransform3D* scaleTransform3D) CreateScaleTransform3D;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IDCompositionRotateTransform3D* rotateTransform3D) CreateRotateTransform3D;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IDCompositionMatrixTransform3D* matrixTransform3D) CreateMatrixTransform3D;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, IDCompositionTransform3D** transforms3D, uint32 elements, out IDCompositionTransform3D* transform3DGroup) CreateTransform3DGroup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IDCompositionEffectGroup* effectGroup) CreateEffectGroup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IDCompositionRectangleClip* clip) CreateRectangleClip;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IDCompositionAnimation* animation) CreateAnimation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice self, out IntBool pfValid) CheckDeviceState;
			}
		}
		[CRepr]
		public struct IDCompositionTarget : IUnknown
		{
			public const new Guid IID = .(0xeacdd04c, 0x117e, 0x4e17, 0x88, 0xf4, 0xd1, 0xb1, 0x2b, 0x0e, 0x3d, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetRoot(IDCompositionVisual* visual) mut => VT.SetRoot(ref this, visual);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTarget self, IDCompositionVisual* visual) SetRoot;
			}
		}
		[CRepr]
		public struct IDCompositionVisual : IUnknown
		{
			public const new Guid IID = .(0x4d93059d, 0x097b, 0x4651, 0x9a, 0x60, 0xf0, 0xf2, 0x51, 0x16, 0xe2, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetOffsetX(ref IDCompositionAnimation animation) mut => VT.SetOffsetX(ref this, ref animation);
			public HResult SetOffsetX(float offsetX) mut => VT.SetOffsetX2(ref this, offsetX);
			public HResult SetOffsetY(ref IDCompositionAnimation animation) mut => VT.SetOffsetY(ref this, ref animation);
			public HResult SetOffsetY(float offsetY) mut => VT.SetOffsetY2(ref this, offsetY);
			public HResult SetTransform(IDCompositionTransform* transform) mut => VT.SetTransform(ref this, transform);
			public HResult SetTransform(in D2D_MATRIX_3X2_F matrix) mut => VT.SetTransform2(ref this, matrix);
			public HResult SetTransformParent(IDCompositionVisual* visual) mut => VT.SetTransformParent(ref this, visual);
			public HResult SetEffect(IDCompositionEffect* effect) mut => VT.SetEffect(ref this, effect);
			public HResult SetBitmapInterpolationMode(DCOMPOSITION_BITMAP_INTERPOLATION_MODE interpolationMode) mut => VT.SetBitmapInterpolationMode(ref this, interpolationMode);
			public HResult SetBorderMode(DCOMPOSITION_BORDER_MODE borderMode) mut => VT.SetBorderMode(ref this, borderMode);
			public HResult SetClip(IDCompositionClip* clip) mut => VT.SetClip(ref this, clip);
			public HResult SetClip(in RectF rect) mut => VT.SetClip2(ref this, rect);
			public HResult SetContent(IUnknown* content) mut => VT.SetContent(ref this, content);
			public HResult AddVisual(ref IDCompositionVisual visual, IntBool insertAbove, IDCompositionVisual* referenceVisual) mut => VT.AddVisual(ref this, ref visual, insertAbove, referenceVisual);
			public HResult RemoveVisual(ref IDCompositionVisual visual) mut => VT.RemoveVisual(ref this, ref visual);
			public HResult RemoveAllVisuals() mut => VT.RemoveAllVisuals(ref this);
			public HResult SetCompositeMode(DCOMPOSITION_COMPOSITE_MODE compositeMode) mut => VT.SetCompositeMode(ref this, compositeMode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, ref IDCompositionAnimation animation) SetOffsetX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, float offsetX) SetOffsetX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, ref IDCompositionAnimation animation) SetOffsetY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, float offsetY) SetOffsetY2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, IDCompositionTransform* transform) SetTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, in D2D_MATRIX_3X2_F matrix) SetTransform2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, IDCompositionVisual* visual) SetTransformParent;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, IDCompositionEffect* effect) SetEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, DCOMPOSITION_BITMAP_INTERPOLATION_MODE interpolationMode) SetBitmapInterpolationMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, DCOMPOSITION_BORDER_MODE borderMode) SetBorderMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, IDCompositionClip* clip) SetClip;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, in RectF rect) SetClip2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, IUnknown* content) SetContent;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, ref IDCompositionVisual visual, IntBool insertAbove, IDCompositionVisual* referenceVisual) AddVisual;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, ref IDCompositionVisual visual) RemoveVisual;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self) RemoveAllVisuals;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual self, DCOMPOSITION_COMPOSITE_MODE compositeMode) SetCompositeMode;
			}
		}
		[CRepr]
		public struct IDCompositionEffect : IUnknown
		{
			public const new Guid IID = .(0xec81b08f, 0xbfcb, 0x4e8d, 0xb1, 0x93, 0xa9, 0x15, 0x58, 0x79, 0x99, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable {}
		}
		[CRepr]
		public struct IDCompositionTransform3D : IDCompositionEffect
		{
			public const new Guid IID = .(0x71185722, 0x246b, 0x41f2, 0xaa, 0xd1, 0x04, 0x43, 0xf7, 0xf4, 0xbf, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDCompositionEffect.VTable {}
		}
		[CRepr]
		public struct IDCompositionTransform : IDCompositionTransform3D
		{
			public const new Guid IID = .(0xfd55faa7, 0x37e0, 0x4c20, 0x95, 0xd2, 0x9b, 0xe4, 0x5b, 0xc3, 0x3f, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDCompositionTransform3D.VTable {}
		}
		[CRepr]
		public struct IDCompositionTranslateTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0x06791122, 0xc6f0, 0x417d, 0x83, 0x23, 0x26, 0x9e, 0x98, 0x7f, 0x59, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetOffsetX(ref IDCompositionAnimation animation) mut => VT.SetOffsetX(ref this, ref animation);
			public HResult SetOffsetX(float offsetX) mut => VT.SetOffsetX2(ref this, offsetX);
			public HResult SetOffsetY(ref IDCompositionAnimation animation) mut => VT.SetOffsetY(ref this, ref animation);
			public HResult SetOffsetY(float offsetY) mut => VT.SetOffsetY2(ref this, offsetY);

			[CRepr]
			public struct VTable : IDCompositionTransform.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTranslateTransform self, ref IDCompositionAnimation animation) SetOffsetX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTranslateTransform self, float offsetX) SetOffsetX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTranslateTransform self, ref IDCompositionAnimation animation) SetOffsetY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTranslateTransform self, float offsetY) SetOffsetY2;
			}
		}
		[CRepr]
		public struct IDCompositionScaleTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0x71fde914, 0x40ef, 0x45ef, 0xbd, 0x51, 0x68, 0xb0, 0x37, 0xc3, 0x39, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetScaleX(ref IDCompositionAnimation animation) mut => VT.SetScaleX(ref this, ref animation);
			public HResult SetScaleX(float scaleX) mut => VT.SetScaleX2(ref this, scaleX);
			public HResult SetScaleY(ref IDCompositionAnimation animation) mut => VT.SetScaleY(ref this, ref animation);
			public HResult SetScaleY(float scaleY) mut => VT.SetScaleY2(ref this, scaleY);
			public HResult SetCenterX(ref IDCompositionAnimation animation) mut => VT.SetCenterX(ref this, ref animation);
			public HResult SetCenterX(float centerX) mut => VT.SetCenterX2(ref this, centerX);
			public HResult SetCenterY(ref IDCompositionAnimation animation) mut => VT.SetCenterY(ref this, ref animation);
			public HResult SetCenterY(float centerY) mut => VT.SetCenterY2(ref this, centerY);

			[CRepr]
			public struct VTable : IDCompositionTransform.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform self, ref IDCompositionAnimation animation) SetScaleX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform self, float scaleX) SetScaleX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform self, ref IDCompositionAnimation animation) SetScaleY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform self, float scaleY) SetScaleY2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform self, ref IDCompositionAnimation animation) SetCenterX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform self, float centerX) SetCenterX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform self, ref IDCompositionAnimation animation) SetCenterY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform self, float centerY) SetCenterY2;
			}
		}
		[CRepr]
		public struct IDCompositionRotateTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0x641ed83c, 0xae96, 0x46c5, 0x90, 0xdc, 0x32, 0x77, 0x4c, 0xc5, 0xc6, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetAngle(ref IDCompositionAnimation animation) mut => VT.SetAngle(ref this, ref animation);
			public HResult SetAngle(float angle) mut => VT.SetAngle2(ref this, angle);
			public HResult SetCenterX(ref IDCompositionAnimation animation) mut => VT.SetCenterX(ref this, ref animation);
			public HResult SetCenterX(float centerX) mut => VT.SetCenterX2(ref this, centerX);
			public HResult SetCenterY(ref IDCompositionAnimation animation) mut => VT.SetCenterY(ref this, ref animation);
			public HResult SetCenterY(float centerY) mut => VT.SetCenterY2(ref this, centerY);

			[CRepr]
			public struct VTable : IDCompositionTransform.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform self, ref IDCompositionAnimation animation) SetAngle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform self, float angle) SetAngle2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform self, ref IDCompositionAnimation animation) SetCenterX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform self, float centerX) SetCenterX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform self, ref IDCompositionAnimation animation) SetCenterY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform self, float centerY) SetCenterY2;
			}
		}
		[CRepr]
		public struct IDCompositionSkewTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0xe57aa735, 0xdcdb, 0x4c72, 0x9c, 0x61, 0x05, 0x91, 0xf5, 0x88, 0x89, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetAngleX(ref IDCompositionAnimation animation) mut => VT.SetAngleX(ref this, ref animation);
			public HResult SetAngleX(float angleX) mut => VT.SetAngleX2(ref this, angleX);
			public HResult SetAngleY(ref IDCompositionAnimation animation) mut => VT.SetAngleY(ref this, ref animation);
			public HResult SetAngleY(float angleY) mut => VT.SetAngleY2(ref this, angleY);
			public HResult SetCenterX(ref IDCompositionAnimation animation) mut => VT.SetCenterX(ref this, ref animation);
			public HResult SetCenterX(float centerX) mut => VT.SetCenterX2(ref this, centerX);
			public HResult SetCenterY(ref IDCompositionAnimation animation) mut => VT.SetCenterY(ref this, ref animation);
			public HResult SetCenterY(float centerY) mut => VT.SetCenterY2(ref this, centerY);

			[CRepr]
			public struct VTable : IDCompositionTransform.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSkewTransform self, ref IDCompositionAnimation animation) SetAngleX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSkewTransform self, float angleX) SetAngleX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSkewTransform self, ref IDCompositionAnimation animation) SetAngleY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSkewTransform self, float angleY) SetAngleY2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSkewTransform self, ref IDCompositionAnimation animation) SetCenterX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSkewTransform self, float centerX) SetCenterX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSkewTransform self, ref IDCompositionAnimation animation) SetCenterY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSkewTransform self, float centerY) SetCenterY2;
			}
		}
		[CRepr]
		public struct IDCompositionMatrixTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0x16cdff07, 0xc503, 0x419c, 0x83, 0xf2, 0x09, 0x65, 0xc7, 0xaf, 0x1f, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetMatrix(in D2D_MATRIX_3X2_F matrix) mut => VT.SetMatrix(ref this, matrix);
			public HResult SetMatrixElement(int32 row, int32 column, ref IDCompositionAnimation animation) mut => VT.SetMatrixElement(ref this, row, column, ref animation);
			public HResult SetMatrixElement(int32 row, int32 column, float value) mut => VT.SetMatrixElement2(ref this, row, column, value);

			[CRepr]
			public struct VTable : IDCompositionTransform.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionMatrixTransform self, in D2D_MATRIX_3X2_F matrix) SetMatrix;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionMatrixTransform self, int32 row, int32 column, ref IDCompositionAnimation animation) SetMatrixElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionMatrixTransform self, int32 row, int32 column, float value) SetMatrixElement2;
			}
		}
		[CRepr]
		public struct IDCompositionEffectGroup : IDCompositionEffect
		{
			public const new Guid IID = .(0xa7929a74, 0xe6b2, 0x4bd6, 0x8b, 0x95, 0x40, 0x40, 0x11, 0x9c, 0xa3, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetOpacity(ref IDCompositionAnimation animation) mut => VT.SetOpacity(ref this, ref animation);
			public HResult SetOpacity(float opacity) mut => VT.SetOpacity2(ref this, opacity);
			public HResult SetTransform3D(IDCompositionTransform3D* transform3D) mut => VT.SetTransform3D(ref this, transform3D);

			[CRepr]
			public struct VTable : IDCompositionEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionEffectGroup self, ref IDCompositionAnimation animation) SetOpacity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionEffectGroup self, float opacity) SetOpacity2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionEffectGroup self, IDCompositionTransform3D* transform3D) SetTransform3D;
			}
		}
		[CRepr]
		public struct IDCompositionTranslateTransform3D : IDCompositionTransform3D
		{
			public const new Guid IID = .(0x91636d4b, 0x9ba1, 0x4532, 0xaa, 0xf7, 0xe3, 0x34, 0x49, 0x94, 0xd7, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetOffsetX(ref IDCompositionAnimation animation) mut => VT.SetOffsetX(ref this, ref animation);
			public HResult SetOffsetX(float offsetX) mut => VT.SetOffsetX2(ref this, offsetX);
			public HResult SetOffsetY(ref IDCompositionAnimation animation) mut => VT.SetOffsetY(ref this, ref animation);
			public HResult SetOffsetY(float offsetY) mut => VT.SetOffsetY2(ref this, offsetY);
			public HResult SetOffsetZ(ref IDCompositionAnimation animation) mut => VT.SetOffsetZ(ref this, ref animation);
			public HResult SetOffsetZ(float offsetZ) mut => VT.SetOffsetZ2(ref this, offsetZ);

			[CRepr]
			public struct VTable : IDCompositionTransform3D.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTranslateTransform3D self, ref IDCompositionAnimation animation) SetOffsetX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTranslateTransform3D self, float offsetX) SetOffsetX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTranslateTransform3D self, ref IDCompositionAnimation animation) SetOffsetY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTranslateTransform3D self, float offsetY) SetOffsetY2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTranslateTransform3D self, ref IDCompositionAnimation animation) SetOffsetZ;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTranslateTransform3D self, float offsetZ) SetOffsetZ2;
			}
		}
		[CRepr]
		public struct IDCompositionScaleTransform3D : IDCompositionTransform3D
		{
			public const new Guid IID = .(0x2a9e9ead, 0x364b, 0x4b15, 0xa7, 0xc4, 0xa1, 0x99, 0x7f, 0x78, 0xb3, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetScaleX(ref IDCompositionAnimation animation) mut => VT.SetScaleX(ref this, ref animation);
			public HResult SetScaleX(float scaleX) mut => VT.SetScaleX2(ref this, scaleX);
			public HResult SetScaleY(ref IDCompositionAnimation animation) mut => VT.SetScaleY(ref this, ref animation);
			public HResult SetScaleY(float scaleY) mut => VT.SetScaleY2(ref this, scaleY);
			public HResult SetScaleZ(ref IDCompositionAnimation animation) mut => VT.SetScaleZ(ref this, ref animation);
			public HResult SetScaleZ(float scaleZ) mut => VT.SetScaleZ2(ref this, scaleZ);
			public HResult SetCenterX(ref IDCompositionAnimation animation) mut => VT.SetCenterX(ref this, ref animation);
			public HResult SetCenterX(float centerX) mut => VT.SetCenterX2(ref this, centerX);
			public HResult SetCenterY(ref IDCompositionAnimation animation) mut => VT.SetCenterY(ref this, ref animation);
			public HResult SetCenterY(float centerY) mut => VT.SetCenterY2(ref this, centerY);
			public HResult SetCenterZ(ref IDCompositionAnimation animation) mut => VT.SetCenterZ(ref this, ref animation);
			public HResult SetCenterZ(float centerZ) mut => VT.SetCenterZ2(ref this, centerZ);

			[CRepr]
			public struct VTable : IDCompositionTransform3D.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform3D self, ref IDCompositionAnimation animation) SetScaleX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform3D self, float scaleX) SetScaleX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform3D self, ref IDCompositionAnimation animation) SetScaleY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform3D self, float scaleY) SetScaleY2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform3D self, ref IDCompositionAnimation animation) SetScaleZ;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform3D self, float scaleZ) SetScaleZ2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform3D self, ref IDCompositionAnimation animation) SetCenterX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform3D self, float centerX) SetCenterX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform3D self, ref IDCompositionAnimation animation) SetCenterY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform3D self, float centerY) SetCenterY2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform3D self, ref IDCompositionAnimation animation) SetCenterZ;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionScaleTransform3D self, float centerZ) SetCenterZ2;
			}
		}
		[CRepr]
		public struct IDCompositionRotateTransform3D : IDCompositionTransform3D
		{
			public const new Guid IID = .(0xd8f5b23f, 0xd429, 0x4a91, 0xb5, 0x5a, 0xd2, 0xf4, 0x5f, 0xd7, 0x5b, 0x18);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetAngle(ref IDCompositionAnimation animation) mut => VT.SetAngle(ref this, ref animation);
			public HResult SetAngle(float angle) mut => VT.SetAngle2(ref this, angle);
			public HResult SetAxisX(ref IDCompositionAnimation animation) mut => VT.SetAxisX(ref this, ref animation);
			public HResult SetAxisX(float axisX) mut => VT.SetAxisX2(ref this, axisX);
			public HResult SetAxisY(ref IDCompositionAnimation animation) mut => VT.SetAxisY(ref this, ref animation);
			public HResult SetAxisY(float axisY) mut => VT.SetAxisY2(ref this, axisY);
			public HResult SetAxisZ(ref IDCompositionAnimation animation) mut => VT.SetAxisZ(ref this, ref animation);
			public HResult SetAxisZ(float axisZ) mut => VT.SetAxisZ2(ref this, axisZ);
			public HResult SetCenterX(ref IDCompositionAnimation animation) mut => VT.SetCenterX(ref this, ref animation);
			public HResult SetCenterX(float centerX) mut => VT.SetCenterX2(ref this, centerX);
			public HResult SetCenterY(ref IDCompositionAnimation animation) mut => VT.SetCenterY(ref this, ref animation);
			public HResult SetCenterY(float centerY) mut => VT.SetCenterY2(ref this, centerY);
			public HResult SetCenterZ(ref IDCompositionAnimation animation) mut => VT.SetCenterZ(ref this, ref animation);
			public HResult SetCenterZ(float centerZ) mut => VT.SetCenterZ2(ref this, centerZ);

			[CRepr]
			public struct VTable : IDCompositionTransform3D.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetAngle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, float angle) SetAngle2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetAxisX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, float axisX) SetAxisX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetAxisY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, float axisY) SetAxisY2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetAxisZ;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, float axisZ) SetAxisZ2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetCenterX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, float centerX) SetCenterX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetCenterY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, float centerY) SetCenterY2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetCenterZ;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRotateTransform3D self, float centerZ) SetCenterZ2;
			}
		}
		[CRepr]
		public struct IDCompositionMatrixTransform3D : IDCompositionTransform3D
		{
			public const new Guid IID = .(0x4b3363f0, 0x643b, 0x41b7, 0xb6, 0xe0, 0xcc, 0xf2, 0x2d, 0x34, 0x46, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetMatrix(in D3DMATRIX matrix) mut => VT.SetMatrix(ref this, matrix);
			public HResult SetMatrixElement(int32 row, int32 column, ref IDCompositionAnimation animation) mut => VT.SetMatrixElement(ref this, row, column, ref animation);
			public HResult SetMatrixElement(int32 row, int32 column, float value) mut => VT.SetMatrixElement2(ref this, row, column, value);

			[CRepr]
			public struct VTable : IDCompositionTransform3D.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionMatrixTransform3D self, in D3DMATRIX matrix) SetMatrix;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionMatrixTransform3D self, int32 row, int32 column, ref IDCompositionAnimation animation) SetMatrixElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionMatrixTransform3D self, int32 row, int32 column, float value) SetMatrixElement2;
			}
		}
		[CRepr]
		public struct IDCompositionClip : IUnknown
		{
			public const new Guid IID = .(0x64ac3703, 0x9d3f, 0x45ec, 0xa1, 0x09, 0x7c, 0xac, 0x0e, 0x7a, 0x13, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable {}
		}
		[CRepr]
		public struct IDCompositionRectangleClip : IDCompositionClip
		{
			public const new Guid IID = .(0x9842ad7d, 0xd9cf, 0x4908, 0xae, 0xd7, 0x48, 0xb5, 0x1d, 0xa5, 0xe7, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetLeft(ref IDCompositionAnimation animation) mut => VT.SetLeft(ref this, ref animation);
			public HResult SetLeft(float left) mut => VT.SetLeft2(ref this, left);
			public HResult SetTop(ref IDCompositionAnimation animation) mut => VT.SetTop(ref this, ref animation);
			public HResult SetTop(float top) mut => VT.SetTop2(ref this, top);
			public HResult SetRight(ref IDCompositionAnimation animation) mut => VT.SetRight(ref this, ref animation);
			public HResult SetRight(float right) mut => VT.SetRight2(ref this, right);
			public HResult SetBottom(ref IDCompositionAnimation animation) mut => VT.SetBottom(ref this, ref animation);
			public HResult SetBottom(float bottom) mut => VT.SetBottom2(ref this, bottom);
			public HResult SetTopLeftRadiusX(ref IDCompositionAnimation animation) mut => VT.SetTopLeftRadiusX(ref this, ref animation);
			public HResult SetTopLeftRadiusX(float radius) mut => VT.SetTopLeftRadiusX2(ref this, radius);
			public HResult SetTopLeftRadiusY(ref IDCompositionAnimation animation) mut => VT.SetTopLeftRadiusY(ref this, ref animation);
			public HResult SetTopLeftRadiusY(float radius) mut => VT.SetTopLeftRadiusY2(ref this, radius);
			public HResult SetTopRightRadiusX(ref IDCompositionAnimation animation) mut => VT.SetTopRightRadiusX(ref this, ref animation);
			public HResult SetTopRightRadiusX(float radius) mut => VT.SetTopRightRadiusX2(ref this, radius);
			public HResult SetTopRightRadiusY(ref IDCompositionAnimation animation) mut => VT.SetTopRightRadiusY(ref this, ref animation);
			public HResult SetTopRightRadiusY(float radius) mut => VT.SetTopRightRadiusY2(ref this, radius);
			public HResult SetBottomLeftRadiusX(ref IDCompositionAnimation animation) mut => VT.SetBottomLeftRadiusX(ref this, ref animation);
			public HResult SetBottomLeftRadiusX(float radius) mut => VT.SetBottomLeftRadiusX2(ref this, radius);
			public HResult SetBottomLeftRadiusY(ref IDCompositionAnimation animation) mut => VT.SetBottomLeftRadiusY(ref this, ref animation);
			public HResult SetBottomLeftRadiusY(float radius) mut => VT.SetBottomLeftRadiusY2(ref this, radius);
			public HResult SetBottomRightRadiusX(ref IDCompositionAnimation animation) mut => VT.SetBottomRightRadiusX(ref this, ref animation);
			public HResult SetBottomRightRadiusX(float radius) mut => VT.SetBottomRightRadiusX2(ref this, radius);
			public HResult SetBottomRightRadiusY(ref IDCompositionAnimation animation) mut => VT.SetBottomRightRadiusY(ref this, ref animation);
			public HResult SetBottomRightRadiusY(float radius) mut => VT.SetBottomRightRadiusY2(ref this, radius);

			[CRepr]
			public struct VTable : IDCompositionClip.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetLeft;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, float left) SetLeft2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetTop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, float top) SetTop2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetRight;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, float right) SetRight2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetBottom;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, float bottom) SetBottom2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetTopLeftRadiusX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, float radius) SetTopLeftRadiusX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetTopLeftRadiusY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, float radius) SetTopLeftRadiusY2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetTopRightRadiusX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, float radius) SetTopRightRadiusX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetTopRightRadiusY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, float radius) SetTopRightRadiusY2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetBottomLeftRadiusX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, float radius) SetBottomLeftRadiusX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetBottomLeftRadiusY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, float radius) SetBottomLeftRadiusY2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetBottomRightRadiusX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, float radius) SetBottomRightRadiusX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetBottomRightRadiusY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionRectangleClip self, float radius) SetBottomRightRadiusY2;
			}
		}
		[CRepr]
		public struct IDCompositionSurface : IUnknown
		{
			public const new Guid IID = .(0xbb8a4953, 0x2c99, 0x4f5a, 0x96, 0xf5, 0x48, 0x19, 0x02, 0x7f, 0xa3, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult BeginDraw(RectI* updateRect, in Guid iid, void** updateObject, out POINT updateOffset) mut => VT.BeginDraw(ref this, updateRect, iid, updateObject, out updateOffset);
			public HResult EndDraw() mut => VT.EndDraw(ref this);
			public HResult SuspendDraw() mut => VT.SuspendDraw(ref this);
			public HResult ResumeDraw() mut => VT.ResumeDraw(ref this);
			public HResult Scroll(RectI* scrollRect, RectI* clipRect, int32 offsetX, int32 offsetY) mut => VT.Scroll(ref this, scrollRect, clipRect, offsetX, offsetY);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSurface self, RectI* updateRect, in Guid iid, void** updateObject, out POINT updateOffset) BeginDraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSurface self) EndDraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSurface self) SuspendDraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSurface self) ResumeDraw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSurface self, RectI* scrollRect, RectI* clipRect, int32 offsetX, int32 offsetY) Scroll;
			}
		}
		[CRepr]
		public struct IDCompositionVirtualSurface : IDCompositionSurface
		{
			public const new Guid IID = .(0xae471c51, 0x5f53, 0x4a24, 0x8d, 0x3e, 0xd0, 0xc3, 0x9c, 0x30, 0xb3, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Resize(uint32 width, uint32 height) mut => VT.Resize(ref this, width, height);
			public HResult Trim(RectI* rectangles, uint32 count) mut => VT.Trim(ref this, rectangles, count);

			[CRepr]
			public struct VTable : IDCompositionSurface.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVirtualSurface self, uint32 width, uint32 height) Resize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVirtualSurface self, RectI* rectangles, uint32 count) Trim;
			}
		}
		[CRepr]
		public struct IDCompositionDevice2 : IUnknown
		{
			public const new Guid IID = .(0x75f6468d, 0x1b8e, 0x447c, 0x9b, 0xc6, 0x75, 0xfe, 0xa8, 0x0b, 0x5b, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Commit() mut => VT.Commit(ref this);
			public HResult WaitForCommitCompletion() mut => VT.WaitForCommitCompletion(ref this);
			public HResult GetFrameStatistics(out DCOMPOSITION_FRAME_STATISTICS statistics) mut => VT.GetFrameStatistics(ref this, out statistics);
			public HResult CreateVisual(out IDCompositionVisual2* visual) mut => VT.CreateVisual(ref this, out visual);
			public HResult CreateSurfaceFactory(ref IUnknown renderingDevice, out IDCompositionSurfaceFactory* surfaceFactory) mut => VT.CreateSurfaceFactory(ref this, ref renderingDevice, out surfaceFactory);
			public HResult CreateSurface(uint32 width, uint32 height, DXGIFormat pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionSurface* surface) mut => VT.CreateSurface(ref this, width, height, pixelFormat, alphaMode, out surface);
			public HResult CreateVirtualSurface(uint32 initialWidth, uint32 initialHeight, DXGIFormat pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionVirtualSurface* virtualSurface) mut => VT.CreateVirtualSurface(ref this, initialWidth, initialHeight, pixelFormat, alphaMode, out virtualSurface);
			public HResult CreateTranslateTransform(out IDCompositionTranslateTransform* translateTransform) mut => VT.CreateTranslateTransform(ref this, out translateTransform);
			public HResult CreateScaleTransform(out IDCompositionScaleTransform* scaleTransform) mut => VT.CreateScaleTransform(ref this, out scaleTransform);
			public HResult CreateRotateTransform(out IDCompositionRotateTransform* rotateTransform) mut => VT.CreateRotateTransform(ref this, out rotateTransform);
			public HResult CreateSkewTransform(out IDCompositionSkewTransform* skewTransform) mut => VT.CreateSkewTransform(ref this, out skewTransform);
			public HResult CreateMatrixTransform(out IDCompositionMatrixTransform* matrixTransform) mut => VT.CreateMatrixTransform(ref this, out matrixTransform);
			public HResult CreateTransformGroup(IDCompositionTransform** transforms, uint32 elements, out IDCompositionTransform* transformGroup) mut => VT.CreateTransformGroup(ref this, transforms, elements, out transformGroup);
			public HResult CreateTranslateTransform3D(out IDCompositionTranslateTransform3D* translateTransform3D) mut => VT.CreateTranslateTransform3D(ref this, out translateTransform3D);
			public HResult CreateScaleTransform3D(out IDCompositionScaleTransform3D* scaleTransform3D) mut => VT.CreateScaleTransform3D(ref this, out scaleTransform3D);
			public HResult CreateRotateTransform3D(out IDCompositionRotateTransform3D* rotateTransform3D) mut => VT.CreateRotateTransform3D(ref this, out rotateTransform3D);
			public HResult CreateMatrixTransform3D(out IDCompositionMatrixTransform3D* matrixTransform3D) mut => VT.CreateMatrixTransform3D(ref this, out matrixTransform3D);
			public HResult CreateTransform3DGroup(IDCompositionTransform3D** transforms3D, uint32 elements, out IDCompositionTransform3D* transform3DGroup) mut => VT.CreateTransform3DGroup(ref this, transforms3D, elements, out transform3DGroup);
			public HResult CreateEffectGroup(out IDCompositionEffectGroup* effectGroup) mut => VT.CreateEffectGroup(ref this, out effectGroup);
			public HResult CreateRectangleClip(out IDCompositionRectangleClip* clip) mut => VT.CreateRectangleClip(ref this, out clip);
			public HResult CreateAnimation(out IDCompositionAnimation* animation) mut => VT.CreateAnimation(ref this, out animation);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self) Commit;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self) WaitForCommitCompletion;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out DCOMPOSITION_FRAME_STATISTICS statistics) GetFrameStatistics;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out IDCompositionVisual2* visual) CreateVisual;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, ref IUnknown renderingDevice, out IDCompositionSurfaceFactory* surfaceFactory) CreateSurfaceFactory;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, uint32 width, uint32 height, DXGIFormat pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionSurface* surface) CreateSurface;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, uint32 initialWidth, uint32 initialHeight, DXGIFormat pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionVirtualSurface* virtualSurface) CreateVirtualSurface;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out IDCompositionTranslateTransform* translateTransform) CreateTranslateTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out IDCompositionScaleTransform* scaleTransform) CreateScaleTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out IDCompositionRotateTransform* rotateTransform) CreateRotateTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out IDCompositionSkewTransform* skewTransform) CreateSkewTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out IDCompositionMatrixTransform* matrixTransform) CreateMatrixTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, IDCompositionTransform** transforms, uint32 elements, out IDCompositionTransform* transformGroup) CreateTransformGroup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out IDCompositionTranslateTransform3D* translateTransform3D) CreateTranslateTransform3D;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out IDCompositionScaleTransform3D* scaleTransform3D) CreateScaleTransform3D;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out IDCompositionRotateTransform3D* rotateTransform3D) CreateRotateTransform3D;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out IDCompositionMatrixTransform3D* matrixTransform3D) CreateMatrixTransform3D;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, IDCompositionTransform3D** transforms3D, uint32 elements, out IDCompositionTransform3D* transform3DGroup) CreateTransform3DGroup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out IDCompositionEffectGroup* effectGroup) CreateEffectGroup;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out IDCompositionRectangleClip* clip) CreateRectangleClip;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice2 self, out IDCompositionAnimation* animation) CreateAnimation;
			}
		}
		[CRepr]
		public struct IDCompositionDesktopDevice : IDCompositionDevice2
		{
			public const new Guid IID = .(0x5f4633fe, 0x1e08, 0x4cb8, 0x8c, 0x75, 0xce, 0x24, 0x33, 0x3f, 0x56, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateTargetForHwnd(HWnd hwnd, IntBool topmost, out IDCompositionTarget* target) mut => VT.CreateTargetForHwnd(ref this, hwnd, topmost, out target);
			public HResult CreateSurfaceFromHandle(Handle handle, out IUnknown* surface) mut => VT.CreateSurfaceFromHandle(ref this, handle, out surface);
			public HResult CreateSurfaceFromHwnd(HWnd hwnd, out IUnknown* surface) mut => VT.CreateSurfaceFromHwnd(ref this, hwnd, out surface);

			[CRepr]
			public struct VTable : IDCompositionDevice2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDesktopDevice self, HWnd hwnd, IntBool topmost, out IDCompositionTarget* target) CreateTargetForHwnd;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDesktopDevice self, Handle handle, out IUnknown* surface) CreateSurfaceFromHandle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDesktopDevice self, HWnd hwnd, out IUnknown* surface) CreateSurfaceFromHwnd;
			}
		}
		[CRepr]
		public struct IDCompositionDeviceDebug : IUnknown
		{
			public const new Guid IID = .(0xa1a3c64a, 0x224f, 0x4a81, 0x97, 0x73, 0x4f, 0x03, 0xa8, 0x9d, 0x3c, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult EnableDebugCounters() mut => VT.EnableDebugCounters(ref this);
			public HResult DisableDebugCounters() mut => VT.DisableDebugCounters(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDeviceDebug self) EnableDebugCounters;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDeviceDebug self) DisableDebugCounters;
			}
		}
		[CRepr]
		public struct IDCompositionSurfaceFactory : IUnknown
		{
			public const new Guid IID = .(0xe334bc12, 0x3937, 0x4e02, 0x85, 0xeb, 0xfc, 0xf4, 0xeb, 0x30, 0xd2, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateSurface(uint32 width, uint32 height, DXGIFormat pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionSurface* surface) mut => VT.CreateSurface(ref this, width, height, pixelFormat, alphaMode, out surface);
			public HResult CreateVirtualSurface(uint32 initialWidth, uint32 initialHeight, DXGIFormat pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionVirtualSurface* virtualSurface) mut => VT.CreateVirtualSurface(ref this, initialWidth, initialHeight, pixelFormat, alphaMode, out virtualSurface);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSurfaceFactory self, uint32 width, uint32 height, DXGIFormat pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionSurface* surface) CreateSurface;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSurfaceFactory self, uint32 initialWidth, uint32 initialHeight, DXGIFormat pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionVirtualSurface* virtualSurface) CreateVirtualSurface;
			}
		}
		[CRepr]
		public struct IDCompositionVisual2 : IDCompositionVisual
		{
			public const new Guid IID = .(0xe8de1639, 0x4331, 0x4b26, 0xbc, 0x5f, 0x6a, 0x32, 0x1d, 0x34, 0x7a, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetOpacityMode(DCOMPOSITION_OPACITY_MODE mode) mut => VT.SetOpacityMode(ref this, mode);
			public HResult SetBackFaceVisibility(DCOMPOSITION_BACKFACE_VISIBILITY visibility) mut => VT.SetBackFaceVisibility(ref this, visibility);

			[CRepr]
			public struct VTable : IDCompositionVisual.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual2 self, DCOMPOSITION_OPACITY_MODE mode) SetOpacityMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual2 self, DCOMPOSITION_BACKFACE_VISIBILITY visibility) SetBackFaceVisibility;
			}
		}
		[CRepr]
		public struct IDCompositionVisualDebug : IDCompositionVisual2
		{
			public const new Guid IID = .(0xfed2b808, 0x5eb4, 0x43a0, 0xae, 0xa3, 0x35, 0xf6, 0x52, 0x80, 0xf9, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult EnableHeatMap(in ColorF color) mut => VT.EnableHeatMap(ref this, color);
			public HResult DisableHeatMap() mut => VT.DisableHeatMap(ref this);
			public HResult EnableRedrawRegions() mut => VT.EnableRedrawRegions(ref this);
			public HResult DisableRedrawRegions() mut => VT.DisableRedrawRegions(ref this);

			[CRepr]
			public struct VTable : IDCompositionVisual2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisualDebug self, in ColorF color) EnableHeatMap;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisualDebug self) DisableHeatMap;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisualDebug self) EnableRedrawRegions;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisualDebug self) DisableRedrawRegions;
			}
		}
		[CRepr]
		public struct IDCompositionVisual3 : IDCompositionVisualDebug
		{
			public const new Guid IID = .(0x2775f462, 0xb6c1, 0x4015, 0xb0, 0xbe, 0xb3, 0xe7, 0xd6, 0xa4, 0x97, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetDepthMode(DCOMPOSITION_DEPTH_MODE mode) mut => VT.SetDepthMode(ref this, mode);
			public HResult SetOffsetZ(ref IDCompositionAnimation animation) mut => VT.SetOffsetZ(ref this, ref animation);
			public HResult SetOffsetZ(float offsetZ) mut => VT.SetOffsetZ2(ref this, offsetZ);
			public HResult SetOpacity(ref IDCompositionAnimation animation) mut => VT.SetOpacity(ref this, ref animation);
			public HResult SetOpacity(float opacity) mut => VT.SetOpacity2(ref this, opacity);
			public HResult SetTransform(IDCompositionTransform3D* transform) mut => VT.SetTransform(ref this, transform);
			public HResult SetTransform(in D2D_MATRIX_4X4_F matrix) mut => VT.SetTransform2(ref this, matrix);
			public HResult SetVisible(IntBool visible) mut => VT.SetVisible(ref this, visible);

			[CRepr]
			public struct VTable : IDCompositionVisualDebug.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual3 self, DCOMPOSITION_DEPTH_MODE mode) SetDepthMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual3 self, ref IDCompositionAnimation animation) SetOffsetZ;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual3 self, float offsetZ) SetOffsetZ2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual3 self, ref IDCompositionAnimation animation) SetOpacity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual3 self, float opacity) SetOpacity2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual3 self, IDCompositionTransform3D* transform) SetTransform;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual3 self, in D2D_MATRIX_4X4_F matrix) SetTransform2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionVisual3 self, IntBool visible) SetVisible;
			}
		}
		[CRepr]
		public struct IDCompositionDevice3 : IDCompositionDevice2
		{
			public const new Guid IID = .(0x0987cb06, 0xf916, 0x48bf, 0x8d, 0x35, 0xce, 0x76, 0x41, 0x78, 0x1b, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateGaussianBlurEffect(out IDCompositionGaussianBlurEffect* gaussianBlurEffect) mut => VT.CreateGaussianBlurEffect(ref this, out gaussianBlurEffect);
			public HResult CreateBrightnessEffect(out IDCompositionBrightnessEffect* brightnessEffect) mut => VT.CreateBrightnessEffect(ref this, out brightnessEffect);
			public HResult CreateColorMatrixEffect(out IDCompositionColorMatrixEffect* colorMatrixEffect) mut => VT.CreateColorMatrixEffect(ref this, out colorMatrixEffect);
			public HResult CreateShadowEffect(out IDCompositionShadowEffect* shadowEffect) mut => VT.CreateShadowEffect(ref this, out shadowEffect);
			public HResult CreateHueRotationEffect(out IDCompositionHueRotationEffect* hueRotationEffect) mut => VT.CreateHueRotationEffect(ref this, out hueRotationEffect);
			public HResult CreateSaturationEffect(out IDCompositionSaturationEffect* saturationEffect) mut => VT.CreateSaturationEffect(ref this, out saturationEffect);
			public HResult CreateTurbulenceEffect(out IDCompositionTurbulenceEffect* turbulenceEffect) mut => VT.CreateTurbulenceEffect(ref this, out turbulenceEffect);
			public HResult CreateLinearTransferEffect(out IDCompositionLinearTransferEffect* linearTransferEffect) mut => VT.CreateLinearTransferEffect(ref this, out linearTransferEffect);
			public HResult CreateTableTransferEffect(out IDCompositionTableTransferEffect* tableTransferEffect) mut => VT.CreateTableTransferEffect(ref this, out tableTransferEffect);
			public HResult CreateCompositeEffect(out IDCompositionCompositeEffect* compositeEffect) mut => VT.CreateCompositeEffect(ref this, out compositeEffect);
			public HResult CreateBlendEffect(out IDCompositionBlendEffect* blendEffect) mut => VT.CreateBlendEffect(ref this, out blendEffect);
			public HResult CreateArithmeticCompositeEffect(out IDCompositionArithmeticCompositeEffect* arithmeticCompositeEffect) mut => VT.CreateArithmeticCompositeEffect(ref this, out arithmeticCompositeEffect);
			public HResult CreateAffineTransform2DEffect(out IDCompositionAffineTransform2DEffect* affineTransform2dEffect) mut => VT.CreateAffineTransform2DEffect(ref this, out affineTransform2dEffect);

			[CRepr]
			public struct VTable : IDCompositionDevice2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice3 self, out IDCompositionGaussianBlurEffect* gaussianBlurEffect) CreateGaussianBlurEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice3 self, out IDCompositionBrightnessEffect* brightnessEffect) CreateBrightnessEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice3 self, out IDCompositionColorMatrixEffect* colorMatrixEffect) CreateColorMatrixEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice3 self, out IDCompositionShadowEffect* shadowEffect) CreateShadowEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice3 self, out IDCompositionHueRotationEffect* hueRotationEffect) CreateHueRotationEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice3 self, out IDCompositionSaturationEffect* saturationEffect) CreateSaturationEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice3 self, out IDCompositionTurbulenceEffect* turbulenceEffect) CreateTurbulenceEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice3 self, out IDCompositionLinearTransferEffect* linearTransferEffect) CreateLinearTransferEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice3 self, out IDCompositionTableTransferEffect* tableTransferEffect) CreateTableTransferEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice3 self, out IDCompositionCompositeEffect* compositeEffect) CreateCompositeEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice3 self, out IDCompositionBlendEffect* blendEffect) CreateBlendEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice3 self, out IDCompositionArithmeticCompositeEffect* arithmeticCompositeEffect) CreateArithmeticCompositeEffect;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDevice3 self, out IDCompositionAffineTransform2DEffect* affineTransform2dEffect) CreateAffineTransform2DEffect;
			}
		}
		[CRepr]
		public struct IDCompositionFilterEffect : IDCompositionEffect
		{
			public const new Guid IID = .(0x30c421d5, 0x8cb2, 0x4e9f, 0xb1, 0x33, 0x37, 0xbe, 0x27, 0x0d, 0x4a, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetInput(uint32 index, IUnknown* input, uint32 flags) mut => VT.SetInput(ref this, index, input, flags);

			[CRepr]
			public struct VTable : IDCompositionEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionFilterEffect self, uint32 index, IUnknown* input, uint32 flags) SetInput;
			}
		}
		[CRepr]
		public struct IDCompositionGaussianBlurEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x45d4d0b7, 0x1bd4, 0x454e, 0x88, 0x94, 0x2b, 0xfa, 0x68, 0x44, 0x30, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetStandardDeviation(ref IDCompositionAnimation animation) mut => VT.SetStandardDeviation(ref this, ref animation);
			public HResult SetStandardDeviation(float amount) mut => VT.SetStandardDeviation2(ref this, amount);
			public HResult SetBorderMode(BorderMode mode) mut => VT.SetBorderMode(ref this, mode);

			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionGaussianBlurEffect self, ref IDCompositionAnimation animation) SetStandardDeviation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionGaussianBlurEffect self, float amount) SetStandardDeviation2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionGaussianBlurEffect self, BorderMode mode) SetBorderMode;
			}
		}
		[CRepr]
		public struct IDCompositionBrightnessEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x6027496e, 0xcb3a, 0x49ab, 0x93, 0x4f, 0xd7, 0x98, 0xda, 0x4f, 0x7d, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetWhitePoint(in Vector2 whitePoint) mut => VT.SetWhitePoint(ref this, whitePoint);
			public HResult SetBlackPoint(in Vector2 blackPoint) mut => VT.SetBlackPoint(ref this, blackPoint);
			public HResult SetWhitePointX(ref IDCompositionAnimation animation) mut => VT.SetWhitePointX(ref this, ref animation);
			public HResult SetWhitePointX(float whitePointX) mut => VT.SetWhitePointX2(ref this, whitePointX);
			public HResult SetWhitePointY(ref IDCompositionAnimation animation) mut => VT.SetWhitePointY(ref this, ref animation);
			public HResult SetWhitePointY(float whitePointY) mut => VT.SetWhitePointY2(ref this, whitePointY);
			public HResult SetBlackPointX(ref IDCompositionAnimation animation) mut => VT.SetBlackPointX(ref this, ref animation);
			public HResult SetBlackPointX(float blackPointX) mut => VT.SetBlackPointX2(ref this, blackPointX);
			public HResult SetBlackPointY(ref IDCompositionAnimation animation) mut => VT.SetBlackPointY(ref this, ref animation);
			public HResult SetBlackPointY(float blackPointY) mut => VT.SetBlackPointY2(ref this, blackPointY);

			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionBrightnessEffect self, in Vector2 whitePoint) SetWhitePoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionBrightnessEffect self, in Vector2 blackPoint) SetBlackPoint;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionBrightnessEffect self, ref IDCompositionAnimation animation) SetWhitePointX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionBrightnessEffect self, float whitePointX) SetWhitePointX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionBrightnessEffect self, ref IDCompositionAnimation animation) SetWhitePointY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionBrightnessEffect self, float whitePointY) SetWhitePointY2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionBrightnessEffect self, ref IDCompositionAnimation animation) SetBlackPointX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionBrightnessEffect self, float blackPointX) SetBlackPointX2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionBrightnessEffect self, ref IDCompositionAnimation animation) SetBlackPointY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionBrightnessEffect self, float blackPointY) SetBlackPointY2;
			}
		}
		[CRepr]
		public struct IDCompositionColorMatrixEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0xc1170a22, 0x3ce2, 0x4966, 0x90, 0xd4, 0x55, 0x40, 0x8b, 0xfc, 0x84, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetMatrix(in D2D_MATRIX_5X4_F matrix) mut => VT.SetMatrix(ref this, matrix);
			public HResult SetMatrixElement(int32 row, int32 column, ref IDCompositionAnimation animation) mut => VT.SetMatrixElement(ref this, row, column, ref animation);
			public HResult SetMatrixElement(int32 row, int32 column, float value) mut => VT.SetMatrixElement2(ref this, row, column, value);
			public HResult SetAlphaMode(D2D1_COLORMATRIX_ALPHA_MODE mode) mut => VT.SetAlphaMode(ref this, mode);
			public HResult SetClampOutput(IntBool clamp) mut => VT.SetClampOutput(ref this, clamp);

			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionColorMatrixEffect self, in D2D_MATRIX_5X4_F matrix) SetMatrix;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionColorMatrixEffect self, int32 row, int32 column, ref IDCompositionAnimation animation) SetMatrixElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionColorMatrixEffect self, int32 row, int32 column, float value) SetMatrixElement2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionColorMatrixEffect self, D2D1_COLORMATRIX_ALPHA_MODE mode) SetAlphaMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionColorMatrixEffect self, IntBool clamp) SetClampOutput;
			}
		}
		[CRepr]
		public struct IDCompositionShadowEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x4ad18ac0, 0xcfd2, 0x4c2f, 0xbb, 0x62, 0x96, 0xe5, 0x4f, 0xdb, 0x68, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetStandardDeviation(ref IDCompositionAnimation animation) mut => VT.SetStandardDeviation(ref this, ref animation);
			public HResult SetStandardDeviation(float amount) mut => VT.SetStandardDeviation2(ref this, amount);
			public HResult SetColor(in D2D_VECTOR_4F color) mut => VT.SetColor(ref this, color);
			public HResult SetRed(ref IDCompositionAnimation animation) mut => VT.SetRed(ref this, ref animation);
			public HResult SetRed(float amount) mut => VT.SetRed2(ref this, amount);
			public HResult SetGreen(ref IDCompositionAnimation animation) mut => VT.SetGreen(ref this, ref animation);
			public HResult SetGreen(float amount) mut => VT.SetGreen2(ref this, amount);
			public HResult SetBlue(ref IDCompositionAnimation animation) mut => VT.SetBlue(ref this, ref animation);
			public HResult SetBlue(float amount) mut => VT.SetBlue2(ref this, amount);
			public HResult SetAlpha(ref IDCompositionAnimation animation) mut => VT.SetAlpha(ref this, ref animation);
			public HResult SetAlpha(float amount) mut => VT.SetAlpha2(ref this, amount);

			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionShadowEffect self, ref IDCompositionAnimation animation) SetStandardDeviation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionShadowEffect self, float amount) SetStandardDeviation2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionShadowEffect self, in D2D_VECTOR_4F color) SetColor;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionShadowEffect self, ref IDCompositionAnimation animation) SetRed;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionShadowEffect self, float amount) SetRed2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionShadowEffect self, ref IDCompositionAnimation animation) SetGreen;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionShadowEffect self, float amount) SetGreen2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionShadowEffect self, ref IDCompositionAnimation animation) SetBlue;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionShadowEffect self, float amount) SetBlue2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionShadowEffect self, ref IDCompositionAnimation animation) SetAlpha;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionShadowEffect self, float amount) SetAlpha2;
			}
		}
		[CRepr]
		public struct IDCompositionHueRotationEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x6db9f920, 0x0770, 0x4781, 0xb0, 0xc6, 0x38, 0x19, 0x12, 0xf9, 0xd1, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetAngle(ref IDCompositionAnimation animation) mut => VT.SetAngle(ref this, ref animation);
			public HResult SetAngle(float amountDegrees) mut => VT.SetAngle2(ref this, amountDegrees);

			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionHueRotationEffect self, ref IDCompositionAnimation animation) SetAngle;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionHueRotationEffect self, float amountDegrees) SetAngle2;
			}
		}
		[CRepr]
		public struct IDCompositionSaturationEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0xa08debda, 0x3258, 0x4fa4, 0x9f, 0x16, 0x91, 0x74, 0xd3, 0xfe, 0x93, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetSaturation(ref IDCompositionAnimation animation) mut => VT.SetSaturation(ref this, ref animation);
			public HResult SetSaturation(float ratio) mut => VT.SetSaturation2(ref this, ratio);

			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSaturationEffect self, ref IDCompositionAnimation animation) SetSaturation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionSaturationEffect self, float ratio) SetSaturation2;
			}
		}
		[CRepr]
		public struct IDCompositionTurbulenceEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0xa6a55bda, 0xc09c, 0x49f3, 0x91, 0x93, 0xa4, 0x19, 0x22, 0xc8, 0x97, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetOffset(in Vector2 offset) mut => VT.SetOffset(ref this, offset);
			public HResult SetBaseFrequency(in Vector2 frequency) mut => VT.SetBaseFrequency(ref this, frequency);
			public HResult SetSize(in Vector2 size) mut => VT.SetSize(ref this, size);
			public HResult SetNumOctaves(uint32 numOctaves) mut => VT.SetNumOctaves(ref this, numOctaves);
			public HResult SetSeed(uint32 seed) mut => VT.SetSeed(ref this, seed);
			public HResult SetNoise(D2D1_TURBULENCE_NOISE noise) mut => VT.SetNoise(ref this, noise);
			public HResult SetStitchable(IntBool stitchable) mut => VT.SetStitchable(ref this, stitchable);

			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTurbulenceEffect self, in Vector2 offset) SetOffset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTurbulenceEffect self, in Vector2 frequency) SetBaseFrequency;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTurbulenceEffect self, in Vector2 size) SetSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTurbulenceEffect self, uint32 numOctaves) SetNumOctaves;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTurbulenceEffect self, uint32 seed) SetSeed;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTurbulenceEffect self, D2D1_TURBULENCE_NOISE noise) SetNoise;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTurbulenceEffect self, IntBool stitchable) SetStitchable;
			}
		}
		[CRepr]
		public struct IDCompositionLinearTransferEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x4305ee5b, 0xc4a0, 0x4c88, 0x93, 0x85, 0x67, 0x12, 0x4e, 0x01, 0x76, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetRedYIntercept(ref IDCompositionAnimation animation) mut => VT.SetRedYIntercept(ref this, ref animation);
			public HResult SetRedYIntercept(float redYIntercept) mut => VT.SetRedYIntercept2(ref this, redYIntercept);
			public HResult SetRedSlope(ref IDCompositionAnimation animation) mut => VT.SetRedSlope(ref this, ref animation);
			public HResult SetRedSlope(float redSlope) mut => VT.SetRedSlope2(ref this, redSlope);
			public HResult SetRedDisable(IntBool redDisable) mut => VT.SetRedDisable(ref this, redDisable);
			public HResult SetGreenYIntercept(ref IDCompositionAnimation animation) mut => VT.SetGreenYIntercept(ref this, ref animation);
			public HResult SetGreenYIntercept(float greenYIntercept) mut => VT.SetGreenYIntercept2(ref this, greenYIntercept);
			public HResult SetGreenSlope(ref IDCompositionAnimation animation) mut => VT.SetGreenSlope(ref this, ref animation);
			public HResult SetGreenSlope(float greenSlope) mut => VT.SetGreenSlope2(ref this, greenSlope);
			public HResult SetGreenDisable(IntBool greenDisable) mut => VT.SetGreenDisable(ref this, greenDisable);
			public HResult SetBlueYIntercept(ref IDCompositionAnimation animation) mut => VT.SetBlueYIntercept(ref this, ref animation);
			public HResult SetBlueYIntercept(float blueYIntercept) mut => VT.SetBlueYIntercept2(ref this, blueYIntercept);
			public HResult SetBlueSlope(ref IDCompositionAnimation animation) mut => VT.SetBlueSlope(ref this, ref animation);
			public HResult SetBlueSlope(float blueSlope) mut => VT.SetBlueSlope2(ref this, blueSlope);
			public HResult SetBlueDisable(IntBool blueDisable) mut => VT.SetBlueDisable(ref this, blueDisable);
			public HResult SetAlphaYIntercept(ref IDCompositionAnimation animation) mut => VT.SetAlphaYIntercept(ref this, ref animation);
			public HResult SetAlphaYIntercept(float alphaYIntercept) mut => VT.SetAlphaYIntercept2(ref this, alphaYIntercept);
			public HResult SetAlphaSlope(ref IDCompositionAnimation animation) mut => VT.SetAlphaSlope(ref this, ref animation);
			public HResult SetAlphaSlope(float alphaSlope) mut => VT.SetAlphaSlope2(ref this, alphaSlope);
			public HResult SetAlphaDisable(IntBool alphaDisable) mut => VT.SetAlphaDisable(ref this, alphaDisable);
			public HResult SetClampOutput(IntBool clampOutput) mut => VT.SetClampOutput(ref this, clampOutput);

			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetRedYIntercept;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, float redYIntercept) SetRedYIntercept2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetRedSlope;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, float redSlope) SetRedSlope2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, IntBool redDisable) SetRedDisable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetGreenYIntercept;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, float greenYIntercept) SetGreenYIntercept2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetGreenSlope;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, float greenSlope) SetGreenSlope2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, IntBool greenDisable) SetGreenDisable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetBlueYIntercept;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, float blueYIntercept) SetBlueYIntercept2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetBlueSlope;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, float blueSlope) SetBlueSlope2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, IntBool blueDisable) SetBlueDisable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetAlphaYIntercept;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, float alphaYIntercept) SetAlphaYIntercept2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetAlphaSlope;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, float alphaSlope) SetAlphaSlope2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, IntBool alphaDisable) SetAlphaDisable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionLinearTransferEffect self, IntBool clampOutput) SetClampOutput;
			}
		}
		[CRepr]
		public struct IDCompositionTableTransferEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x9b7e82e2, 0x69c5, 0x4eb4, 0xa5, 0xf5, 0xa7, 0x03, 0x3f, 0x51, 0x32, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetRedTable(float* tableValues, uint32 count) mut => VT.SetRedTable(ref this, tableValues, count);
			public HResult SetGreenTable(float* tableValues, uint32 count) mut => VT.SetGreenTable(ref this, tableValues, count);
			public HResult SetBlueTable(float* tableValues, uint32 count) mut => VT.SetBlueTable(ref this, tableValues, count);
			public HResult SetAlphaTable(float* tableValues, uint32 count) mut => VT.SetAlphaTable(ref this, tableValues, count);
			public HResult SetRedDisable(IntBool redDisable) mut => VT.SetRedDisable(ref this, redDisable);
			public HResult SetGreenDisable(IntBool greenDisable) mut => VT.SetGreenDisable(ref this, greenDisable);
			public HResult SetBlueDisable(IntBool blueDisable) mut => VT.SetBlueDisable(ref this, blueDisable);
			public HResult SetAlphaDisable(IntBool alphaDisable) mut => VT.SetAlphaDisable(ref this, alphaDisable);
			public HResult SetClampOutput(IntBool clampOutput) mut => VT.SetClampOutput(ref this, clampOutput);
			public HResult SetRedTableValue(uint32 index, ref IDCompositionAnimation animation) mut => VT.SetRedTableValue(ref this, index, ref animation);
			public HResult SetRedTableValue(uint32 index, float value) mut => VT.SetRedTableValue2(ref this, index, value);
			public HResult SetGreenTableValue(uint32 index, ref IDCompositionAnimation animation) mut => VT.SetGreenTableValue(ref this, index, ref animation);
			public HResult SetGreenTableValue(uint32 index, float value) mut => VT.SetGreenTableValue2(ref this, index, value);
			public HResult SetBlueTableValue(uint32 index, ref IDCompositionAnimation animation) mut => VT.SetBlueTableValue(ref this, index, ref animation);
			public HResult SetBlueTableValue(uint32 index, float value) mut => VT.SetBlueTableValue2(ref this, index, value);
			public HResult SetAlphaTableValue(uint32 index, ref IDCompositionAnimation animation) mut => VT.SetAlphaTableValue(ref this, index, ref animation);
			public HResult SetAlphaTableValue(uint32 index, float value) mut => VT.SetAlphaTableValue2(ref this, index, value);

			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, float* tableValues, uint32 count) SetRedTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, float* tableValues, uint32 count) SetGreenTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, float* tableValues, uint32 count) SetBlueTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, float* tableValues, uint32 count) SetAlphaTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, IntBool redDisable) SetRedDisable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, IntBool greenDisable) SetGreenDisable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, IntBool blueDisable) SetBlueDisable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, IntBool alphaDisable) SetAlphaDisable;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, IntBool clampOutput) SetClampOutput;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, uint32 index, ref IDCompositionAnimation animation) SetRedTableValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, uint32 index, float value) SetRedTableValue2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, uint32 index, ref IDCompositionAnimation animation) SetGreenTableValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, uint32 index, float value) SetGreenTableValue2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, uint32 index, ref IDCompositionAnimation animation) SetBlueTableValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, uint32 index, float value) SetBlueTableValue2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, uint32 index, ref IDCompositionAnimation animation) SetAlphaTableValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionTableTransferEffect self, uint32 index, float value) SetAlphaTableValue2;
			}
		}
		[CRepr]
		public struct IDCompositionCompositeEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x576616c0, 0xa231, 0x494d, 0xa3, 0x8d, 0x00, 0xfd, 0x5e, 0xc4, 0xdb, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetMode(D2D1_COMPOSITE_MODE mode) mut => VT.SetMode(ref this, mode);

			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionCompositeEffect self, D2D1_COMPOSITE_MODE mode) SetMode;
			}
		}
		[CRepr]
		public struct IDCompositionBlendEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x33ecdc0a, 0x578a, 0x4a11, 0x9c, 0x14, 0x0c, 0xb9, 0x05, 0x17, 0xf9, 0xc5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetMode(BlendMode mode) mut => VT.SetMode(ref this, mode);

			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionBlendEffect self, BlendMode mode) SetMode;
			}
		}
		[CRepr]
		public struct IDCompositionArithmeticCompositeEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x3b67dfa8, 0xe3dd, 0x4e61, 0xb6, 0x40, 0x46, 0xc2, 0xf3, 0xd7, 0x39, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetCoefficients(in D2D_VECTOR_4F coefficients) mut => VT.SetCoefficients(ref this, coefficients);
			public HResult SetClampOutput(IntBool clampoutput) mut => VT.SetClampOutput(ref this, clampoutput);
			public HResult SetCoefficient1(ref IDCompositionAnimation animation) mut => VT.SetCoefficient1(ref this, ref animation);
			public HResult SetCoefficient1(float Coeffcient1) mut => VT.SetCoefficient12(ref this, Coeffcient1);
			public HResult SetCoefficient2(ref IDCompositionAnimation animation) mut => VT.SetCoefficient2(ref this, ref animation);
			public HResult SetCoefficient2(float Coefficient2) mut => VT.SetCoefficient22(ref this, Coefficient2);
			public HResult SetCoefficient3(ref IDCompositionAnimation animation) mut => VT.SetCoefficient3(ref this, ref animation);
			public HResult SetCoefficient3(float Coefficient3) mut => VT.SetCoefficient32(ref this, Coefficient3);
			public HResult SetCoefficient4(ref IDCompositionAnimation animation) mut => VT.SetCoefficient4(ref this, ref animation);
			public HResult SetCoefficient4(float Coefficient4) mut => VT.SetCoefficient42(ref this, Coefficient4);

			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionArithmeticCompositeEffect self, in D2D_VECTOR_4F coefficients) SetCoefficients;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionArithmeticCompositeEffect self, IntBool clampoutput) SetClampOutput;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionArithmeticCompositeEffect self, ref IDCompositionAnimation animation) SetCoefficient1;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionArithmeticCompositeEffect self, float Coeffcient1) SetCoefficient12;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionArithmeticCompositeEffect self, ref IDCompositionAnimation animation) SetCoefficient2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionArithmeticCompositeEffect self, float Coefficient2) SetCoefficient22;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionArithmeticCompositeEffect self, ref IDCompositionAnimation animation) SetCoefficient3;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionArithmeticCompositeEffect self, float Coefficient3) SetCoefficient32;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionArithmeticCompositeEffect self, ref IDCompositionAnimation animation) SetCoefficient4;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionArithmeticCompositeEffect self, float Coefficient4) SetCoefficient42;
			}
		}
		[CRepr]
		public struct IDCompositionAffineTransform2DEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x0b74b9e8, 0xcdd6, 0x492f, 0xbb, 0xbc, 0x5e, 0xd3, 0x21, 0x57, 0x02, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetInterpolationMode(D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE interpolationMode) mut => VT.SetInterpolationMode(ref this, interpolationMode);
			public HResult SetBorderMode(BorderMode borderMode) mut => VT.SetBorderMode(ref this, borderMode);
			public HResult SetTransformMatrix(in D2D_MATRIX_3X2_F transformMatrix) mut => VT.SetTransformMatrix(ref this, transformMatrix);
			public HResult SetTransformMatrixElement(int32 row, int32 column, ref IDCompositionAnimation animation) mut => VT.SetTransformMatrixElement(ref this, row, column, ref animation);
			public HResult SetTransformMatrixElement(int32 row, int32 column, float value) mut => VT.SetTransformMatrixElement2(ref this, row, column, value);
			public HResult SetSharpness(ref IDCompositionAnimation animation) mut => VT.SetSharpness(ref this, ref animation);
			public HResult SetSharpness(float sharpness) mut => VT.SetSharpness2(ref this, sharpness);

			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionAffineTransform2DEffect self, D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE interpolationMode) SetInterpolationMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionAffineTransform2DEffect self, BorderMode borderMode) SetBorderMode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionAffineTransform2DEffect self, in D2D_MATRIX_3X2_F transformMatrix) SetTransformMatrix;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionAffineTransform2DEffect self, int32 row, int32 column, ref IDCompositionAnimation animation) SetTransformMatrixElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionAffineTransform2DEffect self, int32 row, int32 column, float value) SetTransformMatrixElement2;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionAffineTransform2DEffect self, ref IDCompositionAnimation animation) SetSharpness;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionAffineTransform2DEffect self, float sharpness) SetSharpness2;
			}
		}
		[CRepr]
		public struct IDCompositionDelegatedInkTrail : IUnknown
		{
			public const new Guid IID = .(0xc2448e9b, 0x547d, 0x4057, 0x8c, 0xf5, 0x81, 0x44, 0xed, 0xe1, 0xc2, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult AddTrailPoints(DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, out uint32 generationId) mut => VT.AddTrailPoints(ref this, inkPoints, inkPointsCount, out generationId);
			public HResult AddTrailPointsWithPrediction(DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, DCompositionInkTrailPoint* predictedInkPoints, uint32 predictedInkPointsCount, out uint32 generationId) mut => VT.AddTrailPointsWithPrediction(ref this, inkPoints, inkPointsCount, predictedInkPoints, predictedInkPointsCount, out generationId);
			public HResult RemoveTrailPoints(uint32 generationId) mut => VT.RemoveTrailPoints(ref this, generationId);
			public HResult StartNewTrail(in ColorF color) mut => VT.StartNewTrail(ref this, color);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDelegatedInkTrail self, DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, out uint32 generationId) AddTrailPoints;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDelegatedInkTrail self, DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, DCompositionInkTrailPoint* predictedInkPoints, uint32 predictedInkPointsCount, out uint32 generationId) AddTrailPointsWithPrediction;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDelegatedInkTrail self, uint32 generationId) RemoveTrailPoints;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionDelegatedInkTrail self, in ColorF color) StartNewTrail;
			}
		}
		[CRepr]
		public struct IDCompositionInkTrailDevice : IUnknown
		{
			public const new Guid IID = .(0xdf0c7cec, 0xcdeb, 0x4d4a, 0xb9, 0x1c, 0x72, 0x1b, 0xf2, 0x2f, 0x4e, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateDelegatedInkTrail(out IDCompositionDelegatedInkTrail* inkTrail) mut => VT.CreateDelegatedInkTrail(ref this, out inkTrail);
			public HResult CreateDelegatedInkTrailForSwapChain(ref IUnknown swapChain, out IDCompositionDelegatedInkTrail* inkTrail) mut => VT.CreateDelegatedInkTrailForSwapChain(ref this, ref swapChain, out inkTrail);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionInkTrailDevice self, out IDCompositionDelegatedInkTrail* inkTrail) CreateDelegatedInkTrail;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDCompositionInkTrailDevice self, ref IUnknown swapChain, out IDCompositionDelegatedInkTrail* inkTrail) CreateDelegatedInkTrailForSwapChain;
			}
		}
		
		// --- Functions ---
		
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DCompositionCreateDevice(IDXGIDevice* dxgiDevice, in Guid iid, void** dcompositionDevice);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DCompositionCreateDevice2(IUnknown* renderingDevice, in Guid iid, void** dcompositionDevice);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DCompositionCreateDevice3(IUnknown* renderingDevice, in Guid iid, void** dcompositionDevice);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DCompositionCreateSurfaceHandle(uint32 desiredAccess, SecurityAttributes* securityAttributes, out Handle surfaceHandle);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DCompositionAttachMouseWheelToHwnd(ref IDCompositionVisual visual, HWnd hwnd, IntBool enable);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DCompositionAttachMouseDragToHwnd(ref IDCompositionVisual visual, HWnd hwnd, IntBool enable);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DCompositionGetFrameId(COMPOSITION_FRAME_ID_TYPE frameIdType, out uint64 frameId);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DCompositionGetStatistics(uint64 frameId, out COMPOSITION_FRAME_STATS frameStats, uint32 targetIdCount, COMPOSITION_TARGET_ID* targetIds, uint32* actualTargetIdCount);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DCompositionGetTargetStatistics(uint64 frameId, in COMPOSITION_TARGET_ID targetId, out COMPOSITION_TARGET_STATS targetStats);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DCompositionBoostCompositorClock(IntBool enable);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DCompositionWaitForCompositorClock(uint32 count, Handle* handles, uint32 timeoutInMs);
	}
}
