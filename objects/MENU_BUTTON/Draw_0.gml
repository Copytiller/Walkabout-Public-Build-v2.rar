/// @description Insert description here
// You can write your code in this editor
draw_self();
image_xscale=1.25
image_yscale=1.25
x=683/2
y=384/2 + button*50 - 40

//if button=1{text="Play"}
//else if button = 2 {text="Option"}
//else if button = 3 {text="Exit"}
draw_text_transformed(x-30,y-10,text, 1, 1, 0)

draw_sprite(sBulletSpecial,0,x-50,y)


