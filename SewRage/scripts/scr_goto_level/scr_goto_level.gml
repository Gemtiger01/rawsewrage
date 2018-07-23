target_level = argument0;
target_x = argument1;
target_y = argument2;
lastroom = room;
room_set_persistent(lastroom, true);
room_goto(target_level);
Player_obj.phy_position_x = target_x;
Player_obj.phy_position_y = target_y;
room_set_persistent(lastroom, false);