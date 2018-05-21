/// @description Evade State

image_speed = 1;

//Move
set_movement(roll_direction_, roll_speed_);
move_movement_entity(false);

// Call script
if animation_hit_frame(image_number - 1) {
	// Change state
	state_ = player.move;
}