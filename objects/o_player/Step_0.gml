/// @description Character movement


// Check keyboard input
var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up);

// Create direction variable
var _input_direction = point_direction(0, 0, _x_input, _y_input);


// Check if there is movement
if _x_input == 0 && _y_input == 0 {
	// No movement
	
	// Sprite returns to first sprite of animation
	image_index = 0;
	image_speed = 0;
	
	// Call friction script
	apply_friction_to_movement_entity();
	
	
} else {
	// Movement
	
	// Set sprites for x movement
	if _x_input != 0 {
		image_xscale =  _x_input;
	}
	
	// Set animation
	image_speed = 0.6;
	
	
	
	// Call scripts
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
	
	
}

sprite_index = sprite_[player.move, direction_facing_];

// Call movement script
move_movement_entity(false);
