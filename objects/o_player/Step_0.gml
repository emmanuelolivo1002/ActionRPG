/// @description Character movement

// Stop animation when not moving
image_speed = 0;

// Local variable
var _animation_speed = 0.6;

// Check keyboard input
var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up);

// Create direction variable
var _input_direction = point_direction(0, 0, _x_input, _y_input);

// Set direction_facing_ by dividing by 90
direction_facing_ = round(_input_direction/90);

// Set to 0 if _input_direction was 360 
if direction_facing_ == 4 {
	direction_facing_ = 0;
}

// X movement
if _x_input != 0 && !place_meeting(x + speed_ * _x_input, y, o_solid) {
	//Move 
	x += speed_ * _x_input;
	
	// Facing
	image_xscale = _x_input;
	
	// Animate
	image_speed = _animation_speed;
} 

// Y movement
if _y_input != 0 && !place_meeting(x, y + speed_ * _y_input, o_solid) {
	//Move 
	y += speed_ * _y_input;
	

	
	// Facing
	image_xscale = _y_input;
	
	// Animate
	image_speed = _animation_speed;
} 



sprite_index = sprite_[player.move, direction_facing_];


