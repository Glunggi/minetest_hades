doors = {}

-- Registers a door - REDEFINITION ONLY | DOORS MOD MUST HAVE BEEN LOADED BEFORE
--  name: The name of the door
--  def: a table with the folowing fields:
--    description
--    inventory_image
--    groups
--    tiles_bottom: the tiles of the bottom part of the door {front, side}
--    tiles_top: the tiles of the bottom part of the door {front, side}
--    If the following fields are not defined the default values are used
--    node_box_bottom
--    node_box_top
--    selection_box_bottom
--    selection_box_top
--    only_placer_can_open: if true only the player who placed the door can
--                          open it

function doors.register_door(name, def)
	def.groups.not_in_creative_inventory = 1
	
	local box = {{-0.5, -0.5, -0.5,   0.5, 0.5, -0.5+1.5/16}}
	
	if not def.node_box_bottom then
		def.node_box_bottom = box
	end
	if not def.node_box_top then
		def.node_box_top = box
	end
	if not def.selection_box_bottom then
		def.selection_box_bottom= box
	end
	if not def.selection_box_top then
		def.selection_box_top = box
	end
	
	local tt = def.tiles_top
	local tb = def.tiles_bottom
	
	local function after_dig_node(pos, name)
		if minetest.get_node(pos).name == name then
			minetest.remove_node(pos)
		end
	end

	local function on_rightclick(pos, dir, check_name, replace, replace_dir, params)
		pos.y = pos.y+dir
		if not minetest.get_node(pos).name == check_name then
			return
		end
		local p2 = minetest.get_node(pos).param2
		p2 = params[p2+1]
		
		local meta = minetest.get_meta(pos):to_table()
		minetest.set_node(pos, {name=replace_dir, param2=p2})
		minetest.get_meta(pos):from_table(meta)
		
		pos.y = pos.y-dir
		meta = minetest.get_meta(pos):to_table()
		minetest.set_node(pos, {name=replace, param2=p2})
		minetest.get_meta(pos):from_table(meta)
	end

	local function on_mesecons_signal_open (pos, node)
		on_rightclick(pos, 1, name.."_t_1", name.."_b_2", name.."_t_2", {1,2,3,0})
	end

	local function on_mesecons_signal_close (pos, node)
		on_rightclick(pos, 1, name.."_t_2", name.."_b_1", name.."_t_1", {3,0,1,2})
	end
	
	local function check_player_priv(pos, player)
		if not def.only_placer_can_open then
			return true
		end
		local meta = minetest.get_meta(pos)
		local pn = player:get_player_name()
		return meta:get_string("doors_owner") == pn
	end
	
	minetest.register_node(":"..name.."_b_1", {
		tiles = {tb[2], tb[2], tb[2], tb[2], tb[1], tb[1].."^[transformfx"},
		paramtype = "light",
		paramtype2 = "facedir",
		drop = name,
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = def.node_box_bottom
		},
		selection_box = {
			type = "fixed",
			fixed = def.selection_box_bottom
		},
		groups = def.groups,
		
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			pos.y = pos.y+1
			after_dig_node(pos, name.."_t_1")
		end,
		
		on_rightclick = function(pos, node, puncher)
			if check_player_priv(pos, puncher) then
				on_rightclick(pos, 1, name.."_t_1", name.."_b_2", name.."_t_2", {1,2,3,0})
			end
		end,

		mesecons = {effector = {
			action_on  = on_mesecons_signal_open
		}},
		
		can_dig = check_player_priv,
		sounds = def.sounds,
	})
	
	minetest.register_node(":"..name.."_b_2", {
		tiles = {tb[2], tb[2], tb[2], tb[2], tb[1].."^[transformfx", tb[1]},
		paramtype = "light",
		paramtype2 = "facedir",
		drop = name,
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = def.node_box_bottom
		},
		selection_box = {
			type = "fixed",
			fixed = def.selection_box_bottom
		},
		groups = def.groups,
		
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			pos.y = pos.y+1
			after_dig_node(pos, name.."_t_2")
		end,
		
		on_rightclick = function(pos, node, puncher)
			if check_player_priv(pos, puncher) then
				on_rightclick(pos, 1, name.."_t_2", name.."_b_1", name.."_t_1", {3,0,1,2})
			end
		end,

		mesecons = {effector = {
			action_off = on_mesecons_signal_close
		}},
		
		can_dig = check_player_priv,
		sounds = def.sounds,
	})
end

doors.register_door("doors:door_wood", {
	description = "Wooden Door",
	inventory_image = "doors_wood.png",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=2,door=1},
	tiles_bottom = {"doors_wood_b.png", "doors_brown.png"},
	tiles_top = {"doors_wood_a.png", "doors_brown.png"},
	sounds = default.node_sound_wood_defaults(),
})

doors.register_door("doors:door_wood_pale", {
	description = "Pale Wooden Door",
	inventory_image = "doors_wood_pale.png",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=2,door=1},
	tiles_bottom = {"doors_wood_b_pale.png", "doors_brown.png"},
	tiles_top = {"doors_wood_a_pale.png", "doors_brown.png"},
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_wood_jungle", {
	description = "Jungle Wooden Door",
	inventory_image = "doors_wood_jungle.png",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=2,door=1},
	tiles_bottom = {"doors_wood_b_jungle.png", "doors_brown.png"},
	tiles_top = {"doors_wood_a_jungle.png", "doors_brown.png"},
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel", {
	description = "Steel Door",
	inventory_image = "doors_steel.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1},
	tiles_bottom = {"doors_steel_b.png", "doors_grey.png"},
	tiles_top = {"doors_steel_a.png", "doors_grey.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_stone_defaults(),
})

doors.register_door("doors:door_steel_black", {
	description = "Black Steel Door",
	inventory_image = "doors_steel_black.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_black.png", "doors_black.png"},
	tiles_top = {"doors_steel_a_black.png", "doors_black.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel_blue", {
	description = "Blue Steel Door",
	inventory_image = "doors_steel_blue.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_blue.png", "doors_blue.png"},
	tiles_top = {"doors_steel_a_blue.png", "doors_blue.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel_brown", {
	description = "Brown Steel Door",
	inventory_image = "doors_steel_brown.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_brown.png", "doors_brown.png"},
	tiles_top = {"doors_steel_a_brown.png", "doors_brown.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel_cyan", {
	description = "Cyan Steel Door",
	inventory_image = "doors_steel_cyan.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_cyan.png", "doors_cyan.png"},
	tiles_top = {"doors_steel_a_cyan.png", "doors_cyan.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel_darkgreen", {
	description = "Darkgreen Steel Door",
	inventory_image = "doors_steel_darkgreen.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_darkgreen.png", "doors_darkgreen.png"},
	tiles_top = {"doors_steel_a_darkgreen.png", "doors_darkgreen.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel_darkgrey", {
	description = "Darkgrey Steel Door",
	inventory_image = "doors_steel_darkgrey.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_darkgrey.png", "doors_darkgrey.png"},
	tiles_top = {"doors_steel_a_darkgrey.png", "doors_darkgrey.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel_green", {
	description = "Green Steel Door",
	inventory_image = "doors_steel_green.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_green.png", "doors_green.png"},
	tiles_top = {"doors_steel_a_green.png", "doors_green.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel_magenta", {
	description = "Magenta Steel Door",
	inventory_image = "doors_steel_magenta.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_magenta.png", "doors_magenta.png"},
	tiles_top = {"doors_steel_a_magenta.png", "doors_magenta.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel_orange", {
	description = "Orange Steel Door",
	inventory_image = "doors_steel_orange.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_orange.png", "doors_orange.png"},
	tiles_top = {"doors_steel_a_orange.png", "doors_orange.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel_pink", {
	description = "Pink Steel Door",
	inventory_image = "doors_steel_pink.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_pink.png", "doors_pink.png"},
	tiles_top = {"doors_steel_a_pink.png", "doors_pink.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel_red", {
	description = "Red Steel Door",
	inventory_image = "doors_steel_red.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_red.png", "doors_red.png"},
	tiles_top = {"doors_steel_a_red.png", "doors_red.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel_violet", {
	description = "Violet Steel Door",
	inventory_image = "doors_steel_violet.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_violet.png", "doors_violet.png"},
	tiles_top = {"doors_steel_a_violet.png", "doors_violet.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel_white", {
	description = "White Steel Door",
	inventory_image = "doors_steel_white.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_white.png", "doors_white.png"},
	tiles_top = {"doors_steel_a_white.png", "doors_white.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_steel_yellow", {
	description = "Yellow Steel Door",
	inventory_image = "doors_steel_yellow.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1,sdoor=1},
	tiles_bottom = {"doors_steel_b_yellow.png", "doors_yellow.png"},
	tiles_top = {"doors_steel_a_yellow.png", "doors_yellow.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_stone", {
	description = "Secret Stone Door",
	inventory_image = "doors_stone.png",
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2,door=1},
	tiles_bottom = {"doors_stone_b.png", "doors_darkgrey.png"},
	tiles_top = {"doors_stone_a.png", "doors_darkgrey.png"},
	only_placer_can_open = true,
	sounds = default.node_sound_stone_defaults(),
	sunlight = false,
})

doors.register_door("doors:door_glass", {
	description = "Glass Door",
	inventory_image = "doors_glass.png",
	groups = {snappy=1,cracky=1,oddly_breakable_by_hand=3,door=1},
	tiles_bottom = {"doors_glass_b.png", "doors_glass_side.png"},
	tiles_top = {"doors_glass_a.png", "doors_glass_side.png"},
	sounds = default.node_sound_glass_defaults(),
	sunlight = true,
})

doors.register_door("doors:door_obsidian_glass", {
	description = "Obsidian Glass Door",
	inventory_image = "doors_obsidian_glass.png",
	groups = {snappy=1,cracky=1,oddly_breakable_by_hand=3,door=1},
	tiles_bottom = {"doors_obsidian_glass_b.png", "doors_obsidian_glass_side.png"},
	tiles_top = {"doors_obsidian_glass_a.png", "doors_obsidian_glass_side.png"},
	sounds = default.node_sound_glass_defaults(),
	sunlight = true,
})
