/// @description tir
directionProj = 0;
repeat (nbProj){ 
	var tir = instance_create_layer(x,y,"Char", O_TirMulti)
	tir.image_angle = directionProj;
	tir.direction = tir.image_angle;
	
	directionProj+=20;
}