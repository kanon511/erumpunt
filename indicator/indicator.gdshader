shader_type canvas_item;

uniform float size;
uniform vec3 color;

void fragment() {
    // 计算纹理坐标的中心点，假设纹理是方形的。
    vec2 center = vec2(0.5, 0.5);

    // 计算当前像素到中心的距离。
    float distance_to_center = distance(UV, center);
	
	if (distance_to_center > 0.5){
		COLOR = vec4(0.0, 0.0, 0.0, 0.0);
	}else{
	    // 创建一个从圆边到圆中心的渐变颜色。
	    // `distance_to_center` 是一个0到0.5之间的值（假设圆的半径覆盖整个纹理）。
	    // 我们可以使用 `distance_to_center` 的值来混合两种颜色。
	    float gradient_factor = smoothstep(0.5, 0.47, distance_to_center); // 使用smoothstep来创建平滑的过渡。

	    // 混合两种颜色。`COLOR` 是纹理的颜色
	    vec4 mix_color = mix(vec4(color, 1.0), vec4(color, 0.0), gradient_factor);
		
	    // 将最终的颜色设置为输出颜色。
	    COLOR = mix_color;
	}
}
