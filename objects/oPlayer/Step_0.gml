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
	y-=3;
	if(keyboard_check(ord("D")) || keyboard_check_pressed(vk_right)){
		if(distToNearestR <=60){
			x = instance_nearest(x+60,y,oRope).x;
			show_debug_message("Jump RIGHT");
		}
	}
	if(keyboard_check(ord("A")) || keyboard_check_pressed(vk_left)){
		if(distToNearestR <=60){
			x = instance_nearest(x-60,y,oRope).x;
			show_debug_message("Jump LEFT");
		}
		
	}
}else if(keyboard_check(ord("S")) || keyboard_check(vk_down)){
	y+=3;
	idle=false;
	if(keyboard_check(ord("D")) || keyboard_check_pressed(vk_right)){
		if(distToNearestR <=60){
			x = instance_nearest(x+60,y,oRope).x;
			show_debug_message("Jump RIGHT");
		}
	}
	if(keyboard_check(ord("A")) || keyboard_check_pressed(vk_left)){
		if(distToNearestR <=60){
			x = instance_nearest(x-60,y,oRope).x;
			show_debug_message("Jump LEFT");
		}
	}
}
