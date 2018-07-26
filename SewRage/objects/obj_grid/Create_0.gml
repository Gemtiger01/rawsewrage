/// @description Insert description here
// You can write your code in this editor
cell_width = 32;
cell_height = 32;

hcells = room_width div cell_width;
vcells = room_height div cell_height;

global.grid = mp_grid_create(0,0,hcells,vcells,cell_width,cell_height);

mp_grid_add_instances(global.grid, obj_stretchy_wall, false);
//mp_grid_add_instances(global.grid, obj_stretchy_water, false);
