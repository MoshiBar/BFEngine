using BfEngine;
using System;

namespace BfEngine
{
	class Screen
	{
		public static Vector2Int Resolution = .(960, 540);
		public static float AspectRatio => (float)Resolution.x / (float)Resolution.y;
	}
}
