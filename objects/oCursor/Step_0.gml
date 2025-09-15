scale=2.5;
image_xscale=scale;
image_yscale=scale;
window_set_cursor(cr_none);
if instance_exists(oEnemy)
{
	nearestEnemy=instance_nearest(oPlayer.x,oPlayer.y,oEnemy)
	if collision_rectangle(oPlayer.x-683/2,oPlayer.y-384/2,oPlayer.x+683/2,oPlayer.y+384/2,nearestEnemy,1,1)
	{	x=lerp(x,nearestEnemy.x,0.08)
	y=lerp(y,nearestEnemy.y,0.08)}
	
else
{
	t++;
	x=oPlayer.x+lengthdir_x(50,t);
	y=oPlayer.y+lengthdir_y(50,t);
}

}
else
{
	t++;
	x=oPlayer.x+lengthdir_x(50,t);
	y=oPlayer.y+lengthdir_y(50,t);
}

if instance_place(x,y,oEnemy)
{image_alpha-=0.01}else{image_alpha+=0.01}
if image_alpha<0{image_alpha=0}
else if image_alpha>1{image_alpha=1}