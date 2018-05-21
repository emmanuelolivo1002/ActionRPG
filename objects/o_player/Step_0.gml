/// @description Character movement

// Stop animation when not moving
image_speed = 0

// Local variable
var animation_speed = 0.6;

if keyboard_check(vk_right) && !place_meeting(x+4, y, o_solid) {
	//Move right
	x += speed_;
	
	// Change sprite
	sprite_index = s_player_run_right;
	// Face right
	image_xscale = 1;
	
	// Animate
	image_speed = animation_speed;
} 

if keyboard_check(vk_left) && !place_meeting(x-speed_, y, o_solid) {
	// Move left
	x -= speed_;
	
	// Change sprite
	sprite_index = s_player_run_right;
	// Face left
	image_xscale = -1;
	
	// Animate
	image_speed = animation_speed;
} 

if keyboard_check(vk_up) && !place_meeting(x, y-speed_, o_solid) {
	// Move up
	y -= speed_;
	
	// Change sprite
	sprite_index = s_player_run_up;
	
	// Animate
	image_speed = animation_speed;
	
} 

if keyboard_check(vk_down) && !place_meeting(x, y+speed_, o_solid) {
	// Move down
	y += speed_;
	
	// Change sprite
	sprite_index = s_player_run_down;
	
	// Animate
	image_speed = animation_speed;
} 
