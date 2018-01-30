MOVE = -1;

if input.r MOVE = 0
else if input.u MOVE = 1
else if input.l MOVE = 2
else if input.d MOVE = 3

if grid_move(MOVE, spd) == true {
	var _step_sound = audio_play_sound(snd_step_wood_2, 100, false);
	audio_sound_pitch(_step_sound, 1 + random_range(-0.1, 0.1));
}

if input.a_p {
	interact();
}

depth_sort();