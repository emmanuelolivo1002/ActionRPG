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
	
	// Draw on inventory menu
	if instance_exists(_item) {
		draw_sprite(_item.sprite_, 0, _x_box+16, _y_box+16);
	}
	
	// Draw Cursor
	if _i == item_index_ {
		draw_sprite(s_pause_cursor, image_index/8,_x_box,_y_box );
		// Description
		if instance_exists(_item) {
			draw_text(_x+4, _y+36, _item.description_);
			var _description_height = string_height(_item.description_);
			// Cost
			draw_text(_x+4, _y+48+_description_height, "Stamina cost: "+string(_item.cost_));
		}
	}
	
}

// Draw selected items box
draw_sprite(s_inventory_box, 0, 4, 4);
draw_sprite(s_inventory_box, 0, 36, 4);
// Draw selected items
if instance_exists(global.item[0]) draw_sprite(global.item[0].sprite_, 0, 20, 20);
if instance_exists(global.item[1]) draw_sprite(global.item[1].sprite_, 0, 52, 20);
