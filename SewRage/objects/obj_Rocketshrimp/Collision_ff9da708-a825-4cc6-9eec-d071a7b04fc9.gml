/// @description Insert description here
// You can write your code in this editor
hit = true;
phy_fixed_rotation = false;
dir = point_direction(x,y,other.x,other.y);
ldx = lengthdir_x(-150,dir);
ldy = lengthdir_y(-150,dir);
physics_apply_impulse(x+10,y,ldx,ldy);
phy_angular_velocity = 1000;