/// @description Insert description here
// You can write your code in this editor
image_xscale = last_xscale;
fixture = physics_fixture_create();
physics_fixture_set_circle_shape(fixture,20);
physics_fixture_set_collision_group(fixture,0);
physics_fixture_set_density(fixture,0.5);
physics_fixture_set_awake(fixture, true);
physics_fixture_bind_ext(fixture,id,0, -16);
phy_active = true;