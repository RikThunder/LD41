/// @description Insert description here
// You can write your code in this editor

//change height to 200 or more later (CHANGE HEIGHT IN oCONTROL AS WELL
	//SINCE O CONTROL SPAWNS IT)

distOnX = abs(x-oPlayer.x);

show_debug_message("xdist");
show_debug_message(distOnX);
distOnY = abs(y-oPlayer.y);
show_debug_message("ydist");
show_debug_message(distOnY);

if(distance_to_object(oPlayer)<=400){
	attack = true;			
}

if(oPlayer.heightMeter>0 && time < 2700){	//make height 200 later
	time +=1;
	if((oPlayer.y < y && distOnY>=250)){	//adjust distance later 
		y-=4;
	}else if((oPlayer.y > y && distOnY<=180)){
		y+=7;
	}else{
		//in the zone of comfort
	}

	if(time >= 2700){	//1800 = 30 seconds, 2700 = 45 seconds
		//fly off screen (down and disappear)
		instance_destroy(self);	
	}
}

if(attack){
	//attack patterns go here	
}


