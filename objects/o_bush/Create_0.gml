/// @description Setup

// Initialize hurtbox
initialize_hurtbox_entity();
depth = -bbox_bottom;

// Create a wall
wall_ = instance_create_layer(x, y, "Instances", o_solid);

// If item was already destroyed
if is_in_destroyed_list(id) {
	// Destroy bush and wall
	instance_destroy();
	instance_destroy(wall_);
}