/// @description Go to next room

var _next_room = rm_game_2;
if (room == rm_game_2) _next_room = rm_game_3;
if (room == rm_game_3) _next_room = rm_game_1;

instance_create_layer(x, y, "Controllers", obj_mover, {target: _next_room})
instance_destroy()
