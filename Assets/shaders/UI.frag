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

    float mask = float(distance(position, clampedposition) < bevel);

    fragColor = texColor * color * mask;
    //fragColor = texColor * color;
}