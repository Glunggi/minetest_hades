-- Minetest 0.4 mod: stairs
-- See README.txt for licensing and other information.

stairs = {}

-- Node will be called stairs:stair_<subname>
function stairs.register_stair(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":stairs:stair_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node(":stairs:stair_" .. subname.."upside_down", {
		replace_name = "stairs:stair_" .. subname,
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'stairs:stair_' .. subname .. ' 6',
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},
		},
	})

	-- Flipped recipe for the silly minecrafters
	minetest.register_craft({
		output = 'stairs:stair_' .. subname .. ' 6',
		recipe = {
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},
		},
	})
end

-- Node will be called stairs:stair_out_<subname>
function stairs.register_stair_out(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":stairs:stair_out_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
			   {-0.5, -0.5, -0.5, 0.5, 0, 0},
			   {-0.5, -0.5, 0, 0, 0.5, 0.5},
			   {0, -0.5, 0, 0.5, 0, 0.5},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node(":stairs:stair_out_" .. subname.."upside_down", {
		replace_name = "stairs:stair_out_" .. subname,
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'stairs:stair_out_' .. subname .. ' 5',
		recipe = {
			{"", "", recipeitem},
			{"", "", recipeitem},
			{recipeitem, recipeitem, recipeitem},
		},
	})
end

-- Node will be called stairs:stair_in_<subname>
function stairs.register_stair_in(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":stairs:stair_in_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
			  {-0.5, -0.5, -0.5, 0, 0.5, 0},
			  {0, -0.5, -0.5, 0.5, 0, 0},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node(":stairs:stair_in_" .. subname.."upside_down", {
		replace_name = "stairs:stair_in_" .. subname,
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'stairs:stair_in_' .. subname .. ' 5',
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, "", ""},
			{recipeitem, recipeitem, recipeitem},
		},
	})
end

-- Node will be called stairs:stair_column_<subname>
function stairs.register_stair_column(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":stairs:stair_column_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
			   {-0.5, -0.5, 0, 0, 0.5, 0.5},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node(":stairs:stair_column_" .. subname.."upside_down", {
		replace_name = "stairs:stair_column_" .. subname,
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'stairs:stair_column_' .. subname .. ' 3',
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, "", ""},
			{recipeitem, "", ""},
		},
	})
end

-- Node will be called stairs:slab_<subname>
function stairs.register_slab(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":stairs:slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local n0 = minetest.get_node(p0)
			local n1 = minetest.get_node(p1)
			local param2 = 0

			local n0_is_upside_down = (n0.name == "stairs:slab_" .. subname and
					n0.param2 >= 20)

			if n0.name == "stairs:slab_" .. subname and not n0_is_upside_down and p0.y+1 == p1.y then
				slabpos = p0
				slabnode = n0
			elseif n1.name == "stairs:slab_" .. subname then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				fakestack:set_count(itemstack:get_count())

				pointed_thing.above = slabpos
				local success
				fakestack, success = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if success then
					itemstack:set_count(fakestack:get_count())
				-- Else put old node back
				else
					minetest.set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			-- Upside down slabs
			if p0.y-1 == p1.y then
				-- Turn into full block if pointing at a existing slab
				if n0_is_upside_down  then
					-- Remove the slab at the position of the slab
					minetest.remove_node(p0)
					-- Make a fake stack of a single item and try to place it
					local fakestack = ItemStack(recipeitem)
					fakestack:set_count(itemstack:get_count())

					pointed_thing.above = p0
					local success
					fakestack, success = minetest.item_place(fakestack, placer, pointed_thing)
					-- If the item was taken from the fake stack, decrement original
					if success then
						itemstack:set_count(fakestack:get_count())
					-- Else put old node back
					else
						minetest.set_node(p0, n0)
					end
					return itemstack
				end

				-- Place upside down slab
				param2 = 20
			end

			-- If pointing at the side of a upside down slab
			if n0_is_upside_down and p0.y+1 ~= p1.y then
				param2 = 20
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node(":stairs:slab_" .. subname.."upside_down", {
		replace_name = "stairs:slab_"..subname,
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'stairs:slab_' .. subname .. ' 6',
		recipe = {
			{recipeitem, recipeitem, recipeitem},
		},
	})
end

-- Replace old "upside_down" nodes with new param2 versions
minetest.register_abm({
	nodenames = {"group:slabs_replace"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		node.name = minetest.registered_nodes[node.name].replace_name
		node.param2 = node.param2 + 20
		if node.param2 == 21 then
			node.param2 = 23
		elseif node.param2 == 23 then
			node.param2 = 21
		end
		minetest.set_node(pos, node)
	end,
})

-- Nodes will be called stairs:{stair,slab}_<subname>
function stairs.register_stair_and_slab(subname, recipeitem, groups, images, desc_stair, desc_stair_out, desc_stair_in, desc_stair_column, desc_slab, sounds)
	stairs.register_stair(subname, recipeitem, groups, images, desc_stair, sounds)
	stairs.register_stair_out(subname, recipeitem, groups, images, desc_stair_out, sounds)
	stairs.register_stair_in(subname, recipeitem, groups, images, desc_stair_in, sounds)
	stairs.register_stair_column(subname, recipeitem, groups, images, desc_stair_column, sounds)
	stairs.register_slab(subname, recipeitem, groups, images, desc_slab, sounds)
end

stairs.register_stair_and_slab("wood", "default:wood",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_wood.png"},
		"Wooden Stair",
		"Wooden Stair Out",
		"Wooden Stair In",
		"Wooden Stair Column",
		"Wooden Slab",
		default.node_sound_wood_defaults())

stairs.register_stair_and_slab("palewood", "default:palewood",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_palewood.png"},
		"Pale Wooden Stair",
		"Pale Wooden Stair Out",
		"Pale Wooden Stair In",
		"Pale Wooden Stair Column",
		"Pale Wooden Slab",
		default.node_sound_wood_defaults())		
		
		-- Colored Woods
		
stairs.register_stair_and_slab("colwood_black", "default:colwood_black",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_black.png"},
		"Black Wooden Stair",
		"Black Wooden Stair Out",
		"Black Wooden Stair In",
		"Black Wooden Stair Column",
		"Black Wooden Slab",
		default.node_sound_wood_defaults())
		
stairs.register_stair_and_slab("colwood_blue", "default:colwood_blue",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_blue.png"},
		"Blue Wooden Stair",
		"Blue Wooden Stair Out",
		"Blue Wooden Stair In",
		"Blue Wooden Stair Column",
		"Blue Wooden Slab",
		default.node_sound_wood_defaults())

stairs.register_stair_and_slab("colwood_brown", "default:colwood_brown",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_brown.png"},
		"Brown Wooden Stair",
		"Brown Wooden Stair Out",
		"Brown Wooden Stair In",
		"Brown Wooden Stair Column",
		"Brown Wooden Slab",
		default.node_sound_wood_defaults())
		
stairs.register_stair_and_slab("colwood_cyan", "default:colwood_cyan",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_cyan.png"},
		"Cyan Wooden Stair",
		"Cyan Wooden Stair Out",
		"Cyan Wooden Stair In",
		"Cyan Wooden Stair Column",
		"Cyan Wooden Slab",
		default.node_sound_wood_defaults())
		
stairs.register_stair_and_slab("colwood_dark_green", "default:colwood_dark_green",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_dark_green.png"},
		"Darkgreen Wooden Stair",
		"Darkgreen Wooden Stair Out",
		"Darkgreen Wooden Stair In",
		"Darkgreen Wooden Stair Column",
		"Darkgreen Wooden Slab",
		default.node_sound_wood_defaults())
		
stairs.register_stair_and_slab("colwood_dark_grey", "default:colwood_dark_grey",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_dark_grey.png"},
		"Darkgrey Wooden Stair",
		"Darkgrey Wooden Stair Out",
		"Darkgrey Wooden Stair In",
		"Darkgrey Wooden Stair Column",
		"Darkgrey Wooden Slab",
		default.node_sound_wood_defaults())	
		
stairs.register_stair_and_slab("colwood_green", "default:colwood_green",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_green.png"},
		"Green Wooden Stair",
		"Green Wooden Stair Out",
		"Green Wooden Stair In",
		"Green Wooden Stair Column",
		"Green Wooden Slab",
		default.node_sound_wood_defaults())
		
stairs.register_stair_and_slab("colwood_grey", "default:colwood_grey",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_grey.png"},
		"Grey Wooden Stair",
		"Grey Wooden Stair Out",
		"Grey Wooden Stair In",
		"Grey Wooden Stair Column",
		"Grey Wooden Slab",
		default.node_sound_wood_defaults())
		
stairs.register_stair_and_slab("colwood_magenta", "default:colwood_magenta",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_magenta.png"},
		"Magenta Wooden Stair",
		"Magenta Wooden Stair Out",
		"Magenta Wooden Stair In",
		"Magenta Wooden Stair Column",
		"Magenta Wooden Slab",
		default.node_sound_wood_defaults())
		
stairs.register_stair_and_slab("colwood_orange", "default:colwood_orange",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_orange.png"},
		"Orange Wooden Stair",
		"Orange Wooden Stair Out",
		"Orange Wooden Stair In",
		"Orange Wooden Stair Column",
		"Orange Wooden Slab",
		default.node_sound_wood_defaults())
		
stairs.register_stair_and_slab("colwood_pink", "default:colwood_pink",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_pink.png"},
		"Pink Wooden Stair",
		"Pink Wooden Stair Out",
		"Pink Wooden Stair In",
		"Pink Wooden Stair Column",
		"Pink Wooden Slab",
		default.node_sound_wood_defaults())
		
stairs.register_stair_and_slab("colwood_red", "default:colwood_red",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_red.png"},
		"Red Wooden Stair",
		"Red Wooden Stair Out",
		"Red Wooden Stair In",
		"Red Wooden Stair Column",
		"Red Wooden Slab",
		default.node_sound_wood_defaults())
		
stairs.register_stair_and_slab("colwood_violet", "default:colwood_violet",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_violet.png"},
		"Violet Wooden Stair",
		"Violet Wooden Stair Out",
		"Violet Wooden Stair In",
		"Violet Wooden Stair Column",
		"Violet Wooden Slab",
		default.node_sound_wood_defaults())
	
stairs.register_stair_and_slab("colwood_white", "default:colwood_white",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_white.png"},
		"White Wooden Stair",
		"White Wooden Stair Out",
		"White Wooden Stair In",
		"White Wooden Stair Column",
		"White Wooden Slab",
		default.node_sound_wood_defaults())
		
stairs.register_stair_and_slab("colwood_yellow", "default:colwood_yellow",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_colwood_yellow.png"},
		"Yellow Wooden Stair",
		"Yellow Wooden Stair Out",
		"Yellow Wooden Stair In",
		"Yellow Wooden Stair Column",
		"Yellow Wooden Slab",
		default.node_sound_wood_defaults())
		
		--		
stairs.register_stair_and_slab("stone", "default:stone",
		{cracky=3},
		{"default_stone.png"},
		"Stone Stair",
		"Stone Stair Out",
		"Stone Stair In",
		"Stone Stair Column",
		"Stone Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("desert_stonebrick", "default:desert_stonebrick",
		{cracky=3},
		{"default_desert_stone_brick.png"},
		"Burned Stone Brick Stair",
		"Burned Stone Brick Stair Out",
		"Burned Stone Brick Stair In",
		"Burned Stone Brick Stair Column",
		"Burned Stone Brick Slab",
		default.node_sound_stone_defaults())	

stairs.register_stair_and_slab("desert_stone", "default:desert_stone",
		{cracky=3},
		{"default_desert_stone.png"},
		"Burned Stone Stair",
		"Burned Stone Stair Out",
		"Burned Stone Stair In",
		"Burned Stone Stair Column",
		"Burned Stone Slab",
		default.node_sound_stone_defaults())		
		
stairs.register_stair_and_slab("cobble", "default:cobble",
		{cracky=3},
		{"default_cobble.png"},
		"Cobble Stair",
		"Cobble Stair Out",
		"Cobble Stair In",
		"Cobble Stair Column",
		"Cobble Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("brick", "default:brick",
		{cracky=3},
		{"default_brick.png"},
		"Brick Stair",
		"Brick Stair Out",
		"Brick Stair In",
		"Brick Stair Column",
		"Brick Slab",
		default.node_sound_stone_defaults())
		
-- Colors... too mutch ColOrs...  EvErYwhere

stairs.register_stair_and_slab("brick_black", "default:brick_black",
		{cracky=3},
		{"default_brick_black.png"},
		"Black Brick Stair",
		"Black Brick Stair Out",
		"Black Brick Stair In",
		"Black Brick Stair Column",
		"Black Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("brick_blue", "default:brick_blue",
		{cracky=3},
		{"default_brick_blue.png"},
		"Blue Brick Stair",
		"Blue Brick Stair Out",
		"Blue Brick Stair In",
		"Blue Brick Stair Column",
		"Blue Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("brick_brown", "default:brick_brown",
		{cracky=3},
		{"default_brick_brown.png"},
		"Brown Brick Stair",
		"Brown Brick Stair Out",
		"Brown Brick Stair In",
		"Brown Brick Stair Column",
		"Brown Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("brick_cyan", "default:brick_cyan",
		{cracky=3},
		{"default_brick_cyan.png"},
		"Cyan Brick Stair",
		"Cyan Brick Stair Out",
		"Cyan Brick Stair In",
		"Cyan Brick Stair Column",
		"Cyan Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("brick_dark_green", "default:brick_dark_green",
		{cracky=3},
		{"default_brick_dark_green.png"},
		"Darkgreen Brick Stair",
		"Darkgreen Brick Stair Out",
		"Darkgreen Brick Stair In",
		"Darkgreen Brick Stair Column",
		"Darkgreen Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("brick_dark_grey", "default:brick_dark_grey",
		{cracky=3},
		{"default_brick_dark_grey.png"},
		"Darkgrey Brick Stair",
		"Darkgrey Brick Stair Out",
		"Darkgrey Brick Stair In",
		"Darkgrey Brick Stair Column",
		"Darkgrey Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("brick_green", "default:brick_green",
		{cracky=3},
		{"default_brick_green.png"},
		"Green Brick Stair",
		"Green Brick Stair Out",
		"Green Brick Stair In",
		"Green Brick Stair Column",
		"Green Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("brick_grey", "default:brick_grey",
		{cracky=3},
		{"default_brick_grey.png"},
		"Grey Brick Stair",
		"Grey Brick Stair Out",
		"Grey Brick Stair In",
		"Grey Brick Stair Column",
		"Grey Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("brick_magenta", "default:brick_magenta",
		{cracky=3},
		{"default_brick_magenta.png"},
		"Magenta Brick Stair",
		"Magenta Brick Stair Out",
		"Magenta Brick Stair In",
		"Magenta Brick Stair Column",
		"Magenta Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("brick_orange", "default:brick_orange",
		{cracky=3},
		{"default_brick_orange.png"},
		"Orange Brick Stair",
		"Orange Brick Stair Out",
		"Orange Brick Stair In",
		"Orange Brick Stair Column",
		"Orange Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("brick_pink", "default:brick_pink",
		{cracky=3},
		{"default_brick_pink.png"},
		"Pink Brick Stair",
		"Pink Brick Stair Out",
		"Pink Brick Stair In",
		"Pink Brick Stair Column",
		"Pink Brick Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("brick_red", "default:brick_red",
		{cracky=3},
		{"default_brick_red.png"},
		"Red Brick Stair",
		"Red Brick Stair Out",
		"Red Brick Stair In",
		"Red Brick Stair Column",
		"Red Brick Slab",
		default.node_sound_stone_defaults())		

stairs.register_stair_and_slab("brick_violet", "default:brick_violet",
		{cracky=3},
		{"default_brick_violet.png"},
		"Violet Brick Stair",
		"Violet Brick Stair Out",
		"Violet Brick Stair In",
		"Violet Brick Stair Column",
		"Violet Brick Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("brick_white", "default:brick_white",
		{cracky=3},
		{"default_brick_white.png"},
		"White Brick Stair",
		"White Brick Stair Out",
		"White Brick Stair In",
		"White Brick Stair Column",
		"White Brick Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("brick_yellow", "default:brick_yellow",
		{cracky=3},
		{"default_brick_yellow.png"},
		"Yellow Brick Stair",
		"Yellow Brick Stair Out",
		"Yellow Brick Stair In",
		"Yellow Brick Stair Column",
		"Yellow Brick Slab",
		default.node_sound_stone_defaults())		
		
	
stairs.register_stair_and_slab("sandstone", "default:sandstone",
		{crumbly=2,cracky=2},
		{"default_sandstone.png"},
		"Sandstone Stair",
		"Sandstone Stair Out",
		"Sandstone Stair In",
		"Sandstone Stair Column",
		"Sandstone Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("sandstonebrick", "default:sandstonebrick",
		{crumbly=2,cracky=2},
		{"default_sandstone_brick.png"},
		"Sandstone Brick Stair",
		"Sandstone Brick Stair Out",
		"Sandstone Brick Stair In",
		"Sandstone Brick Stair Column",
		"Sandstone Brick Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("junglewood", "default:junglewood",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_junglewood.png"},
		"Junglewood Stair",
		"Junglewood Stair Out",
		"Junglewood Stair In",
		"Junglewood Stair Column",
		"Junglewood Slab",
		default.node_sound_wood_defaults())

stairs.register_stair_and_slab("stonebrick", "default:stonebrick",
		{cracky=3},
		{"default_stone_brick.png"},
		"Stone Brick Stair",
		"Stone Brick Stair Out",
		"Stone Brick Stair In",
		"Stone Brick Stair Column",
		"Stone Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("chondrit_brick", "default:chondrit_brick",
		{cracky=2},
		{"default_chondrit_brick.png"},
		"Chondrit Brick Stair",
		"Chondrit Brick Stair Out",
		"Chondrit Brick Stair In",
		"Chondrit Brick Stair Column",
		"Chondrit Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("chondrit", "default:chondrit",
		{cracky=2},
		{"default_chondrit.png"},
		"Chondrit Stair",
		"Chondrit Stair Out",
		"Chondrit Stair In",
		"Chondrit Stair Column",
		"Chondrit Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("marble_brick", "default:marble_brick",
		{cracky=3},
		{"default_marble_brick.png"},
		"Marble Brick Stair",
		"Marble Brick Stair Out",
		"Marble Brick Stair In",
		"Marble Brick Stair Column",
		"Marble Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("marble", "default:marble",
		{cracky=3},
		{"default_marble.png"},
		"Marble Stair",
		"Marble Stair Out",
		"Marble Stair In",
		"Marble Stair Column",
		"Marble Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("tuff_brick", "default:tuff_brick",
		{cracky=3},
		{"default_tuff_brick.png"},
		"Tuff Brick Stair",
		"Tuff Brick Stair Out",
		"Tuff Brick Stair In",
		"Tuff Brick Stair Column",
		"Tuff Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("tuff", "default:tuff",
		{cracky=3},
		{"default_tuff.png"},
		"Tuff Stair",
		"Tuff Stair Out",
		"Tuff Stair In",
		"Tuff Stair Column",
		"Tuff Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("tuff_baked_brick", "default:tuff_baked_brick",
		{cracky=3},
		{"default_tuff_baked_brick.png"},
		"Burned Tuff Brick Stair",
		"Burned Tuff Brick Stair Out",
		"Burned Tuff Brick Stair In",
		"Burned Tuff Brick Stair Column",
		"Burned Tuff Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("tuff_baked", "default:tuff_baked",
		{cracky=3},
		{"default_tuff_baked.png"},
		"Burned Tuff Stair",
		"Burned Tuff Stair Out",
		"Burned Tuff Stair In",
		"Burned Tuff Stair Column",
		"Burned Tuff Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("essexit_brick", "default:essexit_brick",
		{cracky=1},
		{"default_essexit_brick.png"},
		"Essexit Brick Stair",
		"Essexit Brick Stair Out",
		"Essexit Brick Stair In",
		"Essexit Brick Stair Column",
		"Essexit Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("essexit", "default:essexit",
		{cracky=1},
		{"default_essexit.png"},
		"Essexit Stair",
		"Essexit Stair Out",
		"Essexit Stair In",
		"Essexit Stair Column",
		"Essexit Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("rusty_block", "columnia:rusty_block",
		{cracky=1},
		{"columnia_rusty_block.png"},
		"Rusty Stair",
		"Rusty Stair Out",
		"Rusty Stair In",
		"Rusty Stair Column",
		"Rusty Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("cactus_brick", "default:cactus_brick",
		{cracky=1},
		{"default_cactus_brick.png"},
		"Cactus Brick Stair",
		"Cactus Brick Stair Out",
		"Cactus Brick Stair In",
		"Cactus Brick Stair Column",
		"Cactus Brick Slab",
		default.node_sound_wood_defaults())	
		
stairs.register_stair_and_slab("obsidianbrick", "default:obsidianbrick",
		{cracky=1},
		{"default_obsidian_brick.png"},
		"Obsidian Brick Stair",
		"Obsidian Brick Stair Out",
		"Obsidian Brick Stair In",
		"Obsidian Brick Stair Column",
		"Obsidian Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("straw", "farming:straw",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"farming_straw.png"},
		"Straw Stair",
		"Straw Stair Out",
		"Straw Stair In",
		"Straw Stair Column",
		"Straw Slab",
		default.node_sound_leaves_defaults())
		
--wool

stairs.register_stair_and_slab("white", "wool:white",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_white.png"},
		"White Wool Stair",
		"White Wool Stair Out",
		"White Wool Stair In",
		"White Wool Stair Column",
		"White Wool Slab",
		default.node_sound_leaves_defaults())
		
stairs.register_stair_and_slab("grey", "wool:grey",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_grey.png"},
		"Grey Wool Stair",
		"Grey Wool Stair Out",
		"Grey Wool Stair In",
		"Grey Wool Stair Column",
		"Grey Wool Slab",
		default.node_sound_leaves_defaults())
		
stairs.register_stair_and_slab("black", "wool:black",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_black.png"},
		"Black Wool Stair",
		"Black Wool Stair Out",
		"Black Wool Stair In",
		"Black Wool Stair Column",
		"Black Wool Slab",
		default.node_sound_leaves_defaults())
		
stairs.register_stair_and_slab("red", "wool:red",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_red.png"},
		"Red Wool Stair",
		"Red Wool Stair Out",
		"Red Wool Stair In",
		"Red Wool Stair Column",
		"Red Wool Slab",
		default.node_sound_leaves_defaults())
		
stairs.register_stair_and_slab("yellow", "wool:yellow",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_yellow.png"},
		"Yellow Wool Stair",
		"Yellow Wool Stair Out",
		"Yellow Wool Stair In",
		"Yellow Wool Stair Column",
		"Yellow Wool Slab",
		default.node_sound_leaves_defaults())
		
stairs.register_stair_and_slab("green", "wool:green",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_green.png"},
		"Green Wool Stair",
		"Green Wool Stair Out",
		"Green Wool Stair In",
		"Green Wool Stair Column",
		"Green Wool Slab",
		default.node_sound_leaves_defaults())
		
stairs.register_stair_and_slab("cyan", "wool:cyan",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_cyan.png"},
		"Cyan Wool Stair",
		"Cyan Wool Stair Out",
		"Cyan Wool Stair In",
		"Cyan Wool Stair Column",
		"Cyan Wool Slab",
		default.node_sound_leaves_defaults())
		
stairs.register_stair_and_slab("blue", "wool:blue",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_blue.png"},
		"Blue Wool Stair",
		"Blue Wool Stair Out",
		"Blue Wool Stair In",
		"Blue Wool Stair Column",
		"Blue Wool Slab",
		default.node_sound_leaves_defaults())

stairs.register_stair_and_slab("magenta", "wool:magenta",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_magenta.png"},
		"Magenta Wool Stair",
		"Magenta Wool Stair Out",
		"Magenta Wool Stair In",
		"Magenta Wool Stair Column",
		"Magenta Wool Slab",
		default.node_sound_leaves_defaults())
		
stairs.register_stair_and_slab("orange", "wool:orange",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_orange.png"},
		"Orange Wool Stair",
		"Orange Wool Stair Out",
		"Orange Wool Stair In",
		"Orange Wool Stair Column",
		"Orange Wool Slab",
		default.node_sound_leaves_defaults())
		
stairs.register_stair_and_slab("violet", "wool:violet",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_violet.png"},
		"Violet Wool Stair",
		"Violet Wool Stair Out",
		"Violet Wool Stair In",
		"Violet Wool Stair Column",
		"Violet Wool Slab",
		default.node_sound_leaves_defaults())
		
stairs.register_stair_and_slab("brown", "wool:brown",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_brown.png"},
		"Brown Wool Stair",
		"Brown Wool Stair Out",
		"Brown Wool Stair In",
		"Brown Wool Stair Column",
		"Brown Wool Slab",
		default.node_sound_leaves_defaults())
		
stairs.register_stair_and_slab("pink", "wool:pink",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_pink.png"},
		"Pink Wool Stair",
		"Pink Wool Stair Out",
		"Pink Wool Stair In",
		"Pink Wool Stair Column",
		"Pink Wool Slab",
		default.node_sound_leaves_defaults())
		
stairs.register_stair_and_slab("dark_grey", "wool:dark_grey",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_dark_grey.png"},
		"Darkgrey Wool Stair",
		"Darkgrey Wool Stair Out",
		"Darkgrey Wool Stair In",
		"Darkgrey Wool Stair Column",
		"Darkgrey Wool Slab",
		default.node_sound_leaves_defaults())
		
stairs.register_stair_and_slab("dark_green", "wool:dark_green",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"wool_dark_green.png"},
		"Darkgreen Wool Stair",
		"Darkgreen Wool Stair Out",
		"Darkgreen Wool Stair In",
		"Darkgreen Wool Stair Column",
		"Darkgreen Wool Slab",
		default.node_sound_leaves_defaults())


-- Glowing crystal

-- Node will be called stairs:stair_<subname>

	minetest.register_node("stairs:stair_glowcrystal_block", {
		description = "Glowing Stair",
		drawtype = "nodebox",
		tile_images = {"default_block_glowcrystal.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
	    light_source = 14,
		is_ground_content = true,
		groups = {crumbly=2,cracky=2, glowing=1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node("stairs:stair_glowcrystal_block_upside_down", {
		replace_name = "stairs:stair_glowcrystal_block" ,
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'stairs:stair_glowcrystal_block 6',
		recipe = {
			{"glowcrystals:glowcrystal_block", "", ""},
			{"glowcrystals:glowcrystal_block", "glowcrystals:glowcrystal_block", ""},
			{"glowcrystals:glowcrystal_block", "glowcrystals:glowcrystal_block", "glowcrystals:glowcrystal_block"},
		},
	})

	-- Flipped recipe for the silly minecrafters
	minetest.register_craft({
		output = 'stairs:stair_glowcrystal_block 6',
		recipe = {
			{"", "", "glowcrystals:glowcrystal_block"},
			{"", "glowcrystals:glowcrystal_block", "glowcrystals:glowcrystal_block"},
			{"glowcrystals:glowcrystal_block", "glowcrystals:glowcrystal_block", "glowcrystals:glowcrystal_block"},
		},
	})


-- Node will be called stairs:stair_out_<subname>
	minetest.register_node("stairs:stair_out_glowcrystal_block", {
		description = "Glowing Stair Out",
		drawtype = "nodebox",
		tile_images = {"glowcrystals_block_glowcrystal.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
	    light_source = 14,
		is_ground_content = true,
		groups = {crumbly=2,cracky=2, glowing=1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
			   {-0.5, -0.5, -0.5, 0.5, 0, 0},
			   {-0.5, -0.5, 0, 0, 0.5, 0.5},
			   {0, -0.5, 0, 0.5, 0, 0.5},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node("stairs:stair_out_glowcrystal_block_upside_down", {
		replace_name = "stairs:stair_out_glowcrystal_block",
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'stairs:stair_out_glowcrystal_block 5',
		recipe = {
			{"", "", "glowcrystals:glowcrystal_block"},
			{"", "", "glowcrystals:glowcrystal_block"},
			{"glowcrystals:glowcrystal_block", "glowcrystals:glowcrystal_block", "glowcrystals:glowcrystal_block"},
		},
	})

-- Node will be called stairs:stair_in_<subname>
	minetest.register_node("stairs:stair_in_glowcrystal_block", {
		description = "Glowing Stair Inn",
		drawtype = "nodebox",
		tile_images = {"glowcrystals_block_glowcrystal.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
	    light_source = 14,
		is_ground_content = true,
		groups = {crumbly=2,cracky=2, glowing=1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
			  {-0.5, -0.5, -0.5, 0, 0.5, 0},
			  {0, -0.5, -0.5, 0.5, 0, 0},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node("stairs:stair_in_glowcrystal_block_upside_down", {
		replace_name = "stairs:stair_in_glowcrystal_block",
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'stairs:stair_in_glowcrystal_block 5',
		recipe = {
			{"glowcrystals:glowcrystal_block", "", ""},
			{"glowcrystals:glowcrystal_block", "", ""},
			{"glowcrystals:glowcrystal_block", "glowcrystals:glowcrystal_block", "glowcrystals:glowcrystal_block"},
		},
	})


-- Node will be called stairs:stair_column_<subname>
	minetest.register_node("stairs:stair_column_glowcrystal_block", {
		description = "Glowing Stair Column",
		drawtype = "nodebox",
		tile_images = {"glowcrystals_block_glowcrystal.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
	    light_source = 14,
		is_ground_content = true,
		groups = {crumbly=2,cracky=2, glowing=1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
			   {-0.5, -0.5, 0, 0, 0.5, 0.5},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node("stairs:stair_column_glowcrystal_block_upside_down", {
		replace_name = "stairs:stair_column_glowcrystal_block",
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'stairs:stair_column_glowcrystal_block 3',
		recipe = {
			{"glowcrystals:glowcrystal_block", "", ""},
			{"glowcrystals:glowcrystal_block", "", ""},
			{"glowcrystals:glowcrystal_block", "", ""},
		},
	})


-- Node will be called stairs:slab_<subname>

	minetest.register_node("stairs:slab_glowcrystal_block", {
		description = "Glowing Stair Slab",
		drawtype = "nodebox",
		tile_images = {"glowcrystals_block_glowcrystal.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
	    light_source = 14,
		is_ground_content = true,
		groups = {crumbly=2,cracky=2, glowing=1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local n0 = minetest.get_node(p0)
			local n1 = minetest.get_node(p1)
			local param2 = 0

			local n0_is_upside_down = (n0.name == "stairs:slab_glowcrystal_block" and
					n0.param2 >= 20)

			if n0.name == "stairs:slab_glowcrystal_block" and not n0_is_upside_down and p0.y+1 == p1.y then
				slabpos = p0
				slabnode = n0
			elseif n1.name == "stairs:slab_glowcrystal_block" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				fakestack:set_count(itemstack:get_count())

				pointed_thing.above = slabpos
				local success
				fakestack, success = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if success then
					itemstack:set_count(fakestack:get_count())
				-- Else put old node back
				else
					minetest.set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			-- Upside down slabs
			if p0.y-1 == p1.y then
				-- Turn into full block if pointing at a existing slab
				if n0_is_upside_down  then
					-- Remove the slab at the position of the slab
					minetest.remove_node(p0)
					-- Make a fake stack of a single item and try to place it
					local fakestack = ItemStack("glowcrystals:glowcrystal_block")
					fakestack:set_count(itemstack:get_count())

					pointed_thing.above = p0
					local success
					fakestack, success = minetest.item_place(fakestack, placer, pointed_thing)
					-- If the item was taken from the fake stack, decrement original
					if success then
						itemstack:set_count(fakestack:get_count())
					-- Else put old node back
					else
						minetest.set_node(p0, n0)
					end
					return itemstack
				end

				-- Place upside down slab
				param2 = 20
			end

			-- If pointing at the side of a upside down slab
			if n0_is_upside_down and p0.y+1 ~= p1.y then
				param2 = 20
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node("stairs:slab_glowcrystal_block_upside_down", {
		replace_name = "stairs:slab_glowcrystal_block",
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'stairs:slab_glowcrystal_block 6',
		recipe = {
			{"glowcrystals:glowcrystal_block", "glowcrystals:glowcrystal_block", "glowcrystals:glowcrystal_block"},
		},
	})

		