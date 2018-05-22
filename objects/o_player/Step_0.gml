
// Run state code
event_user(state_);

//Set depth
depth = -y;

// Set sprite
sprite_index = sprite_[state_, direction_facing_];

// Check if death
if global.player_health <= 0 && !invincible_ {
	instance_destroy();
}