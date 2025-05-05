_frame=image_index;

if(obj_textbox.temp_page == 3)
{
	_sprite = spr_self_answer_2;
}
if(obj_textbox.temp_page == 4)
{
	_sprite = spr_self_answer_3;
}

if(keyboard_check_pressed(vk_up))
{
	audio_play_sound(flip,10,0);
	image_index-=1
	if(image_index==3)
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
		image_index=3;
	}
}
if(keyboard_check_pressed(ord("Z")))
{
	instance_destroy();
}
