/// @description Gravity

// Increase z speed
z_ += z_speed_;
z_speed_ += gravity_;

// When item has reached the ground
if z_ >= 0 {
	can_pickup_ = true;
	var _bounce_amount = 0.25;
	z_speed_ = -z_speed_ * _bounce_amount;
	
	
	if z_speed_ > -1 {
		z_speed_  = 0;
		z_ = 0;
	}
	
	
}
