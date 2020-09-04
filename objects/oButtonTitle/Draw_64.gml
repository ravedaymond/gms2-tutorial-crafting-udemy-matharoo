/// @description Draw title at center of button
draw_set_font(fTitle);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x+width/2, (y+height/2), text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

