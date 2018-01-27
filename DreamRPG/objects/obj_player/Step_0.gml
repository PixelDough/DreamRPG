if place_snapped(16, 16) {
	if keyboard_check(vk_right) {
		motion_set(0, 1);
	} else if keyboard_check(vk_up) {
		motion_set(90, 1);
	} else if keyboard_check(vk_left) {
		motion_set(180, 1);
	} else if keyboard_check(vk_down) {
		motion_set(270, 1);
	} else {
		motion_set(0,0);
	}
}
