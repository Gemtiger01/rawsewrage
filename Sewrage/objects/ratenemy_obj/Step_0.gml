/// @description Insert description here
//if (instance_exists(Player_obj))
//{
//	if (target_pos_x == -1){
//		target_pos_x = Player_obj.x;
//		target_pos_y = Player_obj.y;
//	}

//	if (target_pos_x != Player_obj.x or target_pos_y != Player_obj.y){
//		path = path_add();
//		mp_potential_path_object(path, obj_Player.x, obj_Player.y, 3, 4, obj_Wall);
//		path_start(path, 3, 0, 0);
//	}
//}

if (hp <= 0){
	effect_create_above(ef_firework, x, y, 20, c_red);
	instance_destroy();
}