ideal_width = 0;
ideal_height = 224;
zoom = 1;
max_zoom = 1;

aspect_ratio = display_get_width() / display_get_height();

ideal_width = round(ideal_height * aspect_ratio);

//Perfect Pixel Scaling
if display_get_width() mod ideal_width != 0 {
	var d = round(display_get_width() / ideal_width);
	ideal_width = display_get_width() / d;
}
if display_get_height() mod ideal_height != 0 {
	var d = round(display_get_height() / ideal_height);
	ideal_height = display_get_height() / d;
}

//Check for odd numbers
if ideal_width & 1 ideal_width++;
if ideal_height & 1 ideal_height++;

//Calculate max zoom
max_zoom = floor(display_get_width() / ideal_width);

surface_resize(application_surface, ideal_width, ideal_height);
display_set_gui_size(ideal_width, ideal_height);
window_set_size(ideal_width, ideal_height);

room_goto_next();