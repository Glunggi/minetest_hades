# minetest_hades
A Minetest subgame

To play this game in Minetest, insert this repository as
  /games/minetest_hades
in the Minetest Engine.

The Minetest Engine can be found in:
  https://github.com/minetest/minetest/
  
 All my work is under WTFPL License 
 The extern mods have different Licenses. look at the modfolders for details.

Extern mods are(mods that not from me and not part of the standard minetest-game):
 
3d forniture
https://forum.minetest.net/viewtopic.php?id=2207

bags
https://forum.minetest.net/viewtopic.php?id=3081

bedrock
http://www.moontest.org/viewtopic.php?f=11&t=9231

boost_cart
https://forum.minetest.net/viewtopic.php?f=11&t=10172

farming_plus
https://forum.minetest.net/viewtopic.php?id=2787

glowcrystals
https://forum.minetest.net/viewtopic.php?id=9047

home gui
https://forum.minetest.net/viewtopic.php?id=3101

highlandpools
https://forum.minetest.net/viewtopic.php?id=8400

hud
https://forum.minetest.net/viewtopic.php?id=6342

inventory plus
https://forum.minetest.net/viewtopic.php?id=3100

item tweaks
https://github.com/minetest-technic/item_tweaks

item frames
https://forum.minetest.net/viewtopic.php?id=5600

kerova
https://forum.minetest.net/viewtopic.php?id=8054

mesecons
https://forum.minetest.net/viewtopic.php?t=628

mobs redo (an old version with elements from adventuretestgame)
https://forum.minetest.net/viewtopic.php?t=9917
https://forum.minetest.net/viewtopic.php?f=15&t=9184

pipeworks
https://forum.minetest.net/viewtopic.php?t=2155

plantlife (old destroyed code)
https://forum.minetest.net/viewtopic.php?id=3898

signs lib
https://forum.minetest.net/viewtopic.php?id=2041

trash can
https://forum.minetest.net/viewtopic.php?id=6315

travel net
https://forum.minetest.net/viewtopic.php?id=4877

vines
https://forum.minetest.net/viewtopic.php?id=2344

zcg
https://forum.minetest.net/viewtopic.php?id=5564

************************************************
Important notices and short game guide:
************************************************
-- Its a game, so you must install it in the gamefolder not the modfolder.

-- be sure that the Minetest.conf file in the maindirectory of minetest dosnt have any parameter who are in conflict with the conf- file from hadesdirectory. exp. Mapgenparameters or stuff like " give_initial_stuff = false " - because the parameter of the main conf file overwrite the hades conf file parameter, and this can have some unwelcome effects

-- Minetest Hades its developed for Mapgen V6.

-- Minetest Hades is a litlebit different to the original Minetest.. there only 1 Biome ..with the focus on terraforming.. not everyone will like it... but maybe there are some freaks outthere

-- Its still under develop cause im never fully satisfied... but its now on a playable status, so i think i can share it. (Its my first game, im still learning)

-- There will be lags. The game need some time for calculating the fluids and the lavacooling when you entered a new area but after a while the lags will gone. (more caves = more lags)

-- Take another mapsheed if you spawn into lava.

-- some lava and waterblobs dosnt flow, sorry about that.

-- ext. mods can make some troubles cause there are many chances on default
****************
Backgroundstory:

Youre colonyship was crashed on planet Hades. Hades is a very young planet and characterized by highly vulcanic activitys and a lot of fertile ash. Asteroids have brought some water on Hades
So there are the basics for life and you just must help them to get the nature going, make the planet habitable and survive
Not every colonist has duly arrived... the most of them have been mutated and strayed around the planet... but for some unknown reason they dosnt suffer water.
Hades wasnt unpeopled ..there are creatures and most of them live in the underground and darkness.
****************
How to start:

youre crashed on Hades with the following items: 1 ironpike, 12 apples, 1 walllamp and a stick.
At first u should look up to be sure that no lava is flowing down on you.

Next you should dig some stone to craft a stonesword with the stick... once the lags allow it.
Now explore the area and search for some water.

Dig some stone and ash to craft fertile sand and place it in neighbor to water to become dirt
Take a dirt and a apple to craft a sapling.. plant the sapling on dirt to become wood and leaves from the tree.
Make more dirt and place it above the water.
((Sometimes the soil dry out, when you leave the area, when is placed on waterlevel - so is better to place the dirt one node above the waterlevel. Then should it not happen))

Take 2 mossy stone (near water) and a dirt to craft grass

Grass + dirt = junglegrass

Dig the grass and the junglegrass to became some seeds.

Plant the seeds on the soiled dirt that you have placed over the Watersource.

and now survive with the craftingguide.

*************************
Things you should know:

-- fire disabled (deleted)

-- Flowing water turns lavasource into watersource and flowing lava into vulcanic gravel 

-- Vulcanic gravel can only dig by a shovel.(no falling node).

-- 9 leaves can be craft to 3 dirt

-- mobs spawn on stone, ash and tuff

-- Ash turn into clay if it have contact to water.

-- Ash also turn into fertile sand if they are leaves nearly.

-- Cobble turns into mossycobble if it have contact to water... and mosslycobble turns into gravel if it have contact to flowing water.

-- Tuff is too breakable for tools so it will not be in the group stone

-- There are no buckets in Hades, so you need a waterpump to spread water.

-- bellow -500 you can build a marblefactory. Chondrit turns into marble if it is bellow -500 and it must be in nearly of 4 nodes to lava and it also must have directly contact to water.

-- Vulcanic gravel turns into obsidian bellow -1000 it must have directly contact to lava and water must be nearly.

-- weak torches can be upgrade with a string to brigth torches

-- you need nails to build ladders.

-- Plants grow with ligthbrigthness of 8 instead of 13. Undergroundfarming allowed.

-- 2 emerald = 1 sapphire, 2 sapphire = 1 ruby, 2 ruby = 1 diamond.

-- sugarcane spawns in the near of papyrus it dosnt need water to grow but dirt

-- fertile sand turns into dirt in the near of 10 nodes to water and directly contact of a dirt.

-- With the "Staff of Gaia" u can turn following nodes into dirt: "Ash", "fertile Sand", "burned stone", "stone", "cobble", "mossystone", "tuff", "burned tuff","mossytuff","mossycobble"

-- PaleTreeSaplings can be plant on ash

-- Cactus grows on ash (fuellvalue(25) between tree(20) and coal(30))

-- Prismatic furnance is faster than the original furnance
*******************
-- Ores:

 Coal +60
 
 Iron +- 0
 
 Copper - 115
 
 Tin -115
 
 mese -200
 
 gold -333

 emerald +20
 
 sapphire - 300
 
 ruby -900
 
 diamond -1200

 max Ore gen on -10'000 
 ***********************
 
 A save mining exp:
 w= water
 l= ladder
 o= light
 s= stone
 -=air
 ***********
 ssswlsss
 
 ssswlsss
 
 ssswloss
 
 ssswlsss
 
 ssswlsss
 
 ssswssss
 
 ss-w--ss
 
 ss-w--ss
 
 Lavasource
 
 ssssssss
 ***********
 sometimes the water stop to flow, dig something next to the water, then the water starts to flow again.