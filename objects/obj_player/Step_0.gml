switch(keyboard_key)
{
	case(vk_down):
		if(!place_meeting(x,y+3,obj_hitbox))
		{
			y+=move_speed;
			sprite_index=spr_player_front;
		}
		break;
		
	case(vk_up):
		if(!place_meeting(x,y-3,obj_hitbox))
		{
			y-=move_speed;
			sprite_index=spr_player_back;
		}
		break;
		
	case(vk_left):
		if(!place_meeting(x-3,y,obj_hitbox))
		{
			x-=move_speed;
			sprite_index=spr_player_left;
		}
		break;
		
	case(vk_right):
		if(!place_meeting(x+3,y,obj_hitbox))
		{
			x+=move_speed;
			sprite_index=spr_player_right;
		}
		break;
}

if(x-xprevious=0 && y-yprevious=0)
{
	image_speed=0;
	image_index=0;
}
else
{
	image_speed=2;
}

if(!instance_exists(obj_textbox))
{
	move_speed=3;
}

//camera stuff
if(instance_exists(obj_camera))
{
	//left
	if(x<obj_camera.x + obj_camera.view_width/2)
		{
			obj_camera.x-=move_speed;
		}
	//right
	if(x>obj_camera.x + obj_camera.view_width/2)
		{
			obj_camera.x +=move_speed;
		}
	//up
	if(y<obj_camera.y + obj_camera.view_height/2)
		{
			obj_camera.y -=move_speed;
		}
	//down
	if(y>obj_camera.y + obj_camera.view_height/2)
		{
			obj_camera.y +=move_speed;
		}
}