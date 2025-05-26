distancePerso = distance_to_object(O_Perso);

//mort
if(hp <= 0) {
	instance_destroy();
}

//calcul distance avec perso 
if (distancePerso < 600) {
	if (distancePerso > 0) {
		move_towards_point(O_Perso.x, O_Perso.y, 4);
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
if((distancePerso < 600 && hspeed>0) || (distancePerso >= 600 && targetX>x)) {
	image_xscale = 1;
}
else if(hspeed<0 || targetX<x) {
	image_xscale = -1;
}

show_debug_message(targetX)
show_debug_message(x)
show_debug_message("")
show_debug_message(hspeed)
show_debug_message("")
show_debug_message("")