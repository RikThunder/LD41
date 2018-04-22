/// @description Insert description here
// You can write your code in this editor

//TODO: implement height meter on the top left of the screen
//HP 
draw_self();

draw_set_color(c_white);


if(idle){
	sprite_index = sPlayerIdle;
}else if (!idle && sliding){
	sprite_index = sPlayerSlide;
}else if (!idle && !sliding){
	sprite_index = sPlayerClimb;
}
else if (jumpL){
	draw_self();
}
else if(jumpR){
	draw_self();
}
	

//chaneg this to draw at camera x and y not player
if(canJL){
	draw_text(x-60,y-40,"left+");
}
if(canJR){
	draw_text(x+30,y-40,"right+");
}

if(instance_exists(oSpaceShipLolz)){
	bossWarnTimer+=1;
	if(bossWarnTimer <=60){
		draw_text_transformed(x-100,y-100,"DANGER!!! CLIMB!!!!!",5,5,0);
	}
	if(bossWarnTimer >= 5000){
		bossWarnTimer=0;	
	}
	draw_text(x,y-100,distance_to_object(oSpaceShipLolz));
}



//viewX = view_get_xport(0);
//viewY = view_get_yport(0);
//draw_text(x-50,y+50,viewX);
//draw_text(x+50,y+50,viewY);

//draw_text(viewX,viewY, "Height: ");
//draw_text(viewX+100,viewY, heightMeter);

//draw_text(x-670,y-380, "Height: ");
//draw_text(x-600,y-380, heightMeter);


draw_text(x,y-380, "Height: ");
draw_text(x+100,y-380, heightMeter);

draw_set_color(c_green);
draw_circle(x-32,y,2,false);

draw_set_color(c_red)
draw_circle(x+32,y,2,false);


//score (amount of items collected)