/// @description Insert description here
// You can write your code in this editor
//increase values
time += increase;

//calculations
if(time >= 25 or time <= 0){increase = -increase}

//Drawing
draw_set_alpha(lerp(0,1,time/25))
draw_text(window_get_width()/2,window_get_height()/1.1,"Press Start to Continue!")
//draw_sprite(sprite,0,view_wview/2,view_hview/2)
draw_set_alpha(1)
draw_set_font(fnt_text11)
draw_set_color(c_green)