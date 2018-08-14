
////using built in variables and functions to get the direction and speed of the cheese
dir = point_direction(x,y, Player_obj.x, Player_obj.y);
//direction = direction + random_range(-5,5);
//speed = 10;
var ldx = lengthdir_x(10, dir);
var ldy = lengthdir_y(10, dir);
phy_position_x = phy_position_x + ldx;
phy_position_y = phy_position_y + ldy;
var ldx = lengthdir_x(15, dir);
var ldy = lengthdir_y(15, dir);
physics_apply_impulse(x,y, ldx,ldy);

image_angle = direction;

image_xscale = 0.33;
image_yscale = 0.33;