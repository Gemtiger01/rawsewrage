/// @description Insert description here
// You can write your code in this editor
if (mp_grid_path(global.grid, path, x, y, Player_obj.phy_position_x, Player_obj.phy_position_y, 1) and distance_to_object(Player_obj) < 1000){
	path_target = 1;
	tx = path_get_point_x(path, path_target);
	ty = path_get_point_y(path, path_target);
	
	dir = point_direction(x,y,tx,ty);
	phy_speed_x = lengthdir_x(spd/4,dir);
	phy_speed_y = lengthdir_y(spd/4,dir);

}
alarm_set(1,60);