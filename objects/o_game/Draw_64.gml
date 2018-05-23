// Get GUI dimensions
var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();


// Draw player hearts
for (var _i = 0; _i < global.player_max_health; _i++) {
	var _filled = _i < global.player_health;
	draw_sprite(s_heart_ui, _filled, 4+15*_i, _gui_height-29);
} 

// Drag player gems
var _gem_string = string(global.player_gems);
var _text_width = string_width(_gem_string);
var _x = _gui_width - _text_width + 4;
var _y = _gui_height - 16 + 4;
draw_sprite(s_gem, 0, _x-16, _y+7);
draw_text(_x-8, _y-1, _gem_string);
