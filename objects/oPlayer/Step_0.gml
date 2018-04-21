/// @description Insert description here
// You can write your code in this editor
if(!place_meeting(x,y,oRope)){
	y+=10;	//make it 10
}
//y-=2 is a good climbing speed, maybe 3

//show_debug_message(x);
//show_debug_message(y);


if(distance_to_object(instance_nearest(x,y,oRope))<10){
	x = instance_nearest(x,y,oRope).x;	
}



distToNearestR = distance_to_object(instance_nearest(x+20,y,oRope));
distToNearestL = distance_to_object(instance_nearest(x-20,y,oRope));

if(keyboard_check(ord("W")) || keyboard_check(vk_up)){
	idle = false;
	sliding = false;
	y-=3;
}else if(keyboard_check(ord("S")) || keyboard_check(vk_down)){
	sliding = true;
	idle = false;
	y+=3;

}else if(keyboard_check_released(ord("D")) || keyboard_check_released(vk_right)){
	if(distToNearestR <=40){
		//x = instance_nearest(x+60,y,oRope).x;
		jumpR = true;
	}
}else if(keyboard_check_released(ord("A")) || keyboard_check_released(vk_left)){ 
	if(distToNearestL <=40){
		//x = instance_nearest(x-60,y,oRope).x;
		jumpL = true;
	}
}else{
	idle = true;	
}



if (jumpL){
	x = instance_nearest(x-20,y,oRope).x;
	show_debug_message("Jump LEFT");
	jumpL = false;
}
if(jumpR){
	x = instance_nearest(x+20,y,oRope).x;
	show_debug_message("Jump RIGHT");
	jumpR = false;
	//jump right
}	
