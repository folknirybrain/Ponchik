x=global.x_+lengthdir_x(global.radius_+height_radius,alpha); 
y=global.y_+lengthdir_y(global.radius_+height_radius,alpha);

alpha+=global.speed_/2;
//alpha=degtorad(0);
//alpha_grad=radtodeg(alpha)

if(alpha>=360||alpha<=-360){
	alpha-=360*sign(global.speed_);	
}