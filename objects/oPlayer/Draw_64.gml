
xpRatio=(((global.xp-global.currentLevelXPRequirementFloor)/(currentLevelXPRequirement-global.currentLevelXPRequirementFloor))*100)
if xpRatioDisplayed > xpRatio 
{
	xpRatioDisplayed=0;
}else if global.timeScale>0
{
	xpRatioDisplayed = lerp(xpRatioDisplayed, xpRatio, 0.1)
}

draw_text(50,65, currentLevelXPRequirement)
draw_text(50,50, string(global.xp) + "/")
draw_text(50, 80, "Enemies left..." + string(global.enemiesToSpawn))

if global.debug=1
{
draw_text_color(50,25+75,string("mvmntSpd=") + string(global.movementSpeed), c_purple, c_purple, c_purple, c_purple,1);
draw_text_color(50,25+100,string("atkSpeed=")+ string(global.attackSpeed), c_purple, c_purple, c_purple, c_purple, 1);
draw_text_color(50,25+125,string("cooldown=")+ string(global.cooldown), c_purple, c_purple, c_purple, c_purple, 1);

}
draw_healthbar(50,25, 200, 50, xpRatioDisplayed, c_gray, c_blue, c_purple, 0, 1, 1)
if global.enemiesToSpawn==0 && !instance_exists(oEnemy) && global.round=1
	{
	//show_message("good jorb! u effin win!!!")
	global.round=2
	
	//game_end()
	}