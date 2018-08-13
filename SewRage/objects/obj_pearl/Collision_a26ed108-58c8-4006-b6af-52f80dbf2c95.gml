/// @description Insert description here
// You can write your code in this editor
with (other){
	effect_create_above(ef_smoke,x,y,10,c_blue);
	audio_play_sound(sound_pop,0,0);
	instance_destroy();
}


effect_create_above(ef_spark, x, y, 20, c_white);
instance_destroy();

