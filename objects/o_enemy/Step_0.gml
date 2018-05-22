
depth = -y;
if health_ <= 0 && state_ != enemy.hit {
	instance_destroy();
}

if state_ != noone {
	event_user(state_);
}