if(place_meeting(x,y+48,obj_player)||place_meeting(x+48,y,obj_player)||place_meeting(x-48,y,obj_player))
{
	if(global.end_ch0==false && room!=rm_sleep_cut)
	{
		if(!has_text && keyboard_check_pressed(ord("Z")))
		{
			instance_create_depth(room_width/2, room_height/2, -99, obj_textbox);
			obj_textbox.temp_arr = dialogue;
			has_text=true;
		}
		else if(has_text && keyboard_check_pressed(ord("Z")))
		{
			instance_destroy(obj_textbox);
			has_text=false;
		}
	}
	else if(global.end_ch0)
	{
		if(keyboard_check_pressed(ord("Z")))
		{
			instance_create_depth(0,0,-99,obj_textbox);
			obj_textbox.temp_arr=dialogue_sleep;
			instance_create_depth(0,0,-99,obj_selection);
			obj_selection.target_room=rm_sleep_cut;
		
			if(obj_selection.image_index==1)
			{
				instance_destroy(obj_textbox);
				instance_destroy(obj_selection);
			}
		}
	}
}