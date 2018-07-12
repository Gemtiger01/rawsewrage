/// @description Insert description here
// You can write your code in this editor

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
		