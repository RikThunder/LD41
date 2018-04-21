/// @description Insert description here
// You can write your code in this editor

//distToNearestR = distance_to_object(instance_nearest(x+20,y,oRope));
//distToNearestL = distance_to_object(instance_nearest(x-20,y,oRope));


if(position_meeting(leftCol,y,oRope)||position_meeting(leftCol-1,y,oRope)||position_meeting(leftCol+1,y,oRope)){
	canJL = true;
}else{
	canJL = false;	
}
if(position_meeting(rightCol,y,oRope)||position_meeting(rightCol-1,y,oRope)||position_meeting(rightCol+1,y,oRope)){
	canJR = true;	
}else{
	canJR = false;	
}
