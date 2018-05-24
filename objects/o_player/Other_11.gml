/// @description Sword State


image_speed = 1;

// Create hitbox on frame 1
if animation_hit_frame(1) {
	var _angle = direction_facing_*90;
	var _life_frames = 3;
	var _damage = 1;
	var _knockback = 8;
	
	// Create hitbox
	var _hitbox = create_hitbox(s_sword_hitbox, x, y, _angle, _life_frames, [o_enemy, o_grass, o_bush], _damage, _knockback);
	
	// Play audio
	audio_play_sound(a_swipe, 8, false);
	
	// Change position depending on direction of player
	switch direction_facing_ {
		case dir.up: _hitbox.y -=4; break;
		default: _hitbox.y -=8; break;
	}
	
	
}

// Call script
if animation_hit_frame(image_number - 1) {
	// Change state
	state_ = player.move;
}