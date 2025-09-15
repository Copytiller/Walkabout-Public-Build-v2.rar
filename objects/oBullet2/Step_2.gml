if fireDirection=999
{
	fireDirection=point_direction(x,y,bulletTargetX,bulletTargetY);
}
image_angle=fireDirection;
x+=lengthdir_x(bulletSpeed*global.timeScale,fireDirection);
y+=lengthdir_y(bulletSpeed*global.timeScale,fireDirection);

if !collision_circle(x, y, 1000, oPlayer, 1, 1)
{instance_destroy(self)}

bulletSpeed+=0.05+bulletSpeed*0.01