#version 430 core

const vec2 corners[4] = { 
    vec2(0.0, 1.0), vec2(0.0, 0.0), vec2(1.0, 1.0), vec2(1.0, 0.0) };

layout(points) in;
layout(triangle_strip, max_vertices = 4) out;

layout(location = 0) uniform mat4 modelView;
layout(location = 1) uniform mat4 projection; // transforms world space to screen space along with view matrix
layout(location = 2) uniform vec2 atlasSize;
layout(location = 3) uniform vec4 gColor;

in vec4 vertColor[];
in vec4 vertRect[];
in vec4 vertUV[];
in float vertRotation[];

out vec4 color;
out vec2 texCoord;

vec2 rotate(vec2 v, float a) {
	float s = sin(a);
	float c = cos(a);
	mat2 m = mat2(c, -s, s, c);
	return m * v;
}

void main()
{
    for(int i=0; i<4; ++i)
    {
        //vec4 eyePos = gl_in[0].gl_Position;           //start with point position
        //eyePos.xy += spriteSize * (corners[i] - vec2(0.5))); //add corner position
        vec4 relativePosition = modelView * vec4(vertRect[0].xy + rotate(vertRect[0].zw * corners[i], vertRotation[0]), 0, 1);
        gl_Position = projection * relativePosition;            //complete transformation
        color = vertColor[0] * gColor;                               //TODO custom colors
        texCoord = (vertUV[0].xy + vertUV[0].zw * vec2(corners[i].x, 1 - corners[i].y)) / atlasSize;          //use corner as texCoord
        EmitVertex();
    }

	EndPrimitive();
}