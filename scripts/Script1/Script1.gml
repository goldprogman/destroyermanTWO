// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerdamage(blow){
	hp-=blow;
	obj_1x4.alarm[0]=20;
	audio_play_sound(snd_hurt, 5, false);
}

function damage(blow){
enemydmghandler.enemydamage(blow);	
}

function atkcleanup(){
instance_destroy(obj_dynabeam);
instance_destroy(obj_beamorigin);
instance_destroy(obj_bomb);
instance_destroy(obj_dynamite);
instance_destroy(obj_beam);
instance_destroy(obj_bom);
tx=37; bx=601; ty=255;
with (obj_enemy) {
fusestage++;
fusesound=0;
if (fusestage=2) {
obj_arm.sprite_index=spr_dangerarm;
audio_play_sound(snd_dynalight,100,false);
}
}
}

function textdone(){
	if (battleturn==6||battleturn==7) {
		instance_destroy(obj_dialoguehandler); battleturn=10;
	} else if (battleturn==10) {
		instance_destroy(obj_dialoguehandler);
	battleturn=11;
	obj_enemy.initializeturn();
	} else if (battleturn==11) {
	instance_destroy(obj_dialoguehandler);
	}
}