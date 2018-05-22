///@arg value
///@arg target_array
var _value = argument0;
var _array = argument1;

// Get lenght of target array
var _array_length = array_length_1d(_array);

// Loop through array to find if target is equal to our value
for (var _index = 0; _index < _array_length; _index++) {
	// Check if current object is target or if its an ancestor of target
	if _array[_index] == _value || object_is_ancestor(_value, _array[_index]) return true;
}

// If its not on array return false
return false;