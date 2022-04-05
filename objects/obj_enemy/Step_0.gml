/// @description attacks
if (fusestage=2) {
	fusesound++;
	if (fusesound=13) {audio_play_sound(snd_fuse,100,true)}
} else {audio_stop_sound(snd_fuse)}
if (enemyhp<=0&&battleturn=11) {
if (attacktimer<30) {
yfly+=4;
}
if (attacktimer=30) {
	instance_create_depth(obj_arm.x, obj_arm.y, -100, obj_bom);
}
if (attacktimer>=30) {
yfly-=10;	
}
if (attacktimer>=150) {
room_goto(Room3);	
}
}else if (friendliness>=7&&battleturn=11) {
if (attacktimer>=10) {battleturn=0; atkcleanup();}	
} else if (battleturn==11) {
if (fusestage=2) {
if (attacktimer<60) {
yfly+=4;
}
if (attacktimer>=60) {
instance_create_depth(random_range(tx,bx), random_range(ty,by), -100, obj_bom);
audio_play_sound(snd_explosion, 100, false);
}
} else {
switch(turn) {
case 1:
if (attacktimer=0) {
bomb1=instance_create_depth(319, 114,-100,obj_bomb)
bomb1.yvel=4.5;
bomb1.yacc=-0.05;
}
if (attacktimer=91) {	
bomb2=instance_create_depth(369, 319,-99,obj_bomb)
bomb3=instance_create_depth(269, 319,-99,obj_bomb)
}
if (attacktimer=182) {	
bomb4=instance_create_depth(369, 369,-99,obj_bomb)
bomb5=instance_create_depth(269, 269,-99,obj_bomb)
bomb6=instance_create_depth(369, 269,-99,obj_bomb)
bomb7=instance_create_depth(269, 369,-99,obj_bomb)
}
if (attacktimer=300) {
battleturn=0; atkcleanup();	
}
break;
case 2:
if (attacktimer=0) {
bomb1=instance_create_depth(319, 259,-100,obj_bomb)
bomb2=instance_create_depth(319, 379,-100,obj_bomb)
bomb1.death=false;
bomb2.death=false;
}
bomb1.x=319+sin(degtorad(attacktimer*5))*60;
bomb1.y=319+cos(degtorad(attacktimer*5))*60;
bomb2.x=319+sin(degtorad((attacktimer*5)-180))*60;
bomb2.y=319+cos(degtorad((attacktimer*5)-180))*60;
if (attacktimer=460) {
battleturn=0; atkcleanup();	
}
break;
case 3: 
if (attacktimer%30==0) {
dynarandom=random_range(-50,50);
dynax=319+dynarandom+(100*sign(dynarandom));
dyna1=instance_create_depth(dynax,40+random_range(-20, 20),-100,obj_dynamite)
dyna1.yvel=10;
dyna1.yacc=-0.2;
dyna1.rotvel=10;
}
if (attacktimer>300) {
battleturn=0; atkcleanup();	
}
break;
case 4: 
if (attacktimer%40==0){
bomb1=instance_create_depth(319+100*sign(random_range(-1,1)), random_range(54,174),-100,obj_bomb)
bomb1.yvel=9;
bomb1.yacc=-0.15;
bomb1.image_speed=1.5;
}
if (attacktimer%100==0){
rand=degtorad(random_range(-90,90))
gren1=instance_create_depth(319+319*sin(rand), 319-319*cos(rand),-100,obj_grenade)
}
if (attacktimer>=400){
battleturn=0;atkcleanup();	
}
break;
case 5:
if (attacktimer<60) {
	yfly-=4;
}
if (attacktimer=60) {
bhb=instance_create_depth(319,by+180,-100,obj_blackholebomb);
bhbarm=instance_create_depth(319,by+180,-101,obj_cutscenearm);
bhbarm.image_angle=180;
}
if (attacktimer>=60&&attacktimer<90) {
	bhbarm.y-=6;
	bhb.y-=6;
}
if (attacktimer>=100&&attacktimer<130) {
bhbarm.y+=6;	
}
if (attacktimer>=150) {
if (attacktimer%45=0) {
rand=degtorad(random_range(-90,90))
bomb1=instance_create_depth(319+319*sin(rand), by-319*cos(rand),-100,obj_bomb)
bomb1.image_speed=floor(random_range(10,20))/10;
bomb1.xvel=(319-bomb1.x)/90;
bomb1.yvel=(by-bomb1.y)/90;
}
if (attacktimer>=300&&attacktimer<360) {
yfly+=4;	
}
if (attacktimer=360) {yfly=0}
if (attacktimer>=600) {
battleturn=0; atkcleanup(); instance_destroy(obj_blackholebomb); instance_destroy(obj_cutscenearm);	
}
obj_soul.x+=cos(degtorad(point_direction(obj_soul.x,obj_soul.y,319,bx)))*2
obj_soul.y+=sin(degtorad(point_direction(obj_soul.x,obj_soul.y,319,bx)))*-2


}
break;
case 6:
if (attacktimer=180) {
rand=degtorad(random_range(-90,90))
gren1=instance_create_depth(319+319*sin(rand), 319-319*cos(rand),-100,obj_grenade)
rand=degtorad(random_range(-90,90))
gren2=instance_create_depth(319+319*sin(rand), 319-319*cos(rand),-100,obj_grenade)
rand=degtorad(random_range(-90,90))
gren2.fusetimer=150;
gren3=instance_create_depth(319+319*sin(rand), 319-319*cos(rand),-100,obj_grenade)
gren3.fusetimer=180;	
}
if (attacktimer=400) {
battleturn=0; atkcleanup();	
}
break;
case 7:
if (attacktimer%30==0) {
dynarandom=random_range(-50,50);
dynax=319+dynarandom+(100*sign(dynarandom));
dyna1=instance_create_depth(dynax,40+random_range(-20, 20),-100,obj_dynamite)
dyna1.yvel=10;
dyna1.yacc=-0.2;
dyna1.rotvel=10;
}
if (attacktimer>300) {
battleturn=0; atkcleanup();	
}
break;
case 8:
tx=200; bx=438;
if (attacktimer>60) {
if (attacktimer%60==0) {
instance_create_depth(319+random_range(100,150),-5,-100,obj_meteor)	
}
if (attacktimer=150) {
DialogueScript(["HOLY SHIT ARE THOSE METEORS?", "WHY THE FUCK ARE THERE METEORS HERE?", "I SERIOUSLY DIDNT PLAN THIS ARE YOU SERIOUS?"])	
}
if (attacktimer=900) {
DialogueScript("Man.");	
}
if (attacktimer=1000) {
battleturn=0; atkcleanup();	
}
}
break;
case 9:
if (attacktimer%40==0){
bomb1=instance_create_depth(319+100*sign(random_range(-1,1)), random_range(54,174),-100,obj_bomb)
bomb1.yvel=9;
bomb1.yacc=-0.15;
bomb1.image_speed=1.5;
}
if (attacktimer%100==0){
rand=degtorad(random_range(-90,90))
gren1=instance_create_depth(319+319*sin(rand), 319-319*cos(rand),-100,obj_grenade)
}
if (attacktimer>=400){
battleturn=0;atkcleanup();	
}
break;
case 10:
if (attacktimer%60==0) {
candy=instance_create_depth(random_range(tx,bx),ty+205,-100,obj_candybomb)	
candy.yvel=-5;
candy.yacc=0.05;
}
if (attacktimer=600) {
battleturn=0; atkcleanup(); instance_destroy(obj_candy); instance_destroy(obj_candybomb);	
}
break;
case 11:
if (attacktimer=300) {
battleturn=0; atkcleanup();	
}
break;
case 12:
tx=190; bx=448;
if (attacktimer%45==0){
bomb1=instance_create_depth(random_range(tx,bx), 54,-100,obj_bomb)
bomb1.yvel=9;
bomb1.yacc=-0.15;
rand=degtorad(random_range(-90,90))
rand2=random_range(0, 100)
gren1=instance_create_depth(319+319*sin(rand), 319-319*cos(rand),-100,obj_grenade)
gren1.fusetimer=90;
if (rand2>75) {
gren1.fusetimer+=15;	
}
}
if (attacktimer>=400){
battleturn=0;atkcleanup();	
}
break;
case 13:
if (attacktimer=0) {
bomb1=instance_create_depth(319, 259,-100,obj_bomb)
bomb2=instance_create_depth(319, 379,-100,obj_bomb)
bomb1.death=false;
bomb2.death=false;
}
bomb1.x=319+sin(degtorad(attacktimer*10))*60;
bomb1.y=319+cos(degtorad(attacktimer*10))*60;
bomb2.x=319+sin(degtorad((attacktimer*10)-180))*60;
bomb2.y=319+cos(degtorad((attacktimer*10)-180))*60;
bomb1.image_speed=2; bomb2.image_speed=2;
if (attacktimer=460) {
battleturn=0; atkcleanup();	
}
break;
case 14:
tx=300; bx=340; ty=200;
if (attacktimer<5) {
yfly-=10;	
}
if (attacktimer=6) {
yfly-=5;	
}
if (attacktimer%45==0) {
bomb1=instance_create_depth(319+sign(random_range(-1,1))*60, random_range(ty,by)-205,-100,obj_bomb)
bomb1.yvel=4.5;
bomb1.yacc=-0.05;	
}
if (attacktimer%90==0) {
dyna1=instance_create_depth(320+sign(random_range(-1,1))*10,random_range(-20, 20)-50,-100,obj_dynamite)
dyna1.yvel=10;
dyna1.yacc=-0.25;
dyna1.rotvel=10;
dyna1.verticality=true;
}
if (attacktimer%90==45) {
dyna1=instance_create_depth(320+sign(random_range(-1,1))*10,600-random_range(-20, 20),-100,obj_dynamite)
dyna1.yvel=-10;
dyna1.yacc=0.25;
dyna1.rotvel=10;
dyna1.verticality=true;
}
if (attacktimer>=600) {
battleturn=0; atkcleanup();	
}
break;
case 15:
if (attacktimer>20) {
attacktimer=0;
fusestage=2;
}
}}}//put breaks BEFORE this line
attacktimer++;
/*if (attacktimer%20==0) {
bomb1=instance_create_depth(250+random_range(-50, 50),-10+random_range(-20, 20),-100,obj_bomb)
bomb1.yvel=10;
bomb1.yacc=-0.15;
bomb1.image_speed=2;}
if (attacktimer%30==0) {
dyna1=instance_create_depth(450+random_range(-50, 50),40+random_range(-20, 20),-100,obj_dynamite)
dyna1.yvel=10;
dyna1.yacc=-0.2;
dyna1.rotvel=10;
}
if (attacktimer>300) {
	atkcleanup();
	battleturn=0;tx=37;
ty=255;
bx=601;
by=384;
attacktimer=-1;
}
attacktimer++;*/