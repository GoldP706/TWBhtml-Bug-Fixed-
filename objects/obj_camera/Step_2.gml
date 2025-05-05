if(x<0)
	{x=0;} //stop camera on left side of room

	if(x+view_width > room_width) //stop camera on right side of room
	{
		x=room_width - view_width;
	}

	if(y<0)
	{y=0;} //up

	if(view_height >room_height)
	{
		y=room_height - view_height; //down
	}

	camera_set_view_pos(view_camera[0],x,y);
