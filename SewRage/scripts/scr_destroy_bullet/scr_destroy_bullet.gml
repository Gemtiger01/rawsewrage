//effect_create_above(ef_firework, x, y, 0, c_aqua);

part_emitter_region(obj_light_ctrl.part_system,obj_light_ctrl.part_emitter,x+3,x-3,y+3,y-3, ps_shape_ellipse, ps_distr_gaussian);
part_emitter_burst(obj_light_ctrl.part_system,obj_light_ctrl.part_emitter,obj_light_ctrl.part_type, 128);
ds_stack_push(Player_obj.pool, id);
phy_position_x = -100;
phy_position_y = -100;
phy_linear_velocity_x = 0;
phy_linear_velocity_y = 0;
instance_deactivate_object(id);
return;