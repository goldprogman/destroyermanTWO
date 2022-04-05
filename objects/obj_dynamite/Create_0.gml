image_speed=0;
rotvel=0;
initimer=30;
xvel=0;
yvel=0;
xacc=0;
yacc=0;
beep=0;
boom=false;
backend=false;
verticality=false;
function boomcheck() {
	if (initimer<=0) {	
	testdir= point_direction(x, y, obj_soul.x, obj_soul.y);
	if (verticality) {testdir=90}
	realangle=image_angle+90;
	otherangle=image_angle-90;
	if (testdir-rotvel*1.5<realangle&&realangle<testdir+rotvel*1.5) {
	boom=true;
	}
	if (testdir-rotvel*1.5<otherangle&&otherangle<testdir+rotvel*1.5) {
	boom=true;
	backend=true;
	}
	show_debug_message(string(testdir) + " " + string(image_angle))
}
}