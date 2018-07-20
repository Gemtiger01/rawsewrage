phy_position_x = Player_obj.x;
phy_position_y = Player_obj.y;
direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = direction;  
var ldx = lengthdir_x(10, mouse_x);
var ldy = lengthdir_y(10, mouse_y);
physics_apply_impulse(Player_obj.x+ldx,Player_obj.y+ldy, (mouse_x + (random_range(-6,6)*10) - Player_obj.x) * 200,-(Player_obj.y + (random_range(-6,6)*10) - mouse_y) * 200);