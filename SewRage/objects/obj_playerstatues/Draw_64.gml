/// @description Insert description here

///draw the Hud
draw_sprite(spr_HUD,1,0,0);

draw_sprite(spr_playerhead1,1,103,962);
//draw_sprite_ext(spr_healthfiller,1,0,0,
//max(.5,Player_obj.playerhealth/Player_obj.maxplayerhealth),1,0,c_white,1);
draw_healthbar(x+155,y+871,x+568,y+916,scr_map(Player_obj.playerhealth,0,Player_obj.maxplayerhealth,0,100), c_black, c_red,make_colour_rgb(255,145,0),0,true,false);

draw_sprite(spr_coin1,1,0,y-50)
pay = "x"+ string(Player_obj.Money);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_text12);
draw_text_transformed_color(x+45,y-30,pay,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x+45,y-30,pay,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x+45,y-30,pay,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x+45,y-30,pay,1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x+45,y-31,pay,1,1,0,c_silver,c_silver,c_gray,c_gray,1);
draw_set_colour(c_yellow);
