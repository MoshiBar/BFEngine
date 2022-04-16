#version 430 core

in vec2 pass_textureCoords;

uniform sampler2D textureSampler;

out vec4 fragColor;

void main(void){
    vec4 c = texture(textureSampler, pass_textureCoords);
    
    //gl_FragDepth = smoothstep(gl_FragDepth, 1 - gl_FragDepth, c.r);
    if(c.r < 0.5) discard;
    fragColor = vec4(1, 1, 1, 1);
}

