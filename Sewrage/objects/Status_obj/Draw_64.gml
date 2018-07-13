/// @description Insert description here
///draw  GUI
///w_sprite(Gui_spr,1,0,0);

///draw healthbar
draw_sprite(healthborder_spr,1,8,9);
draw_sprite_ext(healthfiller_spr,1,8,9,
max(0,playerhealth/maxplayerhealth),1,0,c_white,1);