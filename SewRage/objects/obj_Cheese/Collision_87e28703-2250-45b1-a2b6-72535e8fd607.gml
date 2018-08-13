/// @description Insert description here
// You can write your code in this editor
//effect_create_above(ef_firework, x, y, 20, c_yellow);
xpl = instance_create_layer(phy_position_x,phy_position_y, "Instances" , obj_chz_explosion);
xpl.phy_rotation = phy_rotation;
instance_destroy();