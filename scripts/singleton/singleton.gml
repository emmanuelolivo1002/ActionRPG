///@arg object
var _object = argument0;


// Check if object exists
if instance_exists(_object) {
	return _object.id;
} else {
	// Create instance
	var _instance = instance_create_layer(0, 0, "Instances", _object);
	_instance.persistent = true;
	return _instance;
}