
--= Mese Monster by Zeg9

-- Mese Monster
mobs:register_mob("mobs:mese_monster2", {
	type = "monster",
	hp_min = 30,
	hp_max = 45,
	collisionbox = {-0.5, -1.5, -0.5, 0.5, 0.5, 0.5},
	visual = "mesh",
	mesh = "zmobs_mese_monster.x",
	--textures = {"zmobs_mese_monster.png"},
	available_textures = {
		total = 1,
		texture_1 = {"zmobs_mese_monster2.png"},
	},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_mesemonster",
		attack = "mobs_mesemonster",
	},
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "default:mese_crystal",
		chance = 9,
		min = 1,
		max = 3,},
		{name = "default:mese_crystal_fragment",
		chance = 1,
		min = 1,
		max = 9,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "shoot",
	arrow = "mobs:mese_arrow",
	shoot_interval = .5,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 15, -- 40
		punch_end = 38, -- 63
	},
	jump = true,
	step = 0.5,
	shoot_offset = 2,
	blood_texture = "default_mese_crystal_fragment.png",
})
mobs:spawn_specific("mobs:mese_monster2", {"default:stone"}, "air", 0, 4, 70, 7000, 1, -30000, -5000)

