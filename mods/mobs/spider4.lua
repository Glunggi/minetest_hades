
-- Glowtest Spider

mobs:register_mob("mobs:spider4", {
	type = "monster",
	hp_min = 50,
	hp_max = 75,
	collisionbox = {-0.9, -0.01, -0.7, 0.7, 0.6, 0.7},
	--textures = {"mobs_spider.png"},
	available_textures = {
		total = 1,
		texture_1 = {"mobs_spider4.png"},
	},
	visual_size = {x=7,y=7},
	visual = "mesh",
	mesh = "mobs_spider.x",
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_spider",
		attack = "mobs_spider",
	},
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
    armor = 150,
	damage = 3,
	replace_rate = 15000,
	replace_what = {"air"},
	replace_with = "mobs:cobweb",
	drops = {
		{name = "farming:string",
		chance = 1,
		min = 1,
		max = 5,},
		{name = "farming:string",
		chance = 15,
		min = 2,
		max = 6,},
	},
    light_resistant = false,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 1,
		stand_end = 1,
		walk_start = 20,
		walk_end = 40,
		run_start = 20,
		run_end = 40,
		punch_start = 50,
		punch_end = 90,
	},
	jump = true,
	sounds = {},
	step = 1,
})

mobs:spawn_specific("mobs:spider4", {"default:tuff", "default:stone"}, "air", 0, 4, 50, 7000, 1, -30000, -10000)
-- Ethereal crystal spike compatibility

if not minetest.get_modpath("ethereal") then
	minetest.register_alias("ethereal:crystal_spike", "default:sandstone")
end

