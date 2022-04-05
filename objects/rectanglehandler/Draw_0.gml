for (i=0;i<5;i++) {
draw_rectangle(drawtx-i, drawty-i, drawbx+i, drawby+i, true);
	}
draw_set_font(Font1);
if (battleturn==1) {
draw_text_ext_colour(tx+63, ty+16, fights[0+fightpart], 18, 275,c_white,c_white,c_white,c_white,1);
draw_text_ext_colour(tx+63, ty+48, fights[1+fightpart], 18, 275,c_white,c_white,c_white,c_white,1);
}
	if (battleturn==2) {
draw_text_ext_colour(tx+63, ty+16, acts[0], 18, 275,c_white,c_white,c_white,c_white,1);
draw_text_ext_colour(tx+319, ty+16, acts[1], 18, 275,c_white,c_white,c_white,c_white,1);
draw_text_ext_colour(tx+63, ty+48, acts[2], 18, 275,c_white,c_white,c_white,c_white,1);
draw_text_ext_colour(tx+319, ty+48, acts[3], 18, 275,c_white,c_white,c_white,c_white,1);
	}
	
	if (battleturn==3) {
		for (i=0;i<array_length(obj_soul.itemlist);i++)
draw_text_ext_colour(tx+63+(256*(i%2)), ty+16+(32*floor(i/2)), obj_soul.itemlist[i], 18, 275,c_white,c_white,c_white,c_white,1);
	}
	
	if (battleturn==4) {
		if (obj_enemy.friendliness>=7) {
			draw_text_ext_colour(tx+63, ty+16, "* ONE Friend Request", 18, 275,c_white,c_white,c_white,c_white,1);
draw_text_ext_colour(tx+95, ty+48, "Accept", 18, 275,c_white,c_white,c_white,c_white,1);
draw_text_ext_colour(tx+319, ty+48, "Deny", 18, 275,c_white,c_white,c_white,c_white,1);
	} else {
	draw_text_ext_colour(tx+63, ty+16, "* ZERO Friend Requests", 18, 275,c_white,c_white,c_white,c_white,1);
	}}
	
//i have no fucking idea why but it refuses to work otherwise
if (obj_enemy.turn=6&&battleturn=11) {
if (obj_enemy.attacktimer<180) {
draw_set_font(Font1)
draw_text_ext_colour(250, ty+10, "  HAPPY", 18, 275,c_white,c_white,c_white,c_white,1);
draw_set_font(Font15)
draw_text_ext_colour(276, ty+34, "BREAKTIME!!", 16, 275,c_white,c_white,c_white,c_white,1);
}
if (obj_enemy.attacktimer>=180) {
draw_set_font(Font1)
draw_text_ext_colour(276, ty+10, "SIKE!!!", 16, 275,c_white,c_white,c_white,c_white,1);
}}
if (obj_enemy.turn=11&&battleturn=11) {
draw_set_font(Font1)
draw_text_ext_colour(250, ty+10, "  HAPPY", 18, 275,c_white,c_white,c_white,c_white,1);
draw_set_font(Font15)
draw_text_ext_colour(276, ty+34, "BREAKTIME!!", 16, 275,c_white,c_white,c_white,c_white,1);
}