if (room != Menu && room != Controles && (keyboard_check_pressed(vk_escape)||gamepad_button_check_pressed(0, gp_start))) {
	pause = !pause;
	if(room != Pause) {
		salle = room;
	}
	Sc_Pause(pause, salle);
}
