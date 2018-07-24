cooldown = 100
with (self){
	if cooldown == 100 {
		playerhealth -= 3
		cooldown = 300
	}
}
cooldown -= .5