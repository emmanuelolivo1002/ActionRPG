/// @description Idle state

image_index = 0;
image_speed = 0;

// Check if alarm has gone off
if alarm[1] <= 0 {
	// Set alarm
	alarm[1] = random_range(2, 4) * game_get_speed(gamespeed_fps);
	
	// Change state
	state_ = porcupine.move;
	
	// Set random direction
	direction_ = random(360);
}








