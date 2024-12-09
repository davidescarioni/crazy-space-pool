/// @description Init game
if start_text == "Ready?" {
	start_text = "Go!"
	alarm[0] = 60
} else {
	start_text = "";
	status = GAME_STATUS.PLAY
}