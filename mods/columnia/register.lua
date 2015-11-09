 --[[ 
 columnia.register_all   (
	mat, 
	desc, 
	image, 
	groups, 
	craft, 
	sounds
	)
	--]]
	
columnia.register_all(
	"default_sandstone", 
	"Sandstone", 
	"default_sandstone.png",
	{crumbly=2,cracky=2, not_in_creative_inventory=1},
	"default:sandstone",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_sandstonebrick", 
	"Sandstone Brick", 
	"default_sandstone_brick.png",
	{crumbly=2,cracky=2, not_in_creative_inventory=1},
	"default:sandstonebrick",
	default.node_sound_stone_defaults()
	)

columnia.register_all(
	"default_clay", 
	"Clay", 
	"default_clay.png",
	{crumbly=3, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	"default:clay",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_cobble", 
	"Cobble", 
	"default_cobble.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:cobble",
	default.node_sound_stone_defaults()
	)
--[[	
columnia.register_all(
	"default_desert_cobble", 
	"Desert Cobblestone", 
	"default_desert_cobble.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:desert_cobble",
	default.node_sound_stone_defaults()
	)
	--]]
columnia.register_all(
	"default_stone", 
	"Stone", 
	"default_stone.png",
	{cracky = 3,not_in_creative_inventory=1},
	"default:stone",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_cactus", 
	"Cactus", 
	"default_cactus_side.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:cactus",
	default.node_sound_wood_defaults()
	)

columnia.register_all(
	"default_cactus_block", 
	"Cactus Block", 
	"default_cactus_block.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:cactus_block",
	default.node_sound_wood_defaults()
	)

columnia.register_all(
	"default_cactus_brick", 
	"Cactus Brick", 
	"default_cactus_brick.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:cactus_brick",
	default.node_sound_wood_defaults()
	)
	
columnia.register_all(
	"default_desert_stone", 
	"Desert Stone", 
	"default_desert_stone.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:desert_stone",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_desert_stone_brick", 
	"Desert Stone Brick", 
	"default_desert_stone_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:desert_stonebrick",
	default.node_sound_stone_defaults()
	)	
	
columnia.register_all(
	"default_wood", 
	"Wood", 
	"default_wood.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood",
	default.node_sound_wood_defaults()
	)
--[[	
columnia.register_all(
	"default_pinewood", 
	"Pine Wood", 
	"default_pinewood.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:pinewood",
	default.node_sound_wood_defaults()
	)
--]]
columnia.register_all(
	"default_brick", 
	"Brick", 
	"default_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick",
	default.node_sound_stone_defaults()
	)

columnia.register_all(
	"default_ice", 
	"Ice", 
	"default_ice.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:ice",
	default.node_sound_glass_defaults()
	)

columnia.register_all(
	"default_junglewood", 
	"Jungle Wood", 
	"default_junglewood.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:junglewood",
	default.node_sound_wood_defaults()
	)

columnia.register_all(
	"default_mossycobble", 
	"Mossy Cobble", 
	"default_mossycobble.png",
	{cracky = 3,not_in_creative_inventory=1},
	"default:mossycobble",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_obsidian", 
	"Obsidian", 
	"default_obsidian.png",
	{cracky=1,level=2,not_in_creative_inventory=1},
	"default:obsidian",
	default.node_sound_stone_defaults()
	)

columnia.register_all(
	"default_obsidian_brick", 
	"Obsidian Brick", 
	"default_obsidian_brick.png",
	{cracky=1,level=2,not_in_creative_inventory=1},
	"default:obsidianbrick",
	default.node_sound_stone_defaults()
	)

columnia.register_all(
	"default_sandstone_brick", 
	"Sandstone Brick", 
	"default_sandstone_brick.png",
	{crumbly=2,cracky=2,not_in_creative_inventory=1}, 
	"default:sandstonebrick",
	default.node_sound_stone_defaults()
	)

columnia.register_all(
	"default_stone_brick", 
	"Stone Brick", 
	"default_stone_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonebrick",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"columnia_rusty_block", 
	"Rusty Block", 
	"columnia_rusty_block.png",
	{cracky=2,not_in_creative_inventory=1},
	"columnia:rusty_block",
	default.node_sound_stone_defaults()
	)

-- hades
columnia.register_all(
	"default_palewood", 
	"Pale Wood", 
	"default_palewood.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:palewood",
	default.node_sound_wood_defaults()
	)


-- colored woods	
	
columnia.register_all(
	"default_colwood_black", 
	"Black Colored Wood", 
	"default_colwood_black.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_black",
	default.node_sound_wood_defaults()
	)
	
columnia.register_all(
	"default_colwood_blue", 
	"Blue Colored Wood", 
	"default_colwood_blue.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_blue",
	default.node_sound_wood_defaults()
	)
	
columnia.register_all(
	"default_colwood_brown", 
	"Brown Colored Wood", 
	"default_colwood_brown.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_brown",
	default.node_sound_wood_defaults()
	)
	
columnia.register_all(
	"default_colwood_cyan", 
	"Cyan Colored Wood", 
	"default_colwood_cyan.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_cyan",
	default.node_sound_wood_defaults()
	)
	
columnia.register_all(
	"default_colwood_dark_green", 
	"Darkgreen Colored Wood", 
	"default_colwood_dark_green.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_dark_green",
	default.node_sound_wood_defaults()
	)

columnia.register_all(
	"default_colwood_dark_grey", 
	"Darkgrey Colored Wood", 
	"default_colwood_dark_grey.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_dark_grey",
	default.node_sound_wood_defaults()
	)	
	
columnia.register_all(
	"default_colwood_grey", 
	"Grey Colored Wood", 
	"default_colwood_grey.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_grey",
	default.node_sound_wood_defaults()
	)	

columnia.register_all(
	"default_colwood_green", 
	"Green Colored Wood", 
	"default_colwood_green.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_green",
	default.node_sound_wood_defaults()
	)	
	
columnia.register_all(
	"default_colwood_magenta", 
	"Magenta Colored Wood", 
	"default_colwood_magenta.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_magenta",
	default.node_sound_wood_defaults()
	)	
	
columnia.register_all(
	"default_colwood_orange", 
	"Orange Colored Wood", 
	"default_colwood_orange.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_orange",
	default.node_sound_wood_defaults()
	)	
	
columnia.register_all(
	"default_colwood_pink", 
	"Pink Colored Wood", 
	"default_colwood_pink.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_pink",
	default.node_sound_wood_defaults()
	)	

columnia.register_all(
	"default_colwood_red", 
	"Red Colored Wood", 
	"default_colwood_red.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_red",
	default.node_sound_wood_defaults()
	)	
	
columnia.register_all(
	"default_colwood_violet", 
	"Violet Colored Wood", 
	"default_colwood_violet.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_violet",
	default.node_sound_wood_defaults()
	)	
	
columnia.register_all(
	"default_colwood_white", 
	"White Colored Wood", 
	"default_colwood_white.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_white",
	default.node_sound_wood_defaults()
	)	
	
columnia.register_all(
	"default_colwood_yellow", 
	"yellow Colored Wood", 
	"default_colwood_yellow.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_yellow",
	default.node_sound_wood_defaults()
	)	
	
-------------------
-- Colored Bricks

columnia.register_all(
	"default_brick_black", 
	"Black Colored Bricks", 
	"default_brick_black.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_black",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_brick_blue", 
	"Blue Colored Bricks", 
	"default_brick_blue.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_blue",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_brick_brown", 
	"Brown Colored Bricks", 
	"default_brick_brown.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_brown",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_brick_cyan", 
	"Cyan Colored Bricks", 
	"default_brick_cyan.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_cyan",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_brick_dark_green", 
	"Darkgreen Colored Bricks", 
	"default_brick_dark_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_dark_green",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_brick_dark_grey", 
	"Darkgrey Colored Bricks", 
	"default_brick_dark_grey.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_dark_grey",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_brick_green", 
	"Green Colored Bricks", 
	"default_brick_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_green",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_brick_grey", 
	"Grey Colored Bricks", 
	"default_brick_grey.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_grey",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_brick_magenta", 
	"Magenta Colored Bricks", 
	"default_brick_magenta.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_magenta",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_brick_orange", 
	"Orange Colored Bricks", 
	"default_brick_orange.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_orange",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_brick_pink", 
	"Pink Colored Bricks", 
	"default_brick_pink.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_pink",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_brick_red", 
	"Red Colored Bricks", 
	"default_brick_red.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_red",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_brick_violet", 
	"Violet Colored Bricks", 
	"default_brick_violet.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_violet",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_brick_white", 
	"White Colored Bricks", 
	"default_brick_white.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_white",
	default.node_sound_stone_defaults()
	)

columnia.register_all(
	"default_brick_yellow", 
	"Yellow Colored Bricks", 
	"default_brick_yellow.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_yellow",
	default.node_sound_stone_defaults()
	)
	
--more stones

columnia.register_all(
	"default_marble_brick", 
	"Marble Brick", 
	"default_marble_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:marble_brick",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_marble", 
	"Marble", 
	"default_marble.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:marble",
	default.node_sound_stone_defaults()
	)

columnia.register_all(
	"default_chondrit", 
	"Chondrit Brick", 
	"default_chondrit.png",
	{cracky=2,not_in_creative_inventory=1},
	"default:chondrit",
	default.node_sound_stone_defaults()
	)	
	
columnia.register_all(
	"default_chondrit_brick", 
	"Chondrit Brick", 
	"default_chondrit_brick.png",
	{cracky=2,not_in_creative_inventory=1},
	"default:chondrit_brick",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_tuff", 
	"Tuff Brick", 
	"default_tuff.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:tuff",
	default.node_sound_stone_defaults()
	)	
	
columnia.register_all(
	"default_tuff_brick", 
	"Tuff Brick", 
	"default_tuff_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:tuff_brick",
	default.node_sound_stone_defaults()
	)
	
columnia.register_all(
	"default_tuff_baked", 
	"Burned Tuff Brick", 
	"default_tuff_baked.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:tuff_baked",
	default.node_sound_stone_defaults()
	)	
	
columnia.register_all(
	"default_tuff_baked_brick", 
	"Burned Tuff Brick", 
	"default_tuff_baked_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:tuff_baked_brick",
	default.node_sound_stone_defaults()
	)

columnia.register_all(
	"default_essexit", 
	"Essexit Brick", 
	"default_essexit.png",
	{cracky=1,not_in_creative_inventory=1},
	"default:essexit",
	default.node_sound_stone_defaults()
	)	
	
columnia.register_all(
	"default_essexit_brick", 
	"Essexit Brick", 
	"default_essexit_brick.png",
	{cracky=1,not_in_creative_inventory=1},
	"default:essexit_brick",
	default.node_sound_stone_defaults()
	)

columnia.register_all(
	"farming_straw", 
	"Straw", 
	"farming_straw.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,not_in_creative_inventory=1},
	"farming:straw",
	default.node_sound_leaves_defaults()
	)


