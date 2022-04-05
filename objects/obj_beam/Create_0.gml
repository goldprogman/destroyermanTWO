image_angle=beamdir;
if (rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 0, 0, 640, 480)!=0) {
    xoffset=24*sin(degtorad(image_angle));
	yoffset=24*cos(degtorad(image_angle));
	instance_create_b(x+xoffset,y+yoffset,-100,image_angle);
} else {
instance_destroy()}