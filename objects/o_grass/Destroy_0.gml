/// @description Drop item

// Drop item by chance
if chance(0.1) {
	var _item = choose(o_heart_pickup, o_gem_pickup);
	instance_create_layer(x+8, y+8, "Instances", _item);
}
