/// @description Insert description here

/// moving right 
if keyboard_check(ord("D"))
	{
		if global.shift = true
			{
				x += global.runningspeed
			}
		else if global.shift = false
			{
				x += global.walkingspeed
			}
	}
/// moving left using global veriables	
if keyboard_check(ord("A"))
	{
		if global.shift = true
			{
				x -= global.runningspeed
			}
		else if global.shift = false
			{
				x -= global.walkingspeed
			}
	}
/// Moving up		
if keyboard_check(ord("W"))
	{
		if global.shift = true
			{
				y -= global.runningspeed
			}
		else if global.shift = false
			{
				y -= global.walkingspeed
			}
	}
/// moving down	
if keyboard_check(ord("S"))
	{
		if global.shift = true
			{
				y += global.runningspeed
			}
		else if global.shift = false
			{
				y += global.walkingspeed
			}
	}
/// Jumpping
key_jump = keyboard_check_pressed(vk_space);

/// Shooting
if (mouse_check_button(mb_left)) and (cooldown < 1)
{
	instance_create_layer(x,y,"Bullet_layer",Bubble_obj);
	instance_create_layer(x ,y +4,"Bullet_layer",Bubble_obj);
	cooldown = 16
}
cooldown = cooldown - 1

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

