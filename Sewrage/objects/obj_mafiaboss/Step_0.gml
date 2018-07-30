
if instance_exists(Player_obj){

	 if (CheeseCooldown <= 0){
		instance_create_layer(x,y, "Bullet_layer", obj_Cheese);
		CheeseCooldown = 45;
	 }
	 CheeseCooldown -= 3.5;
} 

if (hp <=0) {
	var Lootdrop = random(100)
	if (Lootdrop <= 85){
		instance_create_layer(x,y,"Instances", obj_coin)
		instance_create_layer(x,y-3,"Instances", obj_coin)
		instance_create_layer(x,y-3,"Instances", obj_bandage)
	}
	effect_create_above(ef_star, x, y, 3, c_red);
	instance_destroy();
	
}
