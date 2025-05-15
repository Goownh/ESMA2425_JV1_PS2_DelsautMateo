randomise();
distancePerso = distance_to_object(O_Perso);

//calcul distance avec perso 
if (distancePerso < 600) {
	if (distancePerso > 300) {
		move_towards_point(O_Perso.x, y, 4);
	}
	else {
		speed = 0;
		if(alarm_get(1) <= 0) {
			alarm_set(1,20);	
		}
	}
}
//pas bouger quand tir
if(alarm_get(1) > 0) {
	speed = 0;
}

//duree déplacements aleatoire
else if(speed = 0) {
	if(alarm_get(0)<=0) {
		alarm_set(0,random_range(30,100));	
	}
}
//arret aux points randoms de deplacements
if(point_distance(x,y,dirPlus,y) <= 5 || point_distance(x,y,dirMoins,y) <= 5) {
		speed = 0;
}