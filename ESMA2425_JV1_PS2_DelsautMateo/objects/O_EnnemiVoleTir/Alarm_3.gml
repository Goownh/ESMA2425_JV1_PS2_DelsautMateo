/// @description tir

for(var i=0/*irandom_range(0,360)*/; i<360; i+=20){
	with instance_create_layer(x,y,"Char", O_TirMulti){
		image_angle = O_EnnemiVoleTir.i;
		direction = image_angle;
	}
}