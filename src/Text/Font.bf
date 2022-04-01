using System.IO;
using System;

namespace BfEngine.Text
{
	class Font
	{
		private const int LOG2_PAGE_SIZE = 9;
		private const int PAGE_SIZE = 1 << LOG2_PAGE_SIZE;
		private const int PAGES = 0x10000 / PAGE_SIZE;


		public bool flipped;

		public String name = new String() ~ delete _;

		public Texture[] textures ~ delete _;

		public float padTop, padRight, padBottom, padLeft;
		/** The distance from one line of text to the next. To set this value, use {@link #setLineHeight(float)}. */
		public float lineHeight;
		/** The distance from the top of most uppercase characters to the baseline. Since the drawing position is the cap height of
		 * the first line, the cap height can be used to get the location of the baseline. */
		public float capHeight = 1;
		/** The distance from the cap height to the top of the tallest glyph. */
		public float ascent;
		/** The distance from the bottom of the glyph that extends the lowest to the baseline. This number is negative. */
		public float descent;
 		/** The distance to move down when \n is encountered. */
		public float down;
		/** Multiplier for the line height of blank lines. down * blankLineHeight is used as the distance to move down for a blank
		 * line. */
		public float size;

		public float scaleW, scaleH;

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

		public this (StringView fontFile, bool flip = false) {
			this.flipped = flip;
			this.load(fontFile, flip);
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

		public void load(StringView path, bool flip)
		{
			//TODO: this parser is a nightmare, pls fix

			String buffer = scope String(256);

			StreamReader reader = scope StreamReader(scope FileStream()..Open(path));

			//Info
			reader.ReadLine(buffer);

			name.Append(getVal(buffer, "face"));


			size = Int32.Parse(getVal(buffer, "size"));

			{
				var paddingStrings = getVal(buffer, "padding").Split(',');
				padTop = Int32.Parse(paddingStrings.GetNext());
				padRight = Int32.Parse(paddingStrings.GetNext());
				padBottom = Int32.Parse(paddingStrings.GetNext());
				padLeft = Int32.Parse(paddingStrings.GetNext());
			}
			float padY = padTop + padBottom;

			//Common
			reader.ReadLine(buffer..Clear());
			var common = buffer.Split!(' ');// At most we want the 6th element; i.e. "page=N"
			lineHeight = Int32.Parse(StringView(common[1], "lineHeight=".Length));
			int32 baseLine = Int32.Parse(StringView(common[2], "base=".Length));
			scaleW = float.Parse(StringView(common[3], "scaleW=".Length));
			scaleH = float.Parse(StringView(common[4], "scaleH=".Length));

			int pageCount = 1;
			if (common.Count >= 6 && common[5].StartsWith("pages="))
			{
				pageCount = Math.Max(1, Int.Parse(common[5].Substring("pages=".Length)).Get(1));
			}

			//Pages
			textures = new Texture[pageCount];
			//var imagePaths = scope String[pageCount];

				// Read each page definition.
			for (int p = 0; p < pageCount; p++)
			{
					// Read each "page" info line.
				reader.ReadLine(buffer..Clear());
				var idIndex = buffer.IndexOf("id=") + "id=".Length;
				int32 pageID = int32.Parse(StringView(buffer, idIndex, buffer.IndexOf(' ', idIndex) - idIndex));

				String fileName = scope String();
				StringView(buffer, buffer.IndexOf("file=") + "file=".Length).UnQuoteString(fileName);

				var texturePath = scope String(path.Length + 4);
				Path.GetDirectoryPath(path, texturePath);
				texturePath..Append("/").Append(fileName);
				
				textures[pageID] = Texture.Load(texturePath);
			}
			descent = 0;

			while (true)
			{
				reader.ReadLine(buffer..Clear());
				if (buffer.Length == 0) break;// EOF
				if (buffer.StartsWith("kernings ")) break;// Starting kernings block.
				if (buffer.StartsWith("metrics ")) break;// Starting metrics block.
				if (!buffer.StartsWith("char ")) continue;

				Glyph glyph = new Glyph();

				var tokens = buffer.Split(scope char8[](' ', '='), int32.MaxValue, .RemoveEmptyEntries);

				tokens.MoveNext();
				tokens.MoveNext();
				int32 ch = int32.Parse(tokens.GetNext());
				if (ch <= 0)
					missingGlyph = glyph;
				else if (ch <= uint16.MaxValue)
					setGlyph(ch, glyph);
				else
					continue;
				glyph.id = ch;
				tokens.MoveNext();
				glyph.srcX = int32.Parse(tokens.GetNext());
				tokens.MoveNext();
				glyph.srcY = int32.Parse(tokens.GetNext());
				tokens.MoveNext();
				glyph.width = int32.Parse(tokens.GetNext());
				tokens.MoveNext();
				glyph.height = int32.Parse(tokens.GetNext());
				tokens.MoveNext();
				glyph.xoffset = int32.Parse(tokens.GetNext());
				tokens.MoveNext();
				if (flip)
					glyph.yoffset = int32.Parse(tokens.GetNext());
				else
					glyph.yoffset = -(glyph.height + int32.Parse(tokens.GetNext()).Get());
				tokens.MoveNext();
				glyph.xadvance = int32.Parse(tokens.GetNext());

				// Check for page safely, it could be omitted or invalid.
				if (tokens.HasMore) tokens.MoveNext();
				if (tokens.HasMore)
				{
					glyph.page = int32.Parse(tokens.GetNext());
				}

				if (glyph.width > 0 && glyph.height > 0) descent = Math.Min(baseLine + glyph.yoffset, descent);
			}
			descent += padBottom;

			loop: while (true)
			{

				switch(reader.ReadLine(buffer..Clear())){
				case .Err: break loop;
				case .Ok:
				}

				if (buffer.Length == 0) break;
				if (!buffer.StartsWith("kerning ")) break;

				var tokens = buffer.Split(scope char8[](' ', '='), int32.MaxValue, .RemoveEmptyEntries);

				tokens.MoveNext();
				tokens.MoveNext();
				int first = int.Parse(tokens.GetNext());
				tokens.MoveNext();
				int second = int.Parse(tokens.GetNext());
				if (first < 0 || first > uint16.MaxValue || second < 0 || second > uint16.MaxValue) continue;
				Glyph glyph = getGlyph((char16)first);
				tokens.MoveNext();
				int amount = int.Parse(tokens.GetNext());
				if (glyph != null)
				{// Kernings may exist for glyph pairs not contained in the font.
					glyph.setKerning(second, amount);
				}
			}

			bool hasMetricsOverride = false;
			float overrideAscent = 0;
			float overrideDescent = 0;
			float overrideDown = 0;
			float overrideCapHeight = 0;
			float overrideLineHeight = 0;
			float overrideSpaceXAdvance = 0;
			float overrideXHeight = 0;

				// Metrics override
			if (buffer.StartsWith("metrics "))
			{
				hasMetricsOverride = true;

				var tokens = buffer.Split(scope char8[](' ', '='), int32.MaxValue, .RemoveEmptyEntries);

				tokens.MoveNext();
				tokens.MoveNext();
				overrideAscent = float.Parse(tokens.GetNext());
				tokens.MoveNext();
				overrideDescent = float.Parse(tokens.GetNext());
				tokens.MoveNext();
				overrideDown = float.Parse(tokens.GetNext());
				tokens.MoveNext();
				overrideCapHeight = float.Parse(tokens.GetNext());
				tokens.MoveNext();
				overrideLineHeight = float.Parse(tokens.GetNext());
				tokens.MoveNext();
				overrideSpaceXAdvance = float.Parse(tokens.GetNext());
				tokens.MoveNext();
				overrideXHeight = float.Parse(tokens.GetNext());
			}

			Glyph spaceGlyph = getGlyph(' ');
			if (spaceGlyph == null)
			{
				spaceGlyph = new Glyph();
				spaceGlyph.id = (int32)' ';
				Glyph xadvanceGlyph = getGlyph('l');
				if (xadvanceGlyph == null) xadvanceGlyph = getFirstGlyph();
				spaceGlyph.xadvance = xadvanceGlyph.xadvance;
				setGlyph(' ', spaceGlyph);
			}
			if (spaceGlyph.width == 0)
			{
				spaceGlyph.width = (int32)(padLeft + spaceGlyph.xadvance + padRight);
				spaceGlyph.xoffset = (int32) - padLeft;
			}
			spaceXadvance = spaceGlyph.xadvance;

			Glyph xGlyph = null;
			for (char16 xChar in xChars)
			{
				xGlyph = getGlyph(xChar);
				if (xGlyph != null) break;
			}
			if (xGlyph == null) xGlyph = getFirstGlyph();
			xHeight = xGlyph.height - padY;

			Glyph capGlyph = null;
			for (char16 capChar in capChars)
			{
				capGlyph = getGlyph(capChar);
				if (capGlyph != null) break;
			}
			if (capGlyph == null)
			{
				for (Glyph[] page in this.glyphs)
				{
					if (page == null) continue;
					for (Glyph glyph in page)
					{
						if (glyph == null || glyph.height == 0 || glyph.width == 0) continue;
						capHeight = Math.Max(capHeight, glyph.height);
					}
				}
			} else
				capHeight = capGlyph.height;
			capHeight -= padY;

			ascent = baseLine - capHeight;
			down = -lineHeight;
			if (flip)
			{
				ascent = -ascent;
				down = -down;
			}

			if (hasMetricsOverride)
			{
				this.ascent = overrideAscent;
				this.descent = overrideDescent;
				this.down = overrideDown;
				this.capHeight = overrideCapHeight;
				this.lineHeight = overrideLineHeight;
				this.spaceXadvance = overrideSpaceXAdvance;
				this.xHeight = overrideXHeight;
			}
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
			public int8[][] kerning ~ if(_ != null){
				for(var arr in _) if(arr != null) delete arr;
				delete _;
			};
			public bool fixedWidth;

			/** The index to the texture page that holds this glyph. */
			public int32 page = 0;

			public int32 getKerning (char32 ch) {
				if (kerning != null) {
					var page = kerning[(int)ch >> LOG2_PAGE_SIZE];
					if (page != null) return page[(int)ch & (PAGE_SIZE - 1)];
				}
				return 0;
			}

			public void setKerning (int ch, int value)
			{
				if (kerning == null) kerning = new int8[PAGES][];
				var page = kerning[(int)ch >> LOG2_PAGE_SIZE];
				if (page == null) kerning[(int)ch >> LOG2_PAGE_SIZE] = page = new .[PAGE_SIZE];
				page[(int)ch & (PAGE_SIZE - 1)] = (int8)value;
			}

			public override void ToString(String strBuffer) => ((char16)id).ToString(strBuffer);
		}
	}
}
