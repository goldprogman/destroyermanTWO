beep++;
if (beep<3) {
audio_play_sound(snd_dynabeep,15,false)}
else {
audio_play_sound(snd_explosion,10,false);
instance_create_depth(x,y,-100,obj_bom)
instance_destroy();
}
