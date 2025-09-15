if !window_has_focus() && global.timeScale
{
    global.timeScale=0
	pause = 1
}
if pause = 1 && window_has_focus()
{
	pause=0
	global.timeScale=1
}

