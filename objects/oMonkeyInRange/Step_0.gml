/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(oPlayer)<=350){
	time +=1;
}else{
	instance_change(oMonkey,true);	
}

if(time == 110){
	instance_create_depth(x,y,0,oMonkeyPoop);
	time = 0;
	
}

if(place_meeting(x,y,oPlayer)){
	oPlayer.hit = true;	
}