/// @description Death animation and Drop item

create_animation_effect(s_enemy_death_effect, x, y-8, .6, true);


// Drop item by chance
if chance(0.75) {
	var _item = choose(o_heart_pickup, o_gem_pickup);
	instance_create_layer(x, y-8, "Instances", _item);
}