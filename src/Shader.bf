using System;
using System.IO;
using System.Threading;
using static GL;

namespace BfEngine
{
	class Shader : IReloadable
	{
		
		public uint32 shader;

		FileSystemWatcher vertwatcher ~ delete _;
		/*FileSystemWatcher geomwatcher ~ delete _;
		FileSystemWatcher fragwatcher ~ delete _;*/
		String[] sourcefiles ~ DeleteContainerAndItems!(_);


		public this(){}
		public this(uint32 program){
			shader = program;
		}

		public static implicit operator uint32(Shader s) => s.shader;

		public static void SetColor(int32 location, Color4 color) => SetColor(location, color.r, color.g, color.b, color.a);

		public static void SetColor(int32 location, float r, float g, float b) => GL.Uniform3f(location, r, g, b);

		public void SetColor(String name, float r, float g, float b, float a) => GL.Uniform4f(GL.GetUniformLocation(shader, name.CStr()), r, g, b, a);

		public static void SetColor(int32 location, float r, float g, float b, float a) => GL.Uniform4f(location, r, g, b, a);

		public static void SetMatrix(int32 location, Matrix4 matrix) {
			var matrix;
			GL.UniformMatrix4fv(location, 1,  .TRUE, (float*)&(matrix));
		}

		public static void SetFloat(int32 location, float value) => GL.Uniform1f(location, value);

		public static void SetVec2(int32 location, Vector2 value)  => GL.Uniform2f(location, value.x, value.y);

		public void BindTexture(uint32 texture, uint unit){
			GL.ActiveTexture(.TEXTURE0 + (uint)unit);
			GL.BindTexture(.TEXTURE_2D, texture);
		}

		public void UseProgram() => GL.UseProgram(shader);

		public void Reload(){
			if(sourcefiles.Count == 3){
				LoadShader(sourcefiles[0], sourcefiles[1], sourcefiles[2]);
			}else if(sourcefiles.Count == 2){
				LoadShader(sourcefiles[0], sourcefiles[1]);
			}else{
				Internal.FatalError("invalid amount of source files");
			}
		}

		public void LoadShader(StringView vertexPath, StringView fragmentPath){
			String vertSource = scope String();
			File.ReadAllText(vertexPath, vertSource);

			String fragSource = scope String();
			File.ReadAllText(fragmentPath, fragSource);

			switch(CreateShader(vertSource, fragSource)){
		case .Ok(let shader):{
				Console.WriteLine($"shader compiled with ID:{shader}");
				if(this.shader != 0) GL.DeleteProgram(this.shader);
				this.shader = shader;

			if(vertwatcher == null){
				sourcefiles = new .[](new .(vertexPath), new .(fragmentPath));
				vertwatcher = new FileSystemWatcher(vertexPath.SubStringToLastIndexOf('/'));
				vertwatcher.OnChanged.Add(new (_) => {
					//can't directly reload shader so we have to defer to main thread
					//this.LoadShader(this.sourcefiles[0], this.sourcefiles[1]);
					Engine.toReload.Add(this);
					}
					);
				vertwatcher.StartRaisingEvents();
			}
			/*if(fragwatcher == null){
				fragwatcher = new FileSystemWatcher(fragmentPath.SubStringToLastIndexOf('/'));
				fragwatcher.OnChanged.Add(new (_) => this.LoadShader(vertexPath, fragmentPath));
				fragwatcher.StartRaisingEvents();
			}*/
			}
		case .Err:{
				Console.WriteLine("error when creating shader");
			}
			}
		}

		public static Result<uint32> CreateShader(StringView vertSource, StringView fragSource){
			uint32 vertex, fragment;
			//Vertex shader
			switch(CompileShader(vertSource, .VERTEX_SHADER))
			{
			case .Ok(let vert): {
				vertex = vert;
				break;
			}
			case .Err(let shader): {
				Console.WriteLine(GetShaderInfoLog(shader, ..scope .("vert: ")));
				return .Err;

				}
			}

			//Fragment shader
			switch(CompileShader(fragSource, .FRAGMENT_SHADER))
			{
			case .Ok(let frag): {
				fragment = frag;
				break;
			}
			case .Err(let shader): {
				Console.WriteLine(GetShaderInfoLog(shader, ..scope .("frag: ")));
				return .Err;

				}
			}

			//Shader program
			var shader = GL.CreateProgram();
			GL.AttachShader(shader, vertex);
			GL.AttachShader(shader, fragment);
			GL.LinkProgram(shader);

			int32 error = 0;
			GL.GetProgramiv(shader, .LINK_STATUS, &error);
			//Runtime.Assert(success != 0, scope String()..AppendF("Shader link error {}", success));

			GL.DeleteShader(vertex);
			GL.DeleteShader(fragment);

			if(error == 0) return .Err;
			return .Ok(shader);
		}

		public static Result<uint32, uint32> CompileShader(StringView source, ShaderType type)
		{
			uint32 shader = GL.CreateShader(type);
			char8* sourcePtr = source.Ptr;
			int32 sourceLength = (int32)source.Length;
			GL.ShaderSource(shader, 1, &sourcePtr, &sourceLength);
			GL.CompileShader(shader);
			int32 success = 0;
			GL.GetShaderiv(shader, .COMPILE_STATUS, &success);
			Console.WriteLine(success);
			if(success == 0)  {
				Console.WriteLine(GetShaderInfoLog(shader, ..scope String()));
				return .Err(shader);
			}
			return shader;
		}
		
		public static void GetShaderInfoLog(uint32 shader, String outString){
			int32 bufsize = 0;
			GL.GetShaderiv(shader, .INFO_LOG_LENGTH, &bufsize);
			char8[] buffer = scope char8[bufsize];
			int32 length = 0;
			GL.GetShaderInfoLog(shader, bufsize, &length, buffer.CArray());

			outString.Append(buffer, 0, length);
		}

		public void LoadShader(StringView vertexPath, StringView geometryPath, StringView fragmentPath){
			String vertSource = scope String();
			File.ReadAllText(vertexPath, vertSource);

			String geomSource = scope String();
			File.ReadAllText(geometryPath, geomSource);

			String fragSource = scope String();
			File.ReadAllText(fragmentPath, fragSource);

			switch(CreateShader(vertSource, geomSource, fragSource)){
			case .Ok(let shader):{
				Console.WriteLine($"shader compiled with ID:{shader}");
				if(this.shader != 0) GL.DeleteProgram(this.shader);
				this.shader = shader;

				if(vertwatcher == null){
					sourcefiles = new .[](new .(vertexPath), new .(geometryPath), new .(fragmentPath));
					vertwatcher = new FileSystemWatcher(vertexPath.SubStringToLastIndexOf('/'));
					vertwatcher.OnChanged.Add(new (_) => Engine.toReload.Add(this));
					vertwatcher.StartRaisingEvents();
				}
				/*if(geomwatcher == null){
					geomwatcher = new FileSystemWatcher(geometryPath.SubStringToLastIndexOf('/'));
					geomwatcher.OnChanged.Add(new (_) => this.LoadShader(vertexPath, geometryPath, fragmentPath));
					geomwatcher.StartRaisingEvents();
				}
				if(fragwatcher == null){
					fragwatcher = new FileSystemWatcher(fragmentPath.SubStringToLastIndexOf('/'));
					fragwatcher.OnChanged.Add(new (_) => this.LoadShader(vertexPath, geometryPath, fragmentPath));
					fragwatcher.StartRaisingEvents();
				}*/
			}
			case .Err:{
				Console.WriteLine($"error when creating shader {vertexPath}, {geometryPath}, {fragmentPath}");
			}
			}
		}

		public static Result<uint32> CreateShader(StringView vertSource, StringView geomSource, StringView fragSource){
			uint32 vertex, geometry, fragment;
			//Vertex shader
			switch(CompileShader(vertSource, .VERTEX_SHADER))
			{
			case .Ok(let vert): {
				vertex = vert;
				break;
			}
			case .Err(let shader): {
				Console.WriteLine(GetShaderInfoLog(shader, ..scope .("vert: ")));
				return .Err;
				
			}
			}

			//Vertex shader
			switch(CompileShader(geomSource, .GEOMETRY_SHADER))
			{
			case .Ok(let geom):{
					geometry = geom;
				break;
			}
			case .Err(let shader): {
				Console.WriteLine(GetShaderInfoLog(shader, ..scope .("geom: ")));
				return .Err;

				}
			}

			//Fragment shader
			switch(CompileShader(fragSource, .FRAGMENT_SHADER))
			{
			case .Ok(let frag): {
				fragment = frag;
				break;
			}
			case .Err(let shader): {
				Console.WriteLine(GetShaderInfoLog(shader, ..scope .("frag: ")));
				return .Err;

				}
			}


			//Shader program
			var shader = GL.CreateProgram();
			GL.AttachShader(shader, vertex);
			GL.AttachShader(shader, geometry);
			GL.AttachShader(shader, fragment);
			GL.LinkProgram(shader);

			int32 success = 0;
			GL.GetProgramiv(shader, .LINK_STATUS, &success);
			//Runtime.Assert(success != 0, scope String()..AppendF("Shader link error"));

			GL.DeleteShader(vertex);
			GL.DeleteShader(geometry);
			GL.DeleteShader(fragment);

			if(success == 0) return .Err;
			return .Ok(shader);
		}

		public enum Builtin{
			Transparent,
			White,
			Text,
			UI,
			Particle
		}

		public static readonly Shader[] defaultshaders = new Shader[5] ~ DeleteContainerAndItems!(_);

		public static Shader transparent => defaultshaders[(int)Builtin.Transparent];
		public static Shader white => defaultshaders[(int)Builtin.White];
		public static Shader text => defaultshaders[(int)Builtin.Text];
		public static Shader ui => defaultshaders[(int)Builtin.UI];
		public static Shader particle => defaultshaders[(int)Builtin.Particle];

		public static void Load(){
			for(int i < defaultshaders.Count) defaultshaders[i] ??= new Shader();
			defaultshaders[(int)Builtin.Transparent].LoadShader("Assets/shaders/unlit.vert", "Assets/shaders/unlit.frag");
			defaultshaders[(int)Builtin.White]		.LoadShader("Assets/shaders/white.vert", "Assets/shaders/white.frag");
			defaultshaders[(int)Builtin.Text]		.LoadShader("Assets/shaders/text.vert", "Assets/shaders/text.geom", "Assets/shaders/text.frag");
			defaultshaders[(int)Builtin.UI]			.LoadShader("Assets/shaders/UI.vert", "Assets/shaders/UI.frag");
			defaultshaders[(int)Builtin.Particle]	.LoadShader("Assets/shaders/particle.vert", "Assets/shaders/particle.geom", "Assets/shaders/particle.frag");
		}

		
	}
}
