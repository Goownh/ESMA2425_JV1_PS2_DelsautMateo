/// @description drops
var drop = irandom_range(1,100);
show_debug_message(drop)
if(drop < 20){
	instance_create_layer(x,y,"Char", O_USB);
}
else if(20<drop && drop<40){
	instance_create_layer(x,y,"Char", O_Heal);
}