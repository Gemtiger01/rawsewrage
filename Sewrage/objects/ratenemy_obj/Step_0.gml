/// @description Insert description here
if (instance_exists(Player_obj))
{
		move_towards_point(Player_obj.x, Player_obj.y, spd);
}


if (hp <= 0){
	effect_create_above(ef_firework, x, y, 20, c_red);
	instance_destroy();
}