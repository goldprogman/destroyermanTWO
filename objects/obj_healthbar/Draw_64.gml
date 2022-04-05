/// @description Insert description here 453 428
draw_healthbar(453,428,602,448,hp*5,$0001BA,$6EC91E,$6EC91E,0,true,false)
draw_sprite(spr_healthbar1, 0, 453, 428);
draw_set_font(Font2);
if (hp<10) {
draw_text(467, 403, "0" + string(hp));
} else {
draw_text(467, 403, hp);}
draw_text(506, 403, "/");
draw_text(528, 403, "20");