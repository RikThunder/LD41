/// @description Insert description here
// You can write your code in this editor

distOnX = abs(x-oPlayer.x);

show_debug_message("xdist");
show_debug_message(distOnX);
distOnY = abs(y-oPlayer.y);
show_debug_message("ydist");
show_debug_message(distOnY);

if(distance_to_object(oPlayer)<=600){
	attack = true;			
}


if(!y<oPlayer.y && distOnY<200){
	if(distOnX <= 400){
		y-=5;
	}else if (distOnX >600 && oPlayer.x<x){//if player is left of the thing
		x-=2
		y-=5;
	}else if(distOnX>600 && oPlayer.x>x){
		x+=2;
		y-=5;
	}
}else{
	//in the sweet zone
	attack = true;
}

/*
if(oPlayer.heightMeter>0 && time < 2700){	//make height 200 later
	time +=1;
	if((oPlayer.y < y && distOnY>=300)){	//adjust distance later 
		y-=4;
	}else if((oPlayer.y > y && distOnY<=200)){
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
	if(instance_number(oMonkeyPoop)<=20 && time <= 1000){
		if (time mod 15 == 0){
			var dir = point_direction(x,y,oPlayer.x,oPlayer.y);
			var len = point_distance(x,y,oPlayer.x,oPlayer.y);
			with instance_create_depth(oSpaceShipTurret.x-70,oSpaceShipTurret.y+35,0,oMonkeyPoop){
				motion_set(dir+cos(500 * len),5.5);
			}
		}
	}
	if(instance_number(oBul2)<=50 && time > 1000 && time < 2000){
		
	}
	//attack patterns go here	
}
*/