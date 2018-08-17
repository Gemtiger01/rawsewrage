/// @description Insert description here
// You can write your code in this editor
ds_stack_clear(pool);
physics_fixture_delete(fixture);
if(!global.paused){
	fixtured = false;
}
image_xscale = 1;
is_jumping = false;
phy_speed_x = 0;
phy_speed_y = 0;
xdir=0;
ydir=0;

