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
	//image_xscale = -1;
	//image_speed = 1;
	//instance_change(oPlayerJumping,false);
	//sprite_index = sPlayerJump1;
	draw_self();
//	draw_sprite(sprite_index,image_index,x,y);
	
		
	//draw jump left animation	
}
else if(jumpR){
	//image_xscale = 1;
	//image_speed = 1;
	//sprite_index = sPlayerJump;

	draw_self();
}
	
draw_text(x-5,y-60,HP);

//chaneg this to draw at camera x and y not player
if(canJL){
	draw_text(x-60,y-40,"left+");
}
if(canJR){
	draw_text(x+30,y-40,"right+");
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