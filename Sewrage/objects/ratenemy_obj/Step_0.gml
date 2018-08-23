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
depth = -phy_position_y;
if (hp <= 0){
	var Lootdrop = random(100)
	if (Lootdrop <= 10){
		instance_create_layer(x,y,"Instances", obj_bandage)
	}
	audio_play_sound(sound_ratdeath,0,0);
	audio_sound_pitch(sound_ratdeath,random_range(0.8,0.2));
	effect_create_above(ef_ring, x, y, 3, c_red);
	effect_create_above(ef_firework, x, y, 3, c_red);
	instance_destroy();
}

if(distance_to_point(tx,ty) < 1 and tx != 0 and ty !=0){
	path_target++;
	tx = path_get_point_x(path, path_target);
	ty = path_get_point_y(path, path_target);
	dir = point_direction(x,y,tx,ty);
	phy_speed_x = lengthdir_x(spd/4,dir);
	phy_speed_y = lengthdir_y(spd/4,dir);
}