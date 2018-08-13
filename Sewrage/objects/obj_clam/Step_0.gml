/// @description Insert description here
// You can write your code in this editor

if instance_exists(Player_obj){

	 if (pearlcooldown <= 0){
		instance_create_layer(x,y, "Instances", obj_pearl)
		pearlcooldown = 45;
	 }
	 pearlcooldown -= 3.5;
} 

if hp <= 0{
	effect_create_above(ef_spark, x, y, 3, c_fuchsia);
	instance_destroy();
}
	