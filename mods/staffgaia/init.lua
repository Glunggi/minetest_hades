-- WTPFL Licenses
staffgaia = {}

local conv = function(pos)
	local nodename = minetest.env:get_node(pos).name
	if nodename == "default:sand" or nodename == "default:desert_sand" or nodename == "default:desert_stone" or nodename == "default:stone" or nodename == "default:cobble" or nodename == "default:mossystone" or nodename == "default:tuff" or nodename == "default:tuff_baked" or nodename == "default:mossytuff" or nodename == "default:mossycobble" then
		-- minetest.env:remove_node(pos)
        minetest.set_node(pos, {name="default:dirt"})
		nodeupdate(pos)
	end
end

cotrig = function(pos)
    for dx=-4,4 do
	for dz=-4,4 do
		for dy=1,-1,-1 do
		    pos.x = pos.x+dx
			pos.y = pos.y+dy
			pos.z = pos.z+dz
					
			if math.abs(dx)<4 and math.abs(dy)<1 and math.abs(dz)<4 then
			   conv(pos)
			end
			pos.x = pos.x-dx
			pos.y = pos.y-dy
			pos.z = pos.z-dz
		end
	end
   end
end

function staffgaia.staff_on_use(itemstack, user, pointed_thing, uses)
	local pt = pointed_thing
	-- check if pointing at a node
	if not pt then
		return
	end
	if pt.type ~= "node" then
		return
	end


	local under = minetest.get_node(pt.under)
	local p = {x=pt.under.x, y=pt.under.y+1, z=pt.under.z}
	local above = minetest.get_node(p)


	-- return if any of the nodes is not registered
	if not minetest.registered_nodes[under.name] then
		return
	end
	if not minetest.registered_nodes[above.name] then
		return
	end


	-- check if the node above the pointed thing is air
	if above.name ~= "air" then
		return
	end


	cotrig(pt.under)
	itemstack:add_wear(65535/(uses-1))
	return itemstack
end

minetest.register_tool("staffgaia:staff", {
	description = "Staff of Gaia",
	inventory_image = "staff_of_gaia.png",


	on_use = function(itemstack, user, pointed_thing)
		return staffgaia.staff_on_use(itemstack, user, pointed_thing, 99)
	end,
})

minetest.register_craftitem("staffgaia:head", {
	description = "Head of the Staff of Gaia",
	inventory_image = "staffgaia_head.png",
})

minetest.register_craftitem("staffgaia:shaft", {
	description = "Shaft of the Staff of Gaia",
	inventory_image = "staffgaia_shaft.png",
})

minetest.register_craft({
	output = "staffgaia:head",
	recipe = {
		{"default:sapphire", "default:mese_crystal", "default:sapphire"},
		{"default:mese_crystal", "default:diamond", "default:mese_crystal"},
        {"default:emerald", "default:mese_crystal", "default:emerald"},
	}
})

minetest.register_craft({
	output = "staffgaia:shaft",
	recipe = {
		{"", "default:ruby", ""},
		{"", "default:ruby", ""},
		{"", "default:tree", ""},
	}
})
minetest.register_craft({
	output = "staffgaia:staff",
	recipe = {
		{"", "staffgaia:head", ""},
		{"", "staffgaia:shaft", ""},
	}
})

