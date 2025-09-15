t+=global.timeScale;
global.timeToSpawn=(144/2)/((global.level/5)+1);
if (tCurrent+((global.timeToSpawn)-1)<t) && global.enemiesToSpawn>0
{
	tCurrent= t;
	spawnDirection=random_range(0,359)
	if instance_number(oEnemy)<100{
	instance_create_depth(oPlayer.x+lengthdir_x(spawnRange,spawnDirection),oPlayer.y+lengthdir_y(spawnRange,spawnDirection),depth,oEnemy);
	randomize();
	global.enemiesToSpawn-=1//*(random_range(0,1));}
	}
}


global.enemySpd=1+global.level*0.1

if global.enemiesToSpawn <1 && (instance_number(oEnemy)==0)
{timer++
	global.round=2
	if timer>250
	{
	global.enemiesToSpawn+=50
	
	timer = 0
	global.round=1}}