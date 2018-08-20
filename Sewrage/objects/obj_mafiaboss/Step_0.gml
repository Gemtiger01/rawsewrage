
if instance_exists(Player_obj){

	 if (CheeseCooldown <= 0){
		dir = point_direction(x,y, Player_obj.x, Player_obj.y);
		dir -= health_adjust;
		alarm_set(0,10);
		for (x = 0; x < health_adjust; x++){
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
		CheeseCooldown = 120;
	 }
	 CheeseCooldown -= 1;
} 

if (hp <=0) {
	var Lootdrop = random(100)
	if (Lootdrop <= 100){
		instance_create_layer(x,y-5,"Instances", obj_coin)
		instance_create_layer(x,y,"Instances", obj_coin)
		instance_create_layer(x,y-10,"Instances", obj_coin)
		instance_create_layer(x,y-15,"Instances", obj_coin)
		instance_create_layer(x+25,y,"Instances", obj_coin)
		instance_create_layer(x-25,y-5,"Instances", obj_coin)
		instance_create_layer(x, y, "Instances", obj_button)
	}
	effect_create_above(ef_star, x, y, 3, c_red);
	Player_obj.persistent = false;
	instance_destroy();
	
}
