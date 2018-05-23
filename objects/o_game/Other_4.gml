/// @description Change player persistence

// Check if start position exists
if instance_exists(global.player_start_position) {
	// Check if player exists
	if instance_exists(o_player) {
		o_player.persistent = false;
		// Assign start position
		o_player.x = global.player_start_position.x;
		o_player.y = global.player_start_position.y;
		// Set layer
		o_player.layer = layer_get_id("Instances");
	} else {
		var _x_start = global.player_start_position.x;
		var _y_start = global.player_start_position.y;
		instance_create_depth(_x_start, _y_start, "Instances", o_player);
	}
	// Reset global start position
	global.player_start_position = noone;
}



