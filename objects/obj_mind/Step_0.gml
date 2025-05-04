if(place_meeting(x,y+48,obj_player)||place_meeting(x+48,y,obj_player)||place_meeting(x-48,y,obj_player))
{
	if(!has_text && keyboard_check_pressed(ord("Z")))
	{
		instance_create_depth(room_width/2, room_height/2, -99, obj_textbox);
		if(!first_dialogue)
		{
			obj_textbox.temp_arr = dialogue;
			first_dialogue=true;
		}
		else
		{
			obj_textbox.temp_arr = dialogue_repeat;
		}
		has_text=true;
	}
	else if(has_text && keyboard_check_pressed(ord("Z")))
	{
		instance_destroy(obj_textbox);
		has_text=false;
	}
}