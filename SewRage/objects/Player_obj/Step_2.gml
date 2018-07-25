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