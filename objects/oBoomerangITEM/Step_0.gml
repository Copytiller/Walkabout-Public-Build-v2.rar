x=oPlayer.x
y=oPlayer.y
ammo-=1
if ammo<0
{
instance_create_depth(x,y,depth,oBoomerang)
ammo=99}