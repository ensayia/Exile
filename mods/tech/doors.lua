-------------------------------------
--DOORS REGISTER
--and crafts...
------------------------------------

--Wattle

doors.register("door_wattle", {
		tiles = {{ name = "tech_door_wattle.png", backface_culling = true }},
		description = "Wattle Door",
		inventory_image = "tech_door_wattle_item.png",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 1},
		sounds = nodes_nature.node_sound_wood_defaults(),
})


doors.register_trapdoor("tech:trapdoor_wattle", {
	description = "Wattle Trapdoor",
	inventory_image = "tech_trapdoor_wattle.png",
	wield_image = "tech_trapdoor_wattle.png",
	tile_front = "tech_trapdoor_wattle.png",
	tile_side = "tech_trapdoor_wattle_side.png",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 1},
	sounds = nodes_nature.node_sound_wood_defaults(),
})


--------------------------------------


------------------------------------
--RECIPES

--wattle panels plus something to tie them on
crafting.register_recipe({
	type = "crafting_spot",
	output = "doors:door_wattle",
	items = {"tech:wattle 2", "group:fibrous_plant 2", "tech:stick 2"},
	level = 1,
	always_known = true,
})

--wattle panels plus something to tie them on
crafting.register_recipe({
	type = "crafting_spot",
	output = "tech:trapdoor_wattle",
	items = {"tech:wattle", "group:fibrous_plant", "tech:stick"},
	level = 1,
	always_known = true,
})


--recycle with some loss
crafting.register_recipe({
	type = "mixing_spot",
	output = "tech:wattle 2",
	items = {"doors:door_wattle"},
	level = 1,
	always_known = true,
})

crafting.register_recipe({
	type = "mixing_spot",
	output = "tech:wattle",
	items = {"tech:trapdoor_wattle"},
	level = 1,
	always_known = true,
})
