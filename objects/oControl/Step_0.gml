/// @description Insert description here
// You can write your code in this editor

//counter of the objects



if(keyboard_check_pressed(ord("R"))){
	game_restart();	
}
if(keyboard_check_pressed(vk_escape)){
	game_end();	
}


if(oPlayer.heightMeter>=70 && !instance_exists(oSpaceShipDanmaku)){	//make 200 later
	instance_create_depth(oPlayer.x+450,oPlayer.y+400,-500,oSpaceShipDanmaku);
}