/// @description Insert description here
// You can write your code in this editor
x_radius = 2;
y_radius = 2;
target_x = 0;
target_y = 0;
xdir = 0;
ydir = 0;
spd = 0;
if(xdir != 0){
	image_xscale = xdir;
}
alarm_set(0,100);
fixture = physics_fixture_create();
physics_fixture_set_circle_shape(fixture,20);
physics_fixture_set_collision_group(fixture,-1);
physics_fixture_set_density(fixture,0.5);
physics_fixture_set_awake(fixture, true);
physics_fixture_bind_ext(fixture,id,0, -16);
phy_active = true;
hitwall = false;
//depth = 100;
