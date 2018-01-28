///@param dir
///@param speed
var _dir = argument0;
var _speed = argument1;

if place_snapped(16, 16) {
	motion_set(0,0);
	if _dir >= 0 {
		if _dir == 0 {
			if !place_meeting(x+16, y, obj_solid) motion_set(0, _speed);
			//image_index = 1;
			sprite_index = anim[0]
		} else if _dir == 1 {
			if !place_meeting(x, y-16, obj_solid) motion_set(90, _speed);
			//image_index = 2;
			sprite_index = anim[1]
		} else if _dir == 2 {
			if !place_meeting(x-16, y, obj_solid) motion_set(180, _speed);
			//image_index = 3;
			sprite_index = anim[2]
		} else if _dir == 3 {
			if !place_meeting(x, y+16, obj_solid) motion_set(270, _speed);
			//image_index = 0;
			sprite_index = anim[3]
		}
	}
}