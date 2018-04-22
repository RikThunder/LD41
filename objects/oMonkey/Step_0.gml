/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(oPlayer)<=350){
	instance_change(oMonkeyInRange,true);
	time +=1;
}

if(time == 240){
	instance_create_depth(x,y,0,oMonkeyPoop);
	time = 0;
	
}

if(place_meeting(x,y,oPlayer)){
	oPlayer.hit = true;	
}