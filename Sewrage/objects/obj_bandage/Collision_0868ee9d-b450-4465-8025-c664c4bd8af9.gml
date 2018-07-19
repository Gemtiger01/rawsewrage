///Heals the player when picked up 
with(other){
	if (playerhealth > maxplayerhealth and playerhealth > 0) {
		playerhealth = maxplayerhealth
	}
	
}
with(self){
	instance_destroy();
}