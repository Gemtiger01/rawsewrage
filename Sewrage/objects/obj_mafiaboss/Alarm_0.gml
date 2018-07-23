/// @description Insert description here
if (instance_number(ratenemy_obj) < 10){
	instance_create_layer(x,y, "Instances", ratenemy_obj);
}
ratsummon = random_range(160,240);
alarm_set(0, ratsummon);

