/// @description deplacements aléatoires
randomise();

randir = floor(random(2));
ran = floor(random_range(60,200));
	
dirPlus = x+ran;
dirMoins = x-ran;

if(randir == 1) {
	move_towards_point(dirPlus, y, 2);
}
else {
	move_towards_point(dirMoins, y, 2);
}