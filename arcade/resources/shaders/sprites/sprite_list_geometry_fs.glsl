#version 330

uniform sampler2D Texture;
uniform vec4 spritelist_color;

in vec2 gs_uv;
in vec4 gs_color;

out vec4 f_color;

void main() {
    vec4 basecolor = texture(Texture, gs_uv);
    basecolor *= gs_color * spritelist_color;
    if (basecolor.a == 0.0) {
        discard;
    }
    f_color = basecolor;
}
