/// @description Insert description here
// You can write your code in this editor
if (mp_grid_path(global.grid, path, x, y, Player_obj.phy_position_x, Player_obj.phy_position_y, 1) and distance_to_object(Player_obj) < 1000){
	tx = path_get_point_x(path, 1);
	ty = path_get_point_y(path, 1);
	
	dir = point_direction(x,y,tx,ty);
	phy_speed_x = lengthdir_x(spd/4,dir);
	phy_speed_y = lengthdir_y(spd/4,dir);

} else {
	phy_speed_x = 0;
	phy_speed_y = 0;
}
alarm_set(1,1);