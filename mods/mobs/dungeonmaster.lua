
-- Dungeon Master (This one spits out fireballs at you)

mobs:register_mob("mobs:dungeon_master", {
	type = "monster",
	hp_min = 25,
	hp_max = 40,
	collisionbox = {-0.7, -0.01, -0.7, 0.7, 2.6, 0.7},
	visual = "mesh",
	mesh = "mobs_dungeon_master.x",
	--textures = {"mobs_dungeon_master.png"},
	available_textures = {
		total = 4,
		texture_1 = {"mobs_dungeon_master.png"},
		texture_2 = {"mobs_dungeon_master2.png"},
		texture_3 = {"mobs_dungeon_master3.png"},
		texture_4 = {"mobs_dungeon_master4.png"},
	},
	visual_size = {x=8, y=8},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_dungeonmaster",
		attack = "mobs_dungeonmaster",
	},
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 4,
	drops = {
		{name = "default:mese_crystal_fragment",
		chance = 1,
		min = 1,
		max = 3,},
		{name = "default:diamond",
		chance = 4,
		min = 1,
		max = 1,},
		{name = "default:mese_crystal",
		chance = 2,
		min = 1,
		max = 2,},
		{name = "default:mese",
		chance = 30,
		min = 1,
		max = 1,},
	},
	armor = 60,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 1,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "shoot",
	arrow = "mobs:fireball",
	shoot_interval = 2.5,
	sounds = {
		attack = "mobs_fireball",
	},
	animation = {
		stand_start = 0,
		stand_end = 19,
		walk_start = 20,
		walk_end = 35,
		punch_start = 36,
		punch_end = 48,
		speed_normal = 15,
		speed_run = 15,
	},
	jump = true,
	step = 0.5,
	shoot_offset = 0,
	blood_texture = "mobs_blood.png",
})
mobs:register_spawn("mobs:dungeon_master", {"default:stone"}, 0, -1, 7000, 1, -333)
mobs:register_spawn("mobs:dungeon_master", {"default:stone"}, 1, -1, 6000, 2, -666)
mobs:register_spawn("mobs:dungeon_master", {"default:stone"}, 3, -1, 5000, 3, -10000)

-- Fireball (weapon)

mobs:register_arrow("mobs:fireball", {
	visual = "sprite",
	visual_size = {x=1, y=1},
	textures = {"mobs_fireball.png"},
	velocity = 5,

	-- direct hit, no fire... just plenty of pain
	hit_player = function(self, player)
		local s = self.object:getpos()
		local p = player:getpos()
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=8},
		}, 0) -- {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z})
	end,

	-- node hit, bursts into flame (cannot blast through obsidian)
	hit_node = function(self, pos, node)

		for dx=-1,1 do
			for dy=-1,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(p).name
					if n ~= "default:obsidian" and n ~= "ethereal:obsidian_brick" then	
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						-- minetest.env:set_node(p, {name="fire:basic_flame"})
					else
						minetest.env:set_node(p, {name="air"})
					end
					end
				end
			end
		end
	end
})
