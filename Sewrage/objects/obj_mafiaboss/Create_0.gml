///hps
maxhp = 250;
hp = maxhp;
path = path_add();
alarm_set(1,20);

spd = 6;

CheeseCooldown = 100;

ratsummon = random_range(160,240);
alarm_set(0,ratsummon);
phy_fixed_rotation = true;