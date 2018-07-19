/// @description Insert description here
if (instance_exists(Player_obj))
{
		move_towards_point(Player_obj.x, Player_obj.y, spd);
}


if (hp <= 0){
	instance_destroy();
}