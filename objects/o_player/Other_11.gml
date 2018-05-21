/// @description Sword State


image_speed = 1;

// Call script
if animation_hit_frame(3) {
	// Change state
	state_ = player.move;
}