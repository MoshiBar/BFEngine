using BfEngine;
using System;
using static Windows.User32;

namespace BfEngine
{
	class Screen
	{
		public static Vector2Int Resolution = .(960, 540);
		public static float AspectRatio => (float)Resolution.x / (float)Resolution.y;
	}
}
