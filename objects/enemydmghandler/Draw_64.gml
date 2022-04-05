if (timer>0){
if (timer%4==0&&barshow>enemyhp) {
	barshow--;
}
draw_set_font(Font3);
draw_rectangle_color(300, 60, 334, 94,$000000,$000000,$000000,$000000, false)
draw_text_color(300,60,damaged,c_red,c_red,c_red,c_red,1)
draw_rectangle_color(269, 100, 369, 112,$000000,$000000,$000000,$000000, true)
draw_healthbar(269,100,369,112,barshow*5,$404040,$00FF00,$00FF00,0,true,false)	
timer--;
//show_debug_message(string(damaged)+" "+string(showhp)+" "+string(barshow));
}