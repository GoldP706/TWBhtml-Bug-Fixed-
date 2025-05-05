if(place_meeting(x,y+48,obj_player)||place_meeting(x+48,y,obj_player)
||place_meeting(x-48,y,obj_player))
{
	if(keyboard_check_pressed(ord("Z")))
	{
		if(!has_text)
		{
			instance_create_depth(0,0,-99,obj_textbox);
			obj_textbox.temp_arr=dialogue;
		}
		
	}
	
	if(instance_exists(obj_textbox))
	{
		if(obj_textbox.temp_page==2||obj_textbox.temp_page==3||obj_textbox.temp_page==4)
			{
				if(!instance_exists(obj_self_answer))
				{instance_create_depth(0,0,-99,obj_self_answer);}
			}
		else
		{
			instance_destroy(obj_self_answer);
		}
	}
}