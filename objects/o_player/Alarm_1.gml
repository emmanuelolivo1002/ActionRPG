/// @description Stamina recharge

// Increase stamina with a max value 
global.player_stamina = min(global.player_stamina+1, global.player_max_stamina);

// Reset alarm until stamina reaches max value
if global.player_stamina < global.player_max_stamina {
	alarm[1] = global.one_second;
}