using System.Collections;
using System;
using static Win32.Graphics.Direct2D;
using static Win32.Win32;

namespace BfEngine.Text
{
	public struct GlyphGeometrySink : ID2D1SimplifiedGeometrySink, IDisposable
	{
		public FillMode fillMode = default;
		public PathSegment segmentFlags = default;
		public List<Figure> figures = new List<Figure>();

		public this(){
			base.vt = new ID2D1SimplifiedGeometrySink.VTable();

			VT.SetFillMode = (_this,  _fillmode) => ((Self*)_this).fillMode = _fillmode;
			VT.SetSegmentFlags = (_this, _vertexFlags) => ((Self*)_this).segmentFlags = _vertexFlags;
			VT.BeginFigure = (self, startPoint, figureBegin) => ((Self*)self).figures.Add(Figure(startPoint, figureBegin));
			VT.AddLines = (self, points, pointsCount) => {
				((Self*)self).figures.Back.regions.Add((false, ((Self*)self).figures.Back.points.Count, pointsCount));
				((Self*)self).figures.Back.points.AddRange(Span<Vector2>(points, pointsCount));
			};
			VT.AddBeziers = (self, beziers, beziersCount) => {
				((Self*)self).figures.Back.regions.Add((true, ((Self*)self).figures.Back.points.Count, 3 * beziersCount));
				((Self*)self).figures.Back.points.AddRange(Span<Vector2>((Vector2*)beziers, beziersCount * 3));
			};
			VT.EndFigure = (self, figureEnd) => ((Self*)self).figures.Back.figureEnd = figureEnd;
			VT.Close = (self) => .OK;//no error state lmao
		}


		public void Dispose()
		{
			DeleteContainerAndDisposeItems!(figures);
			delete VT;
		}
	}

	struct Figure : IDisposable
	{
		public Vector2 startPoint;
		public FigureBegin figureBegin;
		public List<Vector2> points;
		public List<(bool bezier, int start, int length)> regions;

		public FigureEnd figureEnd = default;


		public this(Vector2 startPoint, FigureBegin figureBegin)
		{
			this.startPoint = startPoint;
			this.figureBegin = figureBegin;

			points = new .();
			regions = new .();
			points.Add(startPoint);
		}

		public void Dispose()
		{
			delete points;
			delete regions;
		}
	}
}