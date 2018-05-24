/// @description Attack State


// If player doesn't exist change to move state
if !instance_exists(o_player) || distance_to_object(o_player) > range_ {
	state_ = bat.move;
	exit;
}

// Get direction to player
var _direction_to_player = point_direction(x, y, o_player.x, o_player.y);

// Face the player while chasing
var _x_speed = lengthdir_x(speed_, _direction_to_player);
if _x_speed != 0 {
	image_xscale = sign(_x_speed);
}

// Move towards player
add_movement_maxspeed(_direction_to_player, 0.12, 1);
move_movement_entity(true);

// Create hitbox if bat is in players position
var _player = instance_place(x, y, o_player);
if _player {
	create_hitbox(sprite_index, x, y, 0, 1, [o_player], 1, 5);
}