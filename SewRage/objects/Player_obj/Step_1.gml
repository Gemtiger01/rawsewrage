/// @description Insert description here
// You can write your code in this editor
if (layer != layer_get_id("Instances")){
	layer_add_instance(layer_get_id("Instances"), id);
}