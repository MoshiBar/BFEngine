#version 430 core

in vec4 out_color;
in vec2 texCoord;

layout(location = 2) uniform sampler2D tex;
layout(location = 3) uniform vec2 size;
layout(location = 4) uniform vec4 color;
layout(location = 5) uniform float bevel;

out vec4 fragColor;

void main(void){
    vec4 texColor = texture(tex, texCoord);

    vec2 position = texCoord * size;

    vec2 clampedposition = clamp(position, vec2(bevel), size - bevel);

    float dist = distance(position, clampedposition) - bevel;

    // sdf distance per pixel (gradient vector)
    vec2 ddist = vec2(dFdx(dist), dFdy(dist));

    // distance to edge in pixels (scalar)
    float pixelDist = dist / length(ddist);

    //color.a = clamp(0.5 - pixelDist, 0, 1); 
    float mask = clamp(0.5 - pixelDist, 0, 1);

    fragColor = texColor * vec4(texColor.aaa, 1) * color * mask;
    //fragColor = texColor * color;
}