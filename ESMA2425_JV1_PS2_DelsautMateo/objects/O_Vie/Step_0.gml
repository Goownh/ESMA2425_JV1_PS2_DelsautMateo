if(Hp <= 0) {
	room_goto(Mort);
}
if(invu){
	O_Perso.image_alpha = 0.5;
	alarm_set(0,10);
}