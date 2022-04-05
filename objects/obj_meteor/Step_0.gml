x+=sin(degtorad(image_angle))*rand;
y+=cos(degtorad(image_angle))*rand;
if (y>by) {
audio_play_sound(snd_explosion,10,false)
instance_create_depth(x,y,-100,obj_bom)
instance_destroy();
}