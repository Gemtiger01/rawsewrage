/// @description Insert description here
// You can write your code in this editor
with (other){
	scr_destroy_bullet();
	audio_play_sound(sound_pop,0,0);
	instance_destroy();
}


effect_create_above(ef_spark, x, y, 20, c_white);
instance_destroy();

