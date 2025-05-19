if(alarm_get(2)<=0) {
	hp--;
	alarm_set(2,30);
}