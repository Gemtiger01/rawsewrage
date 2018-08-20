/// @description Insert description here
dir = point_direction(x,y, Player_obj.x, Player_obj.y);
dir -= 5;
for (x = 0; x < 3; x++){
	var ldx = lengthdir_x(10, dir);
	var ldy = lengthdir_y(10, dir);
	spawn = random_range(0,5);
	if (spawn != 1){
		cheese = instance_create_layer( phy_position_x + ldx, phy_position_y + ldy - 20, "Bullet_layer", obj_Cheese);
		with (cheese){
			var ldx = lengthdir_x(15, other.dir);
			var ldy = lengthdir_y(15, other.dir);
			physics_apply_impulse(phy_position_x,phy_position_y, ldx, ldy);
			phy_rotation = radtodeg(other.dir);
		}
	}
	dir += 5;
}
if (count<6){
	alarm_set(0, 10);
	count++;
}else{
	count = 0;
}