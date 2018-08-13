/// @description Insert description here
with(other){
	if (damage_cooldown <= 0 and !is_jumping){
		damage_cooldown = 90;
		playerhealth -=	25;
	}
}
//effect_create_above(ef_firework, x, y, 20, c_yellow);
if(!Player_obj.is_jumping){
	xpl = instance_create_layer(phy_position_x,phy_position_y, "Instances" , obj_chz_explosion);
	xpl.phy_rotation = phy_rotation;
	instance_destroy();
}
