///Heals the player when picked up 
with(other){
	if (Player_obj.playerhealth > maxplayerhealth and Player_obj.playerhealth > 0) {
		Player_obj.playerhealth = maxplayerhealth
	}
	
}
with(self){
	instance_destroy();
}