/// @description Hit State

// Stop animation
image_index = 0;

// Set movement
move_movement_entity(true);
apply_friction_to_movement_entity();

// If stop movement then go to starting state
if speed_ == 0 {
	state_ = starting_state_;
}