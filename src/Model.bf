using System;
using BfEngine;
using System.Collections;
using static GL;

namespace BfEngine
{
	class Model
	{
		/*HARDCODED TEST STUFF*/
		public static Color4[] testcolors = new .[](
			Color4.white,
			Color4.white,
			Color4.white,
			Color4.white
			) ~ delete _;
		public static Vector3[] testverts = new .[](
			.(-1, -1, 0),
			.(-1, 1, 0),
			.(1, 1, 0),
			.(1, -1, 0)
			) ~ delete _;
		public static Vector2[] testuvs = new .[](
			.(0, 1),
			.(0, 0),
			.(1, 0),
			.(1, 1)
			) ~ delete _;
		public static uint32[] testindices = new .[](
			0, 2, 1,
			0, 3, 2
			) ~ delete _;
		/*---------------*/

		uint32 VAO, VBO, TBO, CBO, EBO;
		uint32 IndicesCount;
		uint32 MaxIndicesCount;
		uint32 elementcount;

		public this()
		{
			GL.GenVertexArrays(1, &VAO);
			GL.GenBuffers(1, &VBO);
			GL.GenBuffers(1, &TBO);
			GL.GenBuffers(1, &EBO);
			GL.GenBuffers(1, &CBO);

			GL.BindVertexArray(VAO);

			GL.BindBuffer(.ARRAY_BUFFER, VBO);// vertex positions
			GL.EnableVertexAttribArray(0);
			GL.VertexAttribPointer(0, 3, .FLOAT, .FALSE, sizeof(Vector3), (void*)0);
			//GL.BufferData(.ARRAY_BUFFER, testverts.Count * sizeof(Vector3), testverts.CArray(), .DYNAMIC_DRAW);
			// vertex texture coords

			GL.BindBuffer(.ARRAY_BUFFER, TBO);// texture coordinates
			GL.EnableVertexAttribArray(1);
			GL.VertexAttribPointer(1, 2, .FLOAT, .FALSE, sizeof(Vector2), (void*)0);
			//GL.BufferData(.ARRAY_BUFFER, testuvs.Count * sizeof(Vector2), testuvs.CArray(), .DYNAMIC_DRAW);

			GL.BindBuffer(.ARRAY_BUFFER, CBO);// colors
			GL.EnableVertexAttribArray(2);
			GL.VertexAttribPointer(2, 4, .FLOAT, .FALSE, sizeof(Color4), (void*)0);
			//GL.BufferData(.ARRAY_BUFFER, testuvs.Count * sizeof(Vector2), testuvs.CArray(), .DYNAMIC_DRAW);

			GL.BindBuffer(.ELEMENT_ARRAY_BUFFER, EBO);
			//GL.BufferData(.ELEMENT_ARRAY_BUFFER, testindices.Count * sizeof(uint32), testindices.CArray(), .DYNAMIC_DRAW);
			//IndicesCount = testindices.Count;
			GL.BindVertexArray(0);
		}

		public void SetVertices(Span<Vector3> vertices, BufferUsageARB usage) => SetVertices(vertices.Ptr, vertices.Length, usage);
		public void SetVertices(Vector3* vertices, int verticesCount, BufferUsageARB usage)
		{
			GL.BindBuffer(.ARRAY_BUFFER, VBO);
			GL.BufferData(.ARRAY_BUFFER, (int32)verticesCount * sizeof(Vector3), vertices, usage);
		}

		public void SetUVs(Span<Vector2> UVs, BufferUsageARB usage) => SetUVs(UVs.Ptr, UVs.Length, usage);
		public void SetUVs(Vector2* UVs, int uvsCount, BufferUsageARB usage)
		{
			GL.BindBuffer(.ARRAY_BUFFER, TBO);
			GL.BufferData(.ARRAY_BUFFER, (int32)uvsCount * sizeof(Vector2), UVs, usage);
		}

		public void SetColors(Span<Color4> Colors, BufferUsageARB usage) => SetColors(Colors.Ptr, Colors.Length, usage);
		public void SetColors(Color4* Colors, int colorsCount, BufferUsageARB usage)
		{
			GL.BindBuffer(.ARRAY_BUFFER, CBO);
			GL.BufferData(.ARRAY_BUFFER, (.)colorsCount * sizeof(Color4), Colors, usage);
			if (colorsCount > elementcount)
			{
				GL.BufferData(.ARRAY_BUFFER, (.)colorsCount * sizeof(Color4), Colors, usage);
				elementcount = (uint32)colorsCount;
			}
			else GL.BufferSubData(.ARRAY_BUFFER, 0, (.)colorsCount * sizeof(uint32), Colors);
		}

		public Color4 color
		{
			set
			{
				var colorspan = scope Color4[elementcount];
				for (int i < elementcount) colorspan[i] = value;
				SetColors(colorspan, .DYNAMIC_DRAW);
			}
		}

		public void SetTriangles(Span<uint32> indices, BufferUsageARB usage) => SetTriangles(indices.Ptr, (uint32)indices.Length, usage);
		public void SetTriangles(uint32* indices, uint32 indicesCount, BufferUsageARB usage)
		{
			GL.BindBuffer(.ELEMENT_ARRAY_BUFFER, EBO);
			if (indicesCount > MaxIndicesCount)
			{
				GL.BufferData(.ELEMENT_ARRAY_BUFFER, (.)indicesCount * sizeof(uint32), indices, usage);
				MaxIndicesCount = indicesCount;
			}
			else GL.BufferSubData(.ELEMENT_ARRAY_BUFFER, 0, (.)indicesCount * sizeof(uint32), indices);
			IndicesCount = indicesCount;
		}

		public void Draw()
		{
			GL.BindVertexArray(VAO);

			GL.DrawElements(.TRIANGLES, (.)IndicesCount, .UNSIGNED_INT, (void*)0);
		}

		public static Model CreateRect(Model model)
		{
			model.SetVertices(testverts, .DYNAMIC_DRAW);
			model.SetUVs(testuvs, .DYNAMIC_DRAW);
			model.SetTriangles(testindices, .DYNAMIC_DRAW);
			model.SetColors(testcolors, .DYNAMIC_DRAW);
			return model;
		}

		public ~this()
		{
			GL.DeleteBuffers(1, &VBO);
			GL.DeleteBuffers(1, &TBO);
			GL.DeleteBuffers(1, &EBO);
			GL.DeleteBuffers(1, &CBO);
			GL.DeleteVertexArrays(1, &VAO);
		}
	}
}
