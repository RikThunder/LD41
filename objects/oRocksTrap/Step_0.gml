/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(oPlayer)<=400){
	time +=1
}
if(time == 520){
	instance_create_depth(x,y,0,oRock);
	instance_create_depth(x+10,y,0,oRock);
	instance_create_depth(x+30,y,0,oRock);
	instance_create_depth(x+50,y,0,oRock);
	instance_create_depth(x+70,y,0,oRock);
	instance_create_depth(x+90,y,0,oRock);
	instance_create_depth(x-10,y,0,oRock);
	instance_create_depth(x-30,y,0,oRock);
	instance_create_depth(x-50,y,0,oRock);
	instance_create_depth(x-70,y,0,oRock);
	instance_create_depth(x-90,y,0,oRock);
	time = 0;
}