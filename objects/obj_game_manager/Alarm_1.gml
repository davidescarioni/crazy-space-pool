/// @description Go to next room

var _next_room = rm_game_2;
if (room == rm_game_2) _next_room = rm_game_3;
if (room == rm_game_3) _next_room = rm_game_4;
if (room == rm_game_4) _next_room = rm_game_5;
if (room == rm_game_5) _next_room = rm_game_6;
if (room == rm_game_6) _next_room = rm_game_7;
if (room == rm_game_7) _next_room = rm_game_8;
if (room == rm_game_8) _next_room = rm_game_9;
if (room == rm_game_9) _next_room = rm_game_10;
if (room == rm_game_10) _next_room = rm_end;

instance_create_layer(x, y, "Controllers", obj_mover, {target: _next_room})
instance_destroy()
