// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueScript(textinfo){
	obj=instance_create_depth(0,0,-10000,obj_dialoguehandler);
	if (is_array(textinfo)) {
	obj.text="ARRAYMODE";
	obj.textarray=textinfo;
	} else {
	obj.text=textinfo;}
}

function TextboxScript(textinfo){
	obj=instance_create_depth(0,0,-10000,obj_dialoguehandler);
	if (is_array(textinfo)) {
	obj.text="ARRAYMODE";
	obj.textarray=textinfo;
	} else {
	obj.text=textinfo;}
	obj.font=0;
	obj.beginx=tx+31;
	obj.beginy=ty+16;
}

function TextLCOverride(textinfo, linecap){
	obj=instance_create_depth(0,0,-10000,obj_dialoguehandler);
	if (is_array(textinfo)) {
	obj.text="ARRAYMODE";
	obj.textarray=textinfo;
	} else {
	obj.text=textinfo;}
	obj.font=0;
	obj.beginx=tx+31;
	obj.beginy=ty+16;
	obj.linecapacity=linecap;
}