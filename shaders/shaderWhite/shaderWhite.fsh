// Simple passthrough fragment shader
// 
uniform float u_time;  //Attempting to pass in her
uniform float var1; //pass2
uniform float var2; //pass
uniform float var3; //pass


varying vec2 v_vTexcoord;
varying vec4 v_vColour;
//#define M_PI 3.1415926535897932384626433832795;



void main()
{

    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ); //texture2D is a direct call to a color from a given texture, in this case the screen is the parameter
	//gl_FragColor.a = sin(u_time)/360.0(2.0*M_PI);
	//gl_FragColor.r=sin(u_time);
	//gl_FragColor.r=sin(u_time);
	//gl_FragColor.r=sin(u_time);
	gl_FragColor.r=var1;
	gl_FragColor.g=var2;
	gl_FragColor.b=var3;

}

