#ifdef GL_ES
precision lowp float;
#endif

varying vec4 v_fragmentColor;
varying vec2 v_texCoord;

void main()
{
	vec4 texcol = texture2D(CC_Texture0, v_texCoord);
	vec4 finalColor = v_fragmentColor * texcol;
	if (finalColor.a >= 0.5)
	{
		finalColor.r = finalColor.r + 1.0;
		finalColor.g = finalColor.g + 0.5;
		finalColor.b = finalColor.b + 0.0;
	}
	
	gl_FragColor = finalColor;
}