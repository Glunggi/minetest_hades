-- refruit for minetest
-- makes fruits regrowing on the trees.
-- images and code are WTFPL license (2015 by Glünggi)
refruit = {}

--replacement
minetest.register_node(":default:apple", {
	description = "Apple (+1)",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"default_apple.png"},
	inventory_image = "default_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.375, -0.25, 0.25, 0.375, 0.25}
	},
	groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="default:apple", param2=1})
		end
	end,
	
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "default:apple" then
			   if oldnode.param2 ~= 0 then
			      return
			   end
		       minetest.set_node(pos,{name = "refruit:bud_apple"})
			else 
		       return
			end
	end,
})

--register nodes

minetest.register_node("refruit:bud_apple", {
	description = "Apple Bud",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"refruit_bud_apple.png"},
	inventory_image = "refruit_bud_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.1875, -0.3125, -0.1875, 0.1875, 0.3125, 0.1875}
	},
	groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2,leafdecay=3,leafdecay_drop=1,fruit=1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {'default:stick'},
				rarity = 99,
			},
			{
				items = {'default:stick'},
				rarity = 99
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	
	-- undestructable bud's
	--[[
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "refruit:bud_apple" then
		       minetest.set_node(pos,{name = "refruit:bud_apple"})
			else 
		       return
			end
	end,
	--]]
})

minetest.register_node("refruit:flower_apple", {
	description = "Apple Flower",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"refruit_flower_apple.png"},
	inventory_image = "refruit_flower_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.1875, -0.3125, -0.1875, 0.1875, 0.3125, 0.1875}
	},
	groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	drop = { -- a little reward for flowerpuncher's xD
		max_items = 1,
		items = {
			{
				items = {'default:stick'},
				rarity = 99,
			},
			{
				items = {'default:stick'},
				rarity = 99
			}
		}
	}, 
	sounds = default.node_sound_leaves_defaults(),
	
	-- undestructable flower's
	--[[
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "refruit:flower_apple" then
		       minetest.set_node(pos,{name = "refruit:flower_apple"})
			else 
		       return
			end
	end,
	--]]
})

minetest.register_node(":farming_plus:olive", {
	description = "Olive (+1)",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"farming_olive.png"},
	inventory_image = "farming_olive.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.375, -0.25, 0.25, 0.375, 0.25}
	},
	groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="farming_plus:olive", param2=1})
		end
	end,
	
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "farming_plus:olive" then
			   if oldnode.param2 ~= 0 then
			      return
			   end
		       minetest.set_node(pos,{name = "refruit:bud_olive"})
			else 
		       return
			end
	end,
})

--register nodes

minetest.register_node("refruit:bud_olive", {
	description = "Olive Bud",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"refruit_bud_olive.png"},
	inventory_image = "refruit_bud_olive.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.1875, -0.3125, -0.1875, 0.1875, 0.3125, 0.1875}
	},
	groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2,leafdecay=3,leafdecay_drop=1,fruit=1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {'default:stick'},
				rarity = 99,
			},
			{
				items = {'default:stick'},
				rarity = 99
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	
	-- undestructable bud's
	--[[
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "refruit:bud_apple" then
		       minetest.set_node(pos,{name = "refruit:bud_apple"})
			else 
		       return
			end
	end,
	--]]
})

minetest.register_node("refruit:flower_olive", {
	description = "Olive Flower",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"refruit_flower_olive.png"},
	inventory_image = "refruit_flower_olive.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.1875, -0.3125, -0.1875, 0.1875, 0.3125, 0.1875}
	},
	groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	drop = { -- a little reward for flowerpuncher's xD
		max_items = 1,
		items = {
			{
				items = {'default:stick'},
				rarity = 99,
			},
			{
				items = {'default:stick'},
				rarity = 99
			}
		}
	}, 
	sounds = default.node_sound_leaves_defaults(),
	
	-- undestructable flower's
	--[[
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "refruit:flower_apple" then
		       minetest.set_node(pos,{name = "refruit:flower_apple"})
			else 
		       return
			end
	end,
	--]]
})






--abm's

minetest.register_abm({
	nodenames = {"refruit:bud_apple"},
	neighbors = {"group:leaves"},
	interval = 34,
	chance = 10,
	action = function(pos, node)
		minetest.set_node(pos, {name="refruit:flower_apple"})
	end,
})

minetest.register_abm({
	nodenames = {"refruit:flower_apple"},
	neighbors = {"group:leaves"},
	interval = 33,
	chance = 60,
	action = function(pos, node)
		minetest.set_node(pos, {name="default:apple"})
	end,
})

--

minetest.register_abm({
	nodenames = {"refruit:bud_olive"},
	neighbors = {"group:leaves"},
	interval = 35,
	chance = 10,
	action = function(pos, node)
		minetest.set_node(pos, {name="refruit:flower_olive"})
	end,
})

minetest.register_abm({
	nodenames = {"refruit:flower_olive"},
	neighbors = {"group:leaves"},
	interval = 34,
	chance = 60,
	action = function(pos, node)
		minetest.set_node(pos, {name="farming_plus:olive"})
	end,
})

--
