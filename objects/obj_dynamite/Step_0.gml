image_angle+=rotvel;
image_angle%=360;
boomcheck();
x+=xvel;
y+=yvel;
boomcheck();
xvel+=xacc;
yvel+=yacc;
initimer--;
if (boom=true) {
	rotvel=0;
	image_angle=testdir+(90*sign(backend-0.5));
	xvel=0; yvel=0; xacc=0; yacc=0;
	image_speed=1;
	initimer=600;}