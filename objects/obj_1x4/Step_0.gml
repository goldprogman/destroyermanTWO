if (alarm[0]>0) {
	image_index=1;
if (alarm[0]%2==0) {
	damageshake=alarm[0]/2;
	if (damageshake%2==0) {
	x=startx+(damageshake/2)
} else {
	x=startx-(damageshake/2)+0.5
}
camera_set_view_pos(view_camera[0], random_range(-1, 1), random_range(-1, 1));
}
} else {
	camera_set_view_pos(view_camera[0], 0, 0);
	image_index=0;}