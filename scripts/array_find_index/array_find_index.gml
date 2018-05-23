///@arg value
///@arg array
var _value = argument0;
var _array = argument1;

var _array_size = array_length_1d(_array);

// Look for value
for (var _i=0; _i < _array_size; _i++) {
	// If found return index
	if _value == _array[_i] return _i;
}

// if not found return -1
return -1;