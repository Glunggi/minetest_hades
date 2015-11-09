-- Minetest 0.4 mod: default
-- See README.txt for licensing and other information.

-- Map Generation
dofile(minetest.get_modpath("simple_bushes").."/mapgen.lua")

-- nodes and crafting
minetest.register_node("simple_bushes:green", {
	description = "Green Bush",
	drawtype = "plantlike",
	visual_scale = 1.6,
	tiles = { "simple_bushes_green.png" },
	inventory_image = "simple_bushes_green.png",
	wield_image = "simple_bushes_green.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_green=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3},
	},
})

minetest.register_craft({
	output = 'simple_bushes:green',
	recipe = {
		{'group:leaves', '', ''},
		{'group:stick', '', ''},
		{'default:dirt', '', ''},
	}
})

minetest.register_node("simple_bushes:white", {
	description = "White Bush",
	drawtype = "plantlike",
	visual_scale = 1.6,
	tiles = { "simple_bushes_white.png" },
	inventory_image = "simple_bushes_white.png",
	wield_image = "simple_bushes_white.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_white=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3},
	},
})

minetest.register_craft({
	output = 'simple_bushes:white',
	recipe = {
		{'flowers:dandelion_white', '', ''},
		{'simple_bushes:green', '', ''},
		{'default:dirt', '', ''},
	}
})

minetest.register_node("simple_bushes:yellow", {
	description = "Yellow Bush",
	drawtype = "plantlike",
	visual_scale = 1.6,
	tiles = { "simple_bushes_yellow.png" },
	inventory_image = "simple_bushes_yellow.png",
	wield_image = "simple_bushes_yellow.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_yellow=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3},
	},
})

minetest.register_craft({
	output = 'simple_bushes:yellow',
	recipe = {
		{'flowers:dandelion_yellow', '', ''},
		{'simple_bushes:green', '', ''},
		{'default:dirt', '', ''},
	}
})

minetest.register_node("simple_bushes:blue", {
	description = "Blue Bush",
	drawtype = "plantlike",
	visual_scale = 1.6,
	tiles = { "simple_bushes_blue.png" },
	inventory_image = "simple_bushes_blue.png",
	wield_image = "simple_bushes_blue.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_blue=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3},
	},
})

minetest.register_craft({
	output = 'simple_bushes:blue',
	recipe = {
		{'flowers:geranium', '', ''},
		{'simple_bushes:green', '', ''},
		{'default:dirt', '', ''},
	}
})

minetest.register_node("simple_bushes:red", {
	description = "Red Bush",
	drawtype = "plantlike",
	visual_scale = 1.6,
	tiles = { "simple_bushes_red.png" },
	inventory_image = "simple_bushes_red.png",
	wield_image = "simple_bushes_red.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_red=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3},
	},
})

minetest.register_craft({
	output = 'simple_bushes:red',
	recipe = {
		{'flowers:rose', '', ''},
		{'simple_bushes:green', '', ''},
		{'default:dirt', '', ''},
	}
})

minetest.register_node("simple_bushes:orange", {
	description = "Orange Bush",
	drawtype = "plantlike",
	visual_scale = 1.6,
	tiles = { "simple_bushes_orange.png" },
	inventory_image = "simple_bushes_orange.png",
	wield_image = "simple_bushes_orange.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_orange=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3},
	},
})

minetest.register_craft({
	output = 'simple_bushes:orange',
	recipe = {
		{'flowers:tulip', '', ''},
		{'simple_bushes:green', '', ''},
		{'default:dirt', '', ''},
	}
})


minetest.register_node("simple_bushes:violet", {
	description = "Violet Bush",
	drawtype = "plantlike",
	visual_scale = 1.6,
	tiles = { "simple_bushes_violet.png" },
	inventory_image = "simple_bushes_violet.png",
	wield_image = "simple_bushes_violet.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_violet=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3},
	},
})

minetest.register_craft({
	output = 'simple_bushes:violet',
	recipe = {
		{'flowers:viola', '', ''},
		{'simple_bushes:green', '', ''},
		{'default:dirt', '', ''},
	}
})

minetest.register_node("simple_bushes:plant_pot",
		{description = "Plant Pot",
		paramtype = "light",
		tiles = {"simple_bushes_plant_pot_top.png", "simple_bushes_plant_pot_bottom.png", "simple_bushes_plant_pot_sides.png"},
		is_ground_content = false,
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.35,-0.5,-0.4,0.35,0.5,0.4},
				{-0.4,-0.5,-0.35, 0.4,0.5,0.35},
				{-0.25,-0.5,-0.45,0.25,0.5,0.45},
				{-0.45,-0.5,-0.25, 0.45,0.5,0.25},
				{-0.15,-0.5,-0.5,0.15,0.5,0.5},
				{-0.5,-0.5,-0.15, 0.5,0.5,0.15},
			},
		},
		groups = {snappy=3},
		sounds = default.node_sound_wood_defaults(),
	})

minetest.register_craft({ output = "simple_bushes:plant_pot", recipe = {
	{"default:clay_brick", "", "default:clay_brick"},
	{"default:clay_brick", "default:dirt", "default:clay_brick"},
	{"default:clay_brick", "default:clay_brick", "default:clay_brick"} } })
---------------

-- abm

minetest.register_abm({
	nodenames = {"group:flora"},
	neighbors = {"default:dirt_with_grass"},
	interval = 150,
	chance = 40,
	action = function(pos, node)
		pos.y = pos.y - 1
		local under = minetest.get_node(pos)
		pos.y = pos.y + 1
		if under.name ~= "default:dirt_with_grass" then
			return
		end


		local light = minetest.get_node_light(pos)
		if not light or light < 8 then
			return
		end


		local pos0 = {x=pos.x-4,y=pos.y-4,z=pos.z-4}
		local pos1 = {x=pos.x+4,y=pos.y+4,z=pos.z+4}
		-- if #minetest.find_nodes_in_area(pos0, pos1, "group:flora_block") > 0 then
			-- return
		-- end


		local flowers = minetest.find_nodes_in_area(pos0, pos1, "group:flora")
		if #flowers > 3 then
			return
		end


		local seedling = minetest.find_nodes_in_area(pos0, pos1, "default:dirt_with_grass")
		if #seedling > 0 then
			seedling = seedling[math.random(#seedling)]
			seedling.y = seedling.y + 1
			light = minetest.get_node_light(seedling)
			if not light or light < 8 then
				return
			end
			if minetest.get_node(seedling).name == "air" then
				minetest.set_node(seedling, {name=node.name})
			end
		end
	end,
})


