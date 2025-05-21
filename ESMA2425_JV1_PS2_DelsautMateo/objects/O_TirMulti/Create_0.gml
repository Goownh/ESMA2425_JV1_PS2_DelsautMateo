sprite = choose(0,1,2);
switch sprite {
	case 1: sprite_index = S_TirMultiBoulon;
	break;
	case 2: sprite_index = S_TirMultiBoulon;
	break;
	case 3: sprite_index = S_TirMultiBoulon;
	break;
}


speed = 7;

//destruction apres longtemps
alarm_set(0,300);