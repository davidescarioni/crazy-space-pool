// DEBUG
if keyboard_check_released(ord("R")) game_restart()


// STEP EVENT
if !(instance_exists(obj_game_manager)) exit;
if obj_game_manager.status != GAME_STATUS.PLAY exit;

if keyboard_check(ord("Z")) turbo = true else turbo = false;

var _total_speed = spd + turbo*turbo_spd

if (keyboard_check(vk_up)) physics_apply_impulse(x, y, 0, -_total_speed)
if (keyboard_check(vk_down)) physics_apply_impulse(x, y, 0, _total_speed)
if (keyboard_check(vk_left)) physics_apply_impulse(x, y, -_total_speed, 0)
if (keyboard_check(vk_right)) physics_apply_impulse(x, y, _total_speed, 0)

// Check collision with black hole
if place_meeting(x, y, obj_black_hole) {
	obj_game_manager.status = GAME_STATUS.GAME_OVER;
	instance_destroy();
	audio_play_sound(snd_death, 1, false)
}