/// @description Hit Logic

// Check if player can be hit by other
if hurtbox_entity_can_be_hit_by(other) {
	// Set invincibility for 1/2 second
	invincible_ = true;
	alarm[0] = global.one_second * 0.5;
	
	// Decrease health
	global.player_health -= other.damage_;
	
	// Set knockback
	var _knockback_direction = point_direction(other.x, other.y, x, y);
	set_movement(_knockback_direction, other.knockback_);
	
	// Change state
	state_ = player.hit;
}
