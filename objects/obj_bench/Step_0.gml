if(place_meeting(x,y,obj_player)&&obj_player.prev_room!=rm_lakeview)
{
	
	if(keyboard_check_pressed(ord("Z")))
	{
		if(room==rm_main)
		{
			instance_create_depth(0,0,-99,obj_textbox);
			obj_textbox.temp_arr=dialogue_bench;
			instance_create_depth(0,0,-99,obj_selection);
			obj_selection.target_room = rm_lakeview;
		
			if(obj_selection.image_index==1)
			{
				instance_destroy(obj_textbox);
				instance_destroy(obj_selection);
			}
		}
		if(room==rm_main_dream && !has_text)
		{
			instance_create_depth(0,0,-99,obj_textbox);
			obj_textbox.temp_arr=dialogue_bench_dream;
			has_text=true;
		}
	}
}