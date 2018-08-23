/// @description Insert description here
// You can write your code in this editor
if(gamepad_is_connected(0)){
	draw_set_font(fnt_text1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(c_yellow);
	draw_text(display_get_width()/2,display_get_height() - 30, "Or Press Start On Your Controller");
}