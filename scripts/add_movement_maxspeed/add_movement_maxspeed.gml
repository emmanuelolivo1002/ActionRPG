///@arg direction
///@arg acceleration
///@arg max_speed
var _direction = argument0;
var _acceleration = argument1;
var _max_speed = argument2;

var _x_speed = lengthdir_x(speed_, direction_);
var _y_speed = lengthdir_y(speed_, direction_);

var _x_acceleration = lengthdir_x(_acceleration, _direction);
var _y_acceleration = lengthdir_y(_acceleration, _direction);

_x_speed += _x_acceleration;
_y_speed += _y_acceleration;

speed_ = point_distance(0, 0, _x_speed, _y_speed);
direction_ = point_direction(0, 0, _x_speed, _y_speed);
speed_ = min(speed_, _max_speed);