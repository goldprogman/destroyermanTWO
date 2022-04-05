y+=yvel;
x+=xvel;
yvel+=0.05
if (bbox_bottom>by) {
	yvel/=2; yvel*=-1;
	xvel/=2;
}
if (bbox_left<tx||bbox_right>bx) {
xvel*=-1;	
}