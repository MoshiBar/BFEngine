using System;
using System.Collections;
using System.Text;
using ImGui;

namespace BfEngine
{
	//[UnderlyingArray(typeof(int32), 2, true)]
	[CRepr, VectorDebug(.S32, 2)]
	public struct Vector2Int
	{
		typealias int_size = int32;

		public int_size x;
		public int_size y;

		public float Length
		{
			get
			{
				return (float)Math.Sqrt(x * x + y * y);
			}
		}

		public float LengthSquared
		{
			get
			{
				return x * x + y * y;
			}
		}

		public float Angle
		{
			get
			{
				return Math.Atan2(y, x);
			}
		}

		public this(int_size x, int_size y)
		{
			this.x = x;
			this.y = y;
		}

		public static void DistanceSquared(Vector2Int value1, Vector2Int value2, out float result)
		{
			result = (value1.x - value2.x) * (value1.x - value2.x) +
				(value1.y - value2.y) * (value1.y - value2.y);
		}

		public static float Distance(Vector2Int vector1, Vector2Int Vector2Int)
		{
			float result;
			DistanceSquared(vector1, Vector2Int, out result);
			return (float)Math.Sqrt(result);
		}

		public static Vector2Int Add(Vector2Int vec1, Vector2Int vec2)
		{
			return Vector2Int(vec1.x + vec2.x, vec1.y + vec2.y);
		}

		public static Vector2Int Subtract(Vector2Int vec1, Vector2Int vec2)
		{
			return Vector2Int(vec1.x - vec2.x, vec1.y - vec2.y);
		}

		public static float Dot(Vector2Int vec1, Vector2Int vec2)
		{
			return vec1.x * vec2.x + vec1.y * vec2.y;
		}

		public static Vector2Int operator+(Vector2Int vec1, Vector2Int vec2)
		{
			return Vector2Int(vec1.x + vec2.x, vec1.y + vec2.y);
		}

		public static Vector2Int operator-(Vector2Int vec1, Vector2Int vec2)
		{
			return Vector2Int(vec1.x - vec2.x, vec1.y - vec2.y);
		}

		public static Vector2Int operator*(Vector2Int vec1, int_size factor)
		{
			return Vector2Int(vec1.x * factor, vec1.y * factor);
		}

		public static Vector2Int operator/(Vector2Int vec1, int_size factor)
		{
			return Vector2Int(vec1.x / factor, vec1.y / factor);
		}

		public static implicit operator Vector2(Vector2Int v) => .(v.x, v.y);

		public static implicit operator Vector3(Vector2Int v) => .(v.x, v.y, 0);

		public override void ToString(String buffer){
			buffer.AppendF($"({x}, {y})");
		}

		public Self xx => .(x, x);
		public Self xy => .(x, y);
		public Self yy => .(y, y);
		public Self yx => .(y, x);

		public Self _xx => .(-x, x);
		public Self _xy => .(-x, y);
		public Self _yy => .(-y, y);
		public Self _yx => .(-y, x);

		public Self x_x => .(x, -x);
		public Self x_y => .(x, -y);
		public Self y_y => .(y, -y);
		public Self y_x => .(y, -x);

		public Self _x_x => .(-x, -x);
		public Self _x_y => .(-x, -y);
		public Self _y_y => .(-y, -y);
		public Self _y_x => .(-y, -x);

		public Self Abs => .(Math.Abs(x), Math.Abs(y));
		public Self Abs() => Abs;
	}
}
