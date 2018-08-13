/// @description Insert description here
if (instance_number(obj_mafiaboss) == 1 and instance_number(ratenemy_obj) < 10){
	instance_create_layer(x,y,"Instances",ratenemy_obj)
	alarm_set(0,120);
}