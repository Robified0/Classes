execute if block ~ ~ ~ soul_campfire[lit=true] positioned ~ ~0.5 ~ run particle minecraft:soul ~ ~ ~ 0.1 0.1 0.1 0.02 1 force @a
execute if block ~ ~ ~ soul_campfire[lit=true] positioned ~ ~0.5 ~ run particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.02 1 force @a
execute if block ~ ~ ~ soul_campfire[lit=true] run scoreboard players remove @s cl.track.SoulExtract.time 20
execute unless block ~ ~ ~ soul_campfire[lit=true] run function classes:blocks/soul_campfire/unlit
execute if score @s cl.track.SoulExtract.time matches ..0 run function classes:blocks/soul_campfire/complete
