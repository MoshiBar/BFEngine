#version 430 core

/**vertex data**/
in vec3 position; // vertex position
in vec2 textureCoords; // texture coordinates
in vec4 vertexColor; // vertex Colors

/**data passed to fragment shader**/
out vec2 pass_textureCoords; // generated texture coordinates
out vec4 pass_vertexColor; // generated vertex colors

/**uniform data (non-vertex-unique)**/
layout(location = 0) uniform mat4 modelView; // object specific transformation matrix, combined with transformation matrix based on camera data
layout(location = 1) uniform mat4 projectionMatrix; // transforms world space to screen space along with view matrix

void main(void){
    vec4 relativePosition = modelView * vec4(position, 1.0);
    gl_Position = projectionMatrix * relativePosition;

    pass_textureCoords = textureCoords;
    pass_vertexColor = vertexColor;
}