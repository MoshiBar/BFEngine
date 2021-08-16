#version 430 core

/**vertex data**/
in vec3 position; // vertex position
in float age;

/**uniform data (non-vertex-unique)**/
layout(location = 0) uniform mat4 modelView; // object specific transformation matrix, combined with transformation matrix based on camera data

out float vAge;

void main(void){
    gl_Position = modelView * vec4(position, 1.0);
	vAge = age;
}