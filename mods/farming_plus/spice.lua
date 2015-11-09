minetest.register_craftitem("farming_plus:spice_seed", {
	description = "Spice Seeds",
	inventory_image = "farming_spice_seed.png",
	on_place = function(itemstack, placer, pointed_thing)
		local above = minetest.env:get_node(pointed_thing.above)
		if above.name == "air" then
			above.name = "farming_plus:spice_1"
			minetest.env:set_node(pointed_thing.above, above)
			itemstack:take_item(1)
			return itemstack
		end
	end
})

minetest.register_node("farming_plus:spice_1", {
	paramtype = "light",
	walkable = false,
	drawtype = "plantlike",
	drop = "",
	tiles = {"farming_spice_1.png"},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}
		},
	},
	groups = {snappy=3, flammable=2, not_in_creative_inventory=1,plant=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("farming_plus:spice_2", {
	paramtype = "light",
	walkable = false,
	drawtype = "plantlike",
	drop = "",
	tiles = {"farming_spice_2.png"},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}
		},
	},
	groups = {snappy=3, flammable=2, not_in_creative_inventory=1,plant=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("farming_plus:spice", {
	paramtype = "light",
	walkable = false,
	drawtype = "plantlike",
	tiles = {"farming_spice_3.png"},
	drop = {
		max_items = 6,
		items = {
			{ items = {'farming_plus:spice_seed'} },
			{ items = {'farming_plus:spice_seed'}, rarity = 2},
			{ items = {'farming_plus:spice_seed'}, rarity = 6},
			{ items = {'farming_plus:spice_item'} },
			{ items = {'farming_plus:spice_item'}, rarity = 3 },
			{ items = {'farming_plus:spice_item'}, rarity = 8 }
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}
		},
	},
	groups = {snappy=3, flammable=2, not_in_creative_inventory=1,plant=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craftitem("farming_plus:spice_item", {
	description = "Spice(+0)",
	inventory_image = "farming_spice.png",
})

farming:add_plant("farming_plus:spice", {"farming_plus:spice_1", "farming_plus:spice_2"}, 50, 20)

minetest.register_alias("farming_plus:spice_item", "farming_plus:spice_item")
minetest.register_alias("farming_plus:spice_seed", "farming_plus:spice_seed")
minetest.register_alias("farming_plus:spice", "farming_plus:spice")
minetest.register_alias("farming_plus:spice_1", "farming_plus:spice_1")
minetest.register_alias("farming_plus:spice_2", "farming_plus:spice_2")

