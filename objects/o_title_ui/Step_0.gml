/// @description Menu selection

// Check input and update index to move
if o_input.up_pressed_ {
	index_ = max(--index_, 0);
}
if o_input.down_pressed_ {
	index_ = min(++index_, option_length-1);
}

// Selection
if o_input.action_one_pressed_ {
	// Switch to different options
	switch (index_) {
		case options.continue_game :
			show_debug_message("Continue");
			break;
		
		case options.new_game :
			// Go to room
			room_goto(r_world);
			break;
		
		case options.credits :
			show_debug_message("Credits");
			break;
		
		case options.quit:
			game_end();
	}
}