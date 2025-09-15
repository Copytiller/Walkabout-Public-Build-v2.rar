



depth=-y+5



//hp = hp*global.debug;
if fade=1
{	image_alpha-=0.1;
	if image_alpha<0.01{
	instance_destroy(self);
	global.killCount++}}

if hp <1 && fade=0
{
	for (var i = 0; i < xpAmount; i += 1)
	{
		instance_create_depth(x,y,depth,oXP)
		//if sprite_index = sFootsoldier{instance_create_depth(x,y,depth,oXP)}
	}
	fade=1

}else if image_alpha<1{image_alpha+=0.01}



