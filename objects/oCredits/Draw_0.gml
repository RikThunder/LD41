/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);

draw_text(x+300,y+50,"Thank you for playing Kinbaku");
draw_text(x+300,y+100,"Art & Game Idea: Dmitrij Jazunov (a.k.a. Rik)");
draw_text(x+300,y+150,"Programming: Vasiliy Ulin (a.k.a. Vik / micro)");
draw_text(x+300,y+200,"TOOLS AND SOFTWARE USED:");
draw_text(x+300,y+250,"SFXR, Wolfram Tones, Photoshop, Game Maker Studio 2");
draw_text(x+300,y+300,"Special thanks to: Daniel Schruff (a.k.a. Iak/ Iaknihs)");
draw_text(x+300,y+350,"");
draw_text(x+300,y+400,"We thank you for playing our game and hope you had fun and enjoyed it!");
draw_text(x+300,y+550,"press ESC to close the game or R to restart the game and play again");
//draw_text(x+100,y+600,"p.s. I strongly encourage you to NOT google kinbaku, trust me...especially if you're < 18");

draw_set_color(c_red);
draw_text_transformed(x+150, y+650, "HEIGHT: ", 2, 2, 0);
draw_text_transformed(x+300, y+650, oControl.height, 2, 2, 0);

