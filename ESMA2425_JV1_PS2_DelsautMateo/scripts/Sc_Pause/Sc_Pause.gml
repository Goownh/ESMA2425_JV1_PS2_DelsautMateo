function Sc_Pause(pause, salle){
	if (pause) {
		room_goto(Pause);
	}
	else {
		room_goto(salle);
	}
}