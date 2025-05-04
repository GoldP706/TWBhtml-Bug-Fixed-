instance_create_depth(0,0,-99,obj_fadein);

if(obj_player.prev_room==rm_main_dream)
{
	obj_player.x=room_width/2-obj_player.sprite_width/2;
	obj_player.y=room_height-obj_player.sprite_height;
}