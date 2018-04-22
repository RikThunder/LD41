/// @description Insert description here
// You can write your code in this editor
if(attack){
	with instance_create_depth(oSpaceShipDanmaku.x-40,oSpaceShipDanmaku.y+60,0,oMonkeyPoop){
		throwDir = point_direction(x,y,oPlayer.x,oPlayer.y-150)
		motion_set(throwDir,8);
	}	
}