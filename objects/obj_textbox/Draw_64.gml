draw_set_colour(c_black);
draw_set_font(Alagard);
draw_set_halign(fa_left);
draw_sprite(spr_textbox, 0, x_pos, y_pos);

draw_text_ext(x_pos + padding, y_pos + padding, drawtext, -9999, 
sprite_get_width(spr_textbox) - padding * 2);
