#ifdef GL_ES
precision lowp float;
#endif

varying vec4 v_fragmentColor;
varying vec2 v_texCoord;

void main()
{
	vec4 texcol = texture2D(CC_Texture0, v_texCoord);
	vec4 finalColor = texcol;
	if(texcol.b > 0.1)
	{
		// Ë®
		if (texcol.a > 0.7) {
			finalColor = vec4(0, 0.61, 1, 0.8);
		}
		else if (texcol.a > 0.1)
		{
			float da = 1 - (texcol.a-0.1) / 0.6;
			float a = 0.8;
			if(da > 0.7)
			{
				a = (1-da) * 2;
			}
			finalColor = vec4(da * 0.51, 0.61 + da * 0.25, 1, a);
		}
		else
		{
			finalColor.a = 0;
		}
	}
	else if(texcol.r > 0.1)
	{
		// »ð
		if (texcol.a > 0.85) {
			finalColor = vec4(1, 0.55, 0, 0.8);
		}
		else if (texcol.a > 0.75)
		{
			float da = 1 - (texcol.a - 0.75) / 0.1;
			finalColor = vec4(1, 0.55 - da * 0.32, da, 0.8);
		}
		else
		{
			float a = texcol.a * (1 + CC_SinTime.w);
			if(a > 0.8) a = 0.8;
			finalColor = vec4(1, 0.24, 0, a);
		}
	}
	gl_FragColor = finalColor;
}