var _object_in_field = instance_place(x, y, obj_player);

if (_object_in_field != noone) {
	var _force_strength = 150;
	var _force_vector_x = sign(x - _object_in_field.x);
	var _force_vector_y = sign(y - _object_in_field.y);
	
	with (_object_in_field) {
		physics_apply_force(x, y, _force_strength * _force_vector_x, _force_strength * _force_vector_y)
	}
}