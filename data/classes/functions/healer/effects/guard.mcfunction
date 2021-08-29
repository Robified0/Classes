#Handle Particles
execute as @e[type=minecraft:marker,tag=GuardSphere] at @s positioned ~ ~ ~ run function classes:operations/particles/drawsphere/guard/drawsphere

#Handle functionality
execute at @s run tag @e[type=#classes:guardprojectiles,distance=..4] add GuardDeny
execute if entity @e[tag=GuardDeny] as @e[tag=GuardDeny] at @s run playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 1 1.5
execute if entity @e[tag=GuardDeny] as @e[tag=GuardDeny] at @s run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 1 1.5
execute if entity @e[tag=GuardDeny] as @e[tag=GuardDeny] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 10 force
execute if entity @e[tag=GuardDeny] as @e[tag=GuardDeny] run kill @s

#Kill spell when expired
execute as @e[type=marker,tag=Guard,scores={cl.summonCount=..0}] run kill @s
execute as @e[type=marker,tag=GuardSphere,scores={cl.summonCount=..0}] run kill @s
