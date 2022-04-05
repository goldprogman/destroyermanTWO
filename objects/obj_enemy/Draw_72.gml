/// @description pacifist KELL OVER HERE
// You can write your code in this editor
//LOOK OVER HERE KELL PLEASE LOOK OVER HERE UP HERE THIS EXPLAINS WHAT YOU NEED TO DO
/* so 
down there is all the code responsible for the act commands
you can see i've already done all the ones where you're right
HOWEVER i'm going to bed SO i need you to add in the cases where you're WRONG
SO basically, see that "default" thing below this? 
copy paste everything below that up to the comment telling you to stop
then paste it riiight below the lowest "case" in every act
from there just put in the text between " " and i'll handle the whole organizing thing later
thank you (oh and use /w for the pauses)
*/
if (battleturn==6) {
if (acttimer=0) {
switch (actchoice){
	case 0: TextLCOverride(["* DESTROYERMAN /n* ATK 50(25) /n* DEF 70", "* Likes: Bombs, explosionz, being /n  badass, PWNing and trolling!!! /n* Dislikes: Builderman from bloxpert islands you SUCKz builderman stop banishing knoddy"], 37); break;
	case 1: switch (friendliness) { //appease
		case 0: TextboxScript("* You mention that you're oddly  familiar with explosives. /n* Destroyerman loved that!"); friendliness++; break;
		case 6: TextboxScript("* You tell Destroyerman what you've learned about pyrotechnics. /n* Destroyerman loved that!"); friendliness++; break;
		default: rand=floor(random_range(1,4)); switch (rand) {
			case 1:	TextboxScript("* You gave Destroyerman a small kiss. /n* Why did you do that?"); break;
			case 2: TextboxScript(["* You told Destroyerman you want to be destroyed. He gave you a disappointed glare.", "Why did you do that?"]); break;
			case 3: TextboxScript("* You zipped and unzipped your mouth repeatedly. /n  It's fun, but why did you do that?"); break;
		} //copy paste up to HERE
	} break;
	case 2: switch (friendliness) { //bodge
		case 1: TextboxScript(["* Through the powers of scripting, you create a faulty bomb.", "* ...It blows up in your face. /n* Destroyerman loved that!"]); friendliness++; break;
		case 3: TextboxScript(["* Fixing the first oversight, you create another bomb.", "* You try and light it, but it's got a short fuse-!", "* ...It blows up in your face again. /w /n * Destroyerman loved that!"]); friendliness++; break;
		case 5: TextboxScript(["* You create one more bomb and light it again. /w /n* You toss it into the air, and...", "* It blows up in the shape of your face! /n* Destroyerman loved that!"]); friendliness++; break;
		default: rand=floor(random_range(1,4)); switch (rand) {
			case 1:	TextboxScript(["* With all your intellect, you wrote a script of unfathomable power..!!!", "* You're not actually sure what it does.", "* Why did you do that?"]); break;
			case 2: TextboxScript("* You flop around like a fish. /w /n* Why did you do that?"); break;
			case 3: TextboxScript(["* You kicked your domino crown at Destroyerman. /w /w But you couldn't bring yourself to do it.", "Why did you do that? "]); break;
		}
		} break;
	case 3: switch (friendliness) { //giggle
		case 2: TextboxScript("* You snicker with your face covered in ash. /w /n* Destroyerman loved that!"); friendliness++; break;
		case 4: TextboxScript("You sneeze and cough out some gunpowder and heartily laugh. /w /n* Destroyerman loved that!"); friendliness++; break;
		default: rand=floor(random_range(1,4)); switch (rand) {
			case 1:	TextboxScript("* You tease Destroyerman and put a finger on your mouth. /w /n* Why did you do that?"); break;
			case 2: TextboxScript("* You laugh, and keep laughing./w /n* It's SO funny, you can't stop. /w /n* Why did you do that?"); break;
			case 3: TextboxScript("* You spout utter nonsense and try to hold in your laughter./w /n* Why did you do that?"); break;
		}
		}
} //breaks here
acttimer++;}
}
/*appease
* You gave Destroyerman a small kiss.
Why did you do that?
* You told Destroyerman you want to be destroyed.
He gave you a disappointed glare.
Why did you do that?
* You zipped and unzipped your mouth repeatedly.
It's fun, but why did you do that? 
bodge
* With all your intellect, you wrote a script of unfathomable power..!!! (program slight pause)
(cont.) * You're not actually sure what it does.
Why did you do that?
* You flop around like a fish.
Why did you do that?
* You kicked your domino crown at Destroyerman. (ok like program in a slight pause)
But you couldn't bring yourself to do it.
Why did you do that? 
giggle
* You tease Destroyerman and put a finger on your mouth.
Why did you do that?
* You laugh, and keep laughing.
It's SO funny, you can't stop.
Why did you do that?
* You spout utter nonsense and try to hold in your laughter.
Why did you do that?*/