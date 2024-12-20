if input_check_released(ACTION.CONFIRM) {
	if !instance_exists(obj_mover) {
		instance_create_layer(x, y, "Instances", obj_mover, {target: rm_game_1})
		audio_stop_all();
		audio_play_sound(snd_ok, 1, false)
	}
}