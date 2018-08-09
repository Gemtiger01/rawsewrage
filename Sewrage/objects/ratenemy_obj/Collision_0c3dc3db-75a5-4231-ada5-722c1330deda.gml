/// @description Insert description here
with(other)
{
	if (damage_cooldown <= 0){
		damage_cooldown = 90;
		playerhealth -=	25;
	}
}
hp=0;
