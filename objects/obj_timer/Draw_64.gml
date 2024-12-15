draw_set_colour(c_white)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_hud);
var _timer_text =  $"{minutes_label}:{seconds_label}:{milliseconds_label}";

if (room == rm_end) {
	var _ypos = view_hport - 50;
	var _xpos = view_wport / 2;
	draw_text_transformed(_xpos, _ypos - 26, "Tempo impiegato", 1, 1, 0);
	draw_text_transformed(_xpos, _ypos, _timer_text, 1, 1, 0);
} else {
	draw_text_transformed(xx, yy, _timer_text, 1, 1, 0);
}