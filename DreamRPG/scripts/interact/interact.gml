if facing == 0 {
	with instance_place(x+16, y, obj_npc) {
		sprite_index = anim[2]
		facing = face.left;
		sound(sound_id, sound_variation, false);
	}
} else if facing == 1 {
	with instance_place(x, y-16, obj_npc) {
		sprite_index = anim[3]
		facing = face.down;
		sound(sound_id, sound_variation, false);
	}
} else if facing == 2 {
	with instance_place(x-16, y, obj_npc) {
		sprite_index = anim[0]
		facing = face.right;
		sound(sound_id, sound_variation, false);
	}
} else if facing == 3 {
	with instance_place(x, y+16, obj_npc) {
		sprite_index = anim[1]
		facing = face.up;
		sound(sound_id, sound_variation, false);
	}
}