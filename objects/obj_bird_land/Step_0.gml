if(obj_bird_fly.image_alpha>=1)
{
	timer++;
}

if(timer>=60)
{
	image_alpha+=0.05;

	obj_text_draw.timer++;
}

if(obj_text_draw.end_lake_2)
{
	timer++;
	if(timer>=180)
	{
		obj_player.image_alpha=1;
		instance_create_depth(0,0,-1000,obj_fadeout);
		obj_fadeout.fade_speed=0.01;
		obj_fadeout.target_rm=rm_main;
		
	}
}
	