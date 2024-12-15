if place_meeting(x, y, obj_black_hole) {
	if place_meeting(x, y, obj_black_hole) {
		audio_play_sound(snd_planet_ok, 1, false);
		if (sprite_index == spr_last_asteroid) {
			if (instance_number(obj_asteroid) == 1) {
				obj_game_manager.status = GAME_STATUS.WIN;
			} else {
				obj_game_manager.status = GAME_STATUS.GAME_OVER;
				audio_play_sound(snd_death, 1, false);
			}
			instance_destroy()
		} else {
			instance_destroy();
		}
	}
}

if (place_meeting(x, y, obj_gravity)) {
	var _inst = instance_place(x, y, obj_gravity);
	var _force_strength = 100;
	var _force_vector_x = sign(_inst.x - x);
	var _force_vector_y = sign(_inst.y - y);
	

	physics_apply_force(x, y, _force_strength * _force_vector_x, _force_strength * _force_vector_y)
}

if (place_meeting(x, y, obj_black_hole_gravity)) {
	var _inst = instance_place(x, y, obj_black_hole_gravity);
	var _force_strength = 150;
	var _force_vector_x = sign(_inst.x - x);
	var _force_vector_y = sign(_inst.y - y);
	

	physics_apply_force(x, y, _force_strength * _force_vector_x, _force_strength * _force_vector_y)
}

if (place_meeting(x, y, obj_gravity_explode)) {
	var _inst = instance_place(x, y, obj_gravity_explode);
	var _force_strength = 1000;
	var _force_vector_x = sign(x - _inst.x);
	var _force_vector_y = sign(y - _inst.y);
	

	physics_apply_force(x, y, _force_strength * _force_vector_x, _force_strength * _force_vector_y)
}