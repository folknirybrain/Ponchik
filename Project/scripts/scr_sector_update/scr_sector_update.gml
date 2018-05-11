
if(global.sector_numb=global.max_-1){	
	global.sector_numb=0
	sprite_index=global.sector_numb
}else{
	global.sector_numb++
	sprite_index=global.sector_numb
}

var i =0;

i=irandom(2);
//solid1=instance_create_layer(global.x_,global.y_,"Instances",obj_solid1)
solid1=instance_create_layer(global.x_+lengthdir_x(global.radius_-50,rotation_start+50-global.DB[# i,2]),global.y_+lengthdir_y(global.radius_-50,rotation_start+50-global.DB[# i,2]),"Instances",global.DB[# i,1]);
//solid1.alpha=rotation_start+50-i*20;



solid1.alpha=rotation_start+50-global.DB[# i,2];
solid1.alpha=alpha+global.DB[# i,2];
//solid1.speed_=global.speed_
//solid1.x=global.x_+lengthdir_x(global.radius_,solid1.alpha); 
//solid1.y=global.y_+lengthdir_y(global.radius_,solid1.alpha); 



//show_debug_message(solid1.id)

