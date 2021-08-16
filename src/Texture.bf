using BfEngine;
using SDL2;
using System;
using System.Collections;
using System.Diagnostics;
using static GL;
namespace BfEngine
{
	static
	{
		public static Dictionary<int, (Texture tex, Vector2 size)> Texture.textures = new .() ~ delete _;
	}

	struct Texture : IHashable
	{
		public static Texture white;

		public uint32 ID;

		public static void Init(){
			white = Texture.LoadRaw(scope uint32[]((.)-1), .(1, 1), .RGBA, 0);
		}


		public this(uint32 ID) => this.ID = ID;

		public static Texture Load(StringView fileName) => Load(fileName, var size);

		public static Texture Load(StringView fileName, out Vector2 size){
			int hash = fileName.GetHashCode();

			if(textures.TryGetValue(hash, var tex)){
				size = tex.size;
				return tex.tex;
			}

			var surface = SDLImage.Load(fileName.ToScopeCStr!());

			Debug.Assert(surface != null, scope $"Texture loading failed. Is your file name correct? \"{fileName}\"");

			size = .(surface.w, surface.h);

			return LoadFromSurface(surface, hash);
		}

		public static Texture Load(Span<uint8> mem){
			//int hash = mem.Length.GetHashCode();

			//if(textures.TryGetValue(hash, var tex)) return tex;

			var rwops = SDL.RWFromMem(mem.Ptr, (int32)mem.Length);

			var surface = SDLImage.Load_RW(rwops, 1);

			return LoadFromSurface(surface, 0, true);
		}

		public static Texture LoadFromSurface(SDL.Surface* surface, int hash, bool interpolate = true, bool freesurface = true){
			var surface;
			
			//Console.WriteLine(surface.format.format);
			if(surface.format.format == SDL.PIXELFORMAT_INDEX8){
				SDL.PixelFormat* targetformat = SDL.AllocFormat(SDL.PIXELFORMAT_ABGR8888);
				SDL.Surface * newsurface = SDL.ConvertSurface(surface, targetformat, 0);
				SDL.FreeSurface(surface);
				surface = newsurface;
				SDL.FreeFormat(targetformat);
			}
			InternalFormat internalformat;
			PixelFormat pixelformat;

			switch(surface.format.format){
			case SDL.PIXELFORMAT_RGB24: {
				internalformat = .RGB;
				pixelformat = .RGB;
			}
			default: {
				internalformat = .RGBA;
				pixelformat = .RGBA;
				}
			}

			/*uint32 texture = default;

			GL.ActiveTexture(.TEXTURE0);
			GL.GenTextures(1, &texture);
			GL.BindTexture(.TEXTURE_2D, texture);

			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_WRAP_S, /*.CLAMP_TO_BORDER*/.REPEAT);	
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_WRAP_T, /*.CLAMP_TO_BORDER*/.REPEAT);

			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MIN_FILTER, (interpolate ? .LINEAR : .NEAREST));
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MAG_FILTER, (interpolate ? .LINEAR : .NEAREST));

			//GL.GenerateMipmap(.TEXTURE_2D);


			GL.TexImage2D(.TEXTURE_2D, 0, internalformat, surface.w, surface.h, 0, pixelformat, .UNSIGNED_BYTE, surface.pixels);
			//SDL.FreeSurface(surface);
			if(hash != 0)
				textures.Add(hash, (texture, .(surface.w, surface.h)));*/



			var texture = LoadRaw(.((.)surface.pixels, surface.w * surface.h), .(surface.w, surface.h), pixelformat, hash, interpolate);

			if(freesurface) SDL.FreeSurface(surface);

			return texture;
		}




		public static Texture LoadRaw(Span<uint32> pixels, Vector2 size, PixelFormat pixelformat, int hash, bool interpolate = true, bool clamp = false){
			uint32 texture = default;

			GL.ActiveTexture(.TEXTURE0);
			GL.GenTextures(1, &texture);
			GL.BindTexture(.TEXTURE_2D, texture);


			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_WRAP_S, clamp ? .CLAMP_TO_BORDER : .REPEAT);	
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_WRAP_T, clamp ? .CLAMP_TO_BORDER : .REPEAT);

			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MIN_FILTER, (interpolate ? .LINEAR_MIPMAP_LINEAR : .NEAREST_MIPMAP_LINEAR));
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MAG_FILTER, (interpolate ? .LINEAR_MIPMAP_LINEAR : .NEAREST_MIPMAP_LINEAR));

			


			InternalFormat internalformat = (.)pixelformat;


			GL.TexImage2D(.TEXTURE_2D, 0, internalformat, (int32)size.x, (int32)size.y, 0, pixelformat, .UNSIGNED_BYTE, pixels.Ptr);

			GL.GenerateMipmap(.TEXTURE_2D);

			if(hash != 0)
				textures.Add(hash, (texture, size));

			return texture;
		}



		public static void FreeTexture(Texture t){
			GL.DeleteTextures(1, (.)&t);
		}

		public void Free() => FreeTexture(this);

		public static implicit operator uint32(Texture texture) => texture.ID;
		public static implicit operator uint(Texture texture) => texture.ID;
		public static implicit operator Texture(uint32 ID) => Texture(ID);

		public int GetHashCode()
		{
			return ID.GetHashCode();
		}

		public enum TextureOptions{
			Repeat = 0b00,
			MirrorRepeat = 0b01,
			ClampToBorder = 0b10,
			ClampToEdge = 0b11,

			WrapMask = ClampToEdge,

			Linear = 0 << 2,
			Nearest = 1 << 2,

			FilterMask = Nearest | Linear,
		}
	}
}
