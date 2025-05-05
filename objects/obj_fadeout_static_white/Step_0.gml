if(image_alpha<=1)
{
	image_alpha+=fade_speed;
}

if(image_alpha>=1)
{
	instance_create_depth(0,0,-1600000000,obj_tbc);
}