globalvar enemyhp;
enemymaxhp=100;
enemyhp=enemymaxhp;
showhp=enemyhp;
timer=0;
function enemydamage(dmg){
barshow=enemyhp;
textgravity=3;
damaged=dmg;
enemyhp-=dmg;
barfill=(damaged/enemymaxhp)*100;
timer=40;
}