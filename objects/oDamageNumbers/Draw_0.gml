draw_set_font(fFontDmg)

draw_text_color(x,y,string(num), c_white,c_purple,c_white,c_purple,alpha);
alpha=lerp(alpha, 0, 0.01)
y=lerp(y, ogPositionY-10,0.01)
draw_set_font(fFontDefault );
if alpha == 0
{instance_destroy(self)}
