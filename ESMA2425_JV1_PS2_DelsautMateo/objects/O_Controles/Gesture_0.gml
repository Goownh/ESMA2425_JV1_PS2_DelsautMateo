if(room == Controles) {
	if(O_Pause.salle != Menu) {
		room_goto(Pause);
	}
	else {
		room_goto(Menu);
	}
}
else {
	room_goto(Controles);
}