/// @description Sword State


image_speed = 1;

// Call script
if animation_hit_frame(image_number - 1) {
	// Change state
	state_ = player.move;
}