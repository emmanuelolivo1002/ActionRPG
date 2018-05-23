/// @description Bomb State

// Create bomb
instance_create_layer(x, y+2, "Instances", o_bomb);

// Play sound
audio_play_sound(a_set_bomb, 3, false);

// Change state
state_ = player.move;
