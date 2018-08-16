
////using built in variables and functions to get the direction and speed of the cheese
dir = point_direction(x,y, Player_obj.phy_position_x, Player_obj.phy_position_y);
dir = dir + random_range(-5,5);
ldx = lengthdir_x(50, dir);
ldy = lengthdir_y(50, dir);
physics_apply_local_impulse(phy_position_x,phy_position_y,ldx,ldy);

phy_fixed_rotation = true;
image_xscale = 0.33;
image_yscale = 0.33;