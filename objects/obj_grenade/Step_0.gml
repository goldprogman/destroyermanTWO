x+=xvel;
y+=yvel;
image_angle+=rotate;
switch (state) {
case 0: yvel=(319-y)/40;
xvel=(319-x)/40;
state=1;
break;
case 1: 
if (tx<bbox_left&&bbox_right<bx) {
	if (ty<bbox_top&&bbox_bottom<by) {
		xvel/=3; yvel/=3;
		state=2;
	}
}
break;
case 2:
if (tx>bbox_left||bbox_right>bx){
	x-=xvel;
	xvel*=-1;
}
if (ty>bbox_top||bbox_bottom>by){
y-=yvel;
yvel*=-1;
}
}
fusetimer--;
if (fusetimer<=0) {
	image_speed=1;
}