using System;
using BfEngine;

// namespace Graphics.Direct2D.Common
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum AlphaMode : uint32
		{
			Unknown = 0,
			Premultiplied = 1,
			Straight = 2,
			Ignore = 3
		}
		public enum FigureBegin : uint32
		{
			Filled = 0,
			Hollow = 1
		}
		public enum FigureEnd : uint32
		{
			Open = 0,
			Closed = 1
		}
		public enum PathSegment : uint32
		{
			None = 0,
			ForceUnstroked = 1,
			ForceRoundLineJoin = 2
		}
		public enum FillMode : uint32
		{
			Alternate = 0,
			Winding = 1
		}
		public enum BorderMode : uint32
		{
			Soft = 0,
			Hard = 1
		}
		public enum BlendMode : uint32
		{
			Multiply = 0,
			Screen = 1,
			Darken = 2,
			Lighten = 3,
			Dissolve = 4,
			ColorBurn = 5,
			LinearBurn = 6,
			DarkerColor = 7,
			LighterColor = 8,
			ColorDodge = 9,
			LinearDodge = 10,
			Overlay = 11,
			SoftLight = 12,
			HardLight = 13,
			VividLight = 14,
			LinearLight = 15,
			PinLight = 16,
			HardMix = 17,
			Difference = 18,
			Exclusion = 19,
			Hue = 20,
			Saturation = 21,
			Color = 22,
			Luminosity = 23,
			Subtract = 24,
			Division = 25
		}
		public enum D2D1_COLORMATRIX_ALPHA_MODE : uint32
		{
			Premultiplied = 1,
			Straight = 2
		}
		public enum D2D1_TURBULENCE_NOISE : uint32
		{
			FractalSum = 0,
			Turbulence = 1
		}
		public enum D2D1_COMPOSITE_MODE : uint32
		{
			SourceOver = 0,
			DestinationOver = 1,
			SourceIn = 2,
			DestinationIn = 3,
			SourceOut = 4,
			DestinationOut = 5,
			SourceAtop = 6,
			DestinationAtop = 7,
			XOR = 8,
			Plus = 9,
			SourceCopy = 10,
			BoundedSourceCopy = 11,
			MaskInvert = 12
		}
		
		// --- Structs ---
		
		/*[CRepr]
		public struct D2D_COLOR_F
		{
			public float r;
			public float g;
			public float b;
			public float a;
		}*/
		/*[CRepr]
		public struct ColorF : this(
			float r,
			float g,
			float b,
			float a
		){}*/
		[CRepr]
		public struct PixelFormat : this(
			DXGIFormat format,
			AlphaMode alphaMode
		){}
		[CRepr]
		public struct D2D_POINT_2U
		{
			public uint32 x;
			public uint32 y;
		}
		[CRepr]
		public struct D2D_VECTOR_2F
		{
			public float x;
			public float y;
		}
		[CRepr]
		public struct D2D_VECTOR_3F
		{
			public float x;
			public float y;
			public float z;
		}
		[CRepr]
		public struct D2D_VECTOR_4F
		{
			public float x;
			public float y;
			public float z;
			public float w;
		}
		[CRepr]
		public struct RectF : this(
			float left,
			float top,
			float right,
			float bottom
		){}
		[CRepr]
		public struct D2D_RECT_U
		{
			public uint32 left;
			public uint32 top;
			public uint32 right;
			public uint32 bottom;
		}
		[CRepr]
		public struct D2D_SIZE_F
		{
			public float width;
			public float height;
		}
		[CRepr]
		public struct SizeU : this(
			uint32 width,
			uint32 height
		){}
		[CRepr]
		public struct D2D_MATRIX_3X2_F
		{
			public _Anonymous_e__Union Anonymous;

			public float[6] view => Anonymous.m;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous1_e__Struct Anonymous1;
				public _Anonymous2_e__Struct Anonymous2;
				public float[6] m;
				
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public float m11;
					public float m12;
					public float m21;
					public float m22;
					public float dx;
					public float dy;
				}
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public float _11;
					public float _12;
					public float _21;
					public float _22;
					public float _31;
					public float _32;
				}
			}
		}
		[CRepr]
		public struct D2D_MATRIX_4X3_F
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public float[12] m;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public float _11;
					public float _12;
					public float _13;
					public float _21;
					public float _22;
					public float _23;
					public float _31;
					public float _32;
					public float _33;
					public float _41;
					public float _42;
					public float _43;
				}
			}
		}
		[CRepr]
		public struct D2D_MATRIX_4X4_F
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public float[16] m;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public float _11;
					public float _12;
					public float _13;
					public float _14;
					public float _21;
					public float _22;
					public float _23;
					public float _24;
					public float _31;
					public float _32;
					public float _33;
					public float _34;
					public float _41;
					public float _42;
					public float _43;
					public float _44;
				}
			}
		}
		[CRepr]
		public struct D2D_MATRIX_5X4_F
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public float[20] m;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public float _11;
					public float _12;
					public float _13;
					public float _14;
					public float _21;
					public float _22;
					public float _23;
					public float _24;
					public float _31;
					public float _32;
					public float _33;
					public float _34;
					public float _41;
					public float _42;
					public float _43;
					public float _44;
					public float _51;
					public float _52;
					public float _53;
					public float _54;
				}
			}
		}
		[CRepr]
		public struct BezierSegment
		{
			public Vector2 point1;
			public Vector2 point2;
			public Vector2 point3;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ID2D1SimplifiedGeometrySink : IUnknown
		{
			public const new Guid IID = .(0x2cd9069e, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetFillMode(FillMode fillMode)								mut => VT.SetFillMode(&this, fillMode);
			public void SetSegmentFlags(PathSegment vertexFlags)					mut => VT.SetSegmentFlags(&this, vertexFlags);
			public void BeginFigure(Vector2 startPoint, FigureBegin figureBegin)	mut => VT.BeginFigure(&this, startPoint, figureBegin);
			public void AddLines(Vector2* points, uint32 pointsCount)				mut => VT.AddLines(&this, points, pointsCount);
			public void AddBeziers(BezierSegment* beziers, uint32 beziersCount)		mut => VT.AddBeziers(&this, beziers, beziersCount);
			public void EndFigure(FigureEnd figureEnd)								mut => VT.EndFigure(&this, figureEnd);
			public HRESULT Close()													mut => VT.Close(&this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ID2D1SimplifiedGeometrySink* self, FillMode fillMode) SetFillMode;
				public new function [CallingConvention(.Stdcall)] void(ID2D1SimplifiedGeometrySink* self, PathSegment vertexFlags) SetSegmentFlags;
				public new function [CallingConvention(.Stdcall)] void(ID2D1SimplifiedGeometrySink* self, Vector2 startPoint, FigureBegin figureBegin) BeginFigure;
				public new function [CallingConvention(.Stdcall)] void(ID2D1SimplifiedGeometrySink* self, Vector2* points, uint32 pointsCount) AddLines;
				public new function [CallingConvention(.Stdcall)] void(ID2D1SimplifiedGeometrySink* self, BezierSegment* beziers, uint32 beziersCount) AddBeziers;
				public new function [CallingConvention(.Stdcall)] void(ID2D1SimplifiedGeometrySink* self, FigureEnd figureEnd) EndFigure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ID2D1SimplifiedGeometrySink* self) Close;
			}
		}
		
	}
}
