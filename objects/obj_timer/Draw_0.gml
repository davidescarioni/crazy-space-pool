draw_set_colour(c_white)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var _timer_text =  $"{minutes_label}:{seconds_label}:{milliseconds_label}";
draw_text_transformed(xx, yy, _timer_text, 1, 1, 0);