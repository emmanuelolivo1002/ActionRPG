///@arg size
var _size = argument0;

// Create global inventory
global.inventory = [];

// fill Inventory with empty items
for (var _i=0; _i < _size; _i++) {
	global.inventory[_i] = noone;
}