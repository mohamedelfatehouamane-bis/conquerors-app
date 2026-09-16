#ifdef GL_ES
precision lowp float;
#endif
 
varying vec4 v_fragmentColor;
varying vec2 v_texCoord;

uniform vec4 u_clipCircle; // x, y center, z radius
 
void main()
{
	vec2 center = u_clipCircle.xy;
	float radius = u_clipCircle.z;
	vec2 pos = v_texCoord - center;
	float len = length(pos);
    if (len > radius) 
	{
		discard;
    }	
	
	vec4 texcol = texture2D(CC_Texture0, v_texCoord);	
	texcol.a =  texture2D(CC_Texture1, v_texCoord).r;
	vec4 finalColor = v_fragmentColor * texcol;	
	gl_FragColor = finalColor;
}