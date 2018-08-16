/// @description Insert description here
// You can write your code in this editor
// The game always draws to the "application_surface" (see docs for more info).
if (!global.paused){
	global.paused = true;
	var width = surface_get_width(application_surface),
	    height = surface_get_height(application_surface);

	// This will create a sprite from the application surface, which will be the screenshot of the game.
	global.PauseScreenShot = sprite_create_from_surface(application_surface, 0, 0, width, height, false, false, 0, 0);

	room_persistent = true;

	global.RoomBeforePause = room;
	persistent = false;
	room_goto(rm_pause);
}