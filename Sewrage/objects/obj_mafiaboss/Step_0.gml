
if instance_exists(Player_obj){
	if (distance_to_point(Player_obj.x, Player_obj.y) >= 400){
		move_towards_point(Player_obj.x, Player_obj.y, spd)
	} else{
		speed = 0;
	}
	 if (CheeseCooldown <= 0){
		instance_create_layer(x,y, "Bullet_layer", obj_Cheese);
		CheeseCooldown = 45;
	 }
} 
CheeseCooldown -= 1;
if (hp <=0) {
	effect_create_above(ef_firework, x, y, 20, c_red);
	instance_destroy();
}
