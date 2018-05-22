/// @description Attack State

// Image speed
image_speed = 0.35;

// Create hitbox on frame 1
if animation_hit_frame(1) {
	var _frames = 1;
	var _knockback = 5;
	var _damage = 1;
	create_hitbox(s_porcupine_hitbox, x, y-8, 0, _frames, [o_player], _damage, _knockback);
}


// End state when animation finish
if animation_hit_frame(image_number - 1) {
	state_ = porcupine.idle;
	sprite_index = s_porcupine_run;
	
	// Reset alarm
	alarm[1] = 2 * global.one_second;
}