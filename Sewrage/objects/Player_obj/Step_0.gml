/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("W")) or keyboard_check_pressed(vk_up)){
	ydir = -1;
}
if (keyboard_check_released(ord("W")) or keyboard_check_released(vk_up)){
	if (ydir == -1){
		ydir = 0;
	}
}

if (keyboard_check(ord("A")) or keyboard_check_pressed(vk_left)){
	xdir = -1;
}
if (keyboard_check_released(ord("A")) or keyboard_check_released(vk_left)){
	if (xdir == -1){
		xdir = 0;
	}
}

if (keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)){
	ydir = 1;
}
if (keyboard_check_released(ord("S")) or keyboard_check_released(vk_down)){
	if (ydir == 1){
		ydir = 0;
	}
}

if (keyboard_check(ord("D")) or keyboard_check_pressed(vk_right)){
	xdir = 1;
}
if (keyboard_check_released(ord("D")) or keyboard_check_released(vk_right)){
	if (xdir == 1){
		xdir = 0;
	}
}

if (keyboard_check_pressed(vk_shift)){
	speed_multiplier = 1.5;
}
if (keyboard_check_released(vk_shift)){
	speed_multiplier = 1;
}
/*
if (xdir == 1 and ydir == 1) {
	phy_rotation = 315;
}else if (xdir == 0 and ydir == 1){
	phy_rotation = 270;
}else if (xdir == -1 and ydir == 1){
	phy_rotation = 225;
}else if (xdir == -1 and ydir == 0){
	phy_rotation = 180;
}else if (xdir == -1 and ydir == -1){
	phy_rotation = 135;
}else if (xdir == 0 and ydir == -1){
	phy_rotation = 90;
}else if (xdir == 1 and ydir == -1){
	phy_rotation = 45;
}else if (xdir == 1 and ydir == 0){
	phy_rotation = 0;
}*/

if ((xdir == 0 and ydir == 0)) {
	phy_speed_x = 0;
	phy_speed_y = 0;
}else{
	phy_speed_x = (move_speed * speed_multiplier) * xdir;
	phy_speed_y = (move_speed * speed_multiplier) * ydir;
}


/// Jumpping
key_jump = keyboard_check_pressed(vk_space);

/// Shooting
if (mouse_check_button(mb_left)) and (cooldown < 1)
{
	repeat 50 scr_shoot_bullet();
	cooldown = 10;
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
	game_restart();
}

var centerX = x - sprite_get_xoffset(sprite_index) + sprite_width / 2;
var centerY = y - sprite_get_yoffset(sprite_index) + sprite_height / 2;

if (collision_point( centerX, centerY, obj_stretchy_water, false, true )){
	sprite_index = spr_player_water;
} else {
	sprite_index = spr_player;
}