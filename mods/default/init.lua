-- Minetest 0.4 mod: default
-- See README.txt for licensing and other information.


-- The API documentation in here was moved into doc/lua_api.txt


WATER_ALPHA = 160
WATER_VISC = 1
LAVA_VISC = 7
LIGHT_MAX = 14


-- Definitions made by this mod that other mods can use too
default = {}

-- GUI related stuff
default.gui_bg = "bgcolor[#080808BB;false]" 
default.gui_bg_img = "background[5,5;1,1;inventory.png;true]"
default.gui_slots = "listcolors[#000000;#C68D3C;#ffffff;#C68D3C;#000000]" -- 455757--4D6161 [#00000069;#5A5A5A;#141318;#30434C;#FFF]
default.chestgui_bg_img = "background[5,5;1,1;chestui.png;true]"

function default.get_hotbar_bg(x,y)
	local out = ""
	for i=0,7,1 do
		out = out .."image["..x+i..","..y..";1,1;gui_hb_bg.png]"
	end
	return out
end

default.gui_survival_form = "size[8,8.5]"..
			default.gui_bg..
			default.gui_bg_img..
			default.gui_slots..
			"list[current_player;main;0,4.25;8,1;]"..
			"list[current_player;main;0,5.5;8,3;8]"..
			"list[current_player;craft;3,0.5;3,3;]"..
			"list[current_player;craftpreview;7,1.5;1,1;]"..
			"image[6,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]]"..
			default.get_hotbar_bg(0,4.25)

-- Load files
dofile(minetest.get_modpath("default").."/functions.lua")
dofile(minetest.get_modpath("default").."/nodes.lua")
dofile(minetest.get_modpath("default").."/tools.lua")
dofile(minetest.get_modpath("default").."/craftitems.lua")
dofile(minetest.get_modpath("default").."/crafting.lua")
dofile(minetest.get_modpath("default").."/mapgen.lua")
dofile(minetest.get_modpath("default").."/player.lua")
dofile(minetest.get_modpath("default").."/trees.lua")
dofile(minetest.get_modpath("default").."/furnace.lua")
dofile(minetest.get_modpath("default").."/prismafurnance.lua")

--infotext
minetest.register_on_newplayer(function(player)
	local cb = function(player)
	    minetest.chat_send_player(player:get_player_name(), "Welcome on planet Hades")
		minetest.chat_send_player(player:get_player_name(), "Search for some water. Lay down fertile sand next to the water to become dirt. Look at the crafting guide, what you can craft to survive")
	    minetest.chat_send_player(player:get_player_name(), "Good Luck - End of transmission")
	end
	minetest.after(2.0, cb, player)
end)

-- 10 slot hotbar key 1 - 0 (for ppl w/o a mouseweel)
hotbar_size = minetest.setting_get("hotbar_size") or 10

minetest.register_on_joinplayer(function(player)
	player:hud_set_hotbar_itemcount(hotbar_size)
	minetest.after(0.5,function()
		player:hud_set_hotbar_selected_image("gui_hotbar_selected.png")
	end)
end)