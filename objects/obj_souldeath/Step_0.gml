if (animtimer==60) {
audio_play_sound(snd_break2,100,false)
soul1 = instance_create_depth(x,y-4,-1000, obj_soulshard)
soul2 = instance_create_depth(x-4,y,-1000, obj_soulshard)
soul2.image_index=1;
soul3 = instance_create_depth(x,y+4,-1000, obj_soulshard)
soul3.image_index=2;
soul4 = instance_create_depth(x+4,y,-1000, obj_soulshard)
soul4.image_index=3;
image_alpha=0;
}
if (animtimer=150) {
	instance_create_depth(0, 0, 0, obj_gitgud);
}
if (animtimer>=200&&keyboard_check_pressed(ord("Z"))){
	instance_destroy();
	room_goto(Room1)
	audio_stop_sound(snd_gitgud);
}
animtimer++;