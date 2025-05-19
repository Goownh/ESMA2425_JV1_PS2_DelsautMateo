var ZDown = keyboard_check(ord("Z"));
var SDown = keyboard_check(ord("S"));
var DDown = keyboard_check(ord("D"));
var QDown = keyboard_check(ord("Q"));
var spacePress = keyboard_check_pressed(vk_space);
var clickD = mouse_check_button_pressed(mb_right);
var clickG = mouse_check_button_pressed(mb_left);

with O_Perso {
	if(clickD) {//atk
		sprite_index = S_CharAtk;
		if(xspd>0) {
			image_xscale = 1;
		}
		else {
			image_xscale = -1;
		}
	}
	else if (clickG) {
		sprite_index = S_CharParade;
		if(xspd>0) {
			image_xscale = 1;
		}
		else {
			image_xscale = -1;
		}
	}
	else {
		if(yspd<0 && xspd==0) {//jump
			sprite_index = S_CharSaut;
		}
		else if(yspd<0 && xspd>0) {//jump right
			sprite_index = S_CharSaut;
			image_xscale = 1;
		}
		else if(yspd<0 && xspd<0) {//jump left
			sprite_index = S_CharSaut;
			image_xscale = -1;
		}
		else if(yspd>0 && xspd==0) {//fall
			sprite_index = S_CharChute;
		}
		else if(yspd>0 && xspd>0) {//fall right
			sprite_index = S_CharChute;
			image_xscale = 1;   
		}
		else if(yspd>0 && xspd<0) {//fall left
			sprite_index = S_CharChute;
			image_xscale = -1;
		}
		else if(yspd == 0 && xspd == 0) {//idle
			sprite_index = S_CharIdle;
		}
		else if(yspd==0 && xspd>0) {//go right
			sprite_index = S_CharMove;
			image_xscale = 1;
		}
		else if(yspd==0 && xspd<0) {//go left
			sprite_index = S_CharMove;
			image_xscale = -1;
		}
	}
}