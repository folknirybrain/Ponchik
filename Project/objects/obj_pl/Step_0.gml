/// @description Insert description here
// You can write your code in this editor
button_key=keyboard_check_pressed(vk_up)
button_down=keyboard_check(vk_down);
key_horizon=keyboard_check(vk_right)-keyboard_check(vk_left);

if(!place_meeting(global.x_+lengthdir_x(result_radius-1,alpha),global.y_+lengthdir_y(result_radius-1,alpha),obj_eath)){
	vertical_speed-=gravity_	
}

if(key_horizon>0){
	alpha-=global.speed_;
	image_speed=2	
}else if(key_horizon<0){
	image_speed=0
	alpha+=global.speed_;
}else{
	image_speed=1
}
var x_future=global.x_+lengthdir_x(result_radius+vertical_speed,alpha);
var y_future=global.y_+lengthdir_y(result_radius+vertical_speed,alpha);
var x_future_1=global.x_+lengthdir_x(result_radius+sign(vertical_speed),alpha);
var y_future_1=global.y_+lengthdir_y(result_radius+sign(vertical_speed),alpha);
var result_radius_local=result_radius
if(place_meeting(x_future,y_future,obj_eath)){		
	//Проверка коллизий при падении к центру круга и установка радиуса для координат на 1 пиксель выше коллизии		
	while !place_meeting(x_future_1,y_future_1,obj_eath){	
		result_radius=result_radius_local
		result_radius_local+=sign(vertical_speed);	
		x_future_1=global.x_+lengthdir_x(result_radius_local,alpha); 
		y_future_1=global.y_+lengthdir_y(result_radius_local,alpha);			
	}	
	vertical_speed=0;	
	result_radius_local=result_radius;
	//Проверка коллизий при движении вправо влево и при погружении в объект более чем на 10 пикселей рестарт	
	while place_meeting(global.x_+lengthdir_x(result_radius_local,alpha),global.y_+lengthdir_y(result_radius_local,alpha),obj_eath){		
		result_radius_local+=1					
		if(abs(result_radius-result_radius_local)>10){
			game_restart();
		}			
	}
}
if(button_down>0){
	sprite_index=spr_pld
	image_angle=alpha-90
}else {
	sprite_index=spr_pl
	image_angle=alpha-90
}

if(button_key>0&&vertical_speed==0){		// поправить условие с нулем, так как можно прыгать в самой высшей точке повторно
	vertical_speed=button_key*jump_
}

result_radius+=vertical_speed;

x=global.x_+lengthdir_x(result_radius,alpha); 
y=global.y_+lengthdir_y(result_radius,alpha);


