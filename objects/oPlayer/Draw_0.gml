draw_self();
//draw_text(oPlayer.x,oPlayer.y,draw_get_font);

if keyboard_check_pressed(ord("1"))
{
	global.timeScale=global.timeScale/2;	
}


	
	if myShadow.collision{
//draw_text(x,y+20,(point_distance(closestDonut.x, closestDonut.y, oPlayer.x, oPlayer.y)))
	directionFree=point_direction(x,y,freeX,freeY)
	x+=lengthdir_x(1, directionFree)*global.timeScale;
	y+=lengthdir_y(1, directionFree)*global.timeScale;	
	nearestCollision=instance_nearest(myShadow.x,myShadow.y,oCollision)
	directionCollision=point_direction(x,y,nearestCollision.x,nearestCollision.y)
	x+=lengthdir_x(spd,directionCollision+180)
	y+=lengthdir_y(spd,directionCollision+180)
	}
	else{
	freeX = x
	freeY = y}
	
