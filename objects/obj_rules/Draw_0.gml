if opacity < 1 opacity += opacity_speed;
if scale < scale_max scale += scale_speed;

draw_sprite_ext(sprite_index, image_index, room_width / 2, room_height / 2, scale, scale, 0, c_white, opacity);
