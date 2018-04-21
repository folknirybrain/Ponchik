/// @description Insert description here
// You can write your code in this editor
image_angle=obj_pl.alpha-90
x=global.x_+lengthdir_x(global.radius_+hight_radius,obj_pl.alpha); 
y=global.y_+lengthdir_y(global.radius_+hight_radius,obj_pl.alpha);	

	if(!place_meeting(x,y,obj_eath)){
		self.enable=false	
	}
