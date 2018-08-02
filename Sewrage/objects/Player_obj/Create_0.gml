/// @description Insert description here
///range cooldown
fixture = physics_fixture_create();
physics_fixture_set_circle_shape(fixture,20);
physics_fixture_set_collision_group(fixture,0);
physics_fixture_set_density(fixture,0.5);
physics_fixture_set_awake(fixture, true);
physics_fixture_bind_ext(fixture,id,0, -16);
phy_active = true;

if (instance_number(Player_obj)>1){
	dupe = true;
	instance_destroy();
}

last_xscale = image_xscale;

cooldown = 0;

xdir = 0;
ydir = 0;
move_speed = 2;
speed_multiplier = 1;

hsp = 5
vsp = 0

maxplayerhealth = 100
playerhealth = maxplayerhealth

///coin count 
Money = 0 

phy_fixed_rotation = true;

pool = ds_stack_create();

persistent = true;

x_radius = 2;
y_radius = 2;

is_jumping = false;
npj_target_x = 0;
npj_target_y = 0;

