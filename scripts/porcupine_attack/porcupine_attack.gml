// If there is no player then don't do anything
if !instance_exists(o_player) exit;

// Store distance to player
var _distance_to_player = point_distance(x, y, o_player.x, o_player.y);

// Check if player is close
if _distance_to_player < 16 {
	// Attack
	state_ = porcupine.attack;
	
	//Set animation
	image_index = 0;
	sprite_index = s_porcupine_attack;
}