/// @description Insert description here
// You can write your code in this editor

//TODO: implement height meter on the top left of the screen
//HP 
draw_self();

if(idle){
	sprite_index = sPlayerIdle;
}else if (!idle && slide){
	sprite_index = sPlayerSlide;
}else if (!idle && !slide){
	sprite_index = sPlayerClimb;
}else if (jumpL){
	//draw jump left animation	
}else if(jumpR){
	//jump right animation	
}
	
	

draw_text(x+40,y-40,distToNearestR);
draw_text(x-40,y-40,distToNearestL);
//score (amount of items collected)