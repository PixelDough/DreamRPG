if player_exists {
	camx = clamp((obj_player.x+8) - (camera_get_view_width(view_camera)/2), 0, room_width - camera_get_view_width(view_camera));
	camy = clamp((obj_player.y+16) - (camera_get_view_height(view_camera)/2), 0, room_height - camera_get_view_height(view_camera));
}

camera_set_view_pos(view_camera, camx, camy);
//camera_set_view_size(view_camera, 400 + obj_player.x, 224 + obj_player.y);
//view_set_wport(view_camera, 400 + obj_player.x);
//view_set_hport(view_camera, 224 + obj_player.y);

global.last_room = room;