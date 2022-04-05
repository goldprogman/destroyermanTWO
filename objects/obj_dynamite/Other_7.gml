beep++;
if (beep<3) {
audio_play_sound(snd_dynabeep,15,false)}
else {
audio_play_sound(snd_explosion,10,false);
instance_create_d(x,y,-100,image_angle)
instance_destroy();
}

