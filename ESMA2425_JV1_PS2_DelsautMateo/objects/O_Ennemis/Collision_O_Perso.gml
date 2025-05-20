if(alarm_get(0)<=0){
	O_Vie.Hp--;
	alarm_set(0,20);
}