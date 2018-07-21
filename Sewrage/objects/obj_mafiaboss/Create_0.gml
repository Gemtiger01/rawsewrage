///hps
maxhp = 250;
hp = maxhp;
path = path_add();
alarm_set(1,1);

spd = 6;

CheeseCooldown = 100;

ratsummon = random_range(80,120);
alarm_set(0,ratsummon);
phy_fixed_rotation = true;