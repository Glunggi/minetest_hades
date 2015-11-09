-- main `S` code in init.lua
local S
S = farming.S


minetest.register_node("farming_plus:pale_sapling", {
	description = S("Pale Tree Sapling"),
	drawtype = "plantlike",
	tiles = {"default_palesapling.png"},
	inventory_image = "default_palesapling.png",
	wield_image = "default_palesapling.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {dig_immediate=3,flammable=2, sapling=1},
	sounds = default.node_sound_defaults(),
})


minetest.register_node("farming_plus:pale_leaves", {
    description = S("Pale Tree Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"default_paleleaves.png"},
	paramtype = "light",
	waving = 1,
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, not_in_creative_inventory=1, leaves=1},
 	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'farming_plus:pale_sapling'},
				rarity = 10,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'farming_plus:pale_leaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})


minetest.register_abm({
	nodenames = {"farming_plus:pale_sapling"},
	interval = 60,
	chance = 20,
	action = function(pos, node)
		farming:generate_paletree(pos, "default:paletree", "farming_plus:pale_leaves", {"default:dirt", "default:dirt_with_grass", "default:sand", "default:desert_sand"})
	end
})


