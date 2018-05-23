/// @description Flash and shadow

// Shadow
draw_sprite(s_medium_shadow, 0, x, y);

draw_self();

// Draw flash
draw_self_flash(c_white, 10, alarm[0]);
