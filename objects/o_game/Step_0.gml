/// @description Pause

if o_input.pause_pressed_ {
	// Toggle pause
	if paused_ {
		// Unpause
		paused_ = false;
		if sprite_exists(paused_sprite_) {
			sprite_delete(paused_sprite_);
		}
		audio_play_sound(a_unpaused, 10, false);
		instance_activate_all();
	} else {
		// Pause
		paused_ = true;
		paused_sprite_ = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], false, false, 0, 0);
		audio_play_sound(a_paused, 10, false);
		instance_deactivate_all(true);
		instance_activate_object(o_input);
	}
}
