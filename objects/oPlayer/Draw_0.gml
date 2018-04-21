/// @description Insert description here
// You can write your code in this editor

//TODO: implement height meter on the top left of the screen
//HP 
draw_self();

if(idle){
	sprite_index = sPlayerIdle;
}else if (!idle && sliding){
	sprite_index = sPlayerSlide;
}else if (!idle && !sliding){
	sprite_index = sPlayerClimb;
}else if (jumpL){
	//draw jump left animation	
}else if(jumpR){
	//jump right animation	
}
	
	

//chaneg this to draw at camera x and y not player
draw_text(x+40,y-40,distToNearestR);
draw_text(x-40,y-40,distToNearestL);

draw_text(x-670,y-380, "Height: ");
draw_text(x-600,y-380, heightMeter);


//score (amount of items collected)