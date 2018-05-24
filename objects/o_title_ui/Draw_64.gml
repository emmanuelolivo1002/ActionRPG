/// @description Draw menu options

// Set font centered
draw_set_halign(fa_center);

// Loop through option array and draw text
for (var _i = 0; _i < option_length; _i++) {
	// Color
	if _i == index_ {
		draw_set_color(menu_color_);
	} else {
		draw_set_color(menu_dark_color_);	
	}
	draw_text(x, y+_i*12, option_[_i]);
}

// Reset font alignment and color for rest of game
draw_set_color(c_white);
draw_set_halign(fa_center);