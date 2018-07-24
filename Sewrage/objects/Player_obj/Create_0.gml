/// @description Insert description here
///range cooldown
if (instance_number(Player_obj)>1){
	dupe = true;
	instance_destroy();
}


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