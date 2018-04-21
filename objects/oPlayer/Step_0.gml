/// @description Insert description here
// You can write your code in this editor
leftCol = x-31;
rightCol = x+32;
//leftCol = x-62;
//rightCol = x+64;

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
}if(hit){
	fallTimer +=1;
	y+=12;
	if(fallTimer >=30){
		hit = false;	
		fallTimers=0;
	}
}

if(distance_to_object(instance_nearest(x,y,oRope))<10){
	x = instance_nearest(x,y,oRope).x;	
}


if((keyboard_check(ord("W")) || keyboard_check(vk_up))&& !hit){
	idle = false;
	sliding = false;
	if(position_meeting(x,y-12,oRope)){
		y-=3;
		heightMeter +=.08;
	}else{
		y-=0;
		heightMeter+=0;
	}
}else if(keyboard_check(ord("S")) || keyboard_check(vk_down)&&!hit){
	sliding = true;
	idle = false;
	y+=5;
	heightMeter -=.08;

}else if(keyboard_check_released(ord("D")) || keyboard_check_released(vk_right)&&!hit){
	//if(distToNearestR <=40){
		//x = instance_nearest(x+60,y,oRope).x;
		if(canJR){
			jumpR = true;
		}
	//}
}else if(keyboard_check_released(ord("A")) || keyboard_check_released(vk_left)&&!hit){ 
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
	sprite_index = sPlayerJump;
	image_xscale = -1;
	timer+=1;
	if(timer > 1 && timer < 10){
		image_index = 0;	
	}else if(timer > 10 && timer < 20){
		image_index = 1;	
	}else if(timer > 20 && timer < 28){
		image_index = 3;	
	}
	if (timer >= 20){
		jumpL= false;
		timer = 0;
		x = leftCol;
	}
}

if(jumpR){
	sprite_index = sPlayerJump;
	//image_index = 0;
	image_xscale = 1;
	timer+=1;
	if(timer > 1 && timer < 10){
		image_index = 0;	
	}else if(timer > 10 && timer < 20){
		image_index = 1;	
	}else if(timer > 20 && timer < 30){
		image_index = 3;	
	}
	if (timer >= 20){
		jumpR = false;
		timer = 0;
		x = rightCol;
	}
}	


