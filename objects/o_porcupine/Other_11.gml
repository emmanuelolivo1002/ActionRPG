/// @description Idle state

image_index = 0;
image_speed = 0;

// Check if alarm has gone off
if alarm[1] <= 0 {
	// Set alarm
	alarm[1] = random_range(2, 4) * global.one_second;
	
	// Change state
	state_ = porcupine.move;
	
	// Set random direction
	direction_ = random(360);
}

// Attack script
porcupine_attack();




