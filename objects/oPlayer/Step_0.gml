
//y+=lengthdir_y(555,180)


//myShadow.x = x
//myShadow.y = y+36



x=myShadow.x
y=myShadow.y-18
//myShadow.x = x
//myShadow.y e= y+36

if  keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D"))
{walking=1*global.timeScale}
else
{walking=0}
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
if keyboard_check(ord("W")){y+=lengthdir_y(spd,90)}
else if keyboard_check(ord("A")){x+=lengthdir_x(spd,180)}
else if keyboard_check(ord("S")){y+=lengthdir_y(spd,270)}
else if keyboard_check(ord("D")){x+=lengthdir_x(spd,0)}}
if global.timeScale>0
{
	if keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D")){sprite_index=sHoodWalking image_speed=0.33;}else{sprite_index=sHood }
	if keyboard_check(ord("A")){image_xscale=-scale image_yscale=scale}
	if keyboard_check(ord("D")){image_xscale=scale image_yscale=scale}
}
maxAmmo=50;
ammo+=1;
if ammo>maxAmmo
{ammo=maxAmmo+1;}
if ((mouse_check_button(mb_left) || autofire) && (ammo>maxAmmo/global.attackSpeed) && global.timeScale>0 && instance_exists(oEnemy))&& instance_exists(oGun)
{
ammo-=(maxAmmo/global.attackSpeed);
audio_play_sound(sFire,1,0,2)
bulletCreate=instance_create_depth(x,y,depth,oBullet);
bulletCreate.bulletTargetX=oCursor.x;
bulletCreate.bulletTargetY=oCursor.y;
randomize();
}

localCooldown-= 1/(global.cooldown)
if localCooldown<0
{
if instance_exists(oRing)
	{
		for (var i = 0; i < 4; i += 1)
		{
		bulletCreate=instance_create_depth(x,y,depth,oBullet2);
		bulletCreate.sprite_index=sBulletSpecial_1;
		audio_play_sound(sFire2, 1, 0,1,0,0.05+random_range(-1,1)*0.05)
		bulletCreate.bulletTargetX=oPlayer.x+lengthdir_x(5,90*i);
		bulletCreate.bulletTargetY=oPlayer.y+lengthdir_y(5, 90*i);
		bulletCreate.image_xscale=4;
		bulletCreate.image_yscale=4;		
		bulletCreate.image_speed=0.5
		}
	}
localCooldown=baseCooldown
}

if global.xp>currentLevelXPRequirement && currentlyLeveling=0
{
	global.level++;
	currentlyLeveling=1;
	global.timeScale=0;
	createdMenu=instance_create_depth(x,y,depth,oMenu);
	global.currentLevelXPRequirementFloor=currentLevelXPRequirement
	currentLevelXPRequirement+=50+currentLevelXPRequirement*0.1
	for (var i = 0; i < 3; i += 1)
	{
		//show_message("dinky");
		instance_create_depth(x,y,depth,oMenu);
		optionNew=instance_create_depth(x,y, depth, oOption);		
		optionNew.number=i+1;
		if i=0{option1=optionNew.id optionNew.option=1}
		if i=1{option2=optionNew.id optionNew.option=2}
		if i=2{option3=optionNew.id optionNew.option=3}
	}
}
if currentlyLeveling=0 && global.xp<currentLevelXPRequirement
{
	global.timeScale=1;
}

if currentlyLeveling = 1
	{
	if keyboard_check_pressed(ord("1"))
	{
	option1.effect=1;
	instance_destroy(oMenu)
	currentlyLeveling=0;
	instance_destroy(option2);instance_destroy(option3);
	}
	if keyboard_check_pressed(ord("2"))
	{
	option2.effect=1;
	instance_destroy(oMenu)
	currentlyLeveling=0;
	instance_destroy(option1);instance_destroy(option3)	;
	}
	if keyboard_check_pressed(ord("3"))
	{	
	option3.effect=1;
	instance_destroy(oMenu)
	currentlyLeveling=0;
	instance_destroy(option1);instance_destroy(option2);
	}
}


if instance_place(x,y,oEnemy){global.hp-=0.1}

if global.hp <0
{show_message("You lose! Your score (level) was: " + string(global.killCount)) 
	room_goto(Room_Title)
	audio_pause_sound(oManager.songPlay)}