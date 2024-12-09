ball_counter = instance_number(obj_asteroid);

if (status == GAME_STATUS.PLAY) {
	//if (ball_counter == 0) status = GAME_STATUS.WIN;
}

if (status == GAME_STATUS.WIN) {
	if (!is_changing_room) {
		is_changing_room = true;
		alarm[1] = is_changing_time;
	}
}

if (status == GAME_STATUS.GAME_OVER) {
	if (!is_restarting) {
		is_restarting = true;
		alarm[2] = is_restarting_time;
	}
}