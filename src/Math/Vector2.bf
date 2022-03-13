using System;
using System.Collections;
using System.Text;
using System.Numerics;
using ImGui;

namespace BfEngine
{
	//[CRepr]
	//[UnderlyingArray(typeof(float), 2, true)]
	[Reflect, VectorDebug(.Float, 2)]
	public struct Vector2
	{

		public float x;
		public float y;

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

		[Inline]
		public this(float value)
		{
			this.x = value;
			this.y = value;
		}

		[Inline]
		public this(float x, float y)
		{
			this.x = x;
			this.y = y;
		}

		public const Self zero = default;
		public const Self one = .(1, 1);
		public const Self unitX = .(1f, 0f);
		public const Self unitY = .(0f, 1f);
		public const Self up = .(0f, 1f);
		public const Self down = .(0f, -1f);
		public const Self right = .(1f, 0f);
		public const Self left = .(-1f, 0f);
		

		public static void DistanceSquared(Vector2 value1, Vector2 value2, out float result)
		{
			result = (value1.x - value2.x) * (value1.x - value2.x) +
				(value1.y - value2.y) * (value1.y - value2.y);
		}

		public static float Distance(Vector2 vector1, Vector2 vector2)
		{
			float result;
			DistanceSquared(vector1, vector2, out result);
			return (float)Math.Sqrt(result);
		}

		public static Vector2 Add(Vector2 vec1, Vector2 vec2)
		{
			return Vector2(vec1.x + vec2.x, vec1.y + vec2.y);
		}

		public static Vector2 Subtract(Vector2 vec1, Vector2 vec2)
		{
			return Vector2(vec1.x - vec2.x, vec1.y - vec2.y);
		}

		public static float Dot(Vector2 vec1, Vector2 vec2)
		{
			return vec1.x * vec2.x + vec1.y * vec2.y;
		}

		public static Vector2 FromAngle(float angle, float length = 1.0f)
		{
			return Vector2((float)Math.Cos(angle) * length, (float)Math.Sin(angle) * length);
		}

		[Inline]
		public static Vector2 Rotate(Vector2 vector, float angle)
		{
			float sin = Math.Sin(angle);
			float cos = Math.Cos(angle);
			
			return .(vector.x * cos - vector.y * sin, vector.x * sin + vector.y * cos);
		}

		[Inline]
		public Vector2 Clamp(Vector2 min, Vector2 max)
		{
			return .(Math.Clamp(x, min.x, max.x), Math.Clamp(y, min.y, max.y));
		}

		[Inline]
		public static Vector2 operator-(Vector2 vec) => Vector2(-vec.x, -vec.y);

		[Inline]
		public static Vector2 operator+(Vector2 vec1, Vector2 vec2) => Vector2(vec1.x + vec2.x, vec1.y + vec2.y);

		[Inline]
		public static Vector2 operator+(Vector2 vec1, float f) => Vector2(vec1.x + f, vec1.y + f);
		
		[Inline]
		public static Vector2 operator-(Vector2 vec1, Vector2 vec2) => Vector2(vec1.x - vec2.x, vec1.y - vec2.y);

		[Inline]
		public static Vector2 operator-(Vector2 vec1, float f) => Vector2(vec1.x - f, vec1.y - f);

		[Inline, Commutable]
		public static Vector2 operator*(Vector2 vec, float factor) => Vector2(vec.x * factor, vec.y * factor);

		[Inline]
		public static Vector2 operator/(Vector2 vec, float factor) => Vector2(vec.x / factor, vec.y / factor);
		
		[Inline]
		public static Vector2 operator/(float factor, Vector2 vec) => Vector2(factor / vec.x, factor / vec.y);
		
		[Inline]
		public static Vector2 operator*(Vector2 vec1, Vector2 vec2) => Vector2(vec1.x * vec2.x, vec1.y * vec2.y);
		
		[Inline]
		public static Vector2 operator/(Vector2 vec1, Vector2 vec2) => Vector2(vec1.x / vec2.x, vec1.y / vec2.y);
		
		[Inline]
		public static implicit operator Vector3(Vector2 v) => .(v.x, v.y, 0);

		[Inline]
		public static implicit operator float2(Vector2 v) => .(v.x, v.y);
		public static implicit operator Vector2(float2 v) => .(v.x, v.y);

		public float max => Math.Max(x, y);
		public float min => Math.Min(x, y);

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

		[Inline]
		public Vector2 normalized => this / Length;

		public bool InUnitSquare => (x > -1) & (x < 1) & (y > -1) & (y < 1);

		[Inline]
		public Vector2 Rotate(float angle) => Rotate(this, angle);

		public override void ToString(String buffer){
			buffer.AppendF($"({x}, {y})");
		}
	}
}
