/// @description Insert description here
// You can write your code in this editor
distanceToPlr = distance_to_object(oPlayer);

/*
if(distanceToPlr <= 850){
	//activate patrol mode flying left right instead of just flying 
		//straight when player in range
	spd = 2;
	if(oPlayer.x < x){
		if(!inMotion){
			spd +=1;
			motion_set(180,spd);
			inMotion = true;
			image_xscale=1;
		}
	}else{
		if(!inMotion){
			spd +=1;
			motion_set(360,spd);
			inMotion = true;
			image_xscale=-1;
		}
	}
}
*/

if(distanceToPlr<=400){
	if(!audio_is_playing(aBirdspawn)){
		audio_play_sound(aBirdspawn,0,false);	
	}
}
moveTime +=1;
if(moveTime<=600){
	if(moveL){
		image_xscale = 1;
		x-=3;
	}else if(moveR){
		image_xscale=-1;
		x+=3;	
	}
}
if(moveTime>300){
	moveL = false;
	moveR = true;
}
if(moveTime>600){
	moveTime=0;	
	moveL = true;
}

if(place_meeting(x,y,oPlayer)||position_meeting(x,y,oPlayer)){
//if(position_meeting(x,y+5,oPlayer)){
	oPlayer.hit = true;
	//stance_destroy();
}
