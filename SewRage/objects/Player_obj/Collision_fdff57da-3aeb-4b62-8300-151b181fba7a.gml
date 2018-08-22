/// @description Insert description here
// You can write your code in this editor
if(is_jumping){
	set_sprite_index = last_sprite_index;
	is_jumping = false;
	phy_speed_x = 0;
	phy_speed_y = 0;
	xdir=0;
	ydir=0;
	if (xdir != 0){
		image_xscale = image_xscale * xdir;
	}
}