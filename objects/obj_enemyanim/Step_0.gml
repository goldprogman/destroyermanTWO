/// @description Insert description here
legs.image_yscale=1+(sin(degtorad(animtimer*5))*0.05);
head.y=128-(sin(degtorad(animtimer*5))*7.2)
arm.image_angle=0+(sin(degtorad(animtimer*5))*10)
legs.y=237+yfly;
head.y+=yfly;
arm.y=136+yfly;
animtimer++;
if (battleturn=11&&obj_enemy.turn=8) {
if (obj_enemy.attacktimer>110&&animtimer%36==0&&obj_enemy.attacktimer<900) {
animtimer--;	
}
if (obj_enemy.attacktimer>=150&&obj_enemy.attacktimer<900) {
head.sprite_index=spr_holyshit;	
legs.sprite_index=spr_damnbody;
arm.image_alpha=0;
}
if (obj_enemy.attacktimer>=900) {
	head.sprite_index=spr_head;
	legs.sprite_index=spr_legs;
	arm.image_alpha=1;
}
}