/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_text11);
shader_set(shd_bw);
draw_sprite(global.PauseScreenShot,0,0,0);
shader_reset();

//Drawing
draw_text(window_get_width()/2.3,window_get_height()/2,"PAUSE");
draw_text(window_get_width()/4.1,window_get_height()/1.5,"Press Escape to Resume!");
//draw_sprite(sprite,0,view_wview/2,view_hview/2)
draw_set_alpha(1);

draw_set_color(c_orange);
