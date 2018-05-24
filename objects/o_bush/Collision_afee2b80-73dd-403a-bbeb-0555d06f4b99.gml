/// @description 

// Check if hitbox comes from player
if hurtbox_entity_can_be_hit_by(other) {
	// Destroy bush and wall
	instance_destroy();
	instance_destroy(wall_);
	
	// Add to destroyed list
	add_to_destroyed_list(id);
	
	// Animation
	create_animation_effect(s_bush_effect, x, y, 1, true);
}
