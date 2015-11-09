-- main `S` code in init.lua
local S
S = farming.S

minetest.register_node("farming_plus:cj_leaves", {
    description = S("Cultivated Jungletree Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"default_jungleleaves_yellow.png"},
	paramtype = "light",
	waving = 1,
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, not_in_creative_inventory=1, leaves=1},
 	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'farming_plus:cjsapling'},
				rarity = 25,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'farming_plus:cj_leaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("farming_plus:cjsapling", {
	description = S("Cultivated Jungletree Sapling"),
	drawtype = "plantlike",
	tiles = {"default_cjsapling.png"},
	inventory_image = "default_cjsapling.png",
	wield_image = "default_cjsapling.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {dig_immediate=3,flammable=2, sapling=1},
	sounds = default.node_sound_defaults(),
})


minetest.register_abm({
	nodenames = {"farming_plus:cjsapling"},
	interval = 60,
	chance = 20,
	action = function(pos, node)
		farming:generate_cjtree(pos, "default:jungletree", "farming_plus:cj_leaves", {"default:dirt", "default:dirt_with_grass"})
	end
})


