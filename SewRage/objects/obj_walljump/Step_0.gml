/// @description Insert description here
// You can write your code in this editor
physics_apply_local_impulse(0,0,spd * xdir,spd * ydir);
if (point_distance(phy_position_x,phy_position_y, target_x,target_y) < 3){
	Player_obj.phy_position_x = phy_position_x;
	Player_obj.phy_position_y = phy_position_y;
	Player_obj.visible = true;
	if(abs(xdir)==1)Player_obj.image_xscale = xdir;
	camera_set_view_target(view_camera[0],Player_obj);
	instance_destroy(id);
}