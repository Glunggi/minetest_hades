-- main `S` code in init.lua
local S
S = farming.S


minetest.register_craftitem("farming_plus:ananas_seed", {
	description = S("Ananas Seeds"),
	inventory_image = "farming_ananas_seed.png",
	on_place = function(itemstack, placer, pointed_thing)
		return farming:place_seed(itemstack, placer, pointed_thing, "farming_plus:ananas_1")
	end
})


minetest.register_node("farming_plus:ananas_1", {
	paramtype = "light",
	walkable = false,
	drawtype = "plantlike",
	drop = "",
	tiles = {"farming_ananas_1.png"},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.5+5/16, 0.5}
		},
	},
	groups = {snappy=3, flammable=2, not_in_creative_inventory=1,plant=1},
	sounds = default.node_sound_leaves_defaults(),
})


minetest.register_node("farming_plus:ananas_2", {
	paramtype = "light",
	walkable = false,
	drawtype = "plantlike",
	drop = "",
	tiles = {"farming_ananas_2.png"},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.5+11/16, 0.5}
		},
	},
	groups = {snappy=3, flammable=2, not_in_creative_inventory=1,plant=1},
	sounds = default.node_sound_leaves_defaults(),
})


minetest.register_node("farming_plus:ananas", {
	paramtype = "light",
	walkable = false,
	drawtype = "plantlike",
	tiles = {"farming_ananas_3.png"},
	drop = {
		max_items = 6,
		items = {
			{ items = {'farming_plus:ananas_seed'} },
			{ items = {'farming_plus:ananas_seed'}, rarity = 2},
			{ items = {'farming_plus:ananas_seed'}, rarity = 5},
			{ items = {'farming_plus:ananas_item'} }
		}
	},
	groups = {snappy=3, flammable=2, not_in_creative_inventory=1,plant=1},
	sounds = default.node_sound_leaves_defaults(),
})


minetest.register_craftitem("farming_plus:ananas_item", {
	description = S("Ananas (+1)"),
	inventory_image = "farming_ananas.png",
                     on_use = minetest.item_eat(1),

})


farming:add_plant("farming_plus:ananas", {"farming_plus:ananas_1", "farming_plus:ananas_2"}, 50, 20)
