/// @description Attack State

// If player doesnt exists then exit
if !instance_exists(o_player) {
	state_ = hornet.move;
	exit;
}

// Move with frictio
apply_friction_to_movement_entity();
move_movement_entity(true);

// When stops attack
if speed_ == 0 {
	alarm[2] = global.one_second * random_range(2, 4);
	// Get direction to player with variant angle
	var _direction_to_player = point_direction(x, y, o_player.x, o_player.y) * random_range(-10, 10);
	
	// Create stinger
	var _stinger = instance_create_layer(x, y, "Instances", o_stinger);
	// Set stinger direction, angle and speed
	_stinger.direction = _direction_to_player;
	_stinger.image_angle = _direction_to_player;
	_stinger.speed = 2;
	
	// Play audio
	audio_play_sound(a_stinger, 4, false);
	
	// Change state
	state_ = hornet.move;
}