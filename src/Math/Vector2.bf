using System;
using System.Collections;
using System.Text;
using System.Numerics;

namespace BfEngine
{
	//[CRepr]
	//[UnderlyingArray(typeof(float), 2, true)]
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

		public const Vector2 zero = default;
		public const Vector2 one = .(1, 1);

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
		public static Vector2 operator-(Vector2 vec) => Vector2(-vec.x, -vec.y);

		[Inline]
		public static Vector2 operator+(Vector2 vec1, Vector2 vec2) => Vector2(vec1.x + vec2.x, vec1.y + vec2.y);
		
		[Inline]
		public static Vector2 operator-(Vector2 vec1, Vector2 vec2) => Vector2(vec1.x - vec2.x, vec1.y - vec2.y);

		[Inline]
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

		public Vector2 xx => .(x, x);
		public Vector2 xy => .(x, y);
		public Vector2 yy => .(y, y);
		public Vector2 yx => .(y, x);

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
