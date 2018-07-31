/// @description Insert description here
// You can write your code in this editor
depth=-100;
light_surface = surface_create(room_width, room_height);

part_system = part_system_create();
part_system_depth(part_system,0);


part_emitter = part_emitter_create(part_system);


part_type = part_type_create();
part_type_shape(part_type, pt_shape_flare);
part_type_color1(part_type, c_aqua);
part_type_alpha2(part_type, 1, 0);
part_type_life(part_type, 25, 25);
part_type_direction(part_type, 180, 360, 1, 1);
part_type_speed(part_type,1,0,-.1,1);
part_type_scale(part_type, .05,.05);
part_type_gravity(part_type, .1,gravity_direction)
part_type_blend(part_type, true);
//part_type_sprite(part_type,spr_light_circle,0,0,0);

