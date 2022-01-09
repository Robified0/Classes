#Destroy Nether Portal
execute if score #cl.pref cl.p.wPortal matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:nether_portal run setblock ~ ~ ~ minecraft:air

#Extinguish fire sound
execute if score #cl.pref cl.p.wExtFire matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:fire run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 0.4 0.5

#Extinguish fire
execute if score #cl.pref cl.p.wExtFire matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:fire run setblock ~ ~ ~ minecraft:air

#Extinguish campfires
execute if score #cl.pref cl.p.wExtFire matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:candles run function classes:blocks/candles/extinguish
execute if score #cl.pref cl.p.wExtFire matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=true,facing=north] run setblock ~ ~ ~ minecraft:campfire[lit=false,facing=north]
execute if score #cl.pref cl.p.wExtFire matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=true,facing=south] run setblock ~ ~ ~ minecraft:campfire[lit=false,facing=south]
execute if score #cl.pref cl.p.wExtFire matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=true,facing=east] run setblock ~ ~ ~ minecraft:campfire[lit=false,facing=east]
execute if score #cl.pref cl.p.wExtFire matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=true,facing=west] run setblock ~ ~ ~ minecraft:campfire[lit=false,facing=west]
execute if score #cl.pref cl.p.wExtFire matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=true,facing=north] run setblock ~ ~ ~ minecraft:soul_campfire[lit=false,facing=north]
execute if score #cl.pref cl.p.wExtFire matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=true,facing=south] run setblock ~ ~ ~ minecraft:soul_campfire[lit=false,facing=south]
execute if score #cl.pref cl.p.wExtFire matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=true,facing=east] run setblock ~ ~ ~ minecraft:soul_campfire[lit=false,facing=east]
execute if score #cl.pref cl.p.wExtFire matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=true,facing=west] run setblock ~ ~ ~ minecraft:soul_campfire[lit=false,facing=west]

#Turn overworld lava to obsidian/cobblestone
execute if score #cl.pref cl.p.wObsidian matches 1 in minecraft:overworld if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava[level=0] run setblock ~ ~ ~ minecraft:obsidian
execute if score #cl.pref cl.p.wObsidian matches 1 in minecraft:overworld if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava unless block ~ ~ ~ minecraft:lava[level=0] run setblock ~ ~ ~ minecraft:cobblestone

#Turn nether lava to cobblestone
execute if score #cl.pref cl.p.wObsidian matches 1 in minecraft:the_nether if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava[level=0] run setblock ~ ~ ~ minecraft:cobblestone

#Sound effect for hitting lava.
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava run particle minecraft:large_smoke ^ ^ ^0.5 0.1 0.1 0.1 0.05 20 normal
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava run playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 1 0.2

#Reset
execute as @e[tag=!slowcast,scores={cl.slo_id=1..}] if score @s cl.slo_id = @e[type=marker,tag=slowcast,limit=1,sort=nearest] cl.slo_id run scoreboard players reset @s cl.slo_id
scoreboard players reset @s cl.slo_dst
scoreboard players reset @s cl.slo_dst_per
kill @s
