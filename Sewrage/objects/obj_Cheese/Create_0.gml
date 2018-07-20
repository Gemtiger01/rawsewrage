////using built in variables and functions to get the direction and speed of the cheese
direction = point_direction(x,y, Player_obj.x, Player_obj.y);
//direction = direction + random_range(-5,5);
//speed = 10;
var ldx = lengthdir_x(10, Player_obj.x);
var ldy = lengthdir_y(10, Player_obj.y);
physics_apply_impulse(x+ldx,y+ldy, (Player_obj.x + (random_range(-6,6)*10) - x) * 200,-(y + (random_range(-6,6)*10) - Player_obj.y) * 200);

image_angle = direction;
