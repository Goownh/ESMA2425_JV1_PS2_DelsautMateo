if (keyboard_check_pressed(vk_escape)||gamepad_button_check_pressed(0, gp_start)) {
	pause = !pause;
	salle = room;
	Sc_Pause(pause, salle);
}