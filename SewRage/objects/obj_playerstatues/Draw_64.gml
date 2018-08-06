/// @description Insert description here

///draw the Hud
draw_sprite(spr_HUD,1,0,0);

draw_sprite_ext(spr_healthfiller,1,0,0,
max(0,Player_obj.playerhealth/Player_obj.maxplayerhealth),1,0,c_white,1);

