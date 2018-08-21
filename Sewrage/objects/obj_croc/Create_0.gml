/// @description Insert description here
path = path_add();
path_target = 1;
tx=0;
ty=0;
alarm_set(1,1);

maxhp = 590;
hp = maxhp;
///adds the basic enemy speed 
spd = 12

phy_fixed_rotation = true;

//image_xscale = 0.5;
//image_yscale = 0.5;
///image_xscale = 0.5;
///image_yscale = 0.5;
if (hp <= 295){
	spd = 32
}

