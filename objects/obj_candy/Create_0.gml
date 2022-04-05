/// @description Insert description here
// You can write your code in this editor
rand=floor(random_range(1,3))
switch (rand) {
case 1: sprite_index=spr_candy1; break;
case 2: sprite_index=spr_candy2; break;
case 3: sprite_index=spr_candy3; break;
}
xvel=random_range(-2,2);
yvel=random_range(-1,1);
collisionless=30;