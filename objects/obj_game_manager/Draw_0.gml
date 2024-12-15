draw_set_font(fnt_hud)
draw_set_halign(fa_center)


var _xpos = 150;
var _ypos = 70;

draw_text(room_width / 2, 40, start_text)

if status == GAME_STATUS.GAME_OVER {
	draw_set_font(fnt_text)
	//draw_sprite_stretched(spr_failed_menu, 0, _xpos, _ypos, 195 * 2, 130 * 2)
	//draw_sprite(spr_rules, 0, room_width / 2, room_height / 2)
	draw_set_color(c_red)
	draw_text(camera_get_view_width(view_camera[0])/ 2, room_height / 2, "TRY AGAIN!")
	draw_set_color(c_black);
	//draw_text(room_width / 2, 160, "Riprova")
	//draw_text(room_width / 2, 200, "Esci")
	if (!is_changing_room) {
		alarm[2] = is_changing_time;
		is_changing_room = true;
	}
}
if status == GAME_STATUS.WIN draw_text(camera_get_view_width(view_camera[0])/2, room_height / 2, "LEVEL COMPLETED")