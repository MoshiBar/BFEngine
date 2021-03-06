using BfEngine;
using System;
using System.Collections;
using System.Diagnostics;
using static BfEngine.LodePNG;
using static GL;
namespace BfEngine
{
	/*static
	{
		public static Dictionary<int, (Texture tex, Vector2 size)> Texture.textures = new .() ~ delete _;
	}*/

	struct Texture : IHashable, IDisposable
	{
		public static Texture white;

		public uint32 ID;

		public static void Init()
		{
			white = Texture.LoadRaw(scope uint8[](255, 255, 255, 255).Ptr, .(1, 1), .RGBA /*, 0*/);
		}


		public this(uint32 ID) => this.ID = ID;

		public static Texture Load(StringView fileName) => Load(fileName, var size, .RGBA);

		public static Texture Load(StringView fileName, out Vector2 size, LodePNG.LodePNGColorType colortype, bool interpolate = true)
		{
			/*int hash = fileName.GetHashCode();
			{
			if(textures.TryGetValue(hash, var tex)) {
				size = tex.size;
				return tex.tex;
			}
			}*/
			uint8* data = default;
			unsigned width = default, height = default;
			var result = LodePNG.lodepng_decode_file(&data, &width, &height, fileName.ToScopeCStr!(), colortype, 8);

			if (result != 0) Internal.FatalError(scope $"{result}");

			size = .(width, height);

			GL.PixelFormat pformat;

			switch (colortype) {

			case .RGB: pformat = .RGB; break;
			case .Grayscale: pformat = .LUMINANCE; break;
			case .GrayAlpha: pformat = .LUMINANCE_ALPHA; break;

			case .RGBA: pformat = .RGBA; break;
			case .Palette: pformat = .LUMINANCE;
			default: pformat = .RGBA; break;
			}

			var tex = LoadRaw(data, size, pformat, /*hash,*/ interpolate);
			delete data;
			return tex;
		}

		public static Texture Load(Span<uint8> mem, LodePNG.LodePNGColorType colortype)
		{
			uint8* data = default;
			unsigned width = default, height = default;
			/*var result =*/ LodePNG.lodepng_decode_memory(&data, &width, &height, mem.Ptr, (.)mem.Length, .RGBA, 8);

			GL.PixelFormat pformat;

			switch (colortype) {

			case .RGB: pformat = .RGB; break;
			case .Grayscale: pformat = .RED; break;

			case .RGBA: pformat = .RGBA; break;
			default: pformat = .RGBA; break;
			}

			return LoadRaw(data, .(width, height), pformat /*, *(int*)&data[0]*/);
		}

		/*static int GetHashCode(uint8* ptr, int length)
		{
			int charsLeft = length;
			int hash = 0;
			uint8* curPtr = ptr;
			let intSize = sizeof(int);
			while (charsLeft >= intSize)
			{
				hash = (hash ^ *((int*)curPtr)) + (hash * 16777619);
				charsLeft -= intSize;
				curPtr += intSize;
			}

			while (charsLeft > 1)
			{
				hash = ((hash ^ (int) * curPtr) << 5) - hash;
				charsLeft--;
				curPtr++;
			}

			return hash;
		}*/

		public static Texture LoadRaw(uint8* pixels, Vector2 size, PixelFormat pixelformat, /*int hash = 0,*/ bool interpolate = true, bool clamp = false)
		{
			int pitch;
			switch (pixelformat) {
			case .RGB: pitch = 3;
			case .RGBA: pitch = 4;
			case .RED_INTEGER: pitch = 1;
			case .LUMINANCE: pitch = 1;
			case .LUMINANCE_ALPHA: pitch = 2;
			default: pitch = 1; break;
			}

			/*var hash;
			if(hash == 0){
				hash = GetHashCode(pixels, (int)size.x * (int)size.y * pitch);
			}*/
			uint32 texture = default;

			GL.ActiveTexture(.TEXTURE0);
			GL.GenTextures(1, &texture);
			GL.BindTexture(.TEXTURE_2D, texture);


			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_WRAP_S, clamp ? .CLAMP_TO_BORDER : .REPEAT);
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_WRAP_T, clamp ? .CLAMP_TO_BORDER : .REPEAT);

			/*GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MIN_FILTER, (interpolate ? .LINEAR_MIPMAP_LINEAR : .NEAREST_MIPMAP_LINEAR));
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MAG_FILTER, (interpolate ? .LINEAR_MIPMAP_LINEAR : .NEAREST_MIPMAP_LINEAR));*/

			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MIN_FILTER, (interpolate ? .LINEAR : .NEAREST));
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MAG_FILTER, (interpolate ? .LINEAR : .NEAREST));


			InternalFormat internalformat = (.)pixelformat;


			GL.TexImage2D(.TEXTURE_2D, 0, internalformat, (int32)size.x, (int32)size.y, 0, pixelformat, .UNSIGNED_BYTE, pixels);

			//GL.GenerateMipmap(.TEXTURE_2D);

			/*if(hash != 0)
				textures.Add(hash, (texture, size));*/

			return texture;
		}

		/*public static Texture LoadArrayRaw(uint8*[] pixels, Vector2Int size, PixelFormat pixelformat, int hash = 0, bool interpolate = true, bool clamp = false)
		{
			int pitch;
			switch (pixelformat) {
			case .RGB: pitch = 3;
			case .RGBA: pitch = 4;
			case .RED_INTEGER: pitch = 1;
			case .LUMINANCE: pitch = 1;
			case .LUMINANCE_ALPHA: pitch = 2;
			default: pitch = 1; break;
			}

			/*var hash;
			if(hash == 0){
				hash = GetHashCode(pixels, (int)size.x * (int)size.y * pitch);
			}*/
			uint32 texture = default;

			GL.ActiveTexture(.TEXTURE0);
			GL.GenTextures(1, &texture);
			GL.BindTexture(.TEXTURE_2D_ARRAY, texture);



			GL.TexParameteri(.TEXTURE_2D_ARRAY, .TEXTURE_WRAP_S, clamp ? .CLAMP_TO_BORDER : .REPEAT);
			GL.TexParameteri(.TEXTURE_2D_ARRAY, .TEXTURE_WRAP_T, clamp ? .CLAMP_TO_BORDER : .REPEAT);

			/*GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MIN_FILTER, (interpolate ? .LINEAR_MIPMAP_LINEAR : .NEAREST_MIPMAP_LINEAR));
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MAG_FILTER, (interpolate ? .LINEAR_MIPMAP_LINEAR : .NEAREST_MIPMAP_LINEAR));*/

			GL.TexParameteri(.TEXTURE_2D_ARRAY, .TEXTURE_MIN_FILTER, (interpolate ? .LINEAR : .NEAREST));
			GL.TexParameteri(.TEXTURE_2D_ARRAY, .TEXTURE_MAG_FILTER, (interpolate ? .LINEAR : .NEAREST));


			//InternalFormat internalformat = (.)pixelformat;

			GL.TexStorage3D(.TEXTURE_2D_ARRAY, 0, .LUMINANCE8, size.x, size.y, (.)pixels.Count);
			for (int32 i < (.)pixels.Count)
				GL.TexSubImage3D(.TEXTURE_2D, 0, 0, 0, i, size.x, size.y, 0, pixelformat, .UNSIGNED_BYTE, pixels[i]);

			//GL.GenerateMipmap(.TEXTURE_2D);

			/*if(hash != 0)
				textures.Add(hash, (texture, size));*/

			return texture;
		}*/

		public void Bind(uint unit)
		{
			GL.ActiveTexture(.TEXTURE0 + (uint)unit);
			GL.BindTexture(.TEXTURE_2D, this.ID);
		}

		public static void FreeTexture(Texture t)
		{
#unwarn
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

		[AllowDuplicates]
		public enum TextureOptions
		{
			Repeat = 0b00,
			MirrorRepeat = 0b01,
			ClampToBorder = 0b10,
			ClampToEdge = 0b11,

			WrapMask = ClampToEdge,

			Linear = 0 << 2,
			Nearest = 1 << 2,

			FilterMask = Nearest | Linear,
		}

		public void Dispose() mut
		{
			GL.DeleteTextures(1, &this.ID);
		}
	}
}
