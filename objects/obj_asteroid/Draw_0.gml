//if (surface_exists(ball_surf)) {
//	surface_set_target(ball_surf);
//	draw_sprite_tiled(spr_asteroid_texture, 0, x, y)
	
//	gpu_set_blendmode(bm_subtract);
//	draw_sprite(sprite_index, 0, 0, 0);
//	gpu_set_blendmode(bm_normal);
	
//	surface_reset_target();
	
//	draw_surface(ball_surf, x-sprite_width/2, y-sprite_height/2);
//	draw_sprite(sprite_index, 1, x-sprite_width/2, y-sprite_height/2)
//} else {
//	 ball_surf = surface_create(sprite_width, sprite_height)
//}

draw_self()