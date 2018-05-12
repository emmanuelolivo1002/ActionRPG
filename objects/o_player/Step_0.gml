/// @description Character movement

// Stop animation when not moving
image_speed = 0

if keyboard_check(vk_right) && !place_meeting(x+4, y, o_solid) {
	//Move right
	x += 2;
	
	// Change sprite
	sprite_index = s_player_run_right;
	// Face right
	image_xscale = 1;
	
	// Animate
	image_speed = .6;
} 

if keyboard_check(vk_left) && !place_meeting(x-2, y, o_solid) {
	// Move left
	x -= 2;
	
	// Change sprite
	sprite_index = s_player_run_right;
	// Face left
	image_xscale = -1;
	
	// Animate
	image_speed = .6;
} 

if keyboard_check(vk_up) && !place_meeting(x, y-2, o_solid) {
	// Move up
	y -= 2;
	
	// Change sprite
	sprite_index = s_player_run_up;
	
	// Animate
	image_speed = .6;
	
} 

if keyboard_check(vk_down) && !place_meeting(x, y+2, o_solid) {
	// Move down
	y += 2;
	
	// Change sprite
	sprite_index = s_player_run_down;
	
	// Animate
	image_speed = .6;
} 
