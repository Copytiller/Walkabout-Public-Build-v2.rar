if collision_circle(x, y, 1000, oPlayer, 1, 1)
{draw_self();}


//draw_text(x,y+10,(point_distance(x,y,oPlayer.x,oPlayer.y)))

if global.oDonuts>1{

//draw_text(x,y+20,(point_distance(closestDonut.x, closestDonut.y, oPlayer.x, oPlayer.y)))
mp_potential_step(oPlayer.x, oPlayer.y, global.enemySpd*global.timeScale, false);
//sprite_index=sFootsoldier;


spinSpeed = sin(current_time%10)
if sprite_index=sDonut
{image_angle+=(point_distance(x,y,oPlayer.x,oPlayer.y)*0.1)*global.timeScale*0.5*spinSpeed;}
else if sprite_index=sSkull
{scaleTotal = 2*0.88; if x<oPlayer.x{image_xscale=scaleTotal}else{image_xscale=-scaleTotal} image_yscale=scaleTotal; image_speed=1;}

if !collision_circle(x, y, 1000, oPlayer, 1, 1)
{
	x= oPlayer.x+lengthdir_x(900, random_range(0,359)) 
	y= oPlayer.y+lengthdir_y(900, random_range(0,359))
}

}


if place_meeting(x,y, oEarthquake)
{
	
	hp-=0.2;
	hitSounds = [sDamage1]
	audio_play_sound(hitSounds[0],1,0);
	audio_sound_pitch(hitSounds[0],10)
	dmgNumbers=instance_create_depth(x,y,depth-1,oDamageNumbers);
	dmgNumbers.num=1
	shader_set(shaderWhite);
	time_param = shader_get_uniform(shaderWhite,"u_time");
	shader_set_uniform_f(time_param, timeRun);  //Attempting to pass in variables here

	randomRangeR=1; randomRangeB=1; randomRangeG=1;
	float_param=shader_get_uniform(shaderWhite,"var1");
	shader_set_uniform_f(float_param, randomRangeR);	
		float_param=shader_get_uniform(shaderWhite,"var2");
	shader_set_uniform_f(float_param, randomRangeG);	
		float_param=shader_get_uniform(shaderWhite,"var3");
	shader_set_uniform_f(float_param, randomRangeB);	
	draw_self();
	shader_reset();
	
}
if (place_meeting(x, y, oBullet))
	{	
	bulletInQuestion=instance_nearest(x,y,oBullet);
		bulletDirection=point_direction(x,y,bulletInQuestion.x,bulletInQuestion.y)
	x+=lengthdir_x(8,bulletDirection+180)
	y+=lengthdir_y(8,bulletDirection+180)
	
	instance_destroy(bulletInQuestion);
	hp-=0.5;
	//if sprite_index = sDonut
	//{image_index=1}
	randomize();
	hitSounds = [sDamage1]
	audio_play_sound(hitSounds[0],1,0);
	audio_sound_pitch(hitSounds[0],10+random_range(-2,2))
	
	instance_create_depth(x,y,depth-1,oDamageNumbers);

	shader_set(shaderWhite);
	time_param = shader_get_uniform(shaderWhite,"u_time");
	shader_set_uniform_f(time_param, timeRun);  //Attempting to pass in variables here

	randomRangeR=1; randomRangeB=1; randomRangeG=1;
	float_param=shader_get_uniform(shaderWhite,"var1");
	shader_set_uniform_f(float_param, randomRangeR);	
		float_param=shader_get_uniform(shaderWhite,"var2");
	shader_set_uniform_f(float_param, randomRangeG);	
		float_param=shader_get_uniform(shaderWhite,"var3");
	shader_set_uniform_f(float_param, randomRangeB);	
	draw_self();
	shader_reset();
	}
else if (place_meeting(x, y, oBullet2))
	{	
	bulletInQuestion=instance_nearest(x,y,oBullet2);
	bulletDirection=point_direction(x,y,bulletInQuestion.x,bulletInQuestion.y)
	x+=lengthdir_x(8,bulletDirection+180)
	y+=lengthdir_y(8,bulletDirection+180)
	instance_destroy(bulletInQuestion);
	hp-=2;
	dmgNum=instance_create_depth(x,y,depth, oDamageNumbers)
	dmgNum.num=20;
	//if sprite_index = sDonut
	//{image_index=1}
	randomize();
	hitSounds = [sDamage1]
	audio_play_sound(hitSounds[0],1,0);
	audio_sound_pitch(hitSounds[0],10+random_range(-2,2))

	shader_set(shaderWhite);
	time_param = shader_get_uniform(shaderWhite,"u_time");
	shader_set_uniform_f(time_param, timeRun);  //Attempting to pass in variables here
	draw_self();
	shader_reset();
	}
	else if (place_meeting(x, y, oiLightninghitbox))
	{	
	//bulletInQuestion=instance_nearest(x,y,oBullet2);
	//bulletDirection=point_direction(x,y,bulletInQuestion.x,bulletInQuestion.y)

	x+=lengthdir_x(8,point_direction(x,y,oPlayer.x,oPlayer.y)+180)
	y+=lengthdir_y(8,point_direction(x,y,oPlayer.x,oPlayer.y)+180)
	//instance_destroy(bulletInQuestion);
	hp-=0.1;
	dmgNum=instance_create_depth(x,y,depth, oDamageNumbers)
	dmgNum.num=1;
	//if sprite_index = sDonut
	//{image_index=1}
	randomize();
	hitSounds = [sDamage1]
	audio_play_sound(hitSounds[0],1,0);
	audio_sound_pitch(hitSounds[0],10+random_range(-2,2))

	shader_set(shaderWhite);
	time_param = shader_get_uniform(shaderWhite,"u_time");
	shader_set_uniform_f(time_param, timeRun);  //Attempting to pass in variables here
	draw_self();
	shader_reset();
	}
		else
	{
	draw_self();
	shader_reset();
	}








if keyboard_check_pressed(ord("P"))
{
instance_destroy(self);}

