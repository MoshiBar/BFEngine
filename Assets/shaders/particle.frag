#version 430 core

in vec2 texCoord;

uniform sampler2D textureSampler;
layout(location = 3) uniform vec4 color;

out vec4 fragColor;

void main(void){
    vec4 textureColor = texture(textureSampler, texCoord);

    if(textureColor.a < 0.1) discard;

    fragColor = /*textureColor **/ color;
	//fragColor = vec4(1, 1, 1, 1);
}