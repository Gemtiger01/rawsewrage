/// @description Insert description here
if (instance_number(obj_mafiaboss) == 1 and instance_number(obj_Rocketshrimp) < 18){
	instance_create_layer(x,y,"Instances",obj_Rocketshrimp_left)

}
randomize();
alarm_set(0,random_range(100,200));