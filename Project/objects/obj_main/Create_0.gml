/// @description Create_game
// You can write your code in this editor
global.radius_=700;
global.x_=room_width/2;
global.y_=room_height+300;
global.speed_=1;

instance_create_layer(global.x_,global.y_-global.radius_-50,"Instances",obj_pl);
//instance_create_layer(global.x_,global.y_-global.radius_,"Instances",obj_pie);
wall1=instance_create_layer(global.x_,global.y_-global.radius_,"Instances",obj_wall);
//wall2=instance_create_layer(global.x_,global.y_-global.radius_+100,"Instances",obj_wall);
//wall2.hight_radius=-300
instance_create_layer(global.x_,global.y_-global.radius_,"Instances",obj_solid);

sector_r=instance_create_layer(global.x_,global.y_,"Instances",obj_eath); // правая точка
sector_r.rotation_start=90;
sector_r.sprite_index=spr_orange;

sector_u=instance_create_layer(global.x_,global.y_,"Instances",obj_eath); // верхнаяя точка
sector_u.rotation_start=180;
sector_u.sprite_index=spr_yellow;

sector_l=instance_create_layer(global.x_,global.y_,"Instances",obj_eath); // левая точка
sector_l.rotation_start=270;
sector_l.sprite_index=spr_green;

sector_d=instance_create_layer(global.x_,global.y_,"Instances",obj_eath); // нижняя точка
sector_d.rotation_start=0;
sector_d.sprite_index=spr_purple;


