/// @description Insert description here
// You can write your code in this editor
if(!position_meeting(x + xdir,y+ydir, obj_stretchy_wall)){
	physics_apply_local_impulse(0,0,spd * xdir,spd * ydir);
}else{
	hitwall = true;
}
if ((point_distance(phy_position_x,phy_position_y, target_x,target_y) < 3) or hitwall){
	Player_obj.is_jumping=false;
	if (!position_meeting( x, y, obj_stretchy_poison)){
		Player_obj.phy_position_x = phy_position_x;
		Player_obj.phy_position_y = phy_position_y;
	}else{
		Player_obj.playerhealth -= 5;
		Player_obj.phy_position_x = Player_obj.start_jump_x;
		Player_obj.phy_position_y = Player_obj.start_jump_y;
		Player_obj.damage_cooldown = 30;
	}
	Player_obj.set_sprite_index = Player_obj.last_sprite_index;
	Player_obj.visible = true;
	Player_obj.phy_speed_x = 0;
	Player_obj.phy_speed_y = 0;
	if(abs(xdir)==1)Player_obj.image_xscale = xdir;
	Player_obj.xdir=0;
	Player_obj.ydir=0;
	camera_set_view_target(view_camera[0],Player_obj);
	instance_destroy(id);
}
image_alpha = 1;