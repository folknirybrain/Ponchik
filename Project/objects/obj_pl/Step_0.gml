/// @description Insert description here
// You can write your code in this editor
//scr_move();
button_key=keyboard_check_pressed(vk_up)
button_down=keyboard_check(vk_down);
key_horizon=keyboard_check(vk_right)-keyboard_check(vk_left);

/*
if(!place_meeting(x,y+1,obj_wall)){
	vspeed_+=gravity_;
}else{
	if(vinput_!=0){		
		vspeed_=-jump_power_;			
	}
}
*/

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

//show_debug_message(" vert standart"+string(vertical_speed))	
if(place_meeting(x_future,y_future,obj_eath)){
//	show_debug_message(" vert place meet"+string(vertical_speed))	
		//show_debug_message(" vert place meet"+string(result_radius))	
	while !place_meeting(x_future_1,y_future_1,obj_eath){		
		result_radius+=sign(vertical_speed);
		//x=global.x_+lengthdir_x(result_radius,alpha); 
		//y=global.y_+lengthdir_y(result_radius,alpha);
		x_future_1=global.x_+lengthdir_x(result_radius,alpha); 
		y_future_1=global.y_+lengthdir_y(result_radius,alpha);		
		//x_future=x_future_1
		//y_future=y_future_1
	}

	
		/*while place_meeting(x_future_1,y_future_1,obj_eath){		
			result_radius+=1;
			
			x_future_1=global.x_+lengthdir_x(result_radius,alpha); 
			y_future_1=global.y_+lengthdir_y(result_radius,alpha);		
			show_debug_message(" alpha "+string(result_radius)+"alpha_ "+string(alpha))	
			*/
	vertical_speed=0;
	
}

//show_debug_message(" vert place meet"+string(result_radius))	

if(place_meeting(global.x_+lengthdir_x(result_radius+10,alpha),global.y_+lengthdir_y(result_radius+10,alpha),obj_eath)){
		game_restart();
		show_debug_message(" vert place meet"+string(result_radius))	
}

var x_future=global.x_+lengthdir_x(result_radius+vertical_speed,alpha);
var y_future=global.y_+lengthdir_y(result_radius+vertical_speed,alpha);
var x_future_1=global.x_+lengthdir_x(result_radius+sign(vertical_speed),alpha);
var y_future_1=global.y_+lengthdir_y(result_radius+sign(vertical_speed),alpha);

	if(place_meeting(x_future,y_future,obj_eath)){
		//show_debug_message(" result  "+string(result_radius)+ " verical "+string(vertical_speed))	
		/*while place_meeting(x_future_1,y_future_1,obj_solid){		
			result_radius+=1;
			x=global.x_+lengthdir_x(result_radius,alpha); 
			y=global.y_+lengthdir_y(result_radius,alpha);
			x_future_1=x;
			y_future_1=y;		
			show_debug_message(" alpha "+string(alpha)+"alpha_ "+string(alpha))	
		}	
	show_debug_message(" result  "+string(result_radius)+ " verical "+string(vertical_speed))	
		//vertical_speed=0;
		*/
	}
	
if(!place_meeting(x,y,obj_eath)){
	//show_debug_message(" vert place meet"+string(vertical_speed))	
	vertical_speed-=gravity_
	//show_debug_message(" vert place meet"+string(vertical_speed))	
}


/*
if(place_meeting(x_future,y_future,obj_main.wall2)&&obj_main.wall2.enable){
		show_debug_message(string(obj_wall.enable));
		while !place_meeting(x_future_1,y_future_1,obj_main.wall2){		
			result_radius+=sign(vertical_speed);
			x=global.x_+lengthdir_x(result_radius,alpha); 
			y=global.y_+lengthdir_y(result_radius,alpha);
			x_future_1=x;
			y_future_1=y;			
			show_debug_message(" x_wall "+string(obj_main.wall2.x)+"y_wall "+string(obj_main.wall2.y)
			+" x_future "+string(x_future_1)+" y_future "+string(y_future_1)
			+" result_radiuis "+string(result_radius))
		
		}
		vertical_speed=0;
	}
*/



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


