player_exists = instance_exists(obj_player);

if keyboard_check_pressed(vk_escape) game_end();

if keyboard_check_pressed(vk_enter) {
	if room == parent room_change(room1);
}

if keyboard_check_pressed(vk_f4) or keyboard_check_pressed(ord("F")) {
	window_set_fullscreen(!window_get_fullscreen());
}