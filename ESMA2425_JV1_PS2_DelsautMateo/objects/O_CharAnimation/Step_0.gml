var clickD = mouse_check_button(mb_right);
var clickG = mouse_check_button(mb_left);

with O_Perso {
	if(clickG) {//atk
		sprite_index = S_CharAtk;
	}
	else if (clickD) {//parade
		sprite_index = S_CharParade;
	}
	else {//move 
		if(yspd == 0 && xspd == 0) {//idle
			sprite_index = S_CharIdle;
		}
		else if(yspd<0) {//jump
			sprite_index = S_CharSaut;
		}
		else if(yspd>0) {//fall
			sprite_index = S_CharChute;
		}
		else if(xspd!=0) {//go
			sprite_index = S_CharMove;
		}
	}
	//choose direction of sprite
	if(xspd>0) {
		image_xscale = 1;
	}
	else if(xspd<0){
		image_xscale = -1;
	}
}