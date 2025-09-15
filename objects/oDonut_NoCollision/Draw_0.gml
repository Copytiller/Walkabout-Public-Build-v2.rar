draw_self();


//draw_text(x,y+10,(point_distance(x,y,oPlayer.x,oPlayer.y)))

if global.oDonuts>1{
	closestDonut = collision_circle(x, y, 5, oEnemy, 1, 1);
	if closestDonut{
//draw_text(x,y+20,(point_distance(closestDonut.x, closestDonut.y, oPlayer.x, oPlayer.y)))

if (point_distance(x,y,oPlayer.x,oPlayer.y))<(point_distance(closestDonut.x, closestDonut.y, oPlayer.x, oPlayer.y))
	{
		//
	//show_message("");
	//otherDonut = instance_nearest(x,y, oDonut)
	directionToDonut=point_direction(x,y,closestDonut.x,closestDonut.y)
	directionToPlayer=point_direction(x,y,oPlayer.x,oPlayer.y)
	x+=lengthdir_x(2, directionToPlayer+180)*global.timeScale;
	y+=lengthdir_y(2, directionToPlayer+180)*global.timeScale;	
	
	//if (point_distance(x,y,oPlayer.x,oPlayer.y))>200
	//{
	//x+=lengthdir_x(2, directionToDonut+180);
	//y+=lengthdir_y(2, directionToDonut+180);
	//}
		//
	}

	}else{	x+=lengthdir_x(1,point_direction(x,y,oPlayer.x,oPlayer.y))*global.timeScale;
	y+=lengthdir_y(1,point_direction(x,y,oPlayer.x,oPlayer.y))*global.timeScale;
}
}
//sprite_index=sFootsoldier;


spinSpeed = sin(current_time%10)
if sprite_index=sDonut
{image_angle+=(point_distance(x,y,oPlayer.x,oPlayer.y)*0.1)*global.timeScale*0.5*spinSpeed;}
else if sprite_index=sHoodWalking
{scaleTotal = 3; if x<oPlayer.x{image_xscale=scaleTotal}else{image_xscale=-scaleTotal} image_yscale=scaleTotal; image_speed=1;}

if !collision_circle(x, y, 1000, oPlayer, 1, 1)
{
	x= oPlayer.x+lengthdir_x(1000, random_range(0,359)) 
	y= oPlayer.y+lengthdir_y(1000, random_range(0,359))
}








if (place_meeting(x, y, oBullet))
	{	
	bulletInQuestion=instance_nearest(x,y,oBullet);
		bulletDirection=point_direction(x,y,bulletInQuestion.x,bulletInQuestion.y)
	x+=lengthdir_x(8,bulletDirection+180)
	y+=lengthdir_y(8,bulletDirection+180)
	
	instance_destroy(bulletInQuestion);
	hp-=1;
	//if sprite_index = sDonut
	//{image_index=1}
	randomize();
	hitSounds = [sDamage1]
	audio_play_sound(hitSounds[0],1,0);
	audio_sound_pitch(hitSounds[0],10)

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
	hp-=3;
	//if sprite_index = sDonut
	//{image_index=1}
	randomize();
	hitSounds = [sDamage1]
	audio_play_sound(hitSounds[0],1,0);
	audio_sound_pitch(hitSounds[0],10)

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











