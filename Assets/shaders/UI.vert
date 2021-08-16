#version 430 core

/**vertex data**/
in vec3 position; // vertex position
in vec2 vTexCoord; // texture coordinates
in vec4 in_color; // color

/**data passed to fragment shader**/
out vec4 out_color;
out vec2 texCoord;

/**uniform data (non-vertex-unique)**/
layout(location = 0) uniform mat4 modelView; // object specific transformation matrix, combined with transformation matrix based on camera data
layout(location = 1) uniform mat4 projectionMatrix; // transforms world space to screen space along with view matrix

void main(void){
    vec4 relativePosition = modelView * vec4(position, 1);
    gl_Position = projectionMatrix * relativePosition;

    out_color = in_color;
    texCoord = vTexCoord;
}