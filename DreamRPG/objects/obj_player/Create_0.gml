/// @description 
MOVE = -1;
spd = 1;

anim_walk[0] = spr_remu_walk_r;
anim_walk[1] = spr_remu_walk_u;
anim_walk[2] = spr_remu_walk_l;
anim_walk[3] = spr_remu_walk_d;

anim = anim_walk;

facing = face.down;

if instance_exists(obj_player) and obj_player.id != id instance_destroy();