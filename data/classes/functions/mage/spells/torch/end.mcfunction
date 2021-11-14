#Light blocks on fire
execute if score #cl.pref cl.p.setFire matches 1 positioned ^ ^ ^-0.25 unless block ^ ^ ^0.25 air unless block ^ ^ ^0.25 campfire unless block ^ ^ ^0.25 soul_campfire if block ^ ^ ^-0.80 air run setblock ^ ^ ^-0.8 minecraft:fire keep

#Light campfires
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=false,facing=north] run setblock ~ ~ ~ minecraft:campfire[lit=true,facing=north]
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=false,facing=south] run setblock ~ ~ ~ minecraft:campfire[lit=true,facing=south]
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=false,facing=east] run setblock ~ ~ ~ minecraft:campfire[lit=true,facing=east]
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=false,facing=west] run setblock ~ ~ ~ minecraft:campfire[lit=true,facing=west]
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=false,facing=north] run setblock ~ ~ ~ minecraft:soul_campfire[lit=true,facing=north]
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=false,facing=south] run setblock ~ ~ ~ minecraft:soul_campfire[lit=true,facing=south]
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=false,facing=east] run setblock ~ ~ ~ minecraft:soul_campfire[lit=true,facing=east]
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=false,facing=west] run setblock ~ ~ ~ minecraft:soul_campfire[lit=true,facing=west]
execute positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:candles[lit=false] run function classes:blocks/candles/light

#Light obsidian on fire (for lighting nether portals)
execute positioned ^ ^ ^-0.25 if block ^ ^ ^0.25 obsidian if block ^ ^ ^-0.5 air run setblock ^ ^ ^-0.5 minecraft:fire

#Prevent stray blocks from lighting on fire when setFire = false (This fix applies to lighting portals)
execute unless score #cl.pref cl.p.setFire matches 1 positioned ^ ^ ^-0.25 run fill ~2 ~2 ~2 ~-4 ~-4 ~-4 minecraft:air replace fire

#Reset Scores
scoreboard players reset @s cl.slo_id
scoreboard players reset @s cl.slo_dst_per
scoreboard players reset @s cl.slo_dst
