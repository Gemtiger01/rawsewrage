///Heals the player when picked up 
with(other){
		playerhealth += 25;
}
audio_play_sound(sound_pickup,0,0);
instance_destroy();
