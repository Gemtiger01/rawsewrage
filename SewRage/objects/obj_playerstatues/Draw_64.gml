/// @description Insert description here

///draw the Hud
draw_sprite(spr_HUD,1,0,0);

draw_sprite_ext(spr_healthfiller,1,0,0,
max(0,Player_obj.playerhealth/Player_obj.maxplayerhealth),1,0,c_white,1);

pay = "SNG Coins: x" + string(Player_obj.Money);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_text12);
draw_text_transformed_color(x,y-49,pay,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x,y-51,pay,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x-1,y-50,pay,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x+1,y-50,pay,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x,y-50,pay,1,1,0,c_red,c_red,c_maroon,c_maroon,1);
draw_set_colour(c_yellow);
