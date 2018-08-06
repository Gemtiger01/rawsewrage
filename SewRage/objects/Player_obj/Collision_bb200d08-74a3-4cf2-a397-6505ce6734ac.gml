/// @description Insert description here
// You can write your code in this editor
is_jumping = false;
phy_speed_x = 0;
phy_speed_y = 0;
physics_fixture_set_sensor(fixture,true);
xdir=0;
ydir=0;
sprite_index = spr_player_2;
if (xdir != 0){
	image_xscale = image_xscale * xdir;
}