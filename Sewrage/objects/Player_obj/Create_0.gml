/// @description Insert description here
///range cooldown
global.paused = false;
global.to_title = false;
damage_cooldown = 0;
damage_alpha = 1;
cursor_sprite = spr_crosshair;
window_set_cursor(cr_none);
fixture = physics_fixture_create();
physics_fixture_set_circle_shape(fixture,20);
physics_fixture_set_collision_group(fixture,1);
physics_fixture_set_density(fixture,0.5);
physics_fixture_set_awake(fixture, true);
physics_fixture_bind_ext(fixture,id,0, -16);
phy_active = true;
fixtured = true;
force_wall=false;
if (instance_number(Player_obj)>1){
	dupe = true;
	instance_destroy();
}else{
	dupe = false;
}
set_sprite_index = sprite_index;
start_jump_x = phy_position_x;
start_jump_y = phy_position_y;
last_sprite_index = set_sprite_index;
last_xscale = image_xscale;

cooldown = 0;

xdir = 0;
ydir = 0;
move_speed = 2;
speed_multiplier = 1;

hsp = 5
vsp = 0

maxplayerhealth = 150
playerhealth = maxplayerhealth

maxenergy = 100
energy = maxenergy
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

