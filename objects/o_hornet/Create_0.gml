/// @description Children variables and states
event_inherited();

// Hornet States
enum hornet {
	hit,
	move,
	attack
}

//Set states
starting_state_ = hornet.move;
state_ = starting_state_;

// Set alarms
alarm[1] = global.one_second * random_range(0, 1);
alarm[2] = global.one_second * random_range(3, 5);

//Range
range_ = 128;

// Set sprite
image_index = 0;
image_speed = 1;
image_xscale = choose(-1, 1);
