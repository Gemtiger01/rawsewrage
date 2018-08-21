/// @description Insert description here
// You can write your code in this editor
if (phy_position_x > phy_position_xprevious+1){
	image_xscale = -1;
}else if (phy_position_x < phy_position_xprevious-1){
	image_xscale = 1;
}
if (image_xscale != 1 and image_xscale != -1){
	image_xscale = 1;
}