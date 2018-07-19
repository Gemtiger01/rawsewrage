
if instance_exists(Player_obj){
	if (distance_to_point(Player_obj.x, Player_obj.y) >= 100){
		move_towards_point(Player_obj.x, Player_obj.y, spd)
	} else if (CheeseCooldown <= 100){
		instance_create_layer(x,y, "Bullet_layer", obj_Cheese);
		CheeseCooldown = 120
	} else{
		x=x;
		y=y;
	}
} 
CheeseCooldown -= 20
if (hp <=0) instance_destroy();
ratsummon = 120
alarm[0] = ratsummon 
ratsummon -= 10