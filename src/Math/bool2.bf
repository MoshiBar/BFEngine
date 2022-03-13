using System;

namespace BfEngine
{
	//[UnderlyingArray(typeof(bool), 2, true)]
	//[Packed]
	struct bool2
	{

		public bool x;
		public bool y;

		public this(bool x, bool y){
			this.x = x;
			this.y = y;
		}
		[Inline]
		public bool or  => x || y;
		[Inline]
		public bool and => x && y;
		[Inline]
		public bool xor => x ^ y;


		public Self xx => .(x, x);
		public Self xy => .(x, y);
		public Self yy => .(y, y);
		public Self yx => .(y, x);

		public Self _xx => .(!x, x);
		public Self _xy => .(!x, y);
		public Self _yy => .(!y, y);
		public Self _yx => .(!y, x);

		public Self x_x => .(x, !x);
		public Self x_y => .(x, !y);
		public Self y_y => .(y, !y);
		public Self y_x => .(y, !x);

		public Self _x_x => .(!x, !x);
		public Self _x_y => .(!x, !y);
		public Self _y_y => .(!y, !y);
		public Self _y_x => .(!y, !x);


		public static implicit operator Self(bool v) => .(v, v);



		public static Self operator ^(Self a, Self b) => .(a.x ^ b.x, a.y ^ b.y);
		public static Self operator &&(Self a, Self b) => .(a.x && b.x, a.y && b.y);
		public static Self operator &(Self a, Self b) => .(a.x & b.x, a.y & b.y);

		public static Self operator ||(Self a, Self b) => .(a.x || b.x, a.y || b.y);
		public static Self operator |(Self a, Self b) => .(a.x | b.x, a.y | b.y);
		public static Self operator !(Self a) => .(!a.x, !a.y);



		public const Self _false = .(false, false);
		public const Self _true = .(true, true);

		public override void ToString(String buffer){
			buffer.AppendF($"({x}, {y})");
		}
	}
}
