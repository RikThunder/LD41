/// @description Insert description here
// You can write your code in this editor
if(!place_meeting(x,y,oRope) && distance_to_object(instance_nearest(x,y,oRope))>60){
	y+=10;	//make it 10
}
//y-=2 is a good climbing speed, maybe 3

//show_debug_message(x);
//show_debug_message(y);


distToNearestR = distance_to_object(instance_nearest(x+60,y,oRope));
distToNearestL = distance_to_object(instance_nearest(x-60,y,oRope));

if(keyboard_check(ord("W")) || keyboard_check(vk_up)){
	idle=false;
	slide = false;
	//y-=3;
	if(keyboard_check(ord("D")) || keyboard_check_pressed(vk_right)){
		if(distToNearestR <=60){
			//x = instance_nearest(x+60,y,oRope).x;
			jumpR = true;
			show_debug_message("Jump RIGHT");
		}else{
			jumpR = false;	
		}
	}
	if(keyboard_check(ord("A")) || keyboard_check_pressed(vk_left)){
		if(distToNearestR <=60){
			//x = instance_nearest(x-60,y,oRope).x;
			show_debug_message("Jump LEFT");
			jumpL = true;
		}else{
			jumpL = false;	
		}
	}
}else if(keyboard_check(ord("S")) || keyboard_check(vk_down)){
	//y+=3;
	idle=false;
	slide = true;
	if(keyboard_check(ord("D")) || keyboard_check_pressed(vk_right)){
		if(distToNearestR <=60){
			//x = instance_nearest(x+30,y,oRope).x;
			//show_debug_message("Jump RIGHT");
			jumpR = true;
		}else{
			jumpR = false;	
		}
	}
	if(keyboard_check(ord("A")) || keyboard_check_pressed(vk_left)){
		if(distToNearestR <=60){
			//x = instance_nearest(x-30,y,oRope).x;
			//show_debug_message("Jump LEFT");
			jumpL = true;
		}else{
			jumpL = false;	
		}
	}
}else{
	slide = false;
	idle = true;
}


if(idle){
	//idling doing nothing just hanging
}
if (!idle && slide){
	y+=3;
	//sliding (moving down)
}
if (!idle && !slide){
	y-=3;
	//climbup up // moving up
}
if (jumpL){
	x = instance_nearest(x-15,y,oRope).x;
	show_debug_message("Jump LEFT");
	jumpL = false;
	//jump left 	
}
if(jumpR){
	x = instance_nearest(x+15,y,oRope).x;
	show_debug_message("Jump RIGHT");
	jumpR = false;
	//jump right
}	
