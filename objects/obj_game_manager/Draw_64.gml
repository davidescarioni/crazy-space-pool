draw_text(10, 10, $"Asteroidi rimasti: {ball_counter}")
draw_text(room_width / 2, 10, start_text)

if status == GAME_STATUS.GAME_OVER draw_text(room_width / 2, room_height / 2, "GAME OVER")