/// @description Insert description here
// You can write your code in this editor
leftCol = x-31;
rightCol = x+32;

if(!place_meeting(x,y,oRope)){
	y+=12;	//make it 10
	heightMeter -=0.32;	
	if(keyboard_check(ord("A")) || keyboard_check(vk_left)){
		idle = true; //FALLIGN ANIMATION NEEDED
		x-=2;
	}else if(keyboard_check(ord("D")) || keyboard_check(vk_right)){
		//FALLIGN ANIMATION
		idle = true;
		x+=2;
	}
}

if(distance_to_object(instance_nearest(x,y,oRope))<10){
	x = instance_nearest(x,y,oRope).x;	
}


if(keyboard_check(ord("W")) || keyboard_check(vk_up)){
	idle = false;
	sliding = false;
	y-=3;
	heightMeter +=.08;
}else if(keyboard_check(ord("S")) || keyboard_check(vk_down)){
	sliding = true;
	idle = false;
	y+=3;
	heightMeter -=.08;

}else if(keyboard_check_released(ord("D")) || keyboard_check_released(vk_right)){
	//if(distToNearestR <=40){
		//x = instance_nearest(x+60,y,oRope).x;
		if(canJR){
			jumpR = true;
		}
	//}
}else if(keyboard_check_released(ord("A")) || keyboard_check_released(vk_left)){ 
	//if(distToNearestL <=40){
		//x = instance_nearest(x-60,y,oRope).x;
		if(canJL){
			jumpL = true;
		}	
	//}
}else{
	idle = true;	
}



if (jumpL){
	//x = instance_nearest(x-15,y,oRope).x;
	x=leftCol
	show_debug_message("Jump LEFT");
	jumpL = false;
}
if(jumpR){
	//x = instance_nearest(x+15,y,oRope).x;
	x=rightCol;
	show_debug_message("Jump RIGHT");
	jumpR = false;
	//jump right
}	
