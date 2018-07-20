/// @description Insert description here
if (instance_exists(Player_obj))
{
		dir = point_direction(x,y,Player_obj.x,Player_obj.y);
		phy_speed_x = lengthdir_x(spd,dir);
		phy_speed_y = lengthdir_y(spd,dir);
}


if (hp <= 0){
	effect_create_above(ef_firework, x, y, 20, c_red);
	instance_destroy();
}