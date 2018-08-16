/// @description Insert description here
with(other)
{
	if (damage_cooldown <= 0 and !is_jumping){
		damage_cooldown = 90;
		playerhealth -=	25;
		hp=0;
	}
}

