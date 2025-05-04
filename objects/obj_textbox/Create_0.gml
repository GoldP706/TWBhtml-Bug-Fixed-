temp_arr = [];
temp_page = 0;
temp_page_size=0;
padding = 15;
depth = -999;

y_offset = 5;
x_offset = 3;

type_speed = 1;
temp_letter_pos = 0;

drawtext = noone;

offset = 125;

function pos()
{
	x_pos = camera_get_view_width(view_camera[0])/2-sprite_width/2;
	y_pos = camera_get_view_height(view_camera[0])-sprite_height-10;	
}

pos(); 

//instance_deactivate_object(obj_textbox);
