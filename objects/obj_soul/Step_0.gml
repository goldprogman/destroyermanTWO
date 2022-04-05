switch (battleturn){
case (0): x=209; y=424;
obj_buttons.image_index=selection;
switch (selection) {
case 3: x+=68;
case 2: x+=65;
case 1: x+=65;
}
if (!instance_exists(obj_dialoguehandler)) {
switch (flavor) {
case 0: TextboxScript("* Smells like sulfur."); break;
case 1: TextboxScript("* Destroyerman makes rude gestures with his missing arm."); break;
case 2: TextboxScript("* Destroyerman gnaws on a stick of dynamite as if it were a bone."); break;
case 3: TextboxScript("* Your ears are ringing."); break;
case 4: TextboxScript("* You bask in Destroyerman's glory."); break;
case 5: TextboxScript("* Destroyerman dumps more ashes on his hair."); break;
}}
if (keyboard_check_pressed(vk_left)) {
	audio_play_sound(snd_menumove, 5, false);
	selection--;}
if (keyboard_check_pressed(vk_right)) {
	audio_play_sound(snd_menumove, 5, false);
	selection++;}
if (selection<0||selection>3) {
	selection-=4*sign(selection);
}
if (keyboard_check_pressed(ord("Z")))
{
	audio_play_sound(snd_select, 10, false);
	instance_destroy(obj_dialoguehandler);
	switch (selection) {
	case (0): battleturn=1; selection=0; rectanglehandler.fightpart=0; fightchoice=false; break;
	case (1): battleturn=2; selection=0; break;
	case (2): if (array_length(itemlist)>0) {battleturn=3; selection=0;}; break;
	case (3): battleturn=4; selection=0;
	}
}
break;
case (1):	
switch (selection) {
	case (0):x=81; y=287; break;
	case (1):x=81; y=319; break;
}
if (keyboard_check_pressed(vk_left)||keyboard_check_pressed(vk_right)||keyboard_check_pressed(vk_up)||keyboard_check_pressed(vk_down)) {
	selection=(selection+1)%2;
	audio_play_sound(snd_menumove, 5, false);}
	if (keyboard_check_pressed(ord("Z")))
{
	audio_play_sound(snd_select, 10, false);
	if (fightchoice) {
	input=selection;
	battleturn=5;
	} else {
	target=selection;
	fightchoice=true;
	rectanglehandler.fightpart=2;
	selection=0;
	}
} else if (keyboard_check_pressed(ord("X"))) {
battleturn=0; selection=0;
}
	
	break;
case (2): 
switch (selection) {
	case (0):x=81; y=287; break;
	case (1):x=337; y=287; break;
	case (2):x=81; y=319; break;
	case (3):x=337; y=319; break;
}
if (keyboard_check_pressed(vk_left)) {
	audio_play_sound(snd_menumove, 5, false);
	selection+=sign(0.5-(selection%2));}
if (keyboard_check_pressed(vk_right)) {
	audio_play_sound(snd_menumove, 5, false);
	selection+=sign(0.5-(selection%2));}
if (keyboard_check_pressed(vk_up)) {
	audio_play_sound(snd_menumove, 5, false);
	selection-=2;}
if (keyboard_check_pressed(vk_down)) {
	audio_play_sound(snd_menumove, 5, false);
	selection+=2;}
obj_buttons.image_index=4;
if (selection<0||selection>3) {
	selection-=4*sign(selection);
}
if (keyboard_check_pressed(ord("Z")))
{
	obj_enemy.actchoice=selection;
	battleturn=6; x=-20; y=-20;
	} else if (keyboard_check_pressed(ord("X"))) {
battleturn=0; selection=1;
}
break;
case (3): 
if (keyboard_check_pressed(vk_left)) {
	audio_play_sound(snd_menumove, 5, false);
	selection+=sign(0.5-(selection%2));}
if (keyboard_check_pressed(vk_right)) {
	audio_play_sound(snd_menumove, 5, false);
	selection+=sign(0.5-(selection%2));}
if (keyboard_check_pressed(vk_up)) {
	audio_play_sound(snd_menumove, 5, false);
	selection=(selection+2)%4;}
if (keyboard_check_pressed(vk_down)) {
	audio_play_sound(snd_menumove, 5, false);
	selection=(selection+2)%4;}
	if (selection>=array_length(itemlist)) {
selection=array_length(itemlist)-1;}
if (keyboard_check_pressed(ord("Z"))) {
	if (itemlist[selection]=="* BloxyCola") {
	hp+=8;
	} if (itemlist[selection]=="* ChezBurgr") {
	hp+=14;
	}
	if (hp>20) {hp=20};
	audio_play_sound(snd_select, 1, false);
	audio_play_sound(snd_heal, 10, false);
	itemselection=itemlist[selection];
	array_delete(itemlist, selection, 1);
	battleturn=7; selection=0;
} else if (keyboard_check_pressed(ord("X"))) {
battleturn=0; selection=2;
}
switch (selection) {
	case (0):x=81; y=287; break;
	case (1):x=337; y=287; break;
	case (2):x=81; y=319; break;
	case (3):x=337; y=319; break;
}
break;
case (4): if (obj_enemy.friendliness>=7) {
	switch (selection) {
	case (0):x=113; y=319; break;
	case (1):x=337; y=319; break;}
	if (keyboard_check_pressed(ord("Z"))) {
	if (selection=0) {
	room_goto(Room3)	
	} else {battleturn=0}
}
if (keyboard_check_pressed(vk_left)) {
	audio_play_sound(snd_menumove, 5, false);
	selection+=sign(0.5-(selection%2));}
if (keyboard_check_pressed(vk_right)) {
	audio_play_sound(snd_menumove, 5, false);
	selection+=sign(0.5-(selection%2));}
} else {
	x=-50; y=-50;
}
if (keyboard_check_pressed(ord("X"))) {
	battleturn=0;selection=3;}
break;
case (5): if (input=1) {
if (tx!=135) {tx=135; bx=504; fightwait=true;
	striker= instance_create_depth(-50,-50,0,obj_you);
	puck= instance_create_depth(-50,-50,0,obj_puck);
	opp= instance_create_depth(-50,-50,0,obj_opponent);}
	
if (!fightwait) {	
	selection=0;
if (keyboard_check(vk_up)) {
	selection++;}
if (keyboard_check(vk_down)) {
selection--;}
if (keyboard_check(ord("Z"))) {
	selection/=2;}
	x=146; 
	y=320-(50*selection);
	obj_you.y=y;
	obj_you.x=x+24;
	if (puck.winner!=0) {
		if (puck.winner=-1) {playerdamage(3);}
		if (puck.winner=1) {if (target=0) {damage(24);} else {obj_enemy.fusestage=-1; obj_arm.sprite_index=spr_arm}}
		instance_destroy(puck); instance_destroy(striker); instance_destroy(opp);
		battleturn=10; tx=233; bx=405; x=319; y=319;
		selection=0;
	}
}
} else {
	if (target=0) {damage(12);} else {obj_enemy.fusestage=-1; obj_arm.sprite_index=spr_arm}
	battleturn=10;
}
break;
case (7):
x=-100; y=-100;
if (selection=0) {
if (itemselection=="* BloxyCola") {
	if (hp=20) {
	TextboxScript("* You drank the Bloxy Cola. /n* Your HP was maxed out.")
	} else {TextboxScript("* You drank the Bloxy Cola. /n* You recovered 8 HP!")}
}
if (itemselection=="* ChezBurgr") {
	if (hp=20) {
	TextboxScript("* You ate the CheezBurger. /n* Your HP was maxed out.")
	} else {TextboxScript("* You ate the CheezBurger. /n* You recovered 14 HP!")}
}selection++;
}
break;
case (11):
flavor=floor(random_range(0,6))
if (keyboard_check(vk_left)) {
	x-=3;}
if (keyboard_check(vk_right)) {
	x+=3;}
if (keyboard_check(vk_up)) {
	y-=3;}
if (keyboard_check(vk_down)) {
	y+=3;}
if (x-9<tx) {x=tx+9} if (x+9>bx) {x=bx-8} if (y-9<ty) {y=ty+9} if (y+9>by) {y=by-8}
break;
}
if (floor(invuln/5)%2==1) {
image_alpha=0.5;
} else {
image_alpha=1;	
}
if (hp<=0) {
	instance_create_depth(x,y,-1000,obj_souldeath);
	room_goto(Gameover);
	audio_stop_sound(mus_thedestroyer);
	audio_stop_sound(snd_fuse);
}
if (invuln>0) {invuln--;}
prevturn=battleturn;
//show_debug_message(string(selection) + " " + string(battleturn))
//0: your turn, regular
//1: fight choices
//2: act choices
//3: item choices
//4: mercy choices
//5: fight action
//6: act dialogue
//7: item dialogue
//8: mercy dialogu
//10: enemy dialogue
//11: enemy turn