mp_grid_add_instances(global.grid, oCollision, false);

if instance_place(x,y,oPathfinder) && dudeToRunFrom=0
{	dudeInQuestion=instance_nearest(x,y,oPathfinder)
	dudeToRunFrom=1
}

if dudeToRunFrom=1
{
	dir=point_direction(x,y,dudeInQuestion.x,dudeInQuestion.y)+180
	x+=lengthdir_x(1,dir)
	y+=lengthdir_y(1,dir)
	if !instance_place(x,y,dudeInQuestion) 
	{dudeToRunFrom=0
	dudeInQuestion=0}
}
else
{
with (oPathfinder)
{
    path = path_add();
    if (mp_grid_path(global.grid, path, x, y, oPlayer.x, oPlayer.y, 1))
    {
        path_start(path, 1, 3, 0);
    }
}
}