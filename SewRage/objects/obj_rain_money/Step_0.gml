/// @description Insert description here
// You can write your code in this editor
physics_particle_group_begin(flags, groupflags, x, y, 0, random_range(-200,200), random_range(-200,200),random_range(-200,200), c_white, 1, 1, 2);
physics_particle_group_circle(random_range(10,20));
mLastGroup = physics_particle_group_end();
physics_particle_delete_region_box(room_width/2, room_height + 50, room_width/2 + 50, 50);
physics_particle_delete_region_box(-50, room_height/2 + 150, 50, room_height/2 + 150);
physics_particle_delete_region_box(room_width + 50, room_height/2 + 150, 50, room_height/2 + 150);
