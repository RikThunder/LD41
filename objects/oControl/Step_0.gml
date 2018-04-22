/// @description Insert description here
// You can write your code in this editor

//counter of the objects

height = oPlayer.heightMeter;


if(keyboard_check_pressed(ord("R"))){
	game_restart();	
}
if(keyboard_check_pressed(vk_escape)){
	game_end();	
}
//TEMPORARY
if(keyboard_check_pressed(vk_f12)){
	room_goto(rCredits);	
}


if(oPlayer.heightMeter>=110 && !instance_exists(oSpaceShipDanmaku) && !bossExisted && !reachedExit){	//make 200 later
	instance_create_depth(oPlayer.x+550,oPlayer.y-450,-500,oSpaceShipDanmaku);
	bossExisted = true;
}
if(reachedExit){
	instance_destroy(oSpaceShipDanmaku);
}

if(!instance_exists(oSpaceShipDanmaku)){
	audio_stop_sound(aPropeller);
}