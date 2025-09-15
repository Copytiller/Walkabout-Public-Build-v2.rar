draw_text_transformed(x,y,"WALKABOUT", 5, 5, 0)
selectedButton=buttonArray[buttonPosition]

depth=-999999
draw_arrow(selectedButton.x-100, selectedButton.y, selectedButton.x-50, selectedButton.y, 25)

if keyboard_check_pressed(ord("S"))
{
	if ((buttonPosition+1) <array_length(buttonArray))
	{buttonPosition+=1}
	else{buttonPosition=0}}
	
	if keyboard_check_pressed(vk_space)

{	
	if buttonPosition=0
	{
	room_goto(Room_Level)
	}
	else if buttonPosition=1
	{
		room_goto(Room_Level_1)
	}
	else if buttonPosition=2
	{
		room_goto(Room_Level_2)
	}
	audio_stop_sound(song_MENU_THEME)
	
}