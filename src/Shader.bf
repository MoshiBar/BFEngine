using System;
using System.IO;
using static GL;

namespace BfEngine
{
	struct Shader
	{
		
		public uint32 shader;

		public this(uint32 program){
			shader = program;
		}

		public static implicit operator uint32(Shader s) => s.shader;

		public void SetColor(int32 location, Color4 color) => SetColor(location, color.r, color.g, color.b, color.a);

		public void SetColor(int32 location, float r, float g, float b) => GL.Uniform3f(location, r, g, b);

		public void SetColor(String name, float r, float g, float b, float a) => GL.Uniform4f(GL.GetUniformLocation(shader, name.CStr()), r, g, b, a);

		public void SetColor(int32 location, float r, float g, float b, float a) => GL.Uniform4f(location, r, g, b, a);

		public void SetMatrix(int32 location, Matrix4 matrix) {
			var matrix;
			GL.UniformMatrix4fv(location, 1,  .TRUE, (float*)&(matrix));
		}

		public void SetFloat(int32 location, float value) => GL.Uniform1f(location, value);

		public void SetVec2(int32 location, Vector2 value)  => GL.Uniform2f(location, value.x, value.y);


		public void UseProgram() => GL.UseProgram(shader);

		public static Shader LoadShader(StringView vertexPath, StringView fragmentPath){
			String vertSource = scope String();
			File.ReadAllText(vertexPath, vertSource);

			String fragSource = scope String();
			File.ReadAllText(fragmentPath, fragSource);

			return Shader.CreateShader(vertSource, fragSource);
		}

		public static Shader CreateShader(StringView vertSource, StringView fragSource){
			//Vertex shader
			uint32 vertex = CompileShader(vertSource, .VERTEX_SHADER);

			//Fragment shader
			uint32 fragment = CompileShader(fragSource, .FRAGMENT_SHADER);

			//Shader program
			uint32 shader = GL.CreateProgram();
			GL.AttachShader(shader, vertex);
			GL.AttachShader(shader, fragment);
			GL.LinkProgram(shader);

			int32 success = 0;
			GL.GetProgramiv(shader, .LINK_STATUS, &success);
			Runtime.Assert(success != 0, scope String()..AppendF("Shader link error {}", success));

			GL.DeleteShader(vertex);
			GL.DeleteShader(fragment);

			return Shader(shader);
		}

		public static uint32 CompileShader(StringView source, ShaderType type)
		{
			uint32 shader = GL.CreateShader(type);
			char8* sourcePtr = source.Ptr;
			int32 sourceLength = (int32)source.Length;
			GL.ShaderSource(shader, 1, &sourcePtr, &sourceLength);
			GL.CompileShader(shader);
			int32 success = 0;
			GL.GetShaderiv(shader, .COMPILE_STATUS, &success);

			if(success == 0)
			{
				int32 bufsize = 0;
				GL.GetShaderiv(shader, .INFO_LOG_LENGTH, &bufsize);
				char8[] buffer = scope char8[bufsize];
				int32 length = 0;
				GL.GetShaderInfoLog(shader, bufsize, &length, buffer.CArray());

				Runtime.Assert(success != 0, scope String(buffer, 0, bufsize));
			}
			return shader;
		}

		public static Shader LoadShader(StringView vertexPath, StringView geometryPath, StringView fragmentPath){
			String vertSource = scope String();
			File.ReadAllText(vertexPath, vertSource);

			String geomSource = scope String();
			File.ReadAllText(geometryPath, geomSource);

			String fragSource = scope String();
			File.ReadAllText(fragmentPath, fragSource);

			return CreateShader(vertSource, geomSource, fragSource);
		}

		public static Shader CreateShader(StringView vertSource, StringView geomSource, StringView fragSource){
			//Vertex shader
			uint32 vertex = CompileShader(vertSource, .VERTEX_SHADER);

			//Vertex shader
			uint32 geometry = CompileShader(geomSource, .GEOMETRY_SHADER);

			//Fragment shader
			uint32 fragment = CompileShader(fragSource, .FRAGMENT_SHADER);


			//Shader program
			uint32 shader = GL.CreateProgram();
			GL.AttachShader(shader, vertex);
			GL.AttachShader(shader, geometry);
			GL.AttachShader(shader, fragment);
			GL.LinkProgram(shader);

			int32 success = 0;
			GL.GetProgramiv(shader, .LINK_STATUS, &success);
			Runtime.Assert(success != 0, scope String()..AppendF("Shader link error"));

			GL.DeleteShader(vertex);
			GL.DeleteShader(geometry);
			GL.DeleteShader(fragment);

			return Shader(shader);
		}

		public enum Builtin{
			Transparent,
			White,
			Text,
			UI,
			Particle
		}

		public static readonly Shader[] defaultshaders = new Shader[5] ~ delete _;

		public static Shader transparent => defaultshaders[(int)Builtin.Transparent];
		public static Shader white => defaultshaders[(int)Builtin.White];
		public static Shader text => defaultshaders[(int)Builtin.Text];
		public static Shader ui => defaultshaders[(int)Builtin.UI];
		public static Shader particle => defaultshaders[(int)Builtin.Particle];

		public static void Load(){
			defaultshaders[(int)Builtin.Transparent] = Shader.LoadShader("Assets/shaders/unlit.vert", "Assets/shaders/unlit.frag");
			defaultshaders[(int)Builtin.White]		 = Shader.LoadShader("Assets/shaders/white.vert", "Assets/shaders/white.frag");
			defaultshaders[(int)Builtin.Text]		 = Shader.LoadShader("Assets/shaders/text.vert", "Assets/shaders/text.geom", "Assets/shaders/text.frag");
			defaultshaders[(int)Builtin.UI]			 = Shader.LoadShader("Assets/shaders/UI.vert", "Assets/shaders/UI.frag");
			defaultshaders[(int)Builtin.Particle]	 = Shader.LoadShader("Assets/shaders/particle.vert", "Assets/shaders/particle.geom", "Assets/shaders/particle.frag");
		}

		
	}
}
