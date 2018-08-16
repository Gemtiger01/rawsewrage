/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (damage_cooldown > 0) {
	damage_cooldown--;
	damage_alpha = sin(damage_cooldown * 10);
}else{
	damage_alpha = 1;
}
if gamepad_is_connected(0) gamepad_set_axis_deadzone(0, .25);
if gamepad_is_connected(0) var lhaxis = gamepad_axis_value(0,gp_axislh);
else var lhaxis = 0;
if gamepad_is_connected(0) var lvaxis = gamepad_axis_value(0,gp_axislv);
else var lvaxis = 0;
if gamepad_is_connected(0) var rhaxis = gamepad_axis_value(0,gp_axisrh);
else var rhaxis = 0;
if gamepad_is_connected(0) var rvaxis = gamepad_axis_value(0,gp_axisrv);
else var rvaxis = 0;

if (!is_jumping){
	if (keyboard_check(ord("W")) or keyboard_check(vk_up) or lvaxis < -.5){
		ydir = -1;
		set_sprite_index = spr_player_up;
	}
	if (keyboard_check_released(ord("W")) or keyboard_check_released(vk_up)){
		if (ydir == -1){
			ydir = 0;
		}
	}

	if (keyboard_check(ord("A")) or keyboard_check(vk_left) or lhaxis < -.5){
		xdir = -1;
		set_sprite_index = spr_player_2;
	}
	if (keyboard_check_released(ord("A")) or keyboard_check_released(vk_left)){
		if (xdir == -1){
			xdir = 0;
		}
	}

	if (keyboard_check(ord("S")) or keyboard_check(vk_down) or lvaxis > .5){
		ydir = 1;
		set_sprite_index = spr_player_down;
	}
	if (keyboard_check_released(ord("S")) or keyboard_check_released(vk_down)){
		if (ydir == 1){
			ydir = 0;
		}
	}

	if (keyboard_check(ord("D")) or keyboard_check(vk_right) or lhaxis > .5){
		xdir = 1;
		set_sprite_index = spr_player_2;
	}
	if (keyboard_check_released(ord("D")) or keyboard_check_released(vk_right)){
		if (xdir == 1){
			xdir = 0;
		}
	}

	if (gamepad_is_connected(0) and lvaxis == 0){
		ydir = 0;
	}
	if (gamepad_is_connected(0) and lhaxis == 0){
		xdir = 0;
	}

	if (keyboard_check_pressed(vk_shift) or gamepad_button_check_pressed(0,gp_shoulderr)){
		speed_multiplier = 1.5;
	}
	if (keyboard_check_released(vk_shift)or gamepad_button_check_released(0,gp_shoulderr)){
		speed_multiplier = 1;
	}



	if (xdir == 0) {
		phy_speed_x = 0;
	}else{
		phy_speed_x = (move_speed * speed_multiplier) * xdir;
	}
	if (ydir == 0) {
		phy_speed_y = 0;
	}else{
		phy_speed_y = (move_speed * speed_multiplier) * ydir;
	}
}


/// Jumpping
if (xdir == 1 and ydir == 1) {
	var jump_target_x = (phy_position_x + (71 * xdir));
	var jump_target_y = (phy_position_y + (71 * ydir));
}else if (xdir == 0 and ydir == 1){
	var jump_target_x = (phy_position_x + (100 * xdir));
	var jump_target_y = (phy_position_y + (100 * ydir));
}else if (xdir == -1 and ydir == 1){
	var jump_target_x = (phy_position_x + (71 * xdir));
	var jump_target_y = (phy_position_y + (71 * ydir));
}else if (xdir == -1 and ydir == 0){
	var jump_target_x = (phy_position_x + (100 * xdir));
	var jump_target_y = (phy_position_y + (100 * ydir));
}else if (xdir == -1 and ydir == -1){
	var jump_target_x = (phy_position_x + (71 * xdir));
	var jump_target_y = (phy_position_y + (71 * ydir));
}else if (xdir == 0 and ydir == -1){
	var jump_target_x = (phy_position_x + (100 * xdir));
	var jump_target_y = (phy_position_y + (100 * ydir));
}else if (xdir == 1 and ydir == -1){
	var jump_target_x = (phy_position_x + (71 * xdir));
	var jump_target_y = (phy_position_y + (71 * ydir));
}else if (xdir == 1 and ydir == 0){
	var jump_target_x = (phy_position_x + (100 * xdir));
	var jump_target_y = (phy_position_y + (100 * ydir));
}else if (xdir == 0 and ydir == 0){
	var jump_target_x = phy_position_x;
	var jump_target_y = phy_position_y;
}


if ((keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_stickl)) and !is_jumping) {
	is_jumping = true;
	npj_target_x = jump_target_x;
	npj_target_y = jump_target_y;
	npj_target_dir = point_direction(phy_position_x,phy_position_y,jump_target_x,jump_target_y);
	last_sprite_index = set_sprite_index;
	set_sprite_index = spr_player_jump;
	start_jump_x = phy_position_x;
	start_jump_y = phy_position_y;
	if(xdir != 0 or ydir != 0){
		if (xdir != 0){
			image_xscale = image_xscale * xdir;
		}
		if (collision_line(phy_position_x, phy_position_y, npj_target_x, npj_target_y, obj_halfwall, false, true) and !position_meeting(npj_target_x, npj_target_y, obj_stretchy_wall)) {
			force_wall = true;
		}
	}
}

if (is_jumping) {
	set_sprite_index = spr_player_jump;
	if(xdir = 0 and ydir = 0 and alarm_get(0) == 0 ){
		alarm_set(0, 50);
	} else if (point_distance(phy_position_x,phy_position_y, npj_target_x, npj_target_y) > 3) {
		if(force_wall){
			jumper = instance_create_layer(phy_position_x,phy_position_y - 16,"Instances",obj_walljump);
			jumper.target_x = npj_target_x;
			jumper.target_y = npj_target_y;
			jumper.phy_speed_x = phy_speed_x;
			jumper.phy_speed_y = phy_speed_y;
			jumper.xdir = xdir;
			jumper.ydir = ydir;
			if(abs(xdir)==1)jumper.image_xscale = xdir;
			jumper.spd = move_speed;
			camera_set_view_target(view_camera[0],obj_walljump);
			visible = false;
			force_wall = false;
		} else {
			physics_apply_local_impulse(0,0,move_speed * xdir,move_speed * ydir);
		}
	} else if (point_distance(phy_position_x, phy_position_y, npj_target_x, npj_target_y) < 3){ 
		is_jumping = false;
		phy_speed_x = 0;
		phy_speed_y = 0;
		xdir=0;
		ydir=0;
		set_sprite_index = last_sprite_index;
		if (xdir != 0){
			image_xscale = image_xscale * xdir;
		}
	}
}
if (collision_point( x, y, obj_stretchy_poison, false, true)){
	phy_position_x = start_jump_x;
	phy_position_y = start_jump_y;
	playerhealth -= 5;
	damage_cooldown =30;
}		

/// Shooting
if (mouse_check_button(mb_left) and cooldown < 1)
{
	audio_play_sound(sound_bubbleshooting,0,0);
	repeat 3 scr_shoot_bullet();
	cooldown = 20;
}
if (rhaxis != 0 or rvaxis != 0) {
	if (cooldown < 1){
		repeat 3 scr_shoot_bullet();
		cooldown = 20;
	}
}
cooldown--;

/// player health 
if (playerhealth > maxplayerhealth)
{
	playerhealth = maxplayerhealth;
}

///death
if (playerhealth <= 0)
{
//	instance_destroy();
	///instance_destroy();
	persistent = false;
	room_goto(rm_defeat);
}

var centerX = x - sprite_get_xoffset(sprite_index) + sprite_width / 2;
var centerY = y - sprite_get_yoffset(sprite_index) + sprite_height / 2;

if(is_jumping){
	if(set_sprite_index == spr_player_jump and xdir = 0 and ydir = -1) set_sprite_index = spr_player_up_jump;
	else if (set_sprite_index == spr_player_jump and xdir = 0 and ydir = 1) set_sprite_index = spr_player_down_jump;
}
if (collision_point( x, y, obj_stretchy_water, false, true ) and !is_jumping){
	if(set_sprite_index == spr_player_up) sprite_index = spr_player_up_water;
	else if (set_sprite_index == spr_player_down) sprite_index = spr_player_down_water;
	else sprite_index = spr_player_water;
} else if (sprite_index != set_sprite_index) {
	sprite_index = set_sprite_index;
}


//if (window_get_fullscreen() = true){
//	view_set_wport(0, display_get_width());
//	view_set_hport(0, display_get_height());
//} else {
//	view_set_wport(0, 1280);
//	view_set_hport(0, 720);
//}


