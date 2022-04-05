/// @description sex
if (text=="ARRAYMODE") {
arraymode=true;
currenttext=0;
}
if (font=1) {
draw_sprite(spr_dialogsmall, 0, 380, 80);		
}
if (arraymode) {
text=textarray[currenttext];	
}
lookedupfont=fontlookupsheet[font]; //should probably start commenting shit
if (font=0) {
draw_set_font(Font1);	
} else {
draw_set_font(Font4);}
fontwidth=lookedupfont[1];
if (linecapacity=0) {linecapacity=lookedupfont[2];}
lineheight=lookedupfont[3];
//thing that makes the text pop in one character per X frames
texttimer++;
if (string_char_at(text,cut)=="/"&&string_char_at(text,cut+1)=="w") {
additionalwait=1;
} else {additionalwait=0;}
if (texttimer>=timedelay+(30*additionalwait)) {
cut++;
if (cut<=string_length(text)&&string_char_at(text,cut)!=" "){
	if (font=0) {
audio_play_sound(snd_text,1,false)	}
else {
	audio_play_sound(snd_speech,1,false) }
}
texttimer=0;
}
i=1; letter=0; line=0;
while (i<=string_length(text)&&i<cut) {
	if (string_char_at(text,i)=="/") {
	prevmod=modifier;
	modifier=string_char_at(text,++i);
	i++;
	if (modifier="n") {
	letter=0; line++; modifier=prevmod;	
	}
	if (modifier="w") {
	modifier=prevmod;	
	}
}
	
	//BASICALLY detects if the word currently being typed would go out of bounds
	//and if it does it'll boot it into the next line
	length=0;
	while (string_char_at(text,i)!=" " && i<string_length(text)) {
		length++;
		i++;
	}
	if (letter+length>linecapacity) {
		letter=0; line++;
	}
	i-=length;
	//draw letter one at a time
	switch (modifier) {
		case (0): //thingy
	show_debug_message(string(i)+" "+string(letter)+" "+string(length)+" "+string(beginx+(letter*fontwidth))+" "+string(beginy+((fontwidth*2-1)*line)));
	if (font=1) {
	draw_text_ext_colour(beginx+(letter*fontwidth), beginy+(lineheight*line), string_char_at(text,i), 18, 275,c_black,c_black,c_black,c_black,1);
	} else {
		if (modifier="0") {
		color=c_white;	
		} else {color=c_yellow;}
		shakex=beginx; shakey=beginy;
		if (string_char_at(text,i)!="*") {
		if (random(1200)>=1198) {shakex+=sign(random_range(-1, 1));}
		if (random(1200)>=1198) {shakey+=sign(random_range(-1, 1));}}
		draw_text_ext_colour(shakex+(letter*fontwidth), shakey+(lineheight*line), string_char_at(text,i), 18, 275,color,color,color,color,1);}
	break;}
	i++; letter++;
}
if (cut-30>i||(keyboard_check_pressed(ord("Z"))&&cut-1>i)) {
	if (arraymode&&currenttext<array_length(textarray)-1) {
	currenttext++; i=0; cut=0; letter=0; line=0;
	} else {
		if (font=1){textdone();}
		else if (keyboard_check_pressed(ord("Z"))) {textdone();}
}}

if (keyboard_check_pressed(ord("Z"))&&cut<string_length(text)&&cut>1) 
		{cut=string_length(text);}