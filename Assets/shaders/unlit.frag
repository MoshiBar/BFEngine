#version 430 core

in vec2 pass_textureCoords;
in vec4 pass_vertexColor;
in vec4 pass_vertex;

uniform sampler2D textureSampler;

out vec4 fragColor;

void main(void){
    vec2 uv = pass_textureCoords;

    vec4 color = texture(textureSampler, uv).rgba;
    fragColor = color * vec4(1, 1, 1, color.r);
}

