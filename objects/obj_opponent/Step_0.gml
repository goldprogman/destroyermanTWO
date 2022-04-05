if (init) {
	targety=obj_puck.y+(sin(current_second)+random_range(-100,100)/100)/3;
y=lerp(y,targety,0.05)}
if (!obj_soul.fightwait&&!init) {
init=true;
x=469;
y=319;
}
//show_debug_message(string(x)+" "+string(y))