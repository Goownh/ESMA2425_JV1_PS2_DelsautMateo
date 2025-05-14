// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function mob_tp(){
randir = floor(random(2));
ran = floor(random_range(20,96));
	
dirPlus = x+ran;
dirMoins = x-ran;
show_debug_message(x)
show_debug_message("")
show_debug_message(ran)
show_debug_message("")
show_debug_message(dirPlus)
show_debug_message("")
show_debug_message(dirMoins)
show_debug_message("")
show_debug_message("")
if(randir == 1) {
	show_debug_message("droite")
	//move_and_collide(dirPlus, y, all);
	x = dirPlus
}
else {	
	show_debug_message("gauche")
	//move_and_collide(dirMoins, y, all);
	x = dirMoins
}
}