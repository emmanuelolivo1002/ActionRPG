/// @description Move State

// Set direction of animation
image_speed = .35;
var _x_speed = lengthdir_x(speed_, direction_);
if _x_speed != 0 {
	image_xscale = sign(_x_speed);
}

//check alarm
if alarm[1] <= 0 {
	// Start slowing porcupine
	apply_friction_to_movement_entity();
} else {
	// Move
	add_movement_maxspeed(direction_, 0.05, .5);
}

move_movement_entity(true);

// If stop reset alarm and change to idle
if speed_ == 0 {
	alarm[1] = random_range(1, 3) * game_get_speed(gamespeed_fps);
	state_ = porcupine.idle;

}









