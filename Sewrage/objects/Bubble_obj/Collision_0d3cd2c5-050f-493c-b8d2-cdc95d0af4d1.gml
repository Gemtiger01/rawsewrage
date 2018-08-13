/// @description Insert description here
// You can write your code in this editor
with(other){
	secondhp -= other.damage;
	if (obj_clam.secondhp <= 0){
		obj_clam.hp -= other.damage
	}
}
audio_play_sound(sound_pop,0,0);
scr_destroy_bullet();