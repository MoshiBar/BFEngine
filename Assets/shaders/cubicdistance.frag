#version 430 core

in vec2 pass_textureCoords;
in vec4 pass_vertexColor;
in vec4 pass_vertex;

uniform sampler2D textureSampler;
layout(location = 2) uniform vec2 rect[2];
layout(location = 4) uniform vec2 controlPoints[4];
layout(location = 8) uniform float spread;

out vec4 fragColor;



 
const vec3 c = vec3(1.,0.,-1.);
const float pi = acos(-1.);

// Cubic bezier curve
vec2 B3(float t, vec2 P0, vec2 P1, vec2 P2, vec2 P3)
{
    float m1 = 1.-t;
    return m1*m1*m1*P0 + 3.*m1*t*(m1*P1+t*P2) + t*t*t*P3;
}

// Cubic bezier partial derivative with respect to t
vec2 B3Prime(float t, vec2 P0, vec2 P1, vec2 P2, vec2 P3)
{
    float m1 = 1.-t;
    return 3.*(m1*m1*(P1-P0)+2.*m1*t*(P2-P1)+t*t*(P3-P2));
}

// Cubic bezier second partial derivative with respect to t
vec2 B3Second(float t, vec2 P0, vec2 P1, vec2 P2, vec2 P3)
{
    float m1 = 1.-t;
    return 6.*m1*(P2-2.*P1+P0)+6.*t*(P3-2.*P2+P1);
}

// This is the "easy" representation of the quintic that has to be solved
// for the sdf.
float D3Prime(vec2 x, float  t, vec2 P0, vec2 P1, vec2 P2, vec2 P3)
{
    return dot(x-B3(t,P0,P1,P2,P3), B3Prime(t,P0,P1,P2,P3));
}

// Determine zeros of a*x^2+b*x+c
vec2 quadratic_zeros(float a, float b, float cc) {
    if(a == 0.) return -cc/b*c.xx;
    float d = b*b-4.*a*cc;
    if(d<0.) return vec2(1.e4);
    return (c.xz*sqrt(d)-b)/(2.*a);
}

// Determine zeros of a*x^3+b*x^2+c*x+d
vec3 cubic_zeros(float a, float b, float cc, float d) {
    if(a == 0.) return quadratic_zeros(b,cc,d).xyy;
    
    // Depress
    vec3 ai = vec3(b,cc,d)/a;
    
    //discriminant and helpers
    float tau = ai.x/3., 
        p = ai.y-tau*ai.x, 
        q = -tau*(tau*tau+p)+ai.z, 
        dis = q*q/4.+p*p*p/27.;
        
    //triple real root
    if(dis > 0.) {
        vec2 ki = -.5*q*c.xx+sqrt(dis)*c.xz, 
            ui = sign(ki)*pow(abs(ki), c.xx/3.);
        return vec3(ui.x+ui.y-tau);
    }
    
    //three distinct real roots
    float fac = sqrt(-4./3.*p), 
        arg = acos(-.5*q*sqrt(-27./p/p/p))/3.;
    return c.zxz*fac*cos(arg*c.xxx+c*pi/3.)-tau;
}

// Determine zeros of a*x^4+b*x^3+c*x^2+d*x+e
vec4 quartic_zeros(float a, float b, float cc, float d, float e) {
    if(a == 0.) return cubic_zeros(b, cc, d, e).xyzz;
    
    // Depress
    float _b = b/a,
        _c = cc/a,
        _d = d/a,
        _e = e/a;
        
    // Helpers
    float p = (8.*_c-3.*_b*_b)/8.,
        q = (_b*_b*_b-4.*_b*_c+8.*_d)/8.,
        r = (-3.*_b*_b*_b*_b+256.*_e-64.*_b*_d+16.*_b*_b*_c)/256.;
        
    // Determine available resolvent zeros
    vec3 res = cubic_zeros(8.,8.*p,2.*p*p-8.*r,-q*q);
    
    // Find nonzero resolvent zero
    float m = res.x;
    if(m == 0.) m = res.y;
    if(m == 0.) m = res.z;
    
    // Apply Ferrari method
    return vec4(
        quadratic_zeros(1.,sqrt(2.*m),p/2.+m-q/(2.*sqrt(2.*m))),
        quadratic_zeros(1.,-sqrt(2.*m),p/2.+m+q/(2.*sqrt(2.*m)))
    )-_b/4.;
}

// minimum distance to a cubic spline with the following strategy:
float dcubic_spline(in vec2 x, in vec2 p0, in vec2 p1, in vec2 p2, in vec2 p3)
{
    // Use relative coordinates to eliminate all terms containing p0.
    x -= p0;
    p1 -= p0;
    p2 -= p0;
    p3 -= p0;
    p0 = c.yy;
    
    // Use interval approximation to determine a numerical solution for the quintic.
    // TODO: find something better, I really would like an analytical approach
    float tmin = -0.5, tmax = 1.5, tnew, 
        dmin = D3Prime(x,tmin,p0,p1,p2,p3),
        dmax = D3Prime(x,tmax,p0,p1,p2,p3),
        dnew;
    
    for(int i=0; i<20; ++i)
    {
        tnew = mix(tmin, tmax, .5);
        dnew = D3Prime(x,tnew,p0,p1,p2,p3);
        
        if(dnew>0.)
        {
            tmin = tnew;
            dmin = dnew;
        }
        else 
        {
            tmax = tnew;
            dmax = dnew;
        }
    }
    
    // Determine coefficients of quintic equation.
    vec2 pa = p2-p1;
    float a5 = -dot(p3,p3)+3.*dot(pa,2.*p3-3.*pa),
        a4 = 5.*dot(p1-pa,p3)+15.*dot(pa,pa-p1),
        a3 = -6.*dot(p2,p2)+4.*dot(p1,9.*pa-p3),
        a2 = dot(p3-3.*pa,x)+9.*dot(p1,p1-pa),
        a1 = 2.*dot(pa-p1,x)-3.*dot(p1,p1),
        a0 = dot(p1,x);
    
    // Polynomial division of numerical solution.
    float _a = a5,
        _b = a4+_a*tmin,
        _c = a3+_b*tmin,
        _d = a2+_c*tmin,
        _e = a1+_d*tmin;
        
    vec4 t = clamp(quartic_zeros(_a,_b,_c,_d,_e),0.,1.);
    tmin = clamp(tmin, 0.,1.);
    
    return min(
        length(x-B3(tmin,p0,p1,p2,p3)),
        min(
            min(
                length(x-B3(t.x,p0,p1,p2,p3)),
                length(x-B3(t.y,p0,p1,p2,p3))
            ),
            min(
                length(x-B3(t.z,p0,p1,p2,p3)),
                length(x-B3(t.w,p0,p1,p2,p3))
            )
        )
    );
}




void main(void){
    vec2 uv = pass_textureCoords * rect[1] + rect[0];

    //fragColor = vec4(color.rgb * color.a, color.a) * mask * pass_vertexColor.a;
    float dist = (1 - dcubic_spline(uv,
        controlPoints[0], 
        controlPoints[1],
        controlPoints[2],
        controlPoints[3]) / spread) / 2;

    fragColor = vec4(dist.xxx, 1);

    float sdf = 1 - dist;

    gl_FragDepth = sdf;

    fragColor = vec4(dist.xxx, 1);
}

