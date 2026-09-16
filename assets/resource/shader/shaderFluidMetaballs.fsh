#ifdef GL_ES
precision lowp float;
#endif

varying vec4 v_fragmentColor;
varying vec2 v_texCoord;

void main()
{
	vec4 texcol = texture2D(CC_Texture0, v_texCoord);
	vec4 finalColor = texcol;
	if(texcol.b > 0.8)
	{
		// Ë®
		if (texcol.a > 0.7) {
			finalColor = vec4(0.0, 0.61, 1.0, 0.8);
		}
		else if (texcol.a > 0.1)
		{
			float da = 1.0 - (texcol.a-0.1) / 0.6;
			float a = 0.8;
			if(da > 0.7)
			{
				a = (1.0-da) * 2.0;
			}
			finalColor = vec4(da * 0.51, 0.61 + da * 0.25, 1.0, a);
		}
		else
		{
			finalColor.a = 0.0;
		}
	}
	else if(texcol.r > 0.8)
	{
		// »ð
		if (texcol.a > 0.8) {
			finalColor = vec4(1.0, 0.3, 0.0, 0.8);
		}
		else if (texcol.a > 0.3)
		{
			float da = 1.0 - (texcol.a-0.1) / 0.6;
			float a = 0.8;
			if(da > 0.7)
			{
				a = (1.0-da) * 2.0;
			}
			finalColor = vec4(1.0, 0.4 + da * 0.25, 0.0, a);
		}
		else
		{
			float a = texcol.a * (3.0 + CC_SinTime.w);
			if(a > 0.8) a = 0.8;
			finalColor = vec4(1.0, 0.6, 0.0, a);
		}
	}
	gl_FragColor = finalColor;
}