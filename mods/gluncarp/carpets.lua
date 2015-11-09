
local carpet_tab = {
{"black", 	"Black"},
{"blue", 	"Blue"},
{"brown", 	"Brown"},
{"cyan", 	"Cyan"},
{"dark_green", 	"Dark Green"},
{"dark_grey", 	"Dark Grey"},
{"green", 	"Green"},
{"grey", 	"Grey"},
{"magenta", 	"Magenta"},
{"orange",	"Orange"},
{"pink", 	"Pink"},
{"red", 	"Red"},
{"violet", 	"Violet"},
{"white", 	"White"},
{"yellow", 	"Yellow"},
{"blackgold", 	"Black n Gold"},
}

for i in ipairs (carpet_tab) do
local carpetname = carpet_tab[i][1]
local carpetdesc = carpet_tab[i][2]
    
	local underground_tab = {
    {"stone", 	            "Stone",		        "default_stone",		        "default:stone"},
	{"cobble", 	            "Cobblestone",		    "default_cobble",		        "default:cobble"},
	{"stonebrick", 	        "Stone Brick",		    "default_stone_brick",		    "default:stonebrick"},
	{"mossycobble", 	    "Mossy Cobblestone",	"default_mossycobble",		    "default:mossycobble"},
	{"desert_stone", 	    "Desert Stone",		    "default_desert_stone",		    "default:desert_stone"},
	{"desert_stonebrick", 	"Desert Stone Brick",	"default_desert_stone_brick",	"default:desert_stonebrick"},
	{"sandstone", 	        "Sandstone",		    "default_sandstone",		    "default:sandstone"},
	{"sandstonebrick", 	    "Sandstone Brick",		"default_sandstone_brick",		"default:sandstonebrick"},
	{"obsidian", 	        "Obsidian",		        "default_obsidian",		        "default:obsidian"},
	{"obsidianbrick", 	    "Obsidian Brick",		"default_obsidian_brick",		"default:obsidianbrick"},
	{"clay", 	            "Clay",		            "default_clay",		            "default:clay"},
	{"ice", 	            "Ice",		            "default_ice",		            "default:ice"},
	{"wood", 	            "Wooden Planks",		"default_wood",		            "default:wood"},
	--{"wood_jungle", 	    "Junglewood Planks",	"default_wood_jungle",		    "default:wood_jungle"}, -- not defaultname
	--{"wood_pine", 	        "Pinewood Planks",		"default_wood_pine",		    "default:wood_pine"}, -- not defaultname
	--{"acacia_wood", 	    "Acacia Wood Planks",	"default_acacia_wood",		    "default:acacia_wood"},
	{"brick", 	            "Brick Block",		    "default_brick",		        "default:brick"},
	--end of default
	{"cactus_block", 	    "Cactus Block",		    "default_cactus_block",		    "default:cactus_block"},
	{"cactus_brick", 	    "Cactus Brick",		    "default_cactus_brick",		    "default:cactus_brick"},
	-- glunggi stuff
	-- woods
	{"palewood", 	        "Pale Wood",		    "default_palewood",		        "default:palewood"},
	{"junglewood", 	        "Jungle Wood",		    "default_junglewood",		    "default:junglewood"},
	
	-- wooden floors
	{"floor_wood_jungle", 	"Junglewood - Wood Floor",	"default_floor_wood_jungle",	"default:floor_wood_jungle"},
	{"floor_wood_pale", 	"Wood - Pale Floor",		 "default_floor_wood_pale",		"default:floor_wood_pale"},
	{"floor_pale_jungle", "Junglewood - Pale Floor",		 "default_floor_pale_jungle",	"default:floor_pale_jungle"},
	-- colored woods
	{"colwood_black", 	    "Black Colored Wood",   "default_colwood_black",		"default:colwood_black"},
	{"colwood_blue", 	    "Blue Colored Wood",    "default_colwood_blue",		    "default:colwood_blue"},
	{"colwood_brown", 	    "Brown Colored Wood",   "default_colwood_brown",		"default:colwood_brown"},
	{"colwood_cyan", 	    "Cyan Colored Wood",    "default_colwood_cyan",		    "default:colwood_cyan"},
	{"colwood_dark_green", "Darkgreen Colored Wood", "default_colwood_dark_green",  "default:colwood_dark_green"},
	{"colwood_dark_grey",  "Darkgrey Colored Wood", "default_colwood_dark_grey",    "default:colwood_dark_grey"},
	{"colwood_green",       "Green Colored Wood",   "default_colwood_green",        "default:colwood_green"},
	{"colwood_grey",        "Grey Colored Wood",    "default_colwood_grey",         "default:colwood_grey"},
	{"colwood_magenta", 	"Magenta Colored Wood", "default_colwood_magenta",		"default:colwood_magenta"},
	{"colwood_orange", 	    "Orange Colored Wood",  "default_colwood_orange",		"default:colwood_orange"},
	{"colwood_pink", 	    "Pink Colored Wood",    "default_colwood_pink",		    "default:colwood_pink"},
	{"colwood_red", 	    "Red Colored Wood",     "default_colwood_red",		    "default:colwood_red"},
	{"colwood_violet", 	    "Violet Colored Wood",  "default_colwood_violet",		"default:colwood_violet"},
	{"colwood_yellow", 	    "Yellow Colored Wood",  "default_colwood_yellow",		"default:colwood_yellow"},
	{"colwood_white", 	    "White Colored Wood",   "default_colwood_white",		"default:colwood_white"},
	-- colored bricks
	{"brick_black", 	    "Black Colored Bricks",		"default_brick_black",		"default:brick_black"},
	{"brick_blue", 	        "Blue Colored Bricks",		"default_brick_blue",		"default:brick_blue"},
	{"brick_brown", 	    "Brown Colored Bricks",		"default_brick_brown",		"default:brick_brown"},
	{"brick_cyan", 	        "Cyan Colored Bricks",		"default_brick_cyan",		"default:brick_cyan"},
	{"brick_dark_green", 	"Darkgreen Colored Bricks", "default_brick_dark_green",	"default:brick_dark_green"},
	{"brick_dark_grey", 	"Darkgrey Colored Bricks",	"default_brick_dark_grey",  "default:brick_dark_grey"},
	{"brick_green", 	    "Green Colored Bricks",		"default_brick_green",		"default:brick_green"},
	{"brick_grey", 	        "Grey Colored Bricks",		"default_brick_grey",		"default:brick_grey"},
	{"brick_magenta", 	    "Magenta Colored Bricks",   "default_brick_magenta",	"default:brick_magenta"},
	{"brick_orange", 	    "Orange Colored Bricks",    "default_brick_orange",		"default:brick_orange"},
	{"brick_pink", 	        "Pink Colored Bricks",		"default_brick_pink",		"default:brick_pink"},
	{"brick_red", 	        "Red Colored Bricks",		"default_brick_red",		"default:brick_red"},
	{"brick_violet", 	    "Violet Colored Bricks",	"default_brick_violet",		"default:brick_violet"},
	{"brick_white", 	    "White Colored Bricks",		"default_brick_white",		"default:brick_white"},
	{"brick_yellow", 	    "Yellow Colored Bricks",	"default_brick_yellow",		"default:brick_yellow"},
	-- more stones
	{"marble_brick", 	      "Marble Brick",	           "default_marble_brick",		    "default:marble_brick"},
	{"marble", 	              "Marble",	                   "default_marble",		        "default:marble"},
	{"chondrit_brick", 	      "Chondrit Brick",	           "default_chondrit_brick",		"default:chondrit_brick"},
	{"chondrit", 	          "Chondrit",	               "default_chondrit",		        "default:chondrit"},
	{"tuff_brick", 	          "tuff Brick",	               "default_tuff_brick",		    "default:tuff_brick"},
	{"tuff", 	              "tuff",	                   "default_tuff",		            "default:tuff"},
	{"tuff_baked_brick", 	  "Bruned Tuff Brick",	       "default_tuff_baked_brick",		"default:tuff_baked_brick"},
	{"tuff_baked", 	          "Burned Tuff",	           "default_tuff_baked",		    "default:tuff_baked"},
	{"essexit_brick", 	      "Essexit Brick",	           "default_essexit_brick",		    "default:essexit_brick"},
	{"essexit", 	          "Essexit",	               "default_essexit",		        "default:essexit"},
	{"floor_essexit_gold2",   "Essexit - Gold Floor 2",	   "default_floor_essexit_gold2",   "default:floor_essexit_gold2"},
	{"floor_essexit_gold",   "Essexit - Gold Floor",	   "default_floor_essexit_gold",    "default:floor_essexit_gold"},
	{"floor_marble_essexit2", "Marble - Essexit Floor 2",  "default_floor_marble_essexit2", "default:floor_marble_essexit2"},
	{"floor_marble_essexit", "Marble - Essexit Floor",  "default_floor_marble_essexit", "default:floor_marble_essexit"},
	{"floor_bstone_sandstone2", "Burned Stone - Sandstone Floor 2",	"default_floor_bstone_sandstone2", "default:floor_bstone_sandstone2"},
	{"floor_bstone_sandstone", "Burned Stone - Sandstone Floor",	"default_floor_bstone_sandstone", "default:floor_bstone_sandstone"},
	{"floor_btuff_tuff",      "Burned Tuff - Tuff Floor",  "default_floor_btuff_tuff",      "default:floor_btuff_tuff"},
	{"floor_bstone_stone",    "Burned Stone - Stone Floor", "default_floor_bstone_stone",   "default:floor_bstone_stone"},
	{"floor_chondrit_stone2", "Chondrit - Stone Floor 2",  "default_floor_chondrit_stone2", "default:floor_chondrit_stone2"},
	{"floor_chondrit_stone",  "Chondrit - Stone Floor ",   "default_floor_chondrit_stone",  "default:floor_chondrit_stone"},
	
    }
	
	
    for i in ipairs (underground_tab) do
    local mat = underground_tab[i][1]
    local desc = underground_tab[i][2]
	local image = underground_tab[i][3]



minetest.register_node("gluncarp:"..carpetname, {
         description = carpetdesc.." Carpet",
		 drawtype = "raillike",
		 tiles = {"gluncarp_"..carpetname..".png"},
		 inventory_image = "gluncarp_"..carpetname.."_inv.png",
		 wield_image = "gluncarp_"..carpetname..".png",
		 paramtype = "light",
		 is_ground_content = true,
		 walkable = false,
		 buildable_to = false,
		 selection_box = {
		 type = "fixed",
		 fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
		 },
		 groups = {dig_immediate=2, gluncarp=1, not_in_creative_inventory=1},
		 
		 after_place_node = function(pos, placer, itemstack, pointed_thing)
		
		local nodeu = minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name
		if nodeu == "default:stone" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stone"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:cobble" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_cobble"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonebrick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonebrick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:mossycobble" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_mossycobble"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:desert_stone" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_desert_stone"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:desert_cobble" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_desert_cobble"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:desert_stonebrick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_desert_stonebrick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:sandstone" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_sandstone"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:sandstonebrick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_sandstonebrick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:obsidian" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_obsidian"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:obsidianbrick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_obsidianbrick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:clay" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_clay"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:ice" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_ice"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:wood" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:wood_jungle" then -- not defaultname
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood_jungle"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:wood_pine" then -- not defaultname
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood_pine"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:acacia_wood" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_acacia_wood"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick"})
		   minetest.set_node(pos,{name = "air"})
		   --end of default
		elseif  nodeu == "default:cactus_block" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_cactus_block"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:cactus_brick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_cactus_brick"})
		   minetest.set_node(pos,{name = "air"})
		   --glunggistuff
		   --wood
		elseif  nodeu == "default:palewood" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_palewood"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:junglewood" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_junglewood"})
		   minetest.set_node(pos,{name = "air"})
		
		   --wooden floors
		  elseif  nodeu == "default:floor_wood_jungle" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_wood_jungle"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_wood_pale" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_wood_pale"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_pale_jungle" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_pale_jungle"})
		   minetest.set_node(pos,{name = "air"})
		   
		   --color wood
		elseif  nodeu == "default:colwood_black" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_black"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_blue" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_blue"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_brown" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_brown"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_cyan" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_cyan"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_dark_green" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_dark_green"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_dark_grey" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_dark_grey"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_green" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_green"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_grey" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_grey"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_magenta" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_magenta"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_orange" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_orange"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_pink" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_pink"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_red" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_red"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_violet" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_violet"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_yellow" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_yellow"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_white" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_white"})
		   minetest.set_node(pos,{name = "air"})
		   --color bricks
		elseif  nodeu == "default:brick_black" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_black"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_blue" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_blue"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_brown" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_brown"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_cyan" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_cyan"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_dark_green" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_dark_green"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_dark_grey" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_dark_grey"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_green" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_green"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_grey" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_grey"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_magenta" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_magenta"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_orange" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_orange"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_pink" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_pink"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_red" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_red"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_violet" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_violet"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_white" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_white"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_yellow" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_yellow"})
		   minetest.set_node(pos,{name = "air"})
		   --more stone
		elseif  nodeu == "default:marble_brick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_marble_brick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:marble" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_marble"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:chondrit_brick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_chondrit_brick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:chondrit" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_chondrit"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:tuff_brick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_tuff_brick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:tuff" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_tuff"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:tuff_baked_brick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_tuff_baked_brick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:tuff_baked" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_tuff_baked"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:essexit_brick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_essexit_brick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:essexit" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_essexit"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_essexit_gold2" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_essexit_gold2"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_essexit_gold" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_essexit_gold"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_marble_essexit2" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_marble_essexit2"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_marble_essexit" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_marble_essexit"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_bstone_sandstone2" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_bstone_sandstone2"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_bstone_sandstone" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_bstone_sandstone"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_btuff_tuff" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_btuff_tuff"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_bstone_stone" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_bstone_stone"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_chondrit_stone2" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_chondrit_stone2"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_chondrit_stone" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_chondrit_stone"})
		   minetest.set_node(pos,{name = "air"})
		else 
		   return
		end
	end,
	
})


minetest.register_node("gluncarp:"..carpetname.."_on_"..mat, {
         description = carpetdesc.." Carpet on "..desc,
		 tiles = {
		 "gluncarp_"..carpetname..".png",
		 image..".png",
		 image..".png^gluncarp_side_"..carpetname..".png",
		 },
		 paramtype = "light",
		 is_ground_content = true,
		 walkable = true,
		 buildable_to = false,
		 groups = {dig_immediate=2, gluncarp=1, not_in_creative_inventory=1},
		 drop = "gluncarp:"..carpetname,
		
		 after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "gluncarp:"..carpetname.."_on_stone" then
		       minetest.set_node(pos,{name = "default:stone"})
		    elseif  oldnode.name == "gluncarp:"..carpetname.."_on_cobble" then
		       minetest.set_node(pos,{name = "default:cobble"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonebrick" then
		       minetest.set_node(pos,{name = "default:stonebrick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_mossycobble" then
		       minetest.set_node(pos,{name = "default:mossycobble"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_desert_stone" then
		       minetest.set_node(pos,{name = "default:desert_stone"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_desert_cobble" then
		       minetest.set_node(pos,{name = "default:desert_cobble"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_desert_stonebrick" then
		       minetest.set_node(pos,{name = "default:desert_stonebrick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_sandstone" then
		       minetest.set_node(pos,{name = "default:sandstone"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_sandstonebrick" then
		       minetest.set_node(pos,{name = "default:sandstonebrick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_obsidian" then
		       minetest.set_node(pos,{name = "default:obsidian"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_obsidianbrick" then
		       minetest.set_node(pos,{name = "default:obsidianbrick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_clay" then
		       minetest.set_node(pos,{name = "default:clay"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_ice" then
		       minetest.set_node(pos,{name = "default:ice"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood" then
		       minetest.set_node(pos,{name = "default:wood"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood_jungle" then -- not defaultname
		       minetest.set_node(pos,{name = "default:wood_jungle"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood_pine" then -- not defaultname
		       minetest.set_node(pos,{name = "default:wood_pine"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_acacia_wood" then
		       minetest.set_node(pos,{name = "default:acacia_wood"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick" then
		       minetest.set_node(pos,{name = "default:brick"})
			   --end of default
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_cactus_block" then
		       minetest.set_node(pos,{name = "default:cactus_block"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_cactus_brick" then
		       minetest.set_node(pos,{name = "default:cactus_brick"})
			   -- wood
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_palewood" then
		       minetest.set_node(pos,{name = "default:palewood"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_junglewood" then
		       minetest.set_node(pos,{name = "default:junglewood"})
			   -- wooden floors
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_wood_jungle" then
		       minetest.set_node(pos,{name = "default:floor_wood_jungle"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_wood_pale" then
		       minetest.set_node(pos,{name = "default:floor_wood_pale"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_pale_jungle" then
		       minetest.set_node(pos,{name = "default:floor_pale_jungle"})
			   -- color wood
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_black" then
		       minetest.set_node(pos,{name = "default:colwood_black"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_blue" then
		       minetest.set_node(pos,{name = "default:colwood_blue"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_brown" then
		       minetest.set_node(pos,{name = "default:colwood_brown"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_cyan" then
		       minetest.set_node(pos,{name = "default:colwood_cyan"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_dark_green" then
		       minetest.set_node(pos,{name = "default:colwood_dark_green"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_dark_grey" then
		       minetest.set_node(pos,{name = "default:colwood_dark_grey"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_green" then
		       minetest.set_node(pos,{name = "default:colwood_green"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_grey" then
		       minetest.set_node(pos,{name = "default:colwood_grey"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_magenta" then
		       minetest.set_node(pos,{name = "default:colwood_magenta"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_orange" then
		       minetest.set_node(pos,{name = "default:colwood_orange"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_pink" then
		       minetest.set_node(pos,{name = "default:colwood_pink"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_red" then
		       minetest.set_node(pos,{name = "default:colwood_red"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_violet" then
		       minetest.set_node(pos,{name = "default:colwood_violet"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_yellow" then
		       minetest.set_node(pos,{name = "default:colwood_yellow"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_white" then
		       minetest.set_node(pos,{name = "default:colwood_white"})
			   -- color brick
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_black" then
		       minetest.set_node(pos,{name = "default:brick_black"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_blue" then
		       minetest.set_node(pos,{name = "default:brick_blue"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_brown" then
		       minetest.set_node(pos,{name = "default:brick_brown"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_cyan" then
		       minetest.set_node(pos,{name = "default:brick_cyan"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_dark_green" then
		       minetest.set_node(pos,{name = "default:brick_dark_green"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_dark_grey" then
		       minetest.set_node(pos,{name = "default:brick_dark_grey"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_green" then
		       minetest.set_node(pos,{name = "default:brick_green"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_grey" then
		       minetest.set_node(pos,{name = "default:brick_grey"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_magenta" then
		       minetest.set_node(pos,{name = "default:brick_magenta"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_orange" then
		       minetest.set_node(pos,{name = "default:brick_orange"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_pink" then
		       minetest.set_node(pos,{name = "default:brick_pink"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_red" then
		       minetest.set_node(pos,{name = "default:brick_red"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_violet" then
		       minetest.set_node(pos,{name = "default:brick_violet"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_white" then
		       minetest.set_node(pos,{name = "default:brick_white"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_yellow" then
		       minetest.set_node(pos,{name = "default:brick_yellow"})
			 -- more stones
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_marble_brick" then
		       minetest.set_node(pos,{name = "default:marble_brick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_marble" then
		       minetest.set_node(pos,{name = "default:marble"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_chondrit_brick" then
		       minetest.set_node(pos,{name = "default:chondrit_brick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_chondrit" then
		       minetest.set_node(pos,{name = "default:chondrit"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_tuff_brick" then
		       minetest.set_node(pos,{name = "default:tuff_brick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_tuff" then
		       minetest.set_node(pos,{name = "default:tuff"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_tuff_baked_brick" then
		       minetest.set_node(pos,{name = "default:tuff_baked_brick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_tuff_baked" then
		       minetest.set_node(pos,{name = "default:tuff_baked"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_essexit_brick" then
		       minetest.set_node(pos,{name = "default:essexit_brick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_essexit" then
		       minetest.set_node(pos,{name = "default:essexit"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_essexit_gold2" then
		       minetest.set_node(pos,{name = "default:floor_essexit_gold2"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_essexit_gold" then
		       minetest.set_node(pos,{name = "default:floor_essexit_gold"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_marble_essexit2" then
		       minetest.set_node(pos,{name = "default:floor_marble_essexit2"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_marble_essexit" then
		       minetest.set_node(pos,{name = "default:floor_marble_essexit"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_bstone_sandstone2" then
		       minetest.set_node(pos,{name = "default:floor_bstone_sandstone2"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_bstone_sandstone" then
		       minetest.set_node(pos,{name = "default:floor_bstone_sandstone"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_btuff_tuff" then
		       minetest.set_node(pos,{name = "default:floor_btuff_tuff"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_bstone_stone" then
		       minetest.set_node(pos,{name = "default:floor_bstone_stone"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_chondrit_stone2" then
		       minetest.set_node(pos,{name = "default:floor_chondrit_stone2"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_chondrit_stone" then
		       minetest.set_node(pos,{name = "default:floor_chondrit_stone"})
		    else 
		       return
			end
	     end,
		 
})
end
end

