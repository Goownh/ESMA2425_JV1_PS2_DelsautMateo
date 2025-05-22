sprite = choose(0,1,2);
switch sprite {
	case 0: sprite_index = S_TirMultiBoulon;
	break;
	case 1: sprite_index = S_TirMultiClou;
	break;
	case 2: sprite_index = S_TirMultiEcrou;
	image_xscale = 0.7;
	image_yscale = 0.7;
	break;
}


speed = 7;

//destruction apres longtemps
alarm_set(0,300);