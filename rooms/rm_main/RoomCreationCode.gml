instance_create_depth(0,0,-999,obj_fadein);

if(obj_player.prev_room == rm_inside)
{
	audio_play_sound(door,10,0);
	obj_player.x = 162;
	obj_player.y=505;
}
/*
if(obj_player.prev_room == rm_main_dream)
{
	obj_player.x = 124;
	obj_player.y=165;
}
*/

audio_stop_sound(birds);