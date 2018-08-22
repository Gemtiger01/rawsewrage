/// @description Insert description here
// You can write your code in this editor

//life_disp = string(playerhealth);
//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
//draw_set_font(fnt_text1);
//draw_text_transformed_color(x,y-49,life_disp,1,1,0,c_black,c_black,c_black,c_black,1);
//draw_text_transformed_color(x,y-51,life_disp,1,1,0,c_black,c_black,c_black,c_black,1);
//draw_text_transformed_color(x-1,y-50,life_disp,1,1,0,c_black,c_black,c_black,c_black,1);
//draw_text_transformed_color(x+1,y-50,life_disp,1,1,0,c_black,c_black,c_black,c_black,1);
//draw_text_transformed_color(x,y-50,life_disp,1,1,0,c_red,c_red,c_maroon,c_maroon,1);

//draw_set_colour(c_red);
//if (npj_target_x != 0 or npj_target_y != 0){
//	if (is_jumping){
//		draw_line(phy_position_x,phy_position_y,npj_target_x, npj_target_y);
//	}
//}
//physics_world_draw_debug(phy_debug_render_shapes);
if (!collision_point( x, y, obj_stretchy_water, false, true ) or is_jumping){
	draw_sprite_ext(spr_playershadow,0, x, y,1,1,0,0,.75 );
}
draw_self();
