with(other){
	hp -= other.damage;
	if(scr_map(hp,0, maxhp, 0,100) < 75 and health_adjust < 10){
		health_adjust = 10;
	}
	if(scr_map(hp,0, maxhp, 0,100) < 50 and health_adjust < 15){
		health_adjust = 15;
	}
	if(scr_map(hp,0, maxhp, 0,100) < 25 and health_adjust < 20){
		health_adjust = 20;
	}
}
audio_play_sound(sound_pop,0,0);
scr_destroy_bullet();