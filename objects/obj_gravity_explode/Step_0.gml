var _object_in_field = instance_place(x, y, obj_player);

if (_object_in_field != noone) {
	var _force_strength = 400;
	var _force_vector_x = sign(_object_in_field.x - x);
	var _force_vector_y = sign(_object_in_field.y - y);
	
	with (_object_in_field) {
		physics_apply_force(x, y, _force_strength * _force_vector_x, _force_strength * _force_vector_y)
	}
}

if (inst != noone) {
	x = inst.x;
	y = inst.y;
}