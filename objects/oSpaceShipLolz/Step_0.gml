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
	if(instance_number(oBul1)<=20 && time <= 1000){
		if (time mod 15 == 0){
			var dir = point_direction(x,y,oPlayer.x,oPlayer.y);
			var len = point_distance(x,y,oPlayer.x,oPlayer.y);
			with instance_create_depth(x,y,0,oBul1){
				motion_set(dir+cos(500 * len),5.5);
			}
		}
	}
	if(instance_number(oBul2)<=50 && time > 1000 && time < 2000){
		
	}
	//attack patterns go here	
}


