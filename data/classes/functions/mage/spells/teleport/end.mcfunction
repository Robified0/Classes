#Handle teleport
execute as @p[tag=Teleport,sort=nearest,limit=1] at @s run particle minecraft:flash ~ ~ ~ 1 1 1 0.1 10 force
execute unless block ~ ~ ~ air positioned ^ ^ ^-1.5 run tp @p[tag=Teleport,sort=nearest,limit=1] @e[type=marker,tag=teleport,sort=nearest,limit=1]
 particle minecraft:portal ~ ~ ~ ~0.1 ~1 ~0.1 1 20 force
execute as @p[tag=Teleport,sort=nearest,limit=1] at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
execute as @p[tag=Teleport,sort=nearest,limit=1] at @s run particle minecraft:portal ~ ~ ~ 0.3 0.5 0.3 0.1 200 force
execute as @p[tag=Teleport,sort=nearest,limit=1] at @s run particle minecraft:flash ~ ~ ~ 1 1 1 0.1 10 force

#Remove tag to target next player
execute at @s run tag @p remove Teleport

#Reset
scoreboard players reset @s slo_id
