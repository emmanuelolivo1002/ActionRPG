/// @description Input variables

// Pause
pause_pressed_ = keyboard_check_pressed(vk_enter);

// Movement
right_ = keyboard_check(vk_right);
left_ = keyboard_check(vk_left);
up_ = keyboard_check(vk_up);
down_ = keyboard_check(vk_down);

// Menu
right_pressed_ = keyboard_check_pressed(vk_right);
left_pressed_ = keyboard_check_pressed(vk_left);
up_pressed_ = keyboard_check_pressed(vk_up);
down_pressed_ = keyboard_check_pressed(vk_down);

// Actions
action_one_pressed_ = keyboard_check_pressed(ord("X"));
action_two_pressed_ = keyboard_check_pressed(ord("Z"));


