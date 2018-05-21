
/// @param direction
var direction_ = argument0;


// Set direction_facing_ by dividing by 90
direction_facing_ = round(direction_/90);

// Set to 0 if _input_direction was 360 
if direction_facing_ == 4 {
	direction_facing_ = 0;
}
