if(alarm_get(2)<=0) {
	hp-=O_Vie.dmg;
	image_blend = c_red;
	alarm_set(2,30);
}