distancePerso = distance_to_object(O_Perso);

//mort
if(hp <= 0) {
	instance_destroy();
}

//calcul distance avec perso 
if (distancePerso <= 600) {
	if(alarm_get(3) <= 0) {
		alarm_set(3,random_range(50,80));
	}	
}
dirTimer++;
if(dirTimer>=changeDirTime) {
	targetX = x+(irandom_range(-3,3)*50);
	targetY = y+(irandom_range(-3,3)*50);
	
	dirTimer = 0;
	changeDirTime = irandom_range(80,140);
}

var dir = point_direction(x,y,targetX, targetY);
var dist = point_distance(x,y,targetX, targetY);

if(dist>4) {
	x+=lengthdir_x(2, dir);
	y+=lengthdir_y(2, dir);
}

if((distancePerso < 600 && x < O_Perso.x) || (distancePerso >= 600 && x>xprevious)) {
	image_xscale = 1;
}
else if((distancePerso < 600 && x > O_Perso.x) || (distancePerso >= 600 && x<xprevious)) {
	image_xscale = -1;
}
