ball_counter = instance_number(obj_asteroid);

enum GAME_STATUS {
	WAIT,
	PLAY,
	GAME_OVER,
	WIN
}

status = GAME_STATUS.WAIT;

start_text = "Ready?";
alarm[0] = 60;