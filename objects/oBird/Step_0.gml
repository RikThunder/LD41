/// @description Insert description here
// You can write your code in this editor
distanceToPlr = distance_to_object(oPlayer);

if(distanceToPlr <= 750){
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


if(place_meeting(x,y,oPlayer)){
//if(position_meeting(x,y+5,oPlayer)){
	oPlayer.hit = true;
	//stance_destroy();
}
