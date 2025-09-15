x= 150
y= 50
depth=-9999
buttonPlay=instance_create_depth(x,y+50,depth,MENU_BUTTON)
buttonPlay.button=1
buttonPlay.text = "Play"

buttonSettings=instance_create_depth(x,y+100,depth,MENU_BUTTON)
buttonSettings.button=2
buttonSettings.text = "Settings"

buttonExit=instance_create_depth(x,y+150,depth,MENU_BUTTON)
buttonExit.button=3
buttonExit.text = "Exit"

buttonPosition=0
buttonArray = [buttonPlay, buttonSettings, buttonExit]

//buttonArray=