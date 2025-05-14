var ZDown = keyboard_check(ord("Z"));
var SDown = keyboard_check(ord("S"));
var QDown = keyboard_check(ord("Q"));
var DDown = keyboard_check(ord("D"));
var spacePress = keyboard_check_pressed(vk_space);

xspd = moveSpd * (DDown - QDown);
yspd += grav;

if(place_meeting(x, y+2, O_Sol)){
	onGround = true;
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
	if(alarm_get(0)<=0) {
		alarm_set(0, 30);
	}
	//wall jump
	if(spacePress) {
		yspd  = -7;
		xspd = moveSpd
	}
	//ghost frame
	if(xspd > 0) {
		onWall = false;
		alarm_set(1, 6);
	}
}
if(alarm_get(1)> 0) {
	if(spacePress && wallJump>0) {
		yspd  = -7;
		xspd = moveSpd
	}
}

x += xspd
y += yspd




/*show_debug_message("")          
show_debug_message(wallJump)          