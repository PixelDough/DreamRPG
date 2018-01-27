if place_snapped(16, 16) {
	if dir == 0 {
		motion_set(0, 1);
	} else if dir == 1 {
		motion_set(90, 1);
	} else if dir == 2 {
		motion_set(180, 1);
	} else if dir == 3 {
		motion_set(270, 1);
	} else {
		motion_set(0,0);
	}
	dir = -1;
}

depth_sort();