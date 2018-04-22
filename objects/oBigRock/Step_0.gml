/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(oPlayer)<600){
	time+=1;
}
if(time == 240){
	motion_set(270,4);
	time = 0;
}
if(place_meeting(x,y,oPlayer)){
	oPlayer.hit = true;	
}