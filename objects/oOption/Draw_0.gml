offset=150;
image_xscale=1;
image_yscale=1;
x=oPlayer.x-offset*0.36
y=oPlayer.y+100*number-(offset*1.5)+30

draw_text_color(x-sprite_width/2 ,y-sprite_height*(3/4)-5,"press " + string(number), c_white,c_white,c_white,c_white,1);
draw_text_color(x+50,y-45, description, c_white,c_white,c_white,c_white,1);

if ((optionType == 1) && global.choice1=1) || (lockedInChoice = 1)
	{
	description = string("Increase ATTACK SPEED\nfrom ") + string(global.attackSpeed) + "\n to " + string(global.attackSpeed+global.attackSpeed*0.25)
	image_index=0;
	global.choice1=0;
	lockedInChoice = 1
	}
else if ((optionType == 2) && global.choice2=1) || (lockedInChoice=2)
	{
	description =  string("Increase\nMOVEMENT SPEED\nfrom ") + string(global.movementSpeed) + "\n to " + string(global.movementSpeed+0.10)
	image_index=1;
	global.choice2=0;
	lockedInChoice=2
	}
else if ((optionType == 3) && global.choice3=1) || (lockedInChoice=3)
	{
	image_index=3;
	
	description = string("Increase ATTACK SPEED\nfrom ") + string(global.attackSpeed) + "\n to " + string(global.attackSpeed+global.attackSpeed*0.35) + "\n But up the spawn-rate."
	
	global.choice3=0;
	lockedInChoice=3;
	}
else if ((optionType == 4) && global.choice4=1 && !instance_exists(oRing)) || (lockedInChoice=4) && global.capacity>0
	{
	image_index=7;
	
	description = string("Fire a\nmagical bullet.")
	
	global.choice4=0;
	lockedInChoice=4;
	}
else if (((optionType == 5) && global.choice5=1) || (lockedInChoice=5)) && !instance_exists(oBoots)  && global.capacity>0
	{
	image_index=6;
	
	description = string("Earthquake \nsteps that build\n by walking.")	
	global.choice5=0;
	lockedInChoice=5;
	}
else if (((optionType == 6) && global.choice6=1) || (lockedInChoice=6)) && !instance_exists(oGun) && global.capacity>0
	{
	image_index=5;
	
	description = string("Fire bullets\nat set\nintervals.")
	global.choice6=0;
	lockedInChoice=6;
	}
else if (((optionType == 7) && global.choice7=1) || (lockedInChoice=7))
	{
	image_index=9;
	
	description = string("Rook Hex\n Cardinal knives.")
	global.choice7=0;
	lockedInChoice=7;
	}
	else if (((optionType == 8) && global.choice8=1) || (lockedInChoice=8)) 
	{
	image_index=10;
	
	description = string("Zap Stone\nLightning strikes.")
	global.choice8=0;
	lockedInChoice=8;
	}
	else if (((optionType == 9) && global.choice9=1) || (lockedInChoice=9)) 
	{
	image_index=11;
	
	description = string("Pocketwatch\nReduce Cooldown.")
	global.choice9=0;
	lockedInChoice=9;
	}
	else if (((optionType == 10) && global.choice10=1) || (lockedInChoice=10)) 
	{
	image_index=12;
	description = string("Doolie\n Rapidfire SMGs.")
	global.choice10=0;
	lockedInChoice=10;
	}
	
	else{optionType=round(random_range(1,optionAmount));}


if effect=1
{
	if (optionType == 1)
	{
	global.attackSpeed+=global.attackSpeed*0.25
	}
	else if (optionType == 2)
	{
	global.movementSpeed+=0.10
	}
	else if (optionType == 3)
	{
	global.attackSpeed+=global.attackSpeed*0.35; 
	global.timeToSpawn=(global.timeToSpawn-100);
	}
		else if (optionType == 4)
	{
		instance_create_depth(x,y,depth,oRing)
		global.capacity-=1
	}
		else if (optionType == 5)
	{
		instance_create_depth(x,y,depth,oBoots)
		global.capacity-=1
	}
		else if (optionType == 6)
	{
	//
	instance_create_depth(x,y,depth,oGun)
	global.capacity-=1
	}
			else if (optionType == 7)
	{
	//
	instance_create_depth(x,y,depth,oGun)
	}
			else if (optionType == 8)
	{
	//
	instance_create_depth(x,y,depth,oGun)
	}
			else if (optionType == 9)
	{
	//
	instance_create_depth(x,y,depth,oGun)
	}
			else if (optionType == 10)
	{
	//
	instance_create_depth(x,y,depth,oGun)
	}
global.debug=0
instance_destroy();
}



draw_self();
