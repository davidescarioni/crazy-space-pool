if (place_meeting(x, y, obj_asteroid) || place_meeting(x, y, obj_player)) {
	instance_create_layer(x, y, "Instances", obj_gravity_explode);
	instance_destroy()
} 