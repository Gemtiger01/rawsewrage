/// @description Insert description here
// You can write your code in this editor

if (instance_exists(Player_obj) and !collision_line(x,y,Player_obj.x,Player_obj.y, obj_stretchy_wall,false, true)){

	 if (pearlcooldown <= 0){
		instance_create_layer(x,y, "Instances", obj_pearl)
		pearlcooldown = 25;
	 }
	 pearlcooldown -= 1;
} 

if hp <= 0{
	effect_create_above(ef_spark, x, y, 3, c_fuchsia);
	instance_destroy();
}
	