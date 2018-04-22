/// @description Insert description here
// You can write your code in this editor
if(jumped){
	if(keyboard_check_pressed(ord("W"))|| keyboard_check_pressed(vk_up)|| keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)){
		if(distance_to_object(instance_nearest(x,y,oRope))<=5){
			x = instance_nearest(x,y,oRope).x;	
		}
	}
	jumped=false;
}
