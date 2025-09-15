image_angle+=25

x+=lengthdir_x(spd,gotoDirection)
y+=lengthdir_y(spd,gotoDirection)

spd-=(spd*0.01)+0.1

if instance_place(x,y,oPlayer) //&& t>50
{oBoomerangITEM.ammo=0}


//if t<50
//{t++}