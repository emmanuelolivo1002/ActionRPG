/// @description Move camera

// If there is no target exit
if !instance_exists(target_) exit;

// Set x and y with linear interpolation
x = lerp(x, target_.x, 0.1);
y = lerp(y, target_.y-8, 0.1);

// Round to the nearest 1/scale
x = round_n(x, 1/scale_);
y = round_n(y, 1/scale_);


// Move camera position
camera_set_view_pos(view_camera[0], x - width_/2, y - height_/2);