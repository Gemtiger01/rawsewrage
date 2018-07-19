/// @description Insert description here
with(other)
{
	ratenemy_obj.hp = ratenemy_obj.hp - 15;
	
}
effect_create_above(ef_firework, x, y, 5, c_blue);
instance_destroy();
