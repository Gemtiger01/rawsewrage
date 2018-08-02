/// @description Insert description here
with(other){
	hp -= other.damage;
}
audio_play_sound(sound_pop,0,0);
scr_destroy_bullet();