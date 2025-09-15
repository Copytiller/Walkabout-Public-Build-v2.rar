global.debug=1;
global.hasRing=0
global.killCount=0
global.cooldown=5
ammo=20;


localCooldown=50;

baseCooldown=50;

global.xp=0;
global.timeScale=1;
currentlyLeveling=0;
currentLevelXPRequirement=20-(1);
optionNew = [3,2,1];
global.xp+=20

global.hp=10

option1=0;
option2=0;
option3=0;

global.attackSpeed = 1;
global.movementSpeed = 0.75;
global.critChance = 1;

global.currentLevelXPRequirementFloor=20;

xpRatioDisplayed=0;

font_add(fTahoma, 20, 1, 0, 0, 0)
draw_set_font(fTahoma);

autofire=1;

//image_xscale=2
//image_yscale=2
x=oSpawnpoint.x
y=oSpawnpoint.y

myShadow=instance_create_depth(x,y,depth+1, oShadow)

myShadow.image_alpha=0.5

global.level=0;

side=0;

scale=2
image_xscale=scale;
image_yscale=scale;
cd=0
cd++

freeX=0;
freeY=0;

global.round=1

global.capacity=2;