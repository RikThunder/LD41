/// @description Insert description here
// You can write your code in this editor

//distToNearestR = distance_to_object(instance_nearest(x+20,y,oRope));
//distToNearestL = distance_to_object(instance_nearest(x-20,y,oRope));


if(position_meeting(leftCol,y,oRope)||position_meeting(leftCol-1,y,oRope)||
	position_meeting(leftCol+1,y,oRope)||position_meeting(leftCol-2,y,oRope)||
	position_meeting(leftCol+2,y,oRope)||position_meeting(leftCol-3,y,oRope)||
	position_meeting(leftCol+3,y,oRope)||position_meeting(leftCol-4,y,oRope)||
	position_meeting(leftCol+4,y,oRope)||position_meeting(leftCol-5,y,oRope)||
	position_meeting(leftCol+5,y,oRope)||position_meeting(leftCol-6,y,oRope)||
	position_meeting(leftCol+6,y,oRope)||position_meeting(leftCol-7,y,oRope)||
	position_meeting(leftCol+7,y,oRope)||position_meeting(leftCol-8,y,oRope)||
	position_meeting(leftCol+8,y,oRope)||position_meeting(leftCol-9,y,oRope)||
	position_meeting(leftCol+9,y,oRope)){
	canJL = true;
}else{
	canJL = false;	
}
//rightCol
if(position_meeting(rightCol,y,oRope)||position_meeting(rightCol-1,y,oRope)||
	position_meeting(rightCol+1,y,oRope)||position_meeting(rightCol-2,y,oRope)||
	position_meeting(rightCol+2,y,oRope)||position_meeting(rightCol-3,y,oRope)||
	position_meeting(rightCol+3,y,oRope)||position_meeting(rightCol-4,y,oRope)||
	position_meeting(rightCol+4,y,oRope)||position_meeting(rightCol-5,y,oRope)||
	position_meeting(rightCol+5,y,oRope)||position_meeting(rightCol-6,y,oRope)||
	position_meeting(rightCol+6,y,oRope)||position_meeting(rightCol-7,y,oRope)||
	position_meeting(rightCol+7,y,oRope)||position_meeting(rightCol-8,y,oRope)||
	position_meeting(rightCol+8,y,oRope)||position_meeting(rightCol-9,y,oRope)||
	position_meeting(rightCol+9,y,oRope)){
	canJR = true;	
}else{
	canJR = false;	
}
