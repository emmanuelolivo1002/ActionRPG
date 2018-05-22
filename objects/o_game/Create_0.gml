/// @description Game global variables

//Input object
instance_create_layer(0, 0, "Instances", o_input);

// Time
global.one_second = game_get_speed(gamespeed_fps);

// Music
//audio_play_sound(a_music, 10, true);

// Player health
global.player_max_health = 4;
global.player_health = global.player_max_health;

// Player Stamina
global.player_max_stamina = 2;
global.player_stamina = global.player_max_stamina;

// Player Gems
global.player_gems = 0;
