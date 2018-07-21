/// @description Insert description here
// You can write your code in this editor
life_disp = string(playerhealth);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_text1);
draw_text_transformed_color(x,y-149,life_disp,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x,y-151,life_disp,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x-1,y-150,life_disp,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x+1,y-150,life_disp,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x,y-150,life_disp,1,1,0,c_red,c_red,c_maroon,c_maroon,1);
draw_self();