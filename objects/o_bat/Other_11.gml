/// @description Move State

// Add movement
add_movement_maxspeed(direction_, 0.05, .5);
move_movement_entity(true);

set_sprite_facing();


// Move randomly
if alarm[1] <= 0 {
	// Set random time and direction
	alarm[1] = global.one_second * random_range(1, 3);
	direction_ = random(360);
}

// Move if player is in range
if instance_exists(o_player) && distance_to_object(o_player) <= range_ {
	// Change to attack state
	state_ = bat.attack;
}