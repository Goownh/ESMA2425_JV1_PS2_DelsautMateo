function mob_tp(){
randir = floor(random(2));
ran = floor(random_range(20,96));
	
dirPlus = x+ran;
dirMoins = x-ran;
if(randir == 1) {
	//move_and_collide(dirPlus, y, all);
	x = dirPlus
}
else {	
	//move_and_collide(dirMoins, y, all);
	x = dirMoins
}
}