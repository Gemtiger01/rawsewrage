///adds a collison that adds money to the money value of the game.
with (other){
	Money += 1;
}
audio_play_sound(sound_coinpickup,0,0);
instance_destroy();
