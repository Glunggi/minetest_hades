farming.registered_plants = {}


-- Boilerplate to support localized strings if intllib mod is installed.
if (minetest.get_modpath("intllib")) then
	dofile(minetest.get_modpath("intllib").."/intllib.lua")
	farming.S = intllib.Getter(minetest.get_current_modname())
else
	farming.S = function ( s ) return s end
end

function farming:add_plant(full_grown, names, interval, chance)
	minetest.register_abm({
		nodenames = names,
		interval = interval,
		chance = chance,
		action = function(pos, node)
			pos.y = pos.y-1
			if minetest.get_node(pos).name ~= "farming:soil_wet" then
				return
			end
			pos.y = pos.y+1
			if not minetest.get_node_light(pos) then
				return
			end
			if minetest.get_node_light(pos) < 8 then
				return
			end
			local step = nil
			for i,name in ipairs(names) do
				if name == node.name then
					step = i
					break
				end
			end
			if step == nil then
				return
			end
			local new_node = {name=names[step+1]}
			if new_node.name == nil then
				new_node.name = full_grown
			end
			minetest.set_node(pos, new_node)
		end
	})

	table.insert(farming.registered_plants, {
		full_grown = full_grown,
		names = names,
		interval = interval,
		chance = chance,
	})
end


function farming:generate_tree(pos, trunk, leaves, underground, replacements)
	pos.y = pos.y-1
	local nodename = minetest.get_node(pos).name
	local ret = true
	for _,name in ipairs(underground) do
		if nodename == name then
			ret = false
			break
		end
	end
	pos.y = pos.y+1
	if not minetest.get_node_light(pos) then
		return
	end
	if ret or minetest.get_node_light(pos) < 8 then
		return
	end


	local node = {name = ""}
	for dy=1,3 do
		pos.y = pos.y+dy
		if minetest.get_node(pos).name ~= "air" then
			return
		end
		pos.y = pos.y-dy
	end
	node.name = trunk
	for dy=0,3 do
		pos.y = pos.y+dy
		minetest.set_node(pos, node)
		pos.y = pos.y-dy
	end


	if not replacements then
		replacements = {}
	end


	node.name = leaves
	pos.y = pos.y+4
	for dx=-2,2 do
		for dz=-2,2 do
			for dy=-1,2 do
				pos.x = pos.x+dx
				pos.y = pos.y+dy
				pos.z = pos.z+dz


				if dx == 0 and dz == 0 and dy==3 then
					if minetest.get_node(pos).name == "air" and math.random(1, 6) <= 4 then
						minetest.set_node(pos, node)
						for name,rarity in pairs(replacements) do
							if math.random(1, rarity) == 1 then
								minetest.set_node(pos, {name=name})
							end
						end
					end
				elseif dx == 0 and dz == 0 and dy==4 then
					if minetest.get_node(pos).name == "air" and math.random(1, 6) <= 4 then
						minetest.set_node(pos, node)
						for name,rarity in pairs(replacements) do
							if math.random(1, rarity) == 1 then
								minetest.set_node(pos, {name=name})
							end
						end
					end
				elseif math.abs(dx) ~= 2 and math.abs(dz) ~= 2 then
					if minetest.get_node(pos).name == "air" then
						minetest.set_node(pos, node)
						for name,rarity in pairs(replacements) do
							if math.random(1, rarity) == 1 then
								minetest.set_node(pos, {name=name})
							end
						end
					end
				else
					if math.abs(dx) ~= 2 or math.abs(dz) ~= 2 then
						if minetest.get_node(pos).name == "air" and math.random(1, 6) <= 4 then
							minetest.set_node(pos, node)
							for name,rarity in pairs(replacements) do
								if math.random(1, rarity) == 1 then
								minetest.set_node(pos, {name=name})
								end
							end
						end
					end
				end


				pos.x = pos.x-dx
				pos.y = pos.y-dy
				pos.z = pos.z-dz
			end
		end
	end
end

-- pale Tree
function farming:generate_paletree(pos, trunk, leaves, underground)
	pos.y = pos.y-1
	local nodename = minetest.get_node(pos).name
	local ret = true
	for _,name in ipairs(underground) do
		if nodename == name then
			ret = false
			break
		end
	end
	pos.y = pos.y+1
	if not minetest.get_node_light(pos) then
		return
	end
	if ret or minetest.get_node_light(pos) < 8 then
		return
	end


	node = {name = ""}
	for dy=1,6 do
		pos.y = pos.y+dy
		if minetest.get_node(pos).name ~= "air" then
			return
		end
		pos.y = pos.y-dy
	end
	node.name = trunk
	for dy=0,6 do
		pos.y = pos.y+dy
		minetest.set_node(pos, node)
		pos.y = pos.y-dy
	end


	node.name = leaves
	pos.y = pos.y+3
	for dx=-1,1 do
		for dz=-1,1 do
			for dy=-1,5 do
				pos.x = pos.x+dx
				pos.y = pos.y+dy
				pos.z = pos.z+dz


				if dx == 0 and dz == 0 and dy==5 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 4 then
						minetest.set_node(pos, node)
					end
			    elseif dx == 0 and dz == 0 and dy==6 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 4 then
						minetest.set_node(pos, node)
					end
				elseif math.abs(dx) ~= 1 or math.abs(dz) ~= 1 and dy>=5 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 3 then
						minetest.set_node(pos, node)
					end	
				elseif math.abs(dx) ~= 1 or math.abs(dz) ~= 1 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 4 then
						minetest.set_node(pos, node)
					end	
				elseif math.abs(dx) ~= 2 or math.abs(dz) ~= 2 and dy==4 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 2 then
						minetest.set_node(pos, node)
					end	
				elseif math.abs(dx) ~= 2 or math.abs(dz) ~= 2 and dy==3 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 4 then
						minetest.set_node(pos, node)
					end	
	
				end


				pos.x = pos.x-dx
				pos.y = pos.y-dy
				pos.z = pos.z-dz
			end
		end
	end
end

-- birch Tree
function farming:generate_birchtree(pos, trunk, leaves, underground)
	pos.y = pos.y-1
	local nodename = minetest.get_node(pos).name
	local ret = true
	for _,name in ipairs(underground) do
		if nodename == name then
			ret = false
			break
		end
	end
	pos.y = pos.y+1
	if not minetest.get_node_light(pos) then
		return
	end
	if ret or minetest.get_node_light(pos) < 8 then
		return
	end


	node = {name = ""}
	for dy=1,6 do
		pos.y = pos.y+dy
		if minetest.get_node(pos).name ~= "air" then
			return
		end
		pos.y = pos.y-dy
	end
	node.name = trunk
	for dy=0,6 do
		pos.y = pos.y+dy
		minetest.set_node(pos, node)
		pos.y = pos.y-dy
	end


	node.name = leaves
	pos.y = pos.y+4
	for dx=-2,2 do
		for dz=-2,2 do
			for dy=-1,5 do
				pos.x = pos.x+dx
				pos.y = pos.y+dy
				pos.z = pos.z+dz


				if dx == 0 and dz == 0 and dy==5 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 2 then
						minetest.set_node(pos, node)
					end
			    elseif dx == 0 and dz == 0 and dy==6 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 2 then
						minetest.set_node(pos, node)
					end
				elseif math.abs(dx) ~= 1 or math.abs(dz) ~= 1 and dy>=5 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 3 then
						minetest.set_node(pos, node)
					end	
					
				elseif math.abs(dx) ~= 1 or math.abs(dz) ~= 1 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 2 then
						minetest.set_node(pos, node)
					end	
				
				elseif math.abs(dx) ~= 2 or math.abs(dz) ~= 2 and dy==4 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 2 then
						minetest.set_node(pos, node)
					end	
				elseif math.abs(dx) ~= 2 or math.abs(dz) ~= 2 and dy==3 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 3 then
						minetest.set_node(pos, node)
					end	
	
				end


				pos.x = pos.x-dx
				pos.y = pos.y-dy
				pos.z = pos.z-dz
			end
		end
	end
end


-- cultivated Jungle Tree
function farming:generate_cjtree(pos, trunk, leaves, underground)
	pos.y = pos.y-1
	local nodename = minetest.get_node(pos).name
	local ret = true
	for _,name in ipairs(underground) do
		if nodename == name then
			ret = false
			break
		end
	end
	pos.y = pos.y+1
	if not minetest.get_node_light(pos) then
		return
	end
	if ret or minetest.get_node_light(pos) < 8 then
		return
	end


	node = {name = ""}
	for dy=1,12 do
		pos.y = pos.y+dy
		if minetest.get_node(pos).name ~= "air" then
			return
		end
		pos.y = pos.y-dy
	end
	node.name = trunk
	for dy=0,12 do
		pos.y = pos.y+dy
		minetest.set_node(pos, node)
		pos.y = pos.y-dy
	end


	node.name = leaves
	pos.y = pos.y+10
	for dx=-3,3 do
		for dz=-3,3 do
			for dy=0,3 do
				pos.x = pos.x+dx
				pos.y = pos.y+dy
				pos.z = pos.z+dz


				if dx == 0 and dz == 0 and dy==1 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 4 then
						minetest.set_node(pos, node)
					end
			    elseif dx == 0 and dz == 0 and dy==2 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 4 then
						minetest.set_node(pos, node)
					end
				elseif math.abs(dx) ~= 1 or math.abs(dz) ~= 1 and dy>=3 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 3 then
						minetest.set_node(pos, node)
					end	
				elseif math.abs(dx) ~= 1 or math.abs(dz) ~= 1 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 4 then
						minetest.set_node(pos, node)
					end	
				elseif math.abs(dx) ~= 2 or math.abs(dz) ~= 2 and dy==2 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 2 then
						minetest.set_node(pos, node)
					end	
				elseif math.abs(dx) ~= 3 or math.abs(dz) ~= 3 and dy==3 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 4 then
						minetest.set_node(pos, node)
					end	
	
				end


				pos.x = pos.x-dx
				pos.y = pos.y-dy
				pos.z = pos.z-dz
			end
		end
	end
end



-- Bananatree
function farming:generate_tree_b(pos, trunk, leaves, underground, replacements)
	pos.y = pos.y-1
	local nodename = minetest.get_node(pos).name
	local ret = true
	for _,name in ipairs(underground) do
		if nodename == name then
			ret = false
			break
		end
	end
	pos.y = pos.y+1
	if not minetest.get_node_light(pos) then
		return
	end
	if ret or minetest.get_node_light(pos) < 8 then
		return
	end


	node = {name = ""}
	for dy=1,3 do
		pos.y = pos.y+dy
		if minetest.get_node(pos).name ~= "air" then
			return
		end
		pos.y = pos.y-dy
	end
	node.name = trunk
	for dy=0,2 do
		pos.y = pos.y+dy
		minetest.set_node(pos, node)
		pos.y = pos.y-dy
	end


	if not replacements then
		replacements = {}
	end


	node.name = leaves
	pos.y = pos.y+1
	for dx=-1,1 do
		for dz=-1,1 do
			for dy=0,2 do
				pos.x = pos.x+dx
				pos.y = pos.y+dy
				pos.z = pos.z+dz


				if dx == 0 and dz == 0 and dy==3 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 2 then
						minetest.set_node(pos, node)
						for name,rarity in pairs(replacements) do
							if math.random(1, rarity) == 1 then
								minetest.set_node(pos, {name=name})
							end
						end
					end
				elseif dx == 0 and dz == 0 and dy==4 then
					if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 2 then
						minetest.set_node(pos, node)
						for name,rarity in pairs(replacements) do
							if math.random(1, rarity) == 1 then
								minetest.set_node(pos, {name=name})
							end
						end
					end
				elseif math.abs(dx) ~= 2 and math.abs(dz) ~= 2 then
					if minetest.get_node(pos).name == "air" then
						minetest.set_node(pos, node)
						for name,rarity in pairs(replacements) do
							if math.random(1, rarity) == 1 then
								minetest.set_node(pos, {name=name})
							end
						end
					end
				else
					if math.abs(dx) ~= 2 or math.abs(dz) ~= 2 then
						if minetest.get_node(pos).name == "air" and math.random(1, 5) <= 2 then
							minetest.set_node(pos, node)
							for name,rarity in pairs(replacements) do
								if math.random(1, rarity) == 1 then
								minetest.set_node(pos, {name=name})
								end
							end
						end
					end
				end


				pos.x = pos.x-dx
				pos.y = pos.y-dy
				pos.z = pos.z-dz
			end
		end
	end
end

--[[
farming.seeds = {
	--["farming:pumpkin_seed"]=60,
	--["farming_plus:strawberry_seed"]=30,
    --["farming_plus:ananas_seed"]=30,
    --["farming_plus:spice_seed"]=30,
	--["farming_plus:rhubarb_seed"]=30,
	--["farming_plus:potatoe_seed"]=30,
	--["farming_plus:tomato_seed"]=30,
	-- ["farming_plus:orange_seed"]=30,
	--["farming_plus:carrot_seed"]=30,
}


-- ========= GENERATE PLANTS IN THE MAP =========
minetest.register_on_generated(function(minp, maxp, seed)
        if maxp.y >= 2 and minp.y <= 0 then
                -- Generate plants (code from flowers)
                local perlin1 = minetest.get_perlin(953, 3, 0.6, 100)
                -- Assume X and Z lengths are equal
                local divlen = 16
                local divs = (maxp.x-minp.x)/divlen+1;
                for divx=0,divs-1 do
                for divz=0,divs-1 do
                        local x0 = minp.x + math.floor((divx+0)*divlen)
                        local z0 = minp.z + math.floor((divz+0)*divlen)
                        local x1 = minp.x + math.floor((divx+1)*divlen)
                        local z1 = minp.z + math.floor((divz+1)*divlen)
                        -- Determine flowers amount from perlin noise
                        local grass_amount = math.floor(perlin1:get2d({x=x0, y=z0}) ^ 2 * 2)
                        -- Find random positions for flowers based on this random
                        local pr = PseudoRandom(seed+6)
                        for i=0,grass_amount do
                                local x = pr:next(x0, x1)
                                local z = pr:next(z0, z1)
                                -- Find ground level (0...15)
                                local ground_y = nil
                                for y=30,0,-1 do
                                        if minetest.get_node({x=x,y=y,z=z}).name ~= "air" then
                                                ground_y = y
                                                break
                                        end
                                end
                                
                                if ground_y then
                                        local p = {x=x,y=ground_y+1,z=z}
                                        local nn = minetest.get_node(p).name
                                        -- Check if the node can be replaced
                                        if minetest.registered_nodes[nn] and
                                                minetest.registered_nodes[nn].buildable_to then
                                                nn = minetest.get_node({x=x,y=ground_y,z=z}).name
                                                if nn == "default:dirt_with_grass" then
                                                        --local plant_choice = pr:next(1, #farming.registered_plants)
                                                        local plant_choice = math.floor(perlin1:get2d({x=x,y=z})*(#farming.registered_plants))
                                                        local plant = farming.registered_plants[plant_choice]
                                                        if plant then
                                                                minetest.set_node(p, {name=plant.full_grown})
                                                        end
                                                end
                                        end
                                end
                                
                        end
                end
                end
        end
end)


function farming:place_seed(itemstack, placer, pointed_thing, plantname)
	local pt = pointed_thing
	-- check if pointing at a node
	if not pt then
		return
	end
	if pt.type ~= "node" then
		return
	end


	local under = minetest.get_node(pt.under)
	local above = minetest.get_node(pt.above)


	-- return if any of the nodes is not registered
	if not minetest.registered_nodes[under.name] then
		return
	end
	if not minetest.registered_nodes[above.name] then
		return
	end


	-- check if pointing at the top of the node
	if pt.above.y ~= pt.under.y+1 then
		return
	end


	-- check if you can replace the node above the pointed node
	if not minetest.registered_nodes[above.name].buildable_to then
		return
	end


	-- check if pointing at soil
	if minetest.get_item_group(under.name, "soil") <= 1 then
		return
	end


	-- add the node and remove 1 item from the itemstack
	minetest.add_node(pt.above, {name=plantname})
	if not minetest.setting_getbool("creative_mode") then
		itemstack:take_item()
	end
	return itemstack
end
--]]




-- ========= Olivetree ========= 
dofile(minetest.get_modpath("farming_plus").."/olive.lua")

-- ========= Paletree ========= 
dofile(minetest.get_modpath("farming_plus").."/paletree.lua")

-- ========= Birch ========= 
dofile(minetest.get_modpath("farming_plus").."/birch.lua")

-- ========= cultivated Jungletree ========= 
dofile(minetest.get_modpath("farming_plus").."/cjtree.lua")

