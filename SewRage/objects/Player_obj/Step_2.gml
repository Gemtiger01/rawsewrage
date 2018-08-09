/// @description Insert description here
// You can write your code in this editor
if(phy_position_x < phy_position_xprevious - 1){
	image_xscale = -1;
} else if (phy_position_x > phy_position_xprevious + 1){
	image_xscale = 1;
}
if (phy_position_x == phy_position_xprevious and phy_position_y == phy_position_yprevious){
	image_speed = 0;
} else {
	image_speed = speed_multiplier;
}
last_xscale = image_xscale;
if (image_alpha != damage_alpha){
	image_alpha = damage_alpha
}
if (!is_jumping and (position_meeting(x,y, obj_stretchy_wall) or position_meeting(x,y, obj_halfwall))){
	phy_position_x = start_jump_x;
	phy_position_y = start_jump_y;
	damage_cooldown =30;
}