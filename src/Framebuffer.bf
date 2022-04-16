using System;
using static GL;
namespace BfEngine
{
	struct Framebuffer
	{
		public uint32 fbohandle;
		public uint32 depthhandle;
		public uint32 colorhandle;
		public Vector2Int size;

		public this(Vector2Int size){
			this.size = size;

			colorhandle = ?;
			GL.GenTextures(1, &colorhandle);
			GL.BindTexture(.TEXTURE_2D, colorhandle);

			GL.TexImage2D(.TEXTURE_2D, 0, .LUMINANCE8, size.x, size.y, 0, .LUMINANCE, .UNSIGNED_BYTE, null);

			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MIN_FILTER, .LINEAR);
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MAG_FILTER, .LINEAR);
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_WRAP_S, .REPEAT);
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_WRAP_T, .REPEAT);

			depthhandle = ?;
			GL.GenTextures(1, &depthhandle);
			GL.BindTexture(.TEXTURE_2D, depthhandle);

			GL.TexImage2D(.TEXTURE_2D, 0, .DEPTH24_STENCIL8, size.x, size.y, 0, .DEPTH_STENCIL, .UNSIGNED_INT_24_8, null);

			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MIN_FILTER, .NEAREST);
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_MAG_FILTER, .NEAREST);
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_WRAP_S, .REPEAT);
			GL.TexParameteri(.TEXTURE_2D, .TEXTURE_WRAP_T, .REPEAT);

			GL.BindTexture(.TEXTURE_2D, 0);

			fbohandle = ?;
			GL.GenFramebuffers(1, &fbohandle);
			GL.BindFramebuffer(.FRAMEBUFFER, fbohandle);
			GL.FramebufferTexture2D(.FRAMEBUFFER, .DEPTH_STENCIL_ATTACHMENT, .TEXTURE_2D, depthhandle, 0);
			GL.FramebufferTexture2D(.FRAMEBUFFER, .COLOR_ATTACHMENT0, .TEXTURE_2D, colorhandle, 0);

			if(GL.CheckFramebufferStatus(.FRAMEBUFFER) != .FRAMEBUFFER_COMPLETE) Internal.FatalError("borked?");

			GL.BindFramebuffer(.FRAMEBUFFER, 0);
		}

		public void Bind(){
			GL.BindFramebuffer(.FRAMEBUFFER, fbohandle);
			GL.Viewport(0, 0, size.x, size.y);
		}

		public static void BindDefault()
		{
			GL.BindFramebuffer(.FRAMEBUFFER, 0);
			GL.Viewport(0, 0, Screen.Resolution.x, Screen.Resolution.y);
		}

		public void Dispose() mut
		{
			GL.DeleteTextures(1, &depthhandle);
			GL.DeleteTextures(1, &colorhandle);
			GL.DeleteFramebuffers(1, &fbohandle);
		}
	}
}