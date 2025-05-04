if(place_meeting(x,y,obj_player))
{
	audio_play_sound(door,10,0);
	room_goto(target_room);
}

if(room==rm_inside && global.end_ch0 || obj_player.prev_room==rm_main_dream)
{
	target_room=rm_main_dream;
}

show_debug_message(target_room);