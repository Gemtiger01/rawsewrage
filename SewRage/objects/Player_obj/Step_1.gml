/// @description Insert description here
// You can write your code in this editor
if(global.paused){
	global.RoomBeforePause = -1;
    sprite_delete(global.PauseScreenShot);
	persistent = true;
	room_persistent = false;
	global.paused = false;
}
if (layer != layer_get_id("Instances")){
	layer_add_instance(layer_get_id("Instances"), id);
}
if (phy_rotation != 0) phy_rotation = 0;
if (image_angle != 0) image_angle = 0;