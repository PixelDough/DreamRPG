/// @description 
global.last_room = room;
display_set_gui_size(camera_get_view_width(view_camera),camera_get_view_width(view_camera));

enum face {
	right,
	up,
	left,
	down
}

sound(snd_synthwave, 0, true);