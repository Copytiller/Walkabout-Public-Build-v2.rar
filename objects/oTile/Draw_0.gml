timeRun+=0.01;

//static shader
//var lay_id = layer_get_id("Instances");
//layer_shader(layer_get_id("Instances"), Shader1); 

//entire screen screen but not static
randomize();
shader_set(shaderWhite);
time_param = shader_get_uniform(shaderWhite,"u_time");
shader_set_uniform_f(time_param, timeRun);  //Attempting to pass in variables here


float_param=shader_get_uniform(shaderWhite,"var1");
shader_set_uniform_f(float_param, randomRangeR);  //Attempting to pass in variables here


float_param=shader_get_uniform(shaderWhite,"var2");
shader_set_uniform_f(float_param, randomRangeG);  //Attempting to pass in variables here

float_param=shader_get_uniform(shaderWhite,"var3");
shader_set_uniform_f(float_param, randomRangeB);  //Attempting to pass in variables here


draw_self();
shader_reset();
//draw_text(x,y+50,randomRangeR)