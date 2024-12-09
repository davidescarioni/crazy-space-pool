global.mid_transition = false;
global.room_target = -1;

// Place the sequence in the room
function transition_place_sequence(_type) {
	if (layer_exists("Transitions")) layer_destroy("Transitions");
	var _layer = layer_create(-999, "Transitions");
	layer_sequence_create(_layer, 0, 0, _type);
}

// Called to move from a room to another
function transition_start(_room_target, _type_out, _type_in) {
	if (!global.mid_transition) {
		global.mid_transition = true;
		global.room_target = _room_target;
		transition_place_sequence(_type_out);
		layer_set_target_room(_room_target);
		transition_place_sequence(_type_in);
		layer_reset_target_room();
		return true;
	} 
	else return false
}

// Called at the end of an "Out" transition sequence
function transition_change_room() {
	room_goto(global.room_target);
}

// Called at the end of an "In" transition sequence
function transition_finished() {
	layer_sequence_destroy(self.elementID);
	global.mid_transition = false;
}