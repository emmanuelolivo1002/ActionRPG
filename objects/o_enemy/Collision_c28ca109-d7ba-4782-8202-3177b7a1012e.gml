/// @description Decrease health

// If enemy is dead get out
if health_ <= 0 exit;

// Check if enemy can be hit by other object
if hurtbox_entity_can_be_hit_by(other) {
	
	// Set invincibility for 1/4 second
	invincible_ = true;
	alarm[0] = game_get_speed(gamespeed_fps)/4;
	
	// Decrease health according to other object damage
	health_ -= other.damage_;

	// Set state to hit
	state_ = enemy.hit;

	// Set direction with both objects positions
	var _knockback_direction = point_direction(other.x, other.y, x, y);


	// Set Move
	set_movement(_knockback_direction, other.knockback_);
}




