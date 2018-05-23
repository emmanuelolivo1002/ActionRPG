///@arg input
///@arg item
var _input = argument0;
var _item = argument1;

if _input {
	if instance_exists(_item) {
		// Change state
		state_ = _item.action_;
		// Stop animation
		image_index = 0;
	}
}

