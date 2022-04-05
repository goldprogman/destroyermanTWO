// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
globalvar beamdir;
function instance_create_b(loc1, loc2, locdepth, angl){
	beamdir=angl;
	instance_create_depth(loc1,loc2,locdepth,obj_beam)
}
function instance_create_d(loc1, loc2, locdepth, angl){
	beamdir=angl;
	instance_create_depth(loc1,loc2,locdepth,obj_dynabeam)
}