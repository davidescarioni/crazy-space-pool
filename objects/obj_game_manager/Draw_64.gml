draw_set_font(fnt_hud)
draw_set_halign(fa_center)


var _xpos = camera_get_view_width(view_camera[0]);

draw_text(_xpos, 10, start_text)

if status == GAME_STATUS.GAME_OVER draw_text(_xpos, room_height / 2, "GAME OVER")
if status == GAME_STATUS.WIN draw_text(_xpos, room_height / 2, "YOU WIN")