t+=1*global.timeScale
x=oPlayer.x
y=oPlayer.y

t_long+=1*global.timeScale

if t_long>100{
if shots>0{
if t>1
{
_list = ds_list_create();
_num = instance_place_list(x, y, oEnemy, _list, false);
if _num > 0
{
	while shots>0{
	target=round(random_range(0,_num))
    for (var i = 0; i < _num; ++i;)
    {
		if i = target{
		targetedEnemy=_list[| i];
        instance_create_depth(targetedEnemy.x, targetedEnemy.y,depth,oiLightning)
		}
    }
	shots-=1;
	}
}
	t=0
	ds_list_destroy(_list); 
	shots-=1
}
	//targetedEnemy=instance_nearest
	//instance_create_depth(targetedEnemy.x, targetedEnemy.y, oPlayer.depth, oiLightning)


}
else
{
	
t_long=0
shots=shotsMax
}


}