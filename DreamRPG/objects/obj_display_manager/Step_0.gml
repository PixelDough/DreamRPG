///Zoom window
if keyboard_check_pressed(ord("Z")) {
	zoom = clamp(zoom+1, 1, max_zoom);
	window_set_size(ideal_width*zoom, ideal_height*zoom);
	surface_resize(application_surface, ideal_width*zoom, ideal_height*zoom);
	alarm[0] = 1;
}

if keyboard_check_pressed(vk_f4) or keyboard_check_pressed(ord("F")) {
	window_set_fullscreen(!window_get_fullscreen());
}

if window_get_fullscreen() {
	zoom = max_zoom;
	window_set_size(ideal_width*zoom, ideal_height*zoom);
	surface_resize(application_surface, ideal_width*zoom, ideal_height*zoom);
}