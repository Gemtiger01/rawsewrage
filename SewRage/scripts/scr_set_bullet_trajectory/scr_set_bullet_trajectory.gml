phy_position_x=Player_obj.phy_position_x;
phy_position_y=Player_obj.phy_position_y;
phy_linear_velocity_x = 0;
phy_linear_velocity_y = 0;
if gamepad_is_connected(0) var rhaxis = gamepad_axis_value(0,gp_axisrh);
else var rhaxis = 0;
if gamepad_is_connected(0) var rvaxis = gamepad_axis_value(0,gp_axisrv);
else var rvaxis = 0;
if (rhaxis != 0 or rvaxis != 0){
	dir = point_direction(phy_position_x,phy_position_y,phy_position_x + rhaxis,phy_position_y + rvaxis);
}else{
	dir = point_direction(phy_position_x,phy_position_y,mouse_x,mouse_y);
}
dir = dir + random_range(-5,5);
//ldx = lengthdir_x(0, dir);
//ldy = lengthdir_y(20, dir);
//phy_position_x=Player_obj.phy_position_x+ldx;
//phy_position_y=Player_obj.phy_position_y+ldy;
ldx = lengthdir_x(15, dir);
ldy = lengthdir_y(15, dir);
physics_apply_impulse(x,y,ldx,ldy);