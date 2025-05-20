distancePerso = distance_to_object(O_Perso);

//mort
if(hp <= 0) {
	instance_destroy();
}

//calcul distance avec perso 
if (distancePerso < 600) {
	if (distancePerso > 0 && x != O_Perso.x) {
		move_towards_point(O_Perso.x, y, 4);
	}
	else {
		speed = 0;
	}
}
else {
	//pas bouger quand tir
	if(alarm_get(1) > 0) {
		speed = 0;
	}

	//duree déplacements aleatoire
	else {
		dirTimer++;
		if(dirTimer>=changeDirTime) {	
			targetX = irandom_range(-3,3)*0.5;
	
			dirTimer = 0;
			changeDirTime = irandom_range(60,120);
		}
		x+=targetX;
		
	}
}
if(targetX>0) {
	image_xscale = 1;
}
else if(targetX<0) {
	image_xscale = -1;
}