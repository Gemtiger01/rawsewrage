/// @description Insert description here
// You can write your code in this editor
life_disp = string(hp);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_text1);
draw_text_transformed_color(x,y-79,life_disp,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x,y-81,life_disp,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x-1,y-80,life_disp,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x+1,y-80,life_disp,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x,y-80,life_disp,1,1,0,c_blue,c_blue,c_aqua,c_aqua,1);
draw_self();