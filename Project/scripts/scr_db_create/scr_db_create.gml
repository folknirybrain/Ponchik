/*var i=9
repeat(10){	
	array_elements[i]=1;
	i--;
}
*/
/*
var i=0;
var j=0;
var grid_level=ds_grid_create(100,10)
//ds_grid_resize(grid_level,20,20)

var grid_level2=ds_grid_create(100,10)
//ds_grid_resize(grid_level2,20,20)
for(i=0;i<99;i++){
	//var xx=irandom(10);	
	grid_level[# i,0]=i;
	grid_level[# i,1]=obj_solid.object_index;
	grid_level[# i,2]=i;
	grid_level[# i,3]=string(irandom(99))+","+string(irandom(99))+","+string(irandom(99));
	
	
}
var str
str=ds_grid_write(grid_level);
txt_=file_text_open_write("level_1.txt");
file_text_write_string(txt_,str);
file_text_close(txt_);

*/

global.DB=ds_grid_create(100,10)
txt_2=file_text_open_read("level_1.txt");
var string_end=file_text_read_string(txt_2);
ds_grid_read(global.DB,string_end)
var i=0;
var j=0;
for(i=0;i<99;i++){
	//var xx=irandom(10);	
	
		//var rand = irandom(10);
	show_debug_message(string(i)+chr(10)+chr(13)+string(global.DB[# i,0])+chr(10)+chr(13)+
	string(global.DB[# i,1])+chr(10)+chr(13)+
	string(global.DB[# i,2])+chr(10)+chr(13)+
	string(global.DB[# i,3])+chr(10)+chr(13));		
}

