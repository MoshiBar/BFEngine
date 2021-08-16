#version 430 core

const vec2 corners[4] = { 
    vec2(0.0, 1.0), vec2(0.0, 0.0), vec2(1.0, 1.0), vec2(1.0, 0.0) };

layout(points) in;
layout(triangle_strip, max_vertices = 4) out;

layout(location = 1) uniform mat4 projection; // transforms world space to screen space along with view matrix
layout(location = 2) uniform float spriteSize = 1;

in float vAge[];

out vec2 texCoord;

void main()
{
    for(int i=0; i<4; ++i)
    {
        vec4 eyePos = gl_in[0].gl_Position;           //start with point position
        float age = vAge[0] * 0.66666 - 1;
        eyePos.xy += spriteSize * (corners[i] - vec2(0.5)) * (1 - age * age); //add corner position
        gl_Position = projection * eyePos;             //complete transformation
        texCoord = vec2(corners[i].x, 1 - corners[i].y);                         //use corner as texCoord
        EmitVertex();
    }

	EndPrimitive();
}