using BfEngine;
using SDL2;
namespace BfEngine
{
	class Screen
	{
		public static Vector2Int Resolution = .(960, 540);
		public static float AspectRatio => (float)Resolution.x / (float)Resolution.y;

		private static void Update(){
			int32 x, y;
			SDL.GetWindowSize(Engine.window, out x, out y);
			Resolution = .((int32)x, (int32)y);
		}

	}
}
