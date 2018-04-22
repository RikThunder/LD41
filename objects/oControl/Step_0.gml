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


if(oPlayer.heightMeter>=320 && !instance_exists(oSpaceShipDanmaku) && !bossExisted){	//make 200 later
	instance_create_depth(oPlayer.x+350,oPlayer.y+300,-500,oSpaceShipDanmaku);
	bossExisted = true;
}