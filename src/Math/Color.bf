using System;
namespace BfEngine
{
	struct Color4
	{
		public float r, g, b, a;

		public this(float r, float g, float b, float a){
			this.r = r;
			this.g = g;
			this.b = b;
			this.a = a;
		}

		public this(float r, float g, float b) : this(r, g, b, 1){}

		//public static explicit operator Color3(Color4 c) => .(c.r, c.g, c.b);

		public static explicit operator Color32(Color4 c) => .((uint8)(c.r * 255), (uint8)(c.r * 255), (uint8)(c.r * 255), (uint8)(c.r * 255));

		public static readonly Color4 black = .(0, 0, 0);
		public static readonly Color4 blue = .(0, 0, 1);
		public static readonly Color4 green = .(0, 1, 0);
		public static readonly Color4 orange = .(1, 0.65f, 0);
		public static readonly Color4 purple = .(1, 0, 1);
		public static readonly Color4 red = .(1, 0, 0);
		public static readonly Color4 white = .(1, 1, 1);
		public static readonly Color4 yellow = .(1, 1, 0);
		

		public static Result<Color4> Parse(StringView string){
			if(string.Equals("black", true)) return . black;
			if(string.Equals("blue", true)) return . blue;
			if(string.Equals("green", true)) return . green;
			if(string.Equals("orange", true)) return . orange;
			if(string.Equals("purple", true)) return . purple;
			if(string.Equals("red", true)) return . red;
			if(string.Equals("white", true)) return . white;
			if(string.Equals("yellow", true)) return . yellow;

			if(string.StartsWith('#')){
				uint32 integer;
				switch(int64.Parse(string.Substring(1), .HexNumber)){
				case .Ok(var i): integer = (uint32)i;
				default: return .Err;
				}

				var ptr = (uint8*)&integer;

				Color4 color;
				if(string.Length == 7) color = Color4(ptr[2] / 255f, ptr[1] / 255f, ptr[0] / 255f);
				else if (string.Length == 9) color = Color4(ptr[3] / 255f, ptr[2] / 255f, ptr[1] / 255f, ptr[0] / 255f);
				else return white;

				return color;
			}

			return .white;
		}

		public Color4 PremulAlpha() => .(r * a, g * a, b * a, a);
		

		public override void ToString(String strBuffer)
		{
			strBuffer.AppendF($"({r:0.00}, {g:0.00}, {b:0.00}, {a:0.00})");
		}

		public static bool operator ==(Color4 a, Color4 b) => a.r == b.r && a.g == b.g && a.b == b.b && a.a == b.a;
		public static bool operator !=(Color4 a, Color4 b) => !(a == b);

		public Vector3 rgb => .(r, g, b);

		public Self SetColor(Color3 c) mut
		{
			r = c.r;
			g = c.g;
			b = c.b;
			return this;
		}

		public Self SetColor(Vector3 c) mut
		{
			r = c.x;
			g = c.y;
			b = c.z;
			return this;
		}
	}

	struct Color3
	{
		public float r, g, b;

		public this(float r, float g, float b){
			this.r = r;
			this.g = g;
			this.b = b;
		}

		//public static explicit operator Color3(Color4 c) => .(c.r, c.g, c.b);

		public static explicit operator Color32(Color3 c) => .((uint8)(c.r * 255), (uint8)(c.r * 255), (uint8)(c.r * 255), (uint8)(c.r * 255));

		public static readonly Color3 black = .(0, 0, 0);
		public static readonly Color3 blue = .(0, 0, 1);
		public static readonly Color3 green = .(0, 1, 0);
		public static readonly Color3 orange = .(1, 0.65f, 0);
		public static readonly Color3 purple = .(1, 0, 1);
		public static readonly Color3 red = .(1, 0, 0);
		public static readonly Color3 white = .(1, 1, 1);
		public static readonly Color3 yellow = .(1, 1, 0);
		

		public static Result<Color3> Parse(StringView string){
			if(string.Equals("black", true)) return . black;
			if(string.Equals("blue", true)) return . blue;
			if(string.Equals("green", true)) return . green;
			if(string.Equals("orange", true)) return . orange;
			if(string.Equals("purple", true)) return . purple;
			if(string.Equals("red", true)) return . red;
			if(string.Equals("white", true)) return . white;
			if(string.Equals("yellow", true)) return . yellow;

			if(string.StartsWith('#')){
				uint32 integer;
				switch(int64.Parse(string.Substring(1), .HexNumber)){
				case .Ok(var i): integer = (uint32)i;
				default: return .Err;
				}

				var ptr = (uint8*)&integer;

				Color3 color;
				if(string.Length == 7) color = Color3(ptr[2] / 255f, ptr[1] / 255f, ptr[0] / 255f);
				else if (string.Length == 9) color = Color3(ptr[3] / 255f, ptr[2] / 255f, ptr[1] / 255f);
				else return white;

				return color;
			}

			return .white;
		}

		public override void ToString(String strBuffer)
		{
			strBuffer.AppendF($"({r:0.00}, {g:0.00}, {b:0.00})");
		}

		public static bool operator ==(Color3 a, Color3 b) => a.r == b.r && a.g == b.g && a.b == b.b;
		public static bool operator !=(Color3 a, Color3 b) => !(a == b);

		public Vector3 rgb => .(r, g, b);

		public Self Normalize() mut
		{
			r/=255f;
			g/=255f;
			b/=255f;
			return this;
		}
	}

	struct Color32
	{
		public uint8 r, g, b, a;

#unwarn
		public ref uint32 rgba => ref *(uint32*)&this;

		public static explicit operator Color4(Color32 c) => .(c.r / 255f, c.g / 255f, c.b / 255f, c.a / 255f);

		public this(uint8 r, uint8 g, uint8 b, uint8 a)
		{
			this.r = r;
			this.g = g;
			this.b = b;
			this.a = a;
		}

		public this(uint8 r, uint8 g, uint8 b) : this(r, g, b, 255){}
	}
}
