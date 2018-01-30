var _screen = application_surface;

var _width = 400;
var _height = 224;

var _screen_width = window_get_width();
var _screen_height = window_get_height();

var _new_width = floor(_screen_width / _width) * _width;
var _new_height = floor(_screen_height / _height) * _height

var _blank_w = _screen_width - _new_width;
var _blank_h = _screen_height - _new_height;

//draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
//draw_surface_stretched_ext(application_surface, _blank_w/2, _blank_h/2, _new_width, _new_height, c_white, 100);
//draw_surface(_screen, _blank_w/2, _blank_h/2);