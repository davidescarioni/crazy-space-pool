if place_meeting(x, y, obj_black_hole) {
	with (obj_game_manager) {
		status = GAME_STATUS.GAME_OVER;
	}
}

if (place_meeting(x, y, obj_black_hole_gravity)) {
	var _inst = instance_place(x, y, obj_black_hole_gravity);
	var _force_strength = 200;
	var _force_vector_x = sign(_inst.x - x);
	var _force_vector_y = sign(_inst.y - y);
	

	physics_apply_force(x, y, _force_strength * _force_vector_x, _force_strength * _force_vector_y)
}