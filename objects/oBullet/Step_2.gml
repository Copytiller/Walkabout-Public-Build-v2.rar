if fireDirection=0
{
	fireDirection=point_direction(x,y,bulletTargetX,bulletTargetY);
}
x+=lengthdir_x(5*global.timeScale,fireDirection);
y+=lengthdir_y(5*global.timeScale,fireDirection);
//instance_destroy(self);
if !collision_circle(x, y, 1000, oPlayer, 1, 1)
{instance_destroy(self)}
