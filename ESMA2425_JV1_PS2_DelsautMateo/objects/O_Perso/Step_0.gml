var ZDown = keyboard_check(ord("Z"));
var SDown = keyboard_check(ord("S"));
var QDown = keyboard_check(ord("Q"));
var DDown = keyboard_check(ord("D"));
var spacePress = keyboard_check_pressed(vk_space);
var clickD = mouse_check_button_pressed(mb_right);
var clickG = mouse_check_button_pressed(mb_left);

xspd = moveSpd * (DDown - QDown);
yspd += grav;

if(place_meeting(x, y+1, O_Sol)){
	onGround = true;
	//recup walljump
	yspd = 0;
	wallJump = global.nbWallJump;
	
	//jump
	if(spacePress){
		yspd = -15;
		onGround = false;
	}
}
//wallgrab
if(!onGround && onWall){
	yspd = 0;
	if(alarm_get(0)<=0) {
		alarm_set(0, 30);
	}
	//wall jump
	if(spacePress) {
		yspd  = -7;
		xspd = moveSpd;
	}
	//ghost frame
	if(xspd != 0) {
		onWall = false;
		alarm_set(1, 6);
	}
}
if(alarm_get(1) > 0) {
	if(spacePress && wallJump>0) {
		yspd  = -7;
		xspd = moveSpd;
	}
}

x += xspd;
y += yspd;

//parry
if(clickD && alarm_get(2) <= 0){
	alarm_set(2,30);
	instance_create_layer(x-64,y,"Char", O_Parade);
}
//attack
if(clickG && alarm_get(3) <= 0){
	alarm_set(3,30);
	if(image_xscale == 1) {
			instance_create_layer(x+64,y,"Char", O_Attaque);
		}
		else {
			instance_create_layer(x-64,y,"Char", O_Attaque);
		}
}
show_debug_message(xspd)