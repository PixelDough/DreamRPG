MOVE = -1;

if input.r MOVE = 0
else if input.u MOVE = 1
else if input.l MOVE = 2
else if input.d MOVE = 3

//if place_snapped(16, 16) {
//	motion_set(0,0);
//	if keyboard_check(vk_right) {
//		if !place_meeting(x+16, y, obj_solid) motion_set(0, 1);
//		image_index = 1;
//	} else if keyboard_check(vk_up) {
//		if !place_meeting(x, y-16, obj_solid) motion_set(90, 1);
//		image_index = 2;
//	} else if keyboard_check(vk_left) {
//		if !place_meeting(x-16, y, obj_solid) motion_set(180, 1);
//		image_index = 3;
//	} else if keyboard_check(vk_down) {
//		if !place_meeting(x, y+16, obj_solid) motion_set(270, 1);
//		image_index = 0;
//	}
//}

if grid_move(MOVE, spd) == true {
	audio_play_sound(choose(snd_step_wood_1, snd_step_wood_2), 100, false);
}

depth_sort();