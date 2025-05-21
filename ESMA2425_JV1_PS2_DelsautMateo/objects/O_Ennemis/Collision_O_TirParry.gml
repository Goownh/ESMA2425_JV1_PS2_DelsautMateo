if(alarm_get(2)<=0) {
	hp--;
	image_blend = c_red;
	alarm_set(2,30);
}