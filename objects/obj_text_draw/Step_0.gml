if(room==rm_opening && in_opening)
{
	instance_create_depth(0,0,-99,obj_textbox);
	obj_textbox.temp_arr = dialogue_opening;
	in_opening=false;
}

if(room==rm_lakeview)
{
	timer++;
	if(!end_lake_1 && timer>=90)
	{
		if(!instance_exists(obj_textbox))
		{
			instance_create_depth(0,0,-99,obj_textbox);
			obj_textbox.temp_arr = dialogue_lake_1;
			timer=0;
		}
	}
	if(!end_lake_2 && end_lake_1 && obj_bird_fly.image_alpha>=1 && timer >=300)
	{
		if(!instance_exists(obj_textbox))
		{
			instance_create_depth(0,0,-99,obj_textbox);
			obj_textbox.temp_arr = dialogue_lake_2;
			timer=0;
		}
	}
}

if(obj_player.prev_room==rm_lakeview&&!global.end_ch0)
{
	timer++;
	if(!instance_exists(obj_textbox)&&timer>=30)
		{
			instance_create_depth(0,0,-99,obj_textbox);
			obj_textbox.temp_arr = dialogue_end_ch0;
			global.end_ch0=true;
			timer=0;
		}
}

if(room==rm_sleep_cut && obj_fadeout_static.timer>=270)
{
	instance_create_depth(0,0,-1000,obj_textbox);
	obj_textbox.temp_arr = dialogue_sleep;
}

if(room==rm_main_dream && obj_player.in_dream==false)
{
	timer++;
	if(!instance_exists(obj_textbox)&&timer>=30)
		{
			instance_create_depth(0,0,-99,obj_textbox);
			obj_textbox.temp_arr = dialogue_dream_first;
			obj_player.in_dream=true;
		}
}

if(end_opening_text)
{
	room_goto(rm_main);
}
if(end_sleep_text)
{
	room_goto(rm_inside_dream);
}