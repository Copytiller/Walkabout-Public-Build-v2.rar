if slideSpd>0
{slideSpd-=1;}
else{slideSpd=0;}
x+=lengthdir_x(slideSpd,slideDir);
y+=lengthdir_y(slideSpd,slideDir);

if collision_circle(x,y,pickupRange,oPlayer, 1, 0)
{
x+=lengthdir_x(10*global.timeScale,point_direction(x,y,oPlayer.x,oPlayer.y));
y+=lengthdir_y(10*global.timeScale,point_direction(x,y,oPlayer.x,oPlayer.y));
}

if place_meeting(x,y,oPlayer)
{
	global.xp++
	audio_play_sound(sPickUp,1,0,0.5,0,2)
	instance_destroy();
}

if global.round=2
{pickupRange=99999}
	closestCollision = 	place_meeting(x,y,oCollision);
	if closestCollision
	{
	x+=lengthdir_x(2, oPlayer.x)*global.timeScale;
	y+=lengthdir_y(2, oPlayer.y)*global.timeScale;	
	}
	
