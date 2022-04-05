if (!obj_soul.fightwait&&!init) {
		xvel=2;
		yvel=random_range(-50, 50)/30;
		x=319; y=319;
		init=true;
		winner=0;
}
x+=xvel; y+=yvel;
topcollision=y-15; bottomcollision=y+15;
if (topcollision<ty||bottomcollision>by) {
yvel*=-1;
yvel/=0.98;
}
if (x<200) {
if (place_meeting(x, y, obj_you)) {
	xvel*=-1;
	xvel+=0.5*sign(xvel);
	yvel=(y-obj_you.y)*0.3;
	x=200;
	show_debug_message("you ding")
}
if (x<130) {
winner=-1;	
}
}
if (x>439) {
if (place_meeting(x, y, obj_opponent)) {
	xvel*=-1;
	xvel+=0.5*sign(xvel);
	x=440;
	yvel=(y-obj_opponent.y)*0.3;
	show_debug_message("opponent ding")
}
if (x>479) {
	winner=1;
}
}
yvel*=0.98;