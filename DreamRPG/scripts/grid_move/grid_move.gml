///@param dir
///@param speed
var _dir = argument0;
var _speed = argument1;

var _moved = false;

if place_snapped(16, 16) {
	motion_set(0,0);
	if _dir >= 0 {
		if _dir == 0 {
			if !place_meeting(x+16, y, obj_solid) {
				motion_set(0, _speed);
				_moved = true;
			}
			sprite_index = anim[0]
			facing = face.right;
		} else if _dir == 1 {
			if !place_meeting(x, y-16, obj_solid) {
				motion_set(90, _speed);
				_moved = true;
			}
			sprite_index = anim[1]
			facing = face.up;
		} else if _dir == 2 {
			if !place_meeting(x-16, y, obj_solid) {
				motion_set(180, _speed);
				_moved = true;
			}
			sprite_index = anim[2]
			facing = face.left;
		} else if _dir == 3 {
			if !place_meeting(x, y+16, obj_solid) {
				motion_set(270, _speed);
				_moved = true;
			}
			sprite_index = anim[3]
			facing = face.down;
		}
	}
}

return (_moved);