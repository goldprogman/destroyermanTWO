texttimer=0;
turn=0;
attacktimer=0;
friendliness=0;
actchoice=0;
acttimer=0;
fusestage=0; fusesound=0;
textlines=[["I must say, you're looking quite lean, green...", "and MEAN!!!", "You're the PERFECT target to test out new explosives on!", "HUHUHU!"], "BOOOOOOM!!!", "Try eating fuse", "I'm EXPLODING with PAIN", "Who the hell is JOHN BOMB?", "bump", "I BET YOU EXPLOIT ON V3RM LEL", "I will DESTROY everyone you LOVE", "please stop making this hard for me", "DESTROYER- MAN does whatever a DESTROYER can!", "Builderman is a NERD in real life.", "gonna be real here, explosives are all I have left in life", "#Swag4Lyfe", "please dont win i will ban you im serious", "ok its been fun but im done here"];
audio_play_sound(mus_thedestroyer, 100, true);
function initializeturn(){
	battleturn=11;	
texttimer=0; attacktimer=0; acttimer=0;
turn++;
}
randomize();
/* I must say, you're looking quite lean, green...
and MEAN!!!
You're the PERFECT target to test out new explosives on!
HUHUHU! */