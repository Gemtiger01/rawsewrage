/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y, Player_obj)){
	if (cooldown <= 0){
		cooldown = 180;
		with(Player_obj){
			playerhealth-=5;
		}
	}else cooldown--;
}else cooldown = 180;