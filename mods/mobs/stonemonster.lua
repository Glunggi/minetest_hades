
-- Stone Monster

mobs:register_mob("mobs:stone_monster", {
	type = "monster",
	hp_min = 15,
	hp_max = 25,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	--textures = {"mobs_stone_monster.png"},
	available_textures = {
		total = 1,
		texture_1 = {"mobs_stone_monster.png"},
	},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_stonemonster",
		attack = "mobs_stonemonster",
	},
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "default:stone",
		chance = 2,
		min = 3,
		max = 5,},
		{name = "default:chondrit",
		chance=3,
		min=1,
		max=2,},
		{name = "default:coal_lump",
		chance=5,
		min=1,
		max=3,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	jump = true,
	step = 0.5,
	blood_texture = "mobs_blood.png",
})
mobs:spawn_specific("mobs:stone_monster", {"default:stone"}, "air", 0, 3, 90, 7000, 1, -5000, -50)
