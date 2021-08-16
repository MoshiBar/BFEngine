#version 430 core

/**vertex data**/
in float x; // vertex position
in float y;

/**uniform data (non-vertex-unique)**/
layout(location = 0) uniform mat4 modelView; // object specific transformation matrix, combined with transformation matrix based on camera data
layout(location = 1) uniform mat4 projectionMatrix; // transforms world space to screen space along with view matrix

void main(void){
    vec4 relativePosition = modelView * vec4(x, y, 0, 1.0);
    gl_Position = projectionMatrix * relativePosition;
}