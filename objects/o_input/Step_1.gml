/// @description Check input

event_user(GET_INPUT);

// Map to pause
keyboard_set_map(ord("E"), vk_enter);
keyboard_set_map(vk_escape, vk_enter);


// Map WASD to arrows
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

// Map actions to JK
keyboard_set_map(ord("K"), ord("Z"));
keyboard_set_map(ord("J"), ord("X"));


