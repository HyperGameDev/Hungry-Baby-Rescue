shader_type spatial;
render_mode unshaded, cull_disabled, depth_draw_opaque;

uniform float size;
uniform float width;
uniform vec4 inner_color: source_color;
uniform vec4 outer_color: source_color;

void fragment() {
	ALPHA = 0.0;
	vec2 center = vec2(0.5);
	float d = distance(UV, center);
	float h = size * 0.5;
	float l = h - (width * 0.5);
	if (d <= h && d > l) {
		vec4 color = mix(inner_color, outer_color, smoothstep(l, h, d));
		ALPHA = color.a;
		ALBEDO = color.rgb;
	}
}