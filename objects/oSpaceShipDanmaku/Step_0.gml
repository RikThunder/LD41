/// @description Insert description here
// You can write your code in this editor

distOnX = abs(x-oPlayer.x);

show_debug_message("xdist");
show_debug_message(distOnX);
distOnY = abs(y-oPlayer.y);
show_debug_message("ydist");
show_debug_message(distOnY);

time +=1;

if(distance_to_object(oPlayer)<=600 && time < 2700){	//1800 = 30 seconds
	attack = true;	
	if(!y<oPlayer.y && distOnY<400){
		if(distOnX <= 600 && distOnX > 400){
			y-=5;
		}else if(distOnX>=600){
			if(oPlayer.x < x){
				x-=1;	
			}else{
				x+=1;	
			}
		}else if(distOnX<400 && distOnX<600){
			if(oPlayer.x < x){
				x-=1;	
			}else{
				x+=1;
			}	
		}
	}
}else{
	attack = false;	
}
if(time >= 2700){
	motion_set(90,10);//fly up and out of the map
}

if(attack){
	//attack patterns
	var dir = point_direction(x,y,oPlayer.x,oPlayer.y);
	var len = point_distance(x,y,oPlayer.x,oPlayer.y);

	
	if(instance_number(oMegaBanan)<=20 && time <= 1000){
		if (time mod 45 == 0){
			with instance_create_depth(oSpaceShipTurret.x-70,oSpaceShipTurret.y+35,0,oMegaBanan){
				bulDir = point_direction(x,y,oPlayer.x+cos(80),oPlayer.y-100);
				motion_set(bulDir,6);
			}
		}
	}
	if(instance_number(oBul2)<=50 && time > 1000 && time < 2000){
		if (time mod 25 == 0){
			with instance_create_depth(oSpaceShipTurret.x-70,oSpaceShipTurret.y+35,0,oMegaBanan){
				bulDir = point_direction(x,y,oPlayer.x+cos(80),oPlayer.y-100);
				motion_set(bulDir,6);
			}
		}
	}
	if(instance_number(oBul2)<=100 && time > 2000 && time < 2700){
		if (time mod 5 == 0){
			with instance_create_depth(oSpaceShipTurret.x-70,oSpaceShipTurret.y+35,0,oMegaBanan){
				bulDir = point_direction(x,y,oPlayer.x+cos(80),oPlayer.y-100);
				motion_set(bulDir,6);
			}
		}
	}
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