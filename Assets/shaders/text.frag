#version 430 core

uniform sampler2D textureSampler;

in vec4 color;
in vec2 texCoord;

out vec4 fragColor;

const float Cutoff = 0.475;
const float Cutoff2 = 0.15;

void main(void){
    float textureColor = texture(textureSampler, texCoord).a;

    //if(textureColor < Cutoff) discard;

    // sdf distance from edge (scalar)
    float dist = (Cutoff - textureColor);

    // sdf distance per pixel (gradient vector)
    vec2 ddist = vec2(dFdx(dist), dFdy(dist));

    // distance to edge in pixels (scalar)
    float pixelDist = dist / length(ddist);

    //color.a = clamp(0.5 - pixelDist, 0, 1); 
    float alpha = clamp(0.5 - pixelDist, 0, 1);



    // sdf distance from edge (scalar)
    /*dist = (Cutoff2 - textureColor);

    // sdf distance per pixel (gradient vector)
    ddist = vec2(dFdx(dist), dFdy(dist));

    // distance to edge in pixels (scalar)
    pixelDist = dist / length(ddist);

    //color.a = clamp(0.5 - pixelDist, 0, 1); 
    float alpha2 = clamp(0.5 - pixelDist, 0, 1);*/




    fragColor = color * alpha /*+ color * (1 - alpha) * alpha2*/;
    //fragColor = color;
}