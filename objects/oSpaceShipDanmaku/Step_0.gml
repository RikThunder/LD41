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
	if(instance_number(oMegaBanan)<=20 && time <= 1500){
		if (time mod 90 == 0){
			with instance_create_depth(oSpaceShipTurret.x-70,oSpaceShipTurret.y+35,0,oMegaBanan){
				bulDir = point_direction(x,y,oPlayer.x+cos(80),oPlayer.y-120);
				motion_set(bulDir,6);
			}
		}
	}
	if(instance_number(oBul2)<=50 && time > 1700 && time < 2300){
		if (time mod 80 == 0){
			with instance_create_depth(oSpaceShipTurret.x-70,oSpaceShipTurret.y+35,0,oMegaBanan){
				bulDir = point_direction(x,y,oPlayer.x+cos(80),oPlayer.y-150);
				motion_set(bulDir,6);
			}
		}
		if (time mod 60 == 1){
			with instance_create_depth(oSpaceShipTurret.x-70,oSpaceShipTurret.y+35,0,oMegaBanan){
				bulDir = point_direction(x,y,oPlayer.x+cos(80),oPlayer.y-140);
				motion_set(bulDir,6);
			}
		}
	}
	if(instance_number(oBul2)<=100 && time > 2500 && time < 2700){
		if (time mod 10 == 0){
			with instance_create_depth(oSpaceShipTurret.x-70,oSpaceShipTurret.y+35,0,oMegaBanan){
				bulDir = point_direction(x,y,oPlayer.x+cos(80),oPlayer.y-130);
				motion_set(bulDir,6);
			}
		}
	}
}