/// @description Insert description here
// You can write your code in this editor
with(other){
	secondhp -= other.damage;
	if (secondhp <= 0){
		hp -= other.damage
	}
}
audio_play_sound(sound_pop,0,0);
scr_destroy_bullet();