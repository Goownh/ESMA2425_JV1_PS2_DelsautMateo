/// @description deplacements aléatoires
randomise();
randir = floor(random(3));
ranX = floor(random_range(60,200));
ranY = floor(random_range(60,200));
	
dirXPlus = x+ranX;
dirXMoins = x-ranX;

dirYPlus = x+ranY;
dirYMoins = x-ranY;

switch randir {
	case 0:
		move_towards_point(dirXPlus, dirYPlus, 2);
		break;
	case 1:
		move_towards_point(dirPlus, dirYMoins, 2);
		break;
	case 2:
		move_towards_point(dirMoins, dirYPlus, 2);
		break;
	case 3:
		move_towards_point(dirMoins, dirYMoins, 2);
		break;
}	