/// @description Insert description here
/// player health 
if (playerhealth >= maxplayerhealth)
{
	playerhealth = maxplayerhealth;
}

///death
if (playerhealth <= 0)
{
	instance_destroy();
	game_restart();
}