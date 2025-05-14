randir = floor(random(2));
ran = floor(random_range(60,200));
	
dirPlus = x+ran;
dirMoins = x-ran;

if(randir == 1) {
	show_debug_message("droite")
	move_towards_point(dirPlus, y, 3);
}
else {	
	show_debug_message("gauche")
	move_towards_point(dirMoins, y, 3);
}