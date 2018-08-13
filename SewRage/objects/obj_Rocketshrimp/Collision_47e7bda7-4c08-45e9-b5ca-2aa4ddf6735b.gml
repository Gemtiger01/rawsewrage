/// @description Insert description here
// You can write your code in this editor
with(other)
{
	if (damage_cooldown <= 0){
		damage_cooldown = 90;
		playerhealth -=	25;
	}
}