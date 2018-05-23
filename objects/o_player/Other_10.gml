/// @description Move State

// Check keyboard input
var _x_input = o_input.right_ - o_input.left_;
var _y_input = o_input.down_ - o_input.up_;
var _attack_input = o_input.action_one_pressed_;
var _roll_input =  o_input.action_two_pressed_;


// Set roll direction
roll_direction_ = direction_facing_ * 90;

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
	
	// Set roll direction
	roll_direction_ = direction_facing_ * 90;
	
	
}

// Handle actions states
inventory_use_item(o_input.action_one_pressed_, global.item[0]);
inventory_use_item(o_input.action_two_pressed_, global.item[1]);


// Call movement script
move_movement_entity(false);

