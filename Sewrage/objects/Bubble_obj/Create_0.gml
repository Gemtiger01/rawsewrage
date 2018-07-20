
// set up motion
direction = point_direction(x,y,mouse_x,mouse_y);
//direction = direction + random_range(-4,4);
//speed = 14;
image_angle = direction;  
var ldx = lengthdir_x(10, mouse_x);
var ldy = lengthdir_y(10, mouse_y);
physics_apply_impulse(x+ldx,y+ldy, (mouse_x + (random_range(-6,6)*10) - x) * 200,-(y + (random_range(-6,6)*10) - mouse_y) * 200);