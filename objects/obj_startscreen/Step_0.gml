if(keyboard_check_pressed(vk_up))
{
	audio_play_sound(flip,10,0);
	image_index-=1
	if(image_index==2)
	{
		image_index=0;
	}
}

if(keyboard_check_pressed(vk_down))
{
	audio_play_sound(flip,10,0);
	image_index+=1
	if(image_index==0)
	{
		image_index=2;
	}
}

if(keyboard_check_pressed(ord("Z")))
{
	if(image_index==0 && !instance_exists(obj_fadeout))
	{
		audio_play_sound(flip,10,0);
		instance_create_depth(0,0,-100,obj_fadeout);
		obj_fadeout.target_rm=rm_opening;
	}
	if(image_index==1 && !instance_exists(obj_fadeout))
	{
		instance_create_depth(0,0,-100,obj_fadeout);
	}
	if(image_index==2)
	{
		game_end();
	}
}