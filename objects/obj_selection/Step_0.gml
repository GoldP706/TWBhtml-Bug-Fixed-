_frame=image_index;

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
	audio_play_sound(flip,1,0);
	if(image_index==0)
	{
		room_goto(target_room);
	}
	/*
	else
	{
		obj_player.move_speed=3;
		instance_destroy();
	}
	*/
}