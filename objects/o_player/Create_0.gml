// Use movement script
initialize_movement_entity(0.5, 1, o_solid);

image_speed = 0;
acceleration_ = 0.5;
max_speed_ = 1.5;
direction_facing_ = dir.right;



enum player {
	move,
	sword
}

enum dir {
	right,
	up,
	left,
	down 
}


state_ = player.move;

// Sprite move lookup table
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;

// Sprite sword lookup table
sprite_[player.sword, dir.right] = s_player_attack_right;
sprite_[player.sword, dir.up] = s_player_attack_up;
sprite_[player.sword, dir.left] = s_player_attack_right;
sprite_[player.sword, dir.down] = s_player_attack_down;