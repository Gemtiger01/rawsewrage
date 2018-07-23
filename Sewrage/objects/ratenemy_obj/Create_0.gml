/// @description Insert description here
path = path_add();
alarm_set(1,20);

maxhp = 50;
hp = maxhp;
///adds the basic enemy speed 
spd = max(2, random(4));

phy_fixed_rotation = true;

//image_xscale = 0.25;
//image_yscale = 0.25;