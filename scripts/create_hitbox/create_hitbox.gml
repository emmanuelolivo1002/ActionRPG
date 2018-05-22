///@arg sprite
///@arg x
///@arg y
///@arg angle
///@arg frames
///@arg target_array
///@arg damage
///@arg knockback
var _sprite = argument0;
var _x = argument1;
var _y = argument2;
var _angle = argument3;
var _frames = argument4;
var _target_array = argument5;
var _damage = argument6;
var _knockback = argument7;

// Create a hitbox and store its id in a variable
var _hitbox = instance_create_layer(_x, _y, "Instances", o_hitbox);

// Set hitbox sprite
_hitbox.sprite_index = _sprite;
_hitbox.image_angle = _angle;

// Set alarm to number of frames given
_hitbox.alarm[0] = _frames;

//Set its instance variables
_hitbox.targets_ = _target_array;
_hitbox.damage_ = _damage;
_hitbox.knockback_ = _knockback;

// Return hitbox in case we want more modifications
return _hitbox;