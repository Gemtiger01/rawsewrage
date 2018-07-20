effect_create_above(ef_firework, x, y, 20, c_aqua);
ds_stack_push(Player_obj.pool, id);
phy_position_x = -100;
phy_position_y = -100;
phy_linear_velocity_x = 0;
phy_linear_velocity_y = 0;
instance_deactivate_object(id);
return;