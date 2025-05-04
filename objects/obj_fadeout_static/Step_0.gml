if(image_alpha<1)
{
	image_alpha+=fade_speed;
}

depth = -999;

if(image_alpha>=1)
{
	audio_stop_sound(ambience);
	timer++;
	if(timer=180)
	{
		audio_play_sound(noise,0,0);
	}
}