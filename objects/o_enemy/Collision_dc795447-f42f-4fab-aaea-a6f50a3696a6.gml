/// @description Soft collision

// Get direction from other enemy to us
var _direction = point_direction(other.x, other.y, x, y);

// Add movement
add_movement_maxspeed(_direction, 0.1, 2);