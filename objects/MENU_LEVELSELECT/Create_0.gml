x= 150
y= 50
depth=-9999
levelOne=instance_create_depth(x,y+50,depth,MENU_BUTTON)
levelOne.button=1
levelOne.text="Level 1"

levelTwo=instance_create_depth(x,y+100,depth,MENU_BUTTON)
levelTwo.button=2
levelTwo.text="Level 2"

levelThree=instance_create_depth(x,y+150,depth,MENU_BUTTON)
levelThree.button=3
levelThree.text="Level 3"

buttonPosition=0
buttonArray = [levelOne, levelTwo, levelThree]

//buttonArray=