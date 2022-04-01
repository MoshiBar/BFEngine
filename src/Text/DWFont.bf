using System;
using System.Diagnostics;
using System.Collections;
using static Win32.Win32;
namespace BfEngine.Text
{
	class DWFont
	{
		private const int LOG2_PAGE_SIZE = 9;
		private const int PAGE_SIZE = 1 << LOG2_PAGE_SIZE;
		private const int PAGES = 0x10000 / PAGE_SIZE;

		const Vector2Int atlasSize = .(2048, 2048);
		const String defaultChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890\"!`?'.,;:()[]{}<>|/@\\^$-%+=#_&~*";


		public String name = new String() ~ delete _;

		public Texture[] textures ~ delete _;

		//public float padTop, padRight, padBottom, padLeft;
		/** The distance from one line of text to the next. To set this value, use {@link #setLineHeight(float)}. */
		/*public float lineHeight;
		/** The distance from the top of most uppercase characters to the baseline. Since the drawing position is the cap height of
		 * the first line, the cap height can be used to get the location of the baseline. */
		public float capHeight = 1;
		/** The distance from the cap height to the top of the tallest glyph. */
		public float ascent;
		/** The distance from the bottom of the glyph that extends the lowest to the baseline. This number is negative. */
		public float descent;*/
		/** The distance to move down when \n is encountered. */
		public float down;
		/** Multiplier for the line height of blank lines. down * blankLineHeight is used as the distance to move down for a blank
		 * line. */
		//public float size;

		public float scaleW, scaleH;

		//size in pixels
		public float size;
		//amount to scale design units by
		public float scale;

		public float SDFSpread;

		IDWriteFontFace1* fontFace;
		Framebuffer framebuffer;//keep the framebuffer active so we can render new glyphs
		List<Rect> glyphlocations = new .() ~ delete _;
		ID2D1RenderTarget* renderTarget;
		ID2D1SolidColorBrush* solidColorBrush;
		Texture texture;
		IWICBitmap* bitmap;

		public readonly Glyph[][] glyphs = new Glyph[PAGES][] ~ {
			for(var arr in _){
				if(arr != null){
					for(var glyph in arr) if( glyph != null) delete glyph;
					delete arr;
				}
			}
			delete _;
		};
		public Glyph missingGlyph ~ delete _;

		public float spaceXadvance;

		public float xHeight = 1;

		//public char16[] breakChars;
		const char16[?] xChars = .('x', 'e', 'a', 'o', 'n', 's', 'r', 'c', 'u', 'm', 'v', 'w', 'z');
		const char16[?] capChars = .('M', 'N', 'B', 'D', 'C', 'E', 'F', 'K', 'A', 'G', 'H', 'I', 'J', 'L', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
		static Shader beziershader ~ delete _;
		static Shader invertshader ~ delete _;
		
		

		public this (StringView fontName) {
			this.load(fontName);
		}

		static StringView getVal(StringView buffer, StringView valName){
			var buffer;
			var startindex = buffer.IndexOf(scope $"{valName}=") + valName.Length + 1;
			buffer = buffer.Substring(startindex)..Trim();

			if(buffer.StartsWith('\"')){
				//unquote string
				return buffer.Substring(1, buffer.IndexOf('\"', 1) - 1);
			}

			return buffer.Substring(0, buffer.IndexOf(' '));
		}

		public void load(StringView fontName)
		{
			scaleW = atlasSize.x;
			scaleH = atlasSize.y;

			var hr = D2D1CreateFactory<ID2D1Factory>(.MultiThreaded, ID2D1Factory.IID, null, var d2dFactory);
			Debug.Assert(hr == .OK);

			hr = DWriteCreateFactory<IDWriteFactory7>(.Shared, IDWriteFactory7.IID, var dwriteFactory);
			Debug.Assert(hr == .OK);

			//actually get the font face
			hr = dwriteFactory.CreateTextFormat(
				"",
				default,
				.Regular,
				.Normal,
				.Normal,
				72.0f,//doesnt matter
				"en-us",
				var textFormat);
			Debug.Assert(hr == .OK);

			Console.WriteLine(textFormat.GetFontFamilyName(..scope .()));

			hr = textFormat.GetFontCollection(var fontcollection);
			Debug.Assert(hr == .OK);

			hr = fontcollection.FindFamilyName(fontName, var index, var found);
			Debug.Assert(hr == .OK);

			Debug.Assert(found);

			hr = fontcollection.GetFontFamily(index, var fontfamily);
			Debug.Assert(hr == .OK);

			fontfamily.GetFamilyNames(var familynames);

			for(uint32 i < familynames.Count){
			Console.WriteLine(familynames.GetString(i, ..scope .()));
			}


			hr = fontfamily.GetFont(0, var font);
			Debug.Assert(hr == .OK);



			hr = font.CreateFontFace(var ff);
			Debug.Assert(hr == .OK);

			//risky cast to derived type lol
			fontFace = (IDWriteFontFace1*)ff;

			fontFace.GetMetrics(var fontmetrics);

			
			



			//bunch of boring code to create a context to render character masks
			hr = CoCreateInstance<IWICImagingFactory2>(CLSID_WICImagingFactory2, null, .INPROC_SERVER, IWICImagingFactory2.IID, var imagingFactory);
			Debug.Assert(hr == .OK);

			var pformat = GUID_WICPixelFormat8bppAlpha;//*/GUID_WICPixelFormat32bppPBGRA;
			hr = imagingFactory.CreateBitmap((.)atlasSize.x, (.)atlasSize.y, ref pformat, .WICBitmapCacheOnDemand, out bitmap);
			Debug.Assert(hr == .OK);

			//hr = d2dFactory.CreateHwndRenderTarget(default, .(Engine.hwnd, size, .None), out renderTarget);
			RenderTargetProperties rtProperties = .(.Default, .(.Unknown, .Unknown), 96, 96, .None, .Default);
			hr = d2dFactory.CreateWicBitmapRenderTarget(bitmap, rtProperties, out renderTarget);
			Debug.Assert(hr == .OK);

			//make a brush, honestly not exactly sure what this does
			ColorF brushColor = .(1, 1, 1, 1);//render a white color
			BrushProperties brushProps = .(){opacity = 1, transform = D2D1MakeRotateMatrix(0, default, ..var _)};//create a rotation matrix with no rotation, cause i didn't know how to make an identity matrix lmao
			hr = renderTarget.CreateSolidColorBrush(brushColor, &brushProps, out solidColorBrush);
			Debug.Assert(hr == .OK);


			SDFSpread = 8;

			size = 128f;
			
			scale = size / fontmetrics.designUnitsPerEm;


			//create framebuffer to render the atlas
			framebuffer = Framebuffer(atlasSize);


			//load shaders if not done already
			if(beziershader == null) beziershader = new Shader()..LoadShader("Assets/shaders/cubicdistance.vert", "Assets/shaders/cubicdistance.frag");
			if(invertshader == null) invertshader = new Shader()..LoadShader("Assets/shaders/invert.vert", "Assets/shaders/invert.frag");

			down = -(fontmetrics.ascent + fontmetrics.descent + fontmetrics.lineGap) * scale;


			//TODO: multiple atlas textures?
			textures = new Texture[](framebuffer.colorhandle);

			GenerateGlyphs('\0');
			missingGlyph = getGlyph('\0');
			return;
		}

		public void GenerateGlyphs(char32 char){
			GenerateGlyphs(scope $"{char}");
		}

		public void GenerateGlyphs(StringView str){
			//render the mask, aaaaaaaaaaaaaaaaaaa

			List<uint32> codepoints = scope .();
			//for(int i < codepoints.Count) codepoints[i] = (.)testStr[i];
			for(var codepoint in str.DecodedChars){
				if(codepoint == ' ' || codepoints.Contains((.)codepoint)) continue;
				if(this.getGlyph(codepoint) == null)
					codepoints.Add((.)codepoint);
			}

			if(codepoints.Count == 0)return; //theres nothing to render!


			uint16[] indices = scope .[codepoints.Count];

			//convert unicode codepoints into glyph indices
			fontFace.GetGlyphIndices(&codepoints[0], (.)codepoints.Count, indices.Ptr);


			GlyphMetrics[] glyphMetrics = scope .[codepoints.Count];
			fontFace.GetDesignGlyphMetrics(indices.Ptr, (.)glyphMetrics.Count, glyphMetrics.Ptr, false);

			//create an array we can sort by height to more optimally pack into a texture(maybe?)
			(uint32 codepoint, uint16 index, GlyphMetrics metrics)[] glyphinfo = scope .[codepoints.Count];
			for(int i < codepoints.Count)
				glyphinfo[i] = (codepoints[i], indices[i], glyphMetrics[i]);

			Array.Sort(glyphinfo, scope (a, b) => { return a.metrics.blackboxheight - b.metrics.blackboxheight;});
			for(int i < codepoints.Count){
				indices[i] = glyphinfo[i].index;
				codepoints[i] = glyphinfo[i].codepoint;
				glyphMetrics[i] = glyphinfo[i].metrics;
			}


			//List<Rect> glyphlocations = scope List<Rect>(codepoints.Count);
			var glyphlocationsindex = glyphlocations.Count;
			//my super special glyph packing algorithm that'll probably break instantly
			for(int i < glyphinfo.Count){
				var info = glyphinfo[i];
				Rect rect = .(0,0, info.metrics.blackboxwidth * scale + SDFSpread * 2, info.metrics.blackboxheight * scale + SDFSpread * 2);
				bool added = false;
				for(int y < atlasSize.y - (.)rect.mHeight){
					//reset when starting to test new line
					rect.mY = y;
					rect.mX = 0;
					bool intersected = true;
					A: while (intersected){
						intersected = false;
						for(int g < glyphlocations.Count)
						{
							if(rect.Right > atlasSize.x)break A;//doesnt fit on this line, don't continue
							if(glyphlocations[g].Intersects(rect)){
								rect.mX = glyphlocations[g].Right;//move right till we find a non-intersecting point
								intersected = true;
							}
						}
					}

					if(rect.Right <= atlasSize.x)
					{
						added = true;
						glyphlocations.Add(rect);
						break;//glyph added, 
					}
				}
				if(!added) Internal.FatalError("glyph don't fit (sad face)");
			}

			//GlyphOffset offset = .(-spread, spread);
			Vector2 origin = .zero;//.(-glyphMetric.leftSideBearing, /*glyphMetric.verticalOriginY*/ /*- glyphMetric.topSideBearing*/0);
			//GlyphOffset offset = .(-glyphMetric.leftSideBearing * scale + spread, (-glyphMetric.verticalOriginY + glyphMetric.topSideBearing) * scale - spread);

			GlyphOffset[] offsets = scope .[codepoints.Count];
			for(int i < codepoints.Count){
				offsets[i] = .(
					(-glyphMetrics[i].leftSideBearing) * scale + SDFSpread + glyphlocations[i + glyphlocationsindex].mX,
					(-glyphMetrics[i].verticalOriginY + glyphMetrics[i].topSideBearing) * scale - SDFSpread - glyphlocations[i + glyphlocationsindex].mY);
			}
			float[] advances = scope .[codepoints.Count];//not used lol

			GlyphRun grun = .(){
				fontFace = fontFace,
				fontEmSize = size,
				glyphCount = (.)codepoints.Count,
				glyphIndices = indices.Ptr,
				glyphAdvances = advances.Ptr,
				glyphOffsets = offsets.Ptr
			};

			{
				var rect = WICRect(0, 0, atlasSize.x, atlasSize.y);
				var hr = bitmap.Lock(rect, .LockWrite, var lock);
				Debug.Assert(hr == .OK);
				hr = lock.GetDataPointer(var buffersize, var data);
				Debug.Assert(hr == .OK);
				Internal.MemSet(data, 0, atlasSize.x * atlasSize.y);
				lock.Release();
			}


			//render the glyph mask
			renderTarget.BeginDraw();

			renderTarget.DrawGlyphRun(origin, grun, solidColorBrush, .Natural);

			var hr = renderTarget.EndDraw();
			Debug.Assert(hr == .OK);


			//convert wic texture to opengl texture
			var rect = WICRect(0, 0, atlasSize.x, atlasSize.y);
			hr = bitmap.Lock(rect, .LockRead, var lock);
			Debug.Assert(hr == .OK);
			hr = lock.GetDataPointer(var buffersize, var data);
			Debug.Assert(hr == .OK);


			
			var texture = Texture.LoadRaw(data, atlasSize, .LUMINANCE, false, false);//texture for mask
			lock.Release();



			GlyphGeometrySink geometrysink = .();
			defer geometrysink.Dispose();

			fontFace.GetGlyphRunOutline(size, indices.Ptr, advances.Ptr, offsets.Ptr, (.)codepoints.Count, false, false, &geometrysink);






			framebuffer.Bind();
			//GL.Clear(.COLOR_BUFFER_BIT);
			GL.Clear(.DEPTH_BUFFER_BIT);
			//GL.Clear(.STENCIL_BUFFER_BIT);

			//do actual rendering to the texture

			beziershader.UseProgram();
			//Shader.SetMatrix(0, Camera.ScreenSpaceMatrix);
			Shader.SetMatrix(0, Matrix4.CreateOrtho(0, atlasSize.x, 0, atlasSize.y, -1, 1));
			Shader.SetFloat(8, SDFSpread);


			var rectModel = Engine.defaultRect;

			for(int f < geometrysink.figures.Count){
				var figure = geometrysink.figures[f];
				var points = figure.points;
				
				for(int r < figure.regions.Count)
				{
					var region = figure.regions[r];

					for(int i < region.bezier ? region.length / 3 : region.length)
					{
						if(region.bezier)
						{
							var bezier = points.GetRange(region.start + i * 3 - 1, 4);

							var bounds = Utils.GetCurveBounds(bezier);

							bounds.Inflate(SDFSpread, SDFSpread);//give space for the distance field

							Shader.SetMatrix(1, .CreateTransform(bounds.Center, bounds.Size.x_y / 2, default));

							
							GL.Uniform2fv(2, 2, (float*)&bounds);
							GL.Uniform2fv(4, 4, (float*)bezier.Ptr);

							rectModel.Draw();
						}
						else
						{
							//line region
							var lineStart = points[region.start + i - 1];
							var lineEnd = points[region.start + i];

							Vector2[4] bezier = .(lineStart, lineStart, lineEnd, lineEnd);//bezier thats just a straight line

							var min = Vector2(Math.Min(lineStart.x, lineEnd.x), Math.Min(lineStart.y, lineEnd.y));
							var max = Vector2(Math.Max(lineStart.x, lineEnd.x), Math.Max(lineStart.y, lineEnd.y));

							var bounds = Rect(min, max - min);

							bounds.Inflate(SDFSpread, SDFSpread);//give space for the distance field

							Shader.SetMatrix(1, .CreateTransform(bounds.Center, bounds.Size.x_y / 2, default));


							GL.Uniform2fv(2, 2, (float*)&bounds);
							GL.Uniform2fv(4, 4, (float*)&bezier);

							rectModel.Draw();
						}
					}
				}

				var lineStart = points.Back;
				var lineEnd = points.Front;



				Vector2[4] bezier = .(lineStart, lineStart, lineEnd, lineEnd);

				var min = Vector2(Math.Min(lineStart.x, lineEnd.x), Math.Min(lineStart.y, lineEnd.y));
				var max = Vector2(Math.Max(lineStart.x, lineEnd.x), Math.Max(lineStart.y, lineEnd.y));

				var bounds = Rect(min, max - min);

				bounds.Inflate(SDFSpread, SDFSpread);

				Shader.SetMatrix(1, .CreateTransform(bounds.Center, bounds.Size.x_y / 2, default));


				GL.Uniform2fv(2, 2, (float*)&bounds);
				GL.Uniform2fv(4, 4, (float*)&bezier);

				rectModel.Draw();
			}

			//render invert mask on top
			GL.BlendFunc(.ONE_MINUS_DST_COLOR, .ZERO);

			invertshader.UseProgram();
			Shader.SetMatrix(0, Matrix4.CreateOrtho(-1, 1, 1, -1, -1, 1));
			Shader.BindTexture(texture, 0);

			Shader.SetMatrix(1, .CreateTransform(.(0, 0), .one, default));

			rectModel.Draw();

			Engine.SetDefaultBlendFunc();

			Framebuffer.BindDefault();



			


			

			GlyphMetrics spaceMetrics = default;
			uint32 spacecodepoint = (.)' ';
			uint16 spaceindex = default;
			fontFace.GetGlyphIndices(&spacecodepoint, 1, &spaceindex);
			fontFace.GetDesignGlyphMetrics(&spaceindex, 1, &spaceMetrics, false);
			spaceXadvance = spaceMetrics.advanceWidth * scale;



			for(int i < glyphinfo.Count){
				var info = glyphinfo[i];
				var metrics = info.metrics;
				Glyph glyph = new Glyph();
				glyph.id = (.)info.codepoint;
				glyph.xadvance = (.)(metrics.advanceWidth * scale);

				glyph.height = (.)metrics.blackboxheight;

				glyph.xoffset = (.)(metrics.leftSideBearing * scale) - (.)SDFSpread;
				glyph.yoffset = (.)((-metrics.verticalOriginY + metrics.bottomSideBearing) * scale) - (.)SDFSpread;


				var glyphrect = glyphlocations[i + glyphlocationsindex];
				glyph.srcX = (.)glyphrect.mX;
				glyph.srcY = (.)glyphrect.mY;
				glyph.width = (.)glyphrect.mWidth;
				glyph.height = (.)glyphrect.mHeight;

				setGlyph((.)info.codepoint, glyph);
			}

		}









		public float getKerningAdjustment(char32 a, char32 b){
			char32[2] pair = .(a, b);
			uint16[2] glyphpair = ?;
			fontFace.GetGlyphIndices((.)&pair, 2, &glyphpair);
			int32[2] kerning = ?;
			fontFace.GetKerningPairAdjustments(2, &glyphpair, &kerning);
			return kerning[0];
		}


		public Glyph getFirstGlyph () {
			for (Glyph[] page in this.glyphs) {
				if (page == null) continue;
				for (Glyph glyph in page) {
					if (glyph == null || glyph.height == 0 || glyph.width == 0) continue;
					return glyph;
				}
			}
			Internal.FatalError("No glyphs found");
		}

		public void setGlyph (char32 ch, Glyph glyph) => setGlyph((int32)ch, glyph);

		public void setGlyph (int32 ch, Glyph glyph) {
			Glyph[] page = glyphs[(int)ch / PAGE_SIZE];
			if (page == null) glyphs[(int)ch / PAGE_SIZE] = page = new Glyph[PAGE_SIZE];
			page[(int)ch & (PAGE_SIZE - 1)] = glyph;
		}

		public Glyph getGlyph (char32 ch) {
			Glyph[] page = glyphs[(int)ch / PAGE_SIZE];
			if (page != null) return page[(int)ch & (PAGE_SIZE - 1)];
			return null;
		}

		public class Glyph {
			public int32 id;
			public int32 srcX, srcY;
			public int32 width, height;
			//public float u, v, u2, v2;
			public int32 xoffset, yoffset;
			public int32 xadvance;

			/** The index to the texture page that holds this glyph. */
			public int32 page = 0;

			public override void ToString(String strBuffer) => ((char16)id).ToString(strBuffer);
		}
	}
}