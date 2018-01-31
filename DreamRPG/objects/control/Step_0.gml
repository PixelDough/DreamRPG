player_exists = instance_exists(obj_player);

if keyboard_check_pressed(vk_escape) game_end();

if keyboard_check_pressed(vk_enter) {
	if room == main_menu room_change(room1);
}