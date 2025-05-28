distancePerso = distance_to_object(O_Perso);

//mort
if(hp <= 0) {
	instance_destroy();
}
if(colle && alarm_get(3)==0) {
	colle = false;
}
//calcul distance avec perso 
else if (distancePerso < 600) {
	if (distancePerso > 0) {
		move_towards_point(O_Perso.x, O_Perso.y, 4);
	}
	if (distancePerso == 0 && !colle) {
		colle = true;
		distX = x-O_Perso.x; 
		distY = y-O_Perso.y;
	}
}
else {
	dirTimer++;
	if(dirTimer>changeDirTime) {	
		targetX = x+(irandom_range(-3,3)*50);
		targetY = y+(irandom_range(-3,3)*50);
	
		dirTimer = 0;
		changeDirTime = irandom_range(60,120);
	}

	var dir = point_direction(x,y,targetX, targetY);
	var dist = point_distance(x,y,targetX, targetY);

	if(dist>4) {
		x+=lengthdir_x(2, dir);	
		y+=lengthdir_y(2, dir);	
	}
}
if(colle && instance_exists(O_Parade)) {
	move_towards_point(x + O_Parade.image_xscale * 200, y, 20);
	alarm_set(3, 20);
}

if(colle && alarm_get(3)<0) {
	hspeed = 0;
	x = O_Perso.x+distX;
	y = O_Perso.y+distY;
}


if((distancePerso < 600 && hspeed>0) || (distancePerso >= 600 && targetX>x)) {
	image_xscale = 1;
}
else if(hspeed<0 || targetX<x) {
	image_xscale = -1;
}

show_debug_message(alarm_get(3))