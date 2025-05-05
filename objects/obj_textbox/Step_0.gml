pos();

if(instance_exists(obj_fadeout_static_white))
{
	depth = 9999;
}

if(instance_exists(obj_player))
{
	obj_player.move_speed=0;
}

drawtext = string_copy(temp_arr[temp_page], 1, temp_letter_pos);
		
var temp_page_size = string_length(temp_arr[temp_page]);

	if(temp_letter_pos < temp_page_size)
	{
		temp_letter_pos += type_speed; //increments letters one by one, typewriter style
	}

var _accept_key = keyboard_check_pressed(ord("Z"));
var _skip_key = keyboard_check_pressed(ord("X"));

if(_skip_key)
{
	temp_letter_pos=temp_page_size;
}

if(_accept_key && temp_letter_pos==temp_page_size)
{
	temp_letter_pos = 0;
	
	if(instance_exists(obj_textbox) && temp_page<array_length(temp_arr)) //increments page
	{
		temp_page++;
	}
	
	if(temp_page == array_length(temp_arr)) //kills the textbox
	{
		if(instance_exists(obj_player))
		{
			obj_player.move_speed=3;
		}
		
		temp_page = 0;
		temp_letter_pos = 0;
		drawtext = noone;
		
		if(instance_exists(obj_text_draw))
		{
			if(temp_arr == obj_text_draw.dialogue_opening)
			{
				obj_text_draw.end_opening_text = true;
			}
			else if(temp_arr == obj_text_draw.dialogue_lake_1)
			{
				obj_text_draw.end_lake_1 = true;
			}
			else if(temp_arr == obj_text_draw.dialogue_lake_2)
			{
				obj_text_draw.end_lake_2 = true;
			}
			else if(temp_arr == obj_text_draw.dialogue_sleep)
			{
				obj_text_draw.end_sleep_text = true;
			}
		}
		else if(instance_exists(obj_mind))
		{
			if(temp_arr == obj_mind.dialogue)
			{
				obj_mind.end_dialogue = true;
				obj_mind.first_dialogue=false;
				obj_heart.first_dialogue=true;
				//obj_heart.end_dialogue = false;
			}
		}
		else if(instance_exists(obj_heart))
		{
			if(temp_arr == obj_heart.dialogue)
			{
				obj_heart.end_dialogue = true;
				obj_heart.first_dialogue=false;
			}
		}
		else if(instance_exists(obj_self))
		{
			if(temp_arr == obj_self.dialogue)
			{
				obj_self.end_dialogue = true;
			}
		}
		else
		{
			instance_destroy();
		}
		
		instance_destroy();
	}
}