#ifdef GL_ES
precision highp float;
#endif

varying vec4 v_fragmentColor;
varying vec2 v_texCoord;

uniform vec2 u_uvScale;
uniform vec2 u_uvSpeed;
uniform float u_timeMs;
void main()
{
		vec4 color = vec4(0.0);
		vec2 uv = v_texCoord;
		uv.x *= u_uvScale.x;
		uv.y *=  u_uvScale.y;

		vec2 uvDelth = vec2(0.0);
		uvDelth.x = u_timeMs * u_uvSpeed.x;
		uvDelth.y = u_timeMs * u_uvSpeed.y;
		//uvDelth = fract(uvDelth);
		uv = uv - uvDelth;
	
		
		color = texture2D(CC_Texture0, uv);
    gl_FragColor = v_fragmentColor * color;
}