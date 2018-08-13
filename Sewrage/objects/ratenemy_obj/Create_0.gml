/// @description Insert description here
path = path_add();
path_target = 1;
tx=0;
ty=0;
alarm_set(1,1);

maxhp = 50;
hp = maxhp;
///adds the basic enemy speed 
spd = max(8, random(12));

phy_fixed_rotation = true;

//image_xscale = 0.5;
//image_yscale = 0.5;