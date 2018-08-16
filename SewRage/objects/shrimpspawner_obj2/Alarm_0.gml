/// @description Insert description here
if (instance_number(obj_Rocketshrimp) < 18){
	instance_create_layer(x,y,"Instances",obj_Rocketshrimp)

}
alarm_set(0,random_range(250,550));