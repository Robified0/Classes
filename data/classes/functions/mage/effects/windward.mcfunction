#Handle Particles
execute as @e[type=minecraft:marker,tag=WindWardSphere] at @s positioned ~ ~ ~ run function classes:mage/effects/drawsphere

#Handle functionality
execute at @s run tag @e[type=#classes:windwardprojectiles,distance=..4] add WindWardDeny
execute if entity @e[tag=WindWardDeny] as @e[tag=WindWardDeny] at @s run playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 1 1.5
execute if entity @e[tag=WindWardDeny] as @e[tag=WindWardDeny] at @s run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 1 1.5
execute if entity @e[tag=WindWardDeny] as @e[tag=WindWardDeny] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 10 force
execute if entity @e[tag=WindWardDeny] as @e[tag=WindWardDeny] run kill @s

#Kill spell when expired
execute as @e[type=marker,tag=WindWard,scores={cl.summonCount=..0}] run kill @s
execute as @e[type=marker,tag=WindWardSphere,scores={cl.summonCount=..0}] run kill @s
