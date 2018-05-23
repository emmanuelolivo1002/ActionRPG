/// @description Game global variables

//Input object
instance_create_layer(0, 0, "Instances", o_input);

// Time
global.one_second = game_get_speed(gamespeed_fps);

// Music
//audio_play_sound(a_music, 10, true);

// Font
var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font,_font_string, true, 1);
draw_set_font(global.font);

// GUI Layer
var _view_width = camera_get_view_width(view_camera[0]);
var _view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(_view_width, _view_height);

// Pause
paused_ = false;
paused_sprite_ = noone;
paused_sprite_scale = display_get_gui_width()/view_wport[0];

global.item[0] = noone;
global.item[1] = noone;
item_index_ = 0;

// Inventory
inventory_create(6);
inventory_add_item(o_ring_item);
inventory_add_item(o_sword_item);
inventory_add_item(o_bomb_item);

// Start position
global.player_start_position = i_world_start;

// Player health
global.player_max_health = 4;
global.player_health = global.player_max_health;

// Player Stamina
global.player_max_stamina = 3;
global.player_stamina = global.player_max_stamina;

// Player Gems
global.player_gems = 0;
