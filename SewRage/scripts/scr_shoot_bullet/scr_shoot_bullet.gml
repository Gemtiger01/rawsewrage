if (ds_stack_empty(pool))
{
	//If not, we need to create a new instance. No performance gain.
	if (instance_number(Bubble_obj) <= 500){
		instance_create_layer(x,y,"Instances",Bubble_obj);
	}
}
else
{
	//If the pool has an instance we can use, take it out and activate it.
	var bullet = ds_stack_pop(pool);
	instance_activate_object(bullet);
 
	//Reset the state of the instance. 
	//**If** this is cheaper than a new instance, we gain performance.
	with (bullet){
		scr_set_bullet_trajectory();
	}
}
return;