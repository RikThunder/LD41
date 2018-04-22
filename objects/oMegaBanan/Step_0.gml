/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(place_meeting(x,y,oPlayer)){
	oPlayer.hit = true;
	instance_destroy(self);	
}