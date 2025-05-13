var ZDown = keyboard_check(ord("Z"));
var SDown = keyboard_check(ord("S"));
var QDown = keyboard_check(ord("Q"));
var DDown = keyboard_check(ord("D"));
var spacePress = keyboard_check_pressed(vk_space);

xspd = moveSpd * (DDown - QDown);
yspd += grav;
//move_and_collide(xspd, yspd, O_Sol)

if(onGround){
	yspd = 0;
	wallJump = true;
	
	//jump
	if(spacePress){
		yspd = -7;
		onGround = false;
	}
}
if(!onGround && onWall){
	yspd = 0;
	if(alarm_get(0)<=0) {
		alarm_set(0, 30);
	}
	if(spacePress) {
		yspd  = -7;
		xspd = moveSpd
	}
	if(xspd > 0) {
		onWall = false;
		alarm_set(1, 5);
	}
}
if(alarm_get(1)> 0) {
	if(spacePress && wallJump) {
		yspd  = -7;
		xspd = moveSpd
	}
}

x += xspd
y += yspd




show_debug_message("")          
show_debug_message(onWall)          