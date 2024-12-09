ball_counter = instance_number(obj_asteroid);

enum GAME_STATUS {
	WAIT,
	PLAY,
	GAME_OVER,
	WIN
}

status = GAME_STATUS.WAIT;
is_changing_room = false;
is_changing_time = 180;
is_restarting = false;
is_restarting_time = 120;

start_text = "Ready?";
alarm[0] = 60;