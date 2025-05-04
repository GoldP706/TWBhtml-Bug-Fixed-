if(image_alpha<1 && obj_text_draw.end_lake_1)
{
	timer++;
}

if(timer>=30)
{
	image_alpha+=0.05;
}

if(image_alpha>=1)
{
	timer=0;
}