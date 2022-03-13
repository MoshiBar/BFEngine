using System;
namespace BfEngine
{
	//[UnderlyingArray(typeof(bool), 3, true)]
	[Packed]
	struct bool3
	{
		bool x, y, z;

		public this(bool x, bool y, bool z){
			this.x = x;
			this.y = y;
			this.z = z;
		}

		public bool or  => x || y || z;
		public bool and => x && y && z;


		public bool2 xx => .(x, x);
		public bool2 yy => .(y, y);
		public bool2 zz => .(z, z);

		public bool2 xy => .(x, y);
		public bool2 xz => .(x, z);

		public bool2 yx => .(y, x);
		public bool2 yz => .(y, z);

		public bool2 zx => .(z, x);
		public bool2 zy => .(z, y);

		public Self xxx => .(x, x, x);
		public Self xxy => .(x, x, y);
		public Self xxz => .(x, x, z);
		public Self xyx => .(x, y, x);
		public Self xyy => .(x, y, y);
		public Self xyz => .(x, y, z);
		public Self xzx => .(x, z, x);
		public Self xzy => .(x, z, y);
		public Self xzz => .(x, z, z);

		public Self yxx => .(y, x, x);
		public Self yxy => .(y, x, y);
		public Self yxz => .(y, x, z);
		public Self yyx => .(y, y, x);
		public Self yyy => .(y, y, y);
		public Self yyz => .(y, y, z);
		public Self yzx => .(y, z, x);
		public Self yzy => .(y, z, y);
		public Self yzz => .(y, z, z);

		public Self zxx => .(z, x, x);
		public Self zxy => .(z, x, y);
		public Self zxz => .(z, x, z);
		public Self zyx => .(z, y, x);
		public Self zyy => .(z, y, y);
		public Self zyz => .(z, y, z);
		public Self zzx => .(z, z, x);
		public Self zzy => .(z, z, y);
		public Self zzz => .(z, z, z);


		public Self _xxx => .(!x, x, x);
		public Self _xxy => .(!x, x, y);
		public Self _xxz => .(!x, x, z);
		public Self _xyx => .(!x, y, x);
		public Self _xyy => .(!x, y, y);
		public Self _xyz => .(!x, y, z);
		public Self _xzx => .(!x, z, x);
		public Self _xzy => .(!x, z, y);
		public Self _xzz => .(!x, z, z);

		public Self _yxx => .(!y, x, x);
		public Self _yxy => .(!y, x, y);
		public Self _yxz => .(!y, x, z);
		public Self _yyx => .(!y, y, x);
		public Self _yyy => .(!y, y, y);
		public Self _yyz => .(!y, y, z);
		public Self _yzx => .(!y, z, x);
		public Self _yzy => .(!y, z, y);
		public Self _yzz => .(!y, z, z);

		public Self _zxx => .(!z, x, x);
		public Self _zxy => .(!z, x, y);
		public Self _zxz => .(!z, x, z);
		public Self _zyx => .(!z, y, x);
		public Self _zyy => .(!z, y, y);
		public Self _zyz => .(!z, y, z);
		public Self _zzx => .(!z, z, x);
		public Self _zzy => .(!z, z, y);
		public Self _zzz => .(!z, z, z);


		public Self x_xx => .(x, !x, x);
		public Self x_xy => .(x, !x, y);
		public Self x_xz => .(x, !x, z);
		public Self x_yx => .(x, !y, x);
		public Self x_yy => .(x, !y, y);
		public Self x_yz => .(x, !y, z);
		public Self x_zx => .(x, !z, x);
		public Self x_zy => .(x, !z, y);
		public Self x_zz => .(x, !z, z);

		public Self y_xx => .(y, !x, x);
		public Self y_xy => .(y, !x, y);
		public Self y_xz => .(y, !x, z);
		public Self y_yx => .(y, !y, x);
		public Self y_yy => .(y, !y, y);
		public Self y_yz => .(y, !y, z);
		public Self y_zx => .(y, !z, x);
		public Self y_zy => .(y, !z, y);
		public Self y_zz => .(y, !z, z);

		public Self z_xx => .(z, !x, x);
		public Self z_xy => .(z, !x, y);
		public Self z_xz => .(z, !x, z);
		public Self z_yx => .(z, !y, x);
		public Self z_yy => .(z, !y, y);
		public Self z_yz => .(z, !y, z);
		public Self z_zx => .(z, !z, x);
		public Self z_zy => .(z, !z, y);
		public Self z_zz => .(z, !z, z);


		public Self _x_xx => .(!x, !x, x);
		public Self _x_xy => .(!x, !x, y);
		public Self _x_xz => .(!x, !x, z);
		public Self _x_yx => .(!x, !y, x);
		public Self _x_yy => .(!x, !y, y);
		public Self _x_yz => .(!x, !y, z);
		public Self _x_zx => .(!x, !z, x);
		public Self _x_zy => .(!x, !z, y);
		public Self _x_zz => .(!x, !z, z);

		public Self _y_xx => .(!y, !x, x);
		public Self _y_xy => .(!y, !x, y);
		public Self _y_xz => .(!y, !x, z);
		public Self _y_yx => .(!y, !y, x);
		public Self _y_yy => .(!y, !y, y);
		public Self _y_yz => .(!y, !y, z);
		public Self _y_zx => .(!y, !z, x);
		public Self _y_zy => .(!y, !z, y);
		public Self _y_zz => .(!y, !z, z);

		public Self _z_xx => .(!z, !x, x);
		public Self _z_xy => .(!z, !x, y);
		public Self _z_xz => .(!z, !x, z);
		public Self _z_yx => .(!z, !y, x);
		public Self _z_yy => .(!z, !y, y);
		public Self _z_yz => .(!z, !y, z);
		public Self _z_zx => .(!z, !z, x);
		public Self _z_zy => .(!z, !z, y);
		public Self _z_zz => .(!z, !z, z);



		public Self xx_x => .(x, x, !x);
		public Self xx_y => .(x, x, !y);
		public Self xx_z => .(x, x, !z);
		public Self xy_x => .(x, y, !x);
		public Self xy_y => .(x, y, !y);
		public Self xy_z => .(x, y, !z);
		public Self xz_x => .(x, z, !x);
		public Self xz_y => .(x, z, !y);
		public Self xz_z => .(x, z, !z);

		public Self yx_x => .(y, x, !x);
		public Self yx_y => .(y, x, !y);
		public Self yx_z => .(y, x, !z);
		public Self yy_x => .(y, y, !x);
		public Self yy_y => .(y, y, !y);
		public Self yy_z => .(y, y, !z);
		public Self yz_x => .(y, z, !x);
		public Self yz_y => .(y, z, !y);
		public Self yz_z => .(y, z, !z);

		public Self zx_x => .(z, x, !x);
		public Self zx_y => .(z, x, !y);
		public Self zx_z => .(z, x, !z);
		public Self zy_x => .(z, y, !x);
		public Self zy_y => .(z, y, !y);
		public Self zy_z => .(z, y, !z);
		public Self zz_x => .(z, z, !x);
		public Self zz_y => .(z, z, !y);
		public Self zz_z => .(z, z, !z);


		public Self _xx_x => .(!x, x, !x);
		public Self _xx_y => .(!x, x, !y);
		public Self _xx_z => .(!x, x, !z);
		public Self _xy_x => .(!x, y, !x);
		public Self _xy_y => .(!x, y, !y);
		public Self _xy_z => .(!x, y, !z);
		public Self _xz_x => .(!x, z, !x);
		public Self _xz_y => .(!x, z, !y);
		public Self _xz_z => .(!x, z, !z);

		public Self _yx_x => .(!y, x, !x);
		public Self _yx_y => .(!y, x, !y);
		public Self _yx_z => .(!y, x, !z);
		public Self _yy_x => .(!y, y, !x);
		public Self _yy_y => .(!y, y, !y);
		public Self _yy_z => .(!y, y, !z);
		public Self _yz_x => .(!y, z, !x);
		public Self _yz_y => .(!y, z, !y);
		public Self _yz_z => .(!y, z, !z);

		public Self _zx_x => .(!z, x, !x);
		public Self _zx_y => .(!z, x, !y);
		public Self _zx_z => .(!z, x, !z);
		public Self _zy_x => .(!z, y, !x);
		public Self _zy_y => .(!z, y, !y);
		public Self _zy_z => .(!z, y, !z);
		public Self _zz_x => .(!z, z, !x);
		public Self _zz_y => .(!z, z, !y);
		public Self _zz_z => .(!z, z, !z);


		public Self x_x_x => .(x, !x, !x);
		public Self x_x_y => .(x, !x, !y);
		public Self x_x_z => .(x, !x, !z);
		public Self x_y_x => .(x, !y, !x);
		public Self x_y_y => .(x, !y, !y);
		public Self x_y_z => .(x, !y, !z);
		public Self x_z_x => .(x, !z, !x);
		public Self x_z_y => .(x, !z, !y);
		public Self x_z_z => .(x, !z, !z);

		public Self y_x_x => .(y, !x, !x);
		public Self y_x_y => .(y, !x, !y);
		public Self y_x_z => .(y, !x, !z);
		public Self y_y_x => .(y, !y, !x);
		public Self y_y_y => .(y, !y, !y);
		public Self y_y_z => .(y, !y, !z);
		public Self y_z_x => .(y, !z, !x);
		public Self y_z_y => .(y, !z, !y);
		public Self y_z_z => .(y, !z, !z);

		public Self z_x_x => .(z, !x, !x);
		public Self z_x_y => .(z, !x, !y);
		public Self z_x_z => .(z, !x, !z);
		public Self z_y_x => .(z, !y, !x);
		public Self z_y_y => .(z, !y, !y);
		public Self z_y_z => .(z, !y, !z);
		public Self z_z_x => .(z, !z, !x);
		public Self z_z_y => .(z, !z, !y);
		public Self z_z_z => .(z, !z, !z);


		public Self _x_x_x => .(!x, !x, !x);
		public Self _x_x_y => .(!x, !x, !y);
		public Self _x_x_z => .(!x, !x, !z);
		public Self _x_y_x => .(!x, !y, !x);
		public Self _x_y_y => .(!x, !y, !y);
		public Self _x_y_z => .(!x, !y, !z);
		public Self _x_z_x => .(!x, !z, !x);
		public Self _x_z_y => .(!x, !z, !y);
		public Self _x_z_z => .(!x, !z, !z);

		public Self _y_x_x => .(!y, !x, !x);
		public Self _y_x_y => .(!y, !x, !y);
		public Self _y_x_z => .(!y, !x, !z);
		public Self _y_y_x => .(!y, !y, !x);
		public Self _y_y_y => .(!y, !y, !y);
		public Self _y_y_z => .(!y, !y, !z);
		public Self _y_z_x => .(!y, !z, !x);
		public Self _y_z_y => .(!y, !z, !y);
		public Self _y_z_z => .(!y, !z, !z);

		public Self _z_x_x => .(!z, !x, !x);
		public Self _z_x_y => .(!z, !x, !y);
		public Self _z_x_z => .(!z, !x, !z);
		public Self _z_y_x => .(!z, !y, !x);
		public Self _z_y_y => .(!z, !y, !y);
		public Self _z_y_z => .(!z, !y, !z);
		public Self _z_z_x => .(!z, !z, !x);
		public Self _z_z_y => .(!z, !z, !y);
		public Self _z_z_z => .(!z, !z, !z);





		public static Self operator ^(Self a, Self b) => .(a.x ^ b.x, a.y ^ b.y, a.z ^ b.z);
		public static Self operator !(Self a) => .(!a.x, !a.y, !a.z);

		public override void ToString(String buffer){
			buffer.AppendF($"({x}, {y}, {z})");
		}
	}
}
