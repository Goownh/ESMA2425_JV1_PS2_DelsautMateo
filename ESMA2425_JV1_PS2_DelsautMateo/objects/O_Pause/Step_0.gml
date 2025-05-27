if (room != Menu && (keyboard_check_pressed(vk_escape)||gamepad_button_check_pressed(0, gp_start))) {
	pause = !pause;
	if(room != Pause) {
		salle = room;
	}
	Sc_Pause(pause, salle);
}
show_debug_message(salle)