using BfEngine;
using System;

namespace BfEngine
{
	class Camera
	{
		/*PROJECTION MATIX*/
		const float near = 0.1f, far = 1000;
		public static float FOV = 90;
		public static Matrix4 ProjectionMatrix;
		public static Matrix4 OrthoMatrix;
		public static Matrix4 ScreenSpaceMatrix;

		static void Update()
		{
		    GL.Viewport(0, 0, Screen.Resolution.x, Screen.Resolution.y);

			ProjectionMatrix = Matrix4.CreatePerspectiveFieldOfView(FOV * Math.PI_f / 180, Screen.AspectRatio, near, far);

			OrthoMatrix = Matrix4.CreateOrtho(-Screen.AspectRatio, Screen.AspectRatio, -1, 1, -1, 1);

			ScreenSpaceMatrix = Matrix4.CreateOrtho(0, Screen.Resolution.x, -Screen.Resolution.y, 0, -1, 1);
		}
	}
}
