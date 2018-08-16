/// @description Insert description here
// You can write your code in this editor
with (other) {
	var id_string = string(id);
	show_debug_message("Hit Coin " + id_string);
	instance_destroy();
}
Money=Money+1;
show_debug_message(string(Money));
audio_play_sound(sound_coinpickup,0,0);