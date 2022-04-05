/// @description Insert description here
// You can write your code in this editor
y+=yvel;
yvel+=yacc;
x+=xvel;
xvel+=xacc;
fusetimer--;
if (fusetimer<0) {
instance_create_depth(x,y,-100,obj_candy)	
instance_create_depth(x,y,-100,obj_candy)	
instance_create_depth(x,y,-100,obj_candy)	
instance_create_depth(x,y,-101,obj_bom)	
instance_destroy();
}