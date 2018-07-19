////using built in variables and functions to get the direction and speed of the cheese
direction = point_direction(x,y, Player_obj.x, Player_obj.y);
direction = direction + random_range(-5,5);
speed = 5;
image_angle = direction;
