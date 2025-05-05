if(place_meeting(x,y+48,obj_player)||place_meeting(x+48,y,obj_player)||place_meeting(x-48,y,obj_player))
{
	if(keyboard_check_pressed(ord("Z")))
	{
		instance_create_depth(room_width/2, room_height/2, -99, obj_textbox);
		if(first_dialogue)
		{
			obj_textbox.temp_arr = dialogue;
			
		}
		else
		{
			obj_textbox.temp_arr = dialogue_repeat;
		}
		
		if(instance_exists(obj_textbox))
		{
			if(obj_textbox.temp_page==array_length(obj_textbox.temp_arr))
			{
				instance_destroy(obj_textbox);
				first_dialogue=false;
			}
		}
	}
}