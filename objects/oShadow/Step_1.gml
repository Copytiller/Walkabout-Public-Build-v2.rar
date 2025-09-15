depth=oPlayer.depth-1

if place_meeting(x,y,oCollision)
{collision=1}
else
{collision=0}

spd=2*global.movementSpeed*global.timeScale;
image_speed=global.timeScale*(spd/4);
if keyboard_check(ord("W")) && keyboard_check(ord("A"))
{
	if !place_meeting(x+lengthdir_x(spd/2,135),y+lengthdir_y(spd-1,135),oCollision)
	{
	x+=lengthdir_x(spd,135)
	y+=lengthdir_y(spd,135)
	}
}
else if keyboard_check(ord("W")) && keyboard_check(ord("D"))
{
	if !place_meeting(x+lengthdir_x(spd/2,45),y+lengthdir_y(spd-1,45),oCollision)
	{
	x+=lengthdir_x(spd,45)
	y+=lengthdir_y(spd,45)
	}
}
else if keyboard_check(ord("S")) && keyboard_check(ord("A"))
{
	if !place_meeting(x+lengthdir_x(spd/2,225),y+lengthdir_y(spd-1,225),oCollision)
	{
	x+=lengthdir_x(spd,225)
	y+=lengthdir_y(spd,225)	
	}
}
else if keyboard_check(ord("S")) && keyboard_check(ord("D"))
{
	if !place_meeting(x+lengthdir_x(spd/2,315),y+lengthdir_y(spd,315),oCollision)
	{
		x+=lengthdir_x(spd,315)
		y+=lengthdir_y(spd,315)
	}
}
else{
if keyboard_check(ord("W")){
	if !place_meeting(x+lengthdir_x(spd/2,90),y+lengthdir_y(spd,90),oCollision)
	{y+=lengthdir_y(spd,90)}}
else if keyboard_check(ord("A")){
	if !place_meeting(x+lengthdir_x(spd/2,180),y+lengthdir_y(spd,180),oCollision)
	{x+=lengthdir_x(spd,180)}}
else if keyboard_check(ord("S")){
	if !place_meeting(x+lengthdir_x(spd/2,270),y+lengthdir_y(spd,270),oCollision)
	{y+=lengthdir_y(spd,270)}}
else if keyboard_check(ord("D")){
	if !place_meeting(x+lengthdir_x(spd/2,0),y+lengthdir_y(spd,0),oCollision)
	{x+=lengthdir_x(spd,0)}}}