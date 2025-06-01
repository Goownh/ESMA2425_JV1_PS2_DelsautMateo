distancePerso = distance_to_object(O_Perso);
yspd += grav;
//mort

if(hp <= 0) {
	instance_destroy();
}

if(place_meeting(x, y+1, O_Sol)){
	//recup walljump
	yspd = 0;
}

//calcul distance avec perso 
if (distancePerso < 600) {
	if (distancePerso > 300 && x != O_Perso.x) {
		move_towards_point(O_Perso.x, y, 4);
	}
	else {
		speed = 0;
		if(alarm_get(3) <= 0) {
			alarm_set(3,random_range(80,140));
		}
	}
}
else {
	//pas bouger quand tir
	if(alarm_get(3) > 0) {
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

y += yspd;
if(speed == 0) {
	sprite_index = S_EnnemiTirIdle;	
}
else {
	sprite_index = S_EnnemiTirBouge;
}


if((distancePerso < 600 && x < O_Perso.x) || (distancePerso >= 600 && x>xprevious)) {
	image_xscale = 1;
}
else if((distancePerso < 600 && x > O_Perso.x) || (distancePerso >= 600 && x<xprevious)) {
	image_xscale = -1;
}