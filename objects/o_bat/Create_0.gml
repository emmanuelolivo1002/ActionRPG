/// @description Children variables


event_inherited();
initialize_movement_entity(0.25, .5, o_solid);

// Bat states
enum bat {
	hit,
	move, 
	attack
}

starting_state_ = bat.move;
state_ = starting_state_;

// Set alarm for movement
alarm[1] = random_range(0, 1) * global.one_second;

image_index = 0;
image_xscale = choose(1, -1);
image_speed = 0.5;

// Set range 
range_ = 64;