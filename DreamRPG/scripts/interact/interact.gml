if facing == 0 {
	with instance_place(x+16, y, obj_npc) {
		sprite_index = anim[2]
		facing = face.left;
		script_execute(script);
	}
} else if facing == 1 {
	with instance_place(x, y-16, obj_npc) {
		sprite_index = anim[3]
		facing = face.down;
		script_execute(script);
	}
} else if facing == 2 {
	with instance_place(x-16, y, obj_npc) {
		sprite_index = anim[0]
		facing = face.right;
		script_execute(script);
	}
} else if facing == 3 {
	with instance_place(x, y+16, obj_npc) {
		sprite_index = anim[1]
		facing = face.up;
		script_execute(script);
	}
}