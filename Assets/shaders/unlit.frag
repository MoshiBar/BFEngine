#version 430 core

in vec2 pass_textureCoords;
in vec4 pass_vertexColor;

uniform sampler2D textureSampler;
layout(location = 3) uniform vec4 color;

out vec4 fragColor;

void main(void){
    vec4 c = texture(textureSampler, pass_textureCoords);

    //if(c.a < 0.1) discard;

    float mask = float(distance(vec2(0.5, 0.5), pass_textureCoords) < 0.5);
    
    fragColor = vec4(c.rgb * c.a, c.a) * vec4(color.rgb * color.a, color.a) * mask /* * pass_vertexColor.a*/;
}

