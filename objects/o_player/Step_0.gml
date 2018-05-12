/// @description Character movement

if keyboard_check(vk_right) && !place_meeting(x+4, y, o_solid){
	x += 4;
} 

if keyboard_check(vk_left) && !place_meeting(x-4, y, o_solid) {
	x -= 4;
} 

if keyboard_check(vk_up) && !place_meeting(x, y-4, o_solid) {
	y -= 4;
} 

if keyboard_check(vk_down) && !place_meeting(x, y+4, o_solid) {
	y += 4;
} 
