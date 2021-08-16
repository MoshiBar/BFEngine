#version 430 core

in vec4 glyphColor;
in vec4 glyphRect;
in vec4 glyphUV;

out vec4 vertColor;
out vec4 vertRect;
out vec4 vertUV;

/**uniform data (non-vertex-unique)**/
layout(location = 0) uniform mat4 modelView; // object specific transformation matrix, combined with transformation matrix based on camera data
//layout(location = 1) uniform mat4 projectionMatrix; // transforms world space to screen space along with view matrix

void main(void){
    //vec4 relativePosition = modelView * vec4(position, 1.0);
    //gl_Position = projectionMatrix * relativePosition;
    gl_Position = vec4(glyphRect.xy, 0, 1);

    vertColor = glyphColor;
    vertRect = glyphRect;
    vertUV = glyphUV;
}