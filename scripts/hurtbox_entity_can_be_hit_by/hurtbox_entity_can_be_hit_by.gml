///@arg hitbox
var _hitbox = argument0;

// Check if object is target of the hitbox
var _is_target = is_target(object_index, _hitbox.targets_ );


// Return true or false if object can be hit
return !invincible_ && _is_target;