///@arg input
///@arg item
var _input = argument0;
var _item = argument1;

if _input {
	// Check if item exists and if there's enough stamina
	if instance_exists(_item) && _item.cost_ <= global.player_stamina {
		// Decrease stamina and set minimum value to 0
		global.player_stamina = max(0, global.player_stamina - _item.cost_);
		// Set alarm for stamina recharge
		alarm[1] = global.one_second;
		// Change state
		state_ = _item.action_;
		// Stop animation
		image_index = 0;
	}
}

