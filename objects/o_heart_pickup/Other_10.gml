/// @description Pickup Event

instance_destroy();

// Increase health 
if global.player_health < global.player_max_health {
	global.player_health += 1;
}

audio_play_sound(a_collect_item, 2, false);
