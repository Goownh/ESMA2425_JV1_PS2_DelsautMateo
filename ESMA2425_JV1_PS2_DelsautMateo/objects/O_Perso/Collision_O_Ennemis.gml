if(alarm_get(4)<=0){
	O_Vie.Hp--;
	image_blend = c_red;
	alarm_set(4,60);
}