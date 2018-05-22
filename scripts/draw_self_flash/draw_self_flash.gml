///@arg color
///@arg interval
///@arg alarm

var _color = argument0;
var _interval = argument1;
var _alarm = argument2;

// Use mod to flash in the interval
if _alarm > 0 && (_alarm % _interval) <= _interval/2 {
	gpu_set_fog(true, _color, 0, 1);
	draw_self();
	gpu_set_fog(false, _color, 0, 1);

}