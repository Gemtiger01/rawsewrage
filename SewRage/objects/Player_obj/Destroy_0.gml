/// @description Insert description here
// You can write your code in this editor
if (!dupe or room_get_name(room) == "rm_Victory" or room_get_name(room) == "rm_defeat"){
	ds_stack_destroy(pool);
}