/// @description Insert description here
with(other)
{
	hp = hp - 15;
	
}
effect_create_above(ef_firework, x, y, 20, c_blue);
instance_destroy();
