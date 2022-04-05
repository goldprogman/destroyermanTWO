/// @description chatting
if (battleturn==10) {
	/*texttimer++;
	if (texttimer>30) {
	draw_sprite(spr_dialogsmall, 0, 380, 100);	
	}
	currentchar=floor((texttimer-30)/2);
draw_set_font(Font4);
text = string_copy(textlines[turn],1,currentchar);
draw_text_ext_colour(400, 105, text, 18, 275,c_black,c_black,c_black,c_black,1);*/
if (enemyhp<=0) {
	DialogueScript("DIEEEEEE");
}
if (friendliness=7) {
	DialogueScript(["HOT DAMN!", "YOU REALLY KNOW YOUR WAY AROUND EXPLOSIVES.", "COLOR ME SURPRISED, I REALLY DIDN'T EXPECT THIS FROM THE LIKES OF YOU.", "I THOUGHT YOU WERE JUST SOME TECHY SCRIPTING NERD. ", "FROM ONE BOMBER TO ANOTHER, HOW ABOUT WE CALL IT A TIE AND BECOME FRIENDS?"])
	/* HOT DAMN!
YOU REALLY KNOW YOUR WAY AROUND EXPLOSIVES.
COLOR ME SURPRISED, I REALLY DIDN'T EXPECT THIS FROM THE LIKES OF YOU.
I THOUGHT YOU WERE JUST SOME TECHY SCRIPTING NERD. 
FROM ONE BOMBER TO ANOTHER, HOW ABOUT WE CALL IT A TIE AND BECOME FRIENDS? */
friendliness++;
}
if (friendliness>=8&&!instance_exists(obj_dialoguehandler)) {battleturn=11}
if (texttimer=0) {DialogueScript(textlines[turn]); texttimer++;}
draw_sprite(spr_dialogsmall, 0, 380, 80);	
tx=233; bx=405; obj_soul.x=319; obj_soul.y=319;
}