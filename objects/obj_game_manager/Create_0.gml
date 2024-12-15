if (room == rm_game_1) {
	if !instance_exists(obj_timer) instance_create_layer(x, y, "Controllers", obj_timer);
}

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

if !audio_is_playing(snd_theme) audio_play_sound(snd_theme, 1, true)