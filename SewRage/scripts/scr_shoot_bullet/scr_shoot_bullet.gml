if (ds_stack_empty(pool))
{
	//If not, we need to create a new instance. No performance gain.
	instance_create_layer(x,y,"Instances",Bubble_obj);
}
else
{
	//If the pool has an instance we can use, take it out and activate it.
	var bullet = ds_stack_pop(pool);
	instance_activate_object(bullet);
 
	//Reset the state of the instance. 
	//**If** this is cheaper than a new instance, we gain performance.
	with (bullet){
		phy_position_x = Player_obj.x;
		phy_position_y = Player_obj.y;
		direction = point_direction(x,y,mouse_x,mouse_y);
		image_angle = direction;  
		var ldx = lengthdir_x(10, mouse_x);
		var ldy = lengthdir_y(10, mouse_y);
		physics_apply_impulse(Player_obj.x+ldx,Player_obj.y+ldy, (mouse_x + (random_range(-6,6)*10) - Player_obj.x) * 200,-(Player_obj.y + (random_range(-6,6)*10) - mouse_y) * 200);
	}
}
return;