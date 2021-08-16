using System;
using System.Collections;
using BfEngine;
using static System.String;

namespace BfEngine
{
	class Text
	{
		public static Font defaultFont ~ delete _;

		public Font font = defaultFont;

		public static void Init()
		{
			//defaultFont = new .("Assets/futura.fnt");
			defaultFont = new .("Assets/fonts/Segoe UI.fnt");
		}

		private uint32 VAO, VBO, texture, count, maxCount;

		public float scale = 1;

		public Vector2 bounds;

		public this()
		{
			GL.GenVertexArrays(1, &VAO);
			GL.GenBuffers(1, &VBO);

			GL.BindVertexArray(VAO);

			GL.BindBuffer(.ARRAY_BUFFER, VBO);
			GL.EnableVertexAttribArray(0);
			GL.EnableVertexAttribArray(1);
			GL.EnableVertexAttribArray(2);
			GL.VertexAttribPointer(0, 4, .FLOAT, .FALSE, strideof(GGlyph), (void*)0);//color
			GL.VertexAttribPointer(1, 4, .FLOAT, .FALSE, strideof(GGlyph), (void*)16);//rect
			GL.VertexAttribPointer(2, 4, .FLOAT, .FALSE, strideof(GGlyph), (void*)32);//uvrect


			GL.BindVertexArray(0);
		}


		[CRepr]
		public struct GGlyph
		{
			public Color4 glyphColor;
			public Vector2 position;
			public Vector2 size;
			public Vector2 UVpos;
			public Vector2 UVsize;
		}

		public void GenerateTextBuffer(StringView Text, float width, TextOptions options = .Default, function void (int index, ref GGlyph glyph) postProcess = null)
		{
			float scale = this.scale;
			/*List<Vector3> positions = scope .(Text.Length * 4);
			List<Vector2> UVs = scope .(Text.Length * 4);
			List<uint32> indices = scope .(Text.Length * 6);*/

			List<GGlyph> glyphs = new .(Text.Length);
			defer delete glyphs;

			Color4 color = .white;

			Vector2 cursor = .(0, 0);

			//uint32 index = 0;
			

			bool escapeNextChar = false;
			char32 previouschar = default;
			int newLineIndex = 0;

			float maxwidth = 0;

			mixin NewLine()
			{
				if (options.HasFlag(.Center))
				{
					float offset = (glyphs[newLineIndex].position.x - cursor.x) / 2;
					for (int i = newLineIndex; i < glyphs.Count; i++)
					{
						glyphs[i].position.x += offset;
					}
				}
				else if (options.HasFlag(.RightAlign))
				{
					float offset = (glyphs[newLineIndex].position.x - cursor.x);
					for (int i = newLineIndex; i < glyphs.Count; i++)
					{
						glyphs[i].position.x += offset;
					}
				}
				newLineIndex = glyphs.Count;

				maxwidth = Math.Max(maxwidth, cursor.x);
				cursor.x = 0;
				cursor.y += font.down * scale;
			}

			var textEnumerator = Text.DecodedChars;

			int rewindIndex = 0;
			var lastBreakablePoint = Text.DecodedChars;

			for (char32 character in textEnumerator)
			{
				if(cursor.x > width){
					//potentially rewind and split on a space
					if(rewindIndex > newLineIndex){
						textEnumerator = lastBreakablePoint;
						glyphs.Count = rewindIndex;
					}

					//newline
					NewLine!();
				}
				else if (character == '\r' || character == '\n')
				{
					//newline
					NewLine!();
				}
				else if (character == ' ')
				{
					//space
					cursor.x += font.spaceXadvance * scale;

					rewindIndex = glyphs.Count;
					lastBreakablePoint = textEnumerator;
				}
				else
				{
					if (!escapeNextChar && character == '<')
					{
						var tagEnumerator = textEnumerator;//creates a copy of the enumerator
						var (name, value) = GetToken(ref tagEnumerator);

						if(name == default) break;

						//ifelseifelse bad... maybe i should fix it...
						if (name.Equals("alpha", true))
						{
							switch (float.Parse(value)) {
							case .Ok(var a): color.a = a;
							default: name = default; //reject token
							}
						}
						else if (name.Equals("color", true))
						{
							switch (Color4.Parse(value)) {
							case .Ok(var c): color = c;
							default: name = default; //reject token
							}
						}
						else if (name.Equals("size", true))
						{
							if (value.EndsWith('%')) {
								switch(float.Parse(value.Substring(0, value.Length - 1))){
								case .Ok(var s): scale = s / 100f * this.scale;
								default: name = default; //reject token
								}
							}
							else {
								switch(float.Parse(value)){
								case .Ok(var s): scale = s * this.scale;
								default: name = default; //reject token
								}
							}
						}
						else name = default;

						if (name != default)
						{
							textEnumerator = tagEnumerator;
							continue;
						}
					}
					var glyph = font.getGlyph(character) ?? font.missingGlyph;

					glyphs.Add(GGlyph()
						{
							glyphColor = color.PremulAlpha(),
							position = cursor + .(glyph.xoffset, glyph.yoffset) * scale,
							size = .(glyph.width, glyph.height) * scale,
							UVpos = .(glyph.srcX, glyph.srcY),
							UVsize = .(glyph.width, glyph.height)
						});

					cursor.x += glyph.xadvance * scale;
					var newEnumerator = textEnumerator;
					if (newEnumerator.MoveNext())
					{
						cursor.x += glyph.getKerning(newEnumerator.Current) * scale;
					}
				}

				escapeNextChar = character == '\\' && previouschar != '\\';

				previouschar = character;
			}

			NewLine!();

			count = (uint32)glyphs.Count;

			if(postProcess != null)
			for(int i < count)
			{
				postProcess(i, ref glyphs[i]);
			}

			/*if (count > maxCount)
			{*/
				maxCount = count;
			
				GL.BindBuffer(.ARRAY_BUFFER, VBO);
				GL.BufferData(.ARRAY_BUFFER, (.)maxCount * strideof(GGlyph), glyphs.Ptr, .DYNAMIC_DRAW);
			/*}
			else
			{
				GL.BindBuffer(.ARRAY_BUFFER, VBO);
				GL.BufferSubData(.ARRAY_BUFFER, 0, maxCount * strideof(GGlyph), glyphs.Ptr);
			}*/

			/*model.SetVertices(positions, .DYNAMIC_DRAW);
			model.SetUVs(UVs, .DYNAMIC_DRAW);
			model.SetTriangles(indices, .DYNAMIC_DRAW);*/

			texture = font.textures[0];

			bounds = .(maxwidth, -cursor.y);
		}

		public (StringView key, StringView value) GetToken(ref UTF8Enumerator enumerator)
		{
			char8* firstptr = &enumerator.[Friend]mPtr[enumerator.[Friend]mNextIndex];

			char32 previouschar = default;
			bool escapeNextChar = false;

			for (char32 character in enumerator)
			{
				if (!escapeNextChar && character == '>')
				{
					var token = StringView(firstptr, &enumerator.[Friend]mPtr[enumerator.[Friend]mNextIndex] - firstptr - 1);

					int equalsIndex = token.IndexOf('=');
					if(equalsIndex < 0) return default;

					var key = token.Substring(0, equalsIndex)..Trim();
					var value = token.Substring(equalsIndex + 1)..Trim();

					return (key, value);
				}

				escapeNextChar = character == '\\' && previouschar != '\\';

				previouschar = character;
			}

			return default;
		}


		public void Draw(Matrix4 modelView, Matrix4 projection/*, Color4 color = .white*/)
		{
			var shader = Shader.text;

			GL.UseProgram(shader);

			shader.SetMatrix(0, modelView);// transform
			shader.SetMatrix(1, projection);// projectionMatrix
			shader.SetVec2(2, .(font.scaleW, font.scaleH));
			//shader.SetFloat(2, spriteSize);


			GL.ActiveTexture(.TEXTURE0);
			GL.BindTexture(.TEXTURE_2D, texture);


			//shader.SetColor(3, .white);//color

			GL.BindVertexArray(VAO);
			GL.DrawArrays(.POINTS, 0, (.)count);
			//GL.DrawElements(.TRIANGLES, IndicesCount, .UNSIGNED_INT, (void*)0);
			GL.BindVertexArray(0);
		}


		public enum TextOptions
		{
			Default = 0,
			Center = 1,
			RightAlign = 2,
		}
	}
}
