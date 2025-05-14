randomise();
distancePerso = distance_to_object(O_Perso);

if (distancePerso < 500) {
	if (distancePerso > 100) {
		move_towards_point(O_Perso.x, y, 5);
	}
	else {
		speed = 0;
	}
}
else if(speed = 0) {
	if(alarm_get(0)<=0) {
		alarm_set(0,random_range(30,100));	
	}
}
if(point_distance(x,y,dirPlus,y) <= 5 || point_distance(x,y,dirMoins,y) <= 5) {
		speed = 0;
}