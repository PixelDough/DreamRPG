//camera_set_view_size(view_camera, 400*global.zoom, 224*global.zoom);

var _cam_w = camera_get_view_width(view_camera);
var _cam_h = camera_get_view_height(view_camera);

var _zoom_speed = 0.1;
var _next_zoom_out = global.zoom_set-_zoom_speed;
var _next_zoom_in = global.zoom_set+_zoom_speed;
if _next_zoom_out >= 1 {
	if mouse_wheel_down() global.zoom_set -= _zoom_speed;
}
if _next_zoom_in <= 2 {
	if mouse_wheel_up() global.zoom_set += _zoom_speed;
}

global.zoom = lerp(global.zoom, global.zoom_set, 0.05);

camera_set_view_size(view_camera, obj_display_manager.ideal_width/global.zoom, obj_display_manager.ideal_height/global.zoom);

var _cam_w = camera_get_view_width(view_camera);
var _cam_h = camera_get_view_height(view_camera);

if instance_exists(obj_player) {
	camx = clamp((obj_player.x+8) - (_cam_w/2), 0, room_width - _cam_w);
	camy = clamp((obj_player.y+16) - (_cam_h/2), 0, room_height - _cam_h);
}

camera_set_view_pos(view_camera, camx, camy);

//if application_surface_is_enabled() and surface_exists(application_surface) and window_has_focus() {
//	surface_resize(application_surface, window_get_width(), window_get_height());
//}