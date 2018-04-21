/// @description Insert description here
// You can write your code in this editor
image_speed = 1;
x = instance_nearest(x,y,oRope).x;
distToNearestR=0;
distToNearestL=0;
idle=true;
climbing = false;
sliding = false;
jumpL = false;
jumpR = false;

timer = 0;

heightMeter = 0;

leftCol = x-32;
rightCol = x+32;
canJL = false;
canJR = false;

HP = 5;
fallTimer = 0;
hit = false;