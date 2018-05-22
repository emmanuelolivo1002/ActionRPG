/// @description Game global variables

//Input object
instance_create_layer(0, 0, "Instances", o_input);

// Time
global.one_second = game_get_speed(gamespeed_fps);
