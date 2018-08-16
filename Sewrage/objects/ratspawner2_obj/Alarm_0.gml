/// @description Insert description here
if (instance_number(Player_obj) == 1 and instance_number(ratenemy_obj) < 15 and !collision_circle(x,y,5,ratenemy_obj, false,true)){
	instance_create_layer(x,y,"Instances",ratenemy_obj)
}
alarm_set(0,300);