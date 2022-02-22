#Light blocks on fire
execute if score #cl.pref cl.p.setFire matches 1 positioned ^ ^ ^-0.25 unless block ^ ^ ^0.25 #classes:airtypes unless block ^ ^ ^0.25 campfire unless block ^ ^ ^0.25 soul_campfire if block ^ ^ ^-0.80 #classes:airtypes run setblock ^ ^ ^-0.8 minecraft:fire keep

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
execute positioned ^ ^ ^-0.25 if block ^ ^ ^0.25 obsidian if block ^ ^ ^-0.5 cave_air run setblock ^ ^ ^-0.5 minecraft:fire

#Prevent stray blocks from lighting on fire when setFire = false (This fix applies to lighting portals)
execute unless score #cl.pref cl.p.setFire matches 1 positioned ^ ^ ^-0.25 run fill ~2 ~2 ~2 ~-4 ~-4 ~-4 minecraft:air replace fire
execute unless score #cl.pref cl.p.setFire matches 1 positioned ^ ^ ^-0.25 run fill ~2 ~2 ~2 ~-4 ~-4 ~-4 minecraft:cave_air replace fire

#Hit water?
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:water run particle minecraft:large_smoke ^ ^ ^-0.5 0.1 0.1 0.1 0.05 20 normal
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:water run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 1.2 1.5

#Reset Scores
scoreboard players reset @s cl.slo_id
scoreboard players reset @s cl.slo_dst_per
scoreboard players reset @s cl.slo_dst
