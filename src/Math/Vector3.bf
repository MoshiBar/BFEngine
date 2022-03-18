using System;
using System.Collections;
using System.Text;
using System.Threading.Tasks;
#if IMGUI_ENABLE
using ImGui;
#endif //IMGUI_ENABLE

namespace BfEngine
{
	//[UnderlyingArray(typeof(float), 3, true)]
	#if IMGUI_ENABLE
	[VectorDebug(.Float, 3)]
	#endif //IMGUI_ENABLE
	[CRepr]
	public struct Vector3 : IHashable, IEquatable<Vector3>
	{
		[Reflect]
		public float x;
		[Reflect]
		public float y;
		[Reflect]
		public float z;

		public static readonly Vector3 zero = Vector3(0f, 0f, 0f);
		public static readonly Vector3 one = Vector3(1f, 1f, 1f);
		public static readonly Vector3 unitX = Vector3(1f, 0f, 0f);
		public static readonly Vector3 unitY = Vector3(0f, 1f, 0f);
		public static readonly Vector3 unitZ = Vector3(0f, 0f, 1f);
		public static readonly Vector3 up = Vector3(0f, 1f, 0f);
		public static readonly Vector3 down = Vector3(0f, -1f, 0f);
		public static readonly Vector3 right = Vector3(1f, 0f, 0f);
		public static readonly Vector3 left = Vector3(-1f, 0f, 0f);
		public static readonly Vector3 forward = Vector3(0f, 0f, -1f);
		public static readonly Vector3 backward = Vector3(0f, 0f, 1f);

		public float Length => (float)Math.Sqrt(x * x + y * y + z * z);
		
		public float LengthSquared => x * x + y * y + z * z;

		[Inline]
		public this(float s)
		{
			this.x = s;
			this.y = s;
			this.z = s;
		}

		[Inline]
		public this(float x, float y)
		{
			this.x = x;
			this.y = y;
			this.z = 0;
		}

		[Inline]
		public this(float x, float y, float z)
		{
			this.x = x;
			this.y = y;
			this.z = z;
		}

		public bool Equals(Vector3 other)
		{
			return this == other;
		}

		public int GetHashCode()
		{
			return (int)(this.x + this.y + this.z);
		}

		public static Vector3 Normalize(Vector3 vector)
		{
			Vector3 newVec;
			Normalize(vector, out newVec);
			return vector;
		}

		public static void Normalize(Vector3 value, out Vector3 result)
		{
			float factor = Distance(value, zero);
			factor = 1f / factor;
			result.x = value.x * factor;
			result.y = value.y * factor;
			result.z = value.z * factor;
		}

		public static float Dot(Vector3 vec1, Vector3 vec2)
		{
			return vec1.x * vec2.x + vec1.y * vec2.y + vec1.z * vec2.z;
		}

		public static Vector3 Cross(Vector3 vector1, Vector3 vector2)
		{
			return Vector3(vector1.y * vector2.z - vector2.y * vector1.z,
				-(vector1.x * vector2.z - vector2.x * vector1.z),
				vector1.x * vector2.y - vector2.x * vector1.y);
		}

		public static float DistanceSquared(Vector3 value1, Vector3 value2)
		{
			return (value1.x - value2.x) * (value1.x - value2.x) +
				(value1.y - value2.y) * (value1.y - value2.y) +
				(value1.z - value2.z) * (value1.z - value2.z);
		}

		public static float Distance(Vector3 vector1, Vector3 vector2)
		{
			float result = DistanceSquared(vector1, vector2);
			return (float)Math.Sqrt(result);
		}

		public static Vector3 Transform(Vector3 vec, Matrix4 matrix)
		{
			Vector3 result;
			float fInvW = 1.0f / (matrix.m30 * vec.x + matrix.m31 * vec.y + matrix.m32 * vec.z + matrix.m33);

			result.x = (matrix.m00 * vec.x + matrix.m01 * vec.y + matrix.m02 * vec.z + matrix.m03) * fInvW;
			result.y = (matrix.m10 * vec.x + matrix.m11 * vec.y + matrix.m12 * vec.z + matrix.m13) * fInvW;
			result.z = (matrix.m20 * vec.x + matrix.m21 * vec.y + matrix.m22 * vec.z + matrix.m23) * fInvW;
			return result;
		}

		public static Vector3 Transform(Vector3 vec, Quaternion quat)
		{
			Matrix4 matrix = quat.ToMatrix();
			return Transform(vec, matrix);
		}

		public static Vector3 TransformNormal(Vector3 normal, Matrix4 matrix)
		{
			return Vector3((normal.x * matrix.m11) + (normal.y * matrix.m21) + (normal.z * matrix.m31),
				(normal.x * matrix.m12) + (normal.y * matrix.m22) + (normal.z * matrix.m32),
				(normal.x * matrix.m13) + (normal.y * matrix.m23) + (normal.z * matrix.m33));
		}

		[Inline]
		public static bool operator==(Vector3 value1, Vector3 value2)
		{
			return (value1.x == value2.x) &&
				(value1.y == value2.y) &&
				(value1.z == value2.z);
		}

		[Inline]
		public static bool operator!=(Vector3 value1, Vector3 value2)
		{
			return !(value1 == value2);
		}

		[Inline, Commutable]
		public static bool3 operator<(Vector3 value1, Vector3 value2)
		{
			return .(
				value1.x < value2.x,
				value1.y < value2.y,
				value1.z < value2.z);
		}

		[Inline]
		public static Vector3 operator+(Vector3 vec1, Vector3 vec2)
		{
			return Vector3(vec1.x + vec2.x, vec1.y + vec2.y, vec1.z + vec2.z);
		}

		[Inline]
		public static Vector3 operator-(Vector3 vec1, Vector3 vec2)
		{
			return Vector3(vec1.x - vec2.x, vec1.y - vec2.y, vec1.z - vec2.z);
		}

		[Inline]
		public static Vector3 operator-(Vector3 vec)
		{
			return Vector3(-vec.x, -vec.y, -vec.z);
		}

		[Inline]
		public static Vector3 operator*(Vector3 vec, float scale)
		{
			return Vector3(vec.x * scale, vec.y * scale, vec.z * scale);
		}

		[Inline]
		public static Vector3 operator*(Vector3 vec, Vector3 vec2)
		{
			return Vector3(vec.x * vec2.x, vec.y * vec2.y, vec.z * vec2.z);
		}

		[Inline]
		public static Vector3 operator/(Vector3 vec, float divisor)
		{
			return Vector3(vec.x / divisor, vec.y / divisor, vec.z / divisor);
		}

		[Inline]
		public static explicit operator Vector2(Vector3 v) => .(v.x, v.y);

		public override void ToString(String str)
		{
			str.AppendF("{0:0.0#}, {1:0.0#}, {2:0.0#}", x, y, z);
		}

		public Vector2 xx => .(x, x);
		public Vector2 yy => .(y, y);
		public Vector2 zz => .(z, z);

		public Vector2 xy => .(x, y);
		public Vector2 xz => .(x, z);

		public Vector2 yx => .(y, x);
		public Vector2 yz => .(y, z);

		public Vector2 zx => .(z, x);
		public Vector2 zy => .(z, y);
	}
}
