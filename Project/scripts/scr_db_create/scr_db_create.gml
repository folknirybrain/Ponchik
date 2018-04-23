var i=9
repeat(10){	
	array_elements[i]=1;
	i--;
}
var i=0;
var j=0;
var grid_level=ds_grid_create(10,10)
var grid_level2=ds_grid_create(10,10)
for(i=0;i<10;i++){
	//var xx=irandom(10);	
	for(j=0;j<10;j++){
		var rand = irandom(10);
		grid_level[# i,j]=rand
		
	}
}
var str
str=ds_grid_write(grid_level);
txt_=file_text_open_write("evel.txt");
file_text_write_string(txt_,str);
file_text_close(txt_);

txt_2=file_text_open_read("evel.txt");
var string_end=file_text_read_string(txt_2);
ds_grid_read(grid_level2,string_end)
var i=0;
var j=0;
for(i=0;i<10;i++){
	//var xx=irandom(10);	
	for(j=0;j<10;j++){
		//var rand = irandom(10);
		show_debug_message(string(i)+"  "+string(j)+" "+string(grid_level2[# i,j])+chr(10)+chr(13));		
	}
	
}

