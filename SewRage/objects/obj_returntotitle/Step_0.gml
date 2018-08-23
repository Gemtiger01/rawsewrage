/// @description Insert description here
// You can write your code in this editor
if(gamepad_button_check_pressed(0, gp_select)){
	global.to_title = true;
	room_goto(global.RoomBeforePause);
}
if(gamepad_button_check_pressed(0, gp_start)){
	room_goto(global.RoomBeforePause);
}