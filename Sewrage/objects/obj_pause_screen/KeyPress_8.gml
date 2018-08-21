/// @description Insert description here
// You can write your code in this editor
room_set_persistent(global.RoomBeforePause,false);
global.RoomBeforePause = -1;
sprite_delete(global.PauseScreenShot);
global.paused = false 
room_goto(rm_title);
