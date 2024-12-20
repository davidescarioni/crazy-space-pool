if input_check(ACTION.CONFIRM) {
	var _next_room = rm_rules
	instance_create_depth(x, y, 0, obj_mover, {target: _next_room})
} 