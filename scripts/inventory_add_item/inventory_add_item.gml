///@arg item
var _item = singleton(argument0);

var _item_index = array_find_index(_item, global.inventory);

// If item is not in the array add it to the first empty slot
if _item_index == -1 {
	for (var _i=0; _i< array_length_1d(global.inventory); _i++) {
		if global.inventory[_i] == noone {
			// Add item to array
			global.inventory[_i] = _item;
			return true;
		}
	}
} else { 
	return true;	
}