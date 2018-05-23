///@arg x
///@arg y
var _x = argument0;
var _y = argument1;

// Check if pause
if !o_game.paused_ exit;

var _array_size = array_length_1d(global.inventory);

// Loop through inventory
for (var _i=0; _i<_array_size; _i++) {
	// Set box position
	var _x_box = _x+_i*32;
	var _y_box = _y;
	// Draw box
	draw_sprite(s_inventory_box, 0, _x_box, _y_box);
	
	// Get item from inventory and check if it exists
	var _item = global.inventory[_i];
	
	if instance_exists(_item) {
		draw_sprite(_item.sprite_, 0, _x_box+16, _y_box+16);
	}
	
}