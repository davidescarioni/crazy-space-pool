ball_counter = instance_number(obj_asteroid);

if (status == GAME_STATUS.PLAY) {
	if (ball_counter == 0) status = GAME_STATUS.WIN;
}