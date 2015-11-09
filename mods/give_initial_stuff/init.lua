minetest.register_on_newplayer(function(player)
	--print("on_newplayer")
	if minetest.setting_getbool("give_initial_stuff") then
		minetest.log("action", "Giving initial stuff to player "..player:get_player_name())
		player:get_inventory():add_item('main', 'default:pick_steel')
		player:get_inventory():add_item('main', 'default:stick')
        player:get_inventory():add_item('main', 'default:lamp_wall')
        player:get_inventory():add_item('main', 'default:apple 12')
	end
end)

