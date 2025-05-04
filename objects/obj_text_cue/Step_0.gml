if(place_meeting(x,y,obj_player)&&!has_text)
{
	instance_create_depth(0,0,-99,obj_textbox);
	obj_textbox.temp_arr=dialogue;
	has_text=true;
}

if(has_text && keyboard_check_pressed(ord("Z")))
{
	instance_destroy(obj_textbox);
}

if(!place_meeting(x,y,obj_player))
{
	has_text=false;
}