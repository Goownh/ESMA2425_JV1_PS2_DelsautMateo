var ZDown = keyboard_check(ord("Z")) || gamepad_axis_value(0, gp_axislh);
var SDown = keyboard_check(ord("S"));
var QDown = keyboard_check(ord("Q"));
var DDown = keyboard_check(ord("D"));
var spacePress = keyboard_check_pressed(vk_space);
var clickD = mouse_check_button(mb_right);
var clickG = mouse_check_button(mb_left);


xspd = moveSpd * (DDown - QDown);
yspd += grav;

if(place_meeting(x, y+1, O_Sol)){
	//recup walljump
	yspd = 0;
	wallJump = global.nbWallJump;
	
	//jump
	if(spacePress){
		yspd = -7;
		onGround = false;
	}
}

//wallgrab
if(!onGround && onWall){
	yspd = 0;
	//wall jump
	if(spacePress) {
		yspd  = -7;
		xspd = wallJump*-image_xscale;
	}
	//ghost frame
	if(xspd != 0) {
		onWall = false;
		alarm_set(1, 6);
	}
}
if(alarm_get(1) > 0) {
	if(spacePress && wallJump>0) {
		wallJump--;
		yspd  = -7;
	}
}
if(instance_exists(O_Parade)) {
	xspd = 0;
}
if(place_meeting(x, y-3, O_Mur)){
	//bonk plafond
	yspd = grav;
	y+=1;
}
x += xspd;
y += yspd;


//parry
if(clickD && alarm_get(2) <= 0){
	alarm_set(2,60);
	if(image_xscale == 1) {
		instance_create_layer(x+25,y,"Ennemies", O_Parade);
	}
	else {
		instance_create_layer(x-25,y,"Ennemies", O_Parade);
	}
	xspd = 0;
}
//attack
if(clickG && alarm_get(3) <= 0){
	alarm_set(3,30);
	if(image_xscale == 1) {
		instance_create_layer(x+55,y+8,"Ennemies", O_Attaque);
	}
	else {
		instance_create_layer(x-55,y+8,"Ennemies", O_Attaque);
	}
}