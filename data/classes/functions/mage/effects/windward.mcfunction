#Handle Particles
execute as @e[type=minecraft:marker,tag=WindWardSphere] at @s positioned ~ ~ ~ run function classes:mage/effects/drawsphere

#Handle functionality
execute at @s run tag @e[type=#classes:windwardprojectiles,distance=..4] add WindWardDeny
execute as @e[tag=WindWardDeny] at @s run playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 1 1.5
execute as @e[tag=WindWardDeny] at @s run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 1 1.5
execute as @e[tag=WindWardDeny] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 10 force
execute as @e[tag=WindWardDeny] run kill @s

#Kill spell when expired
execute as @e[type=marker,tag=WindWard,scores={summonCount=..0}] at @s run kill @e[type=marker,tag=WindWardSphere,sort=nearest,limit=2]
execute as @e[type=marker,tag=WindWard,scores={summonCount=..0}] run kill @s
