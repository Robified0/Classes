#Handle Particles
execute as @e[type=minecraft:marker,tag=cl.t.GuardSphere] at @s positioned ~ ~ ~ run function classes:operations/particles/draw/guard/drawsphere

#Handle functionality
execute if entity @e[type=#classes:guardprojectiles,distance=..4] as @e[type=#classes:guardprojectiles,distance=..4] at @s run function classes:healer/effects/guard/effect

#Kill spell when expired
execute as @s[scores={cl.summonCount=..0}] run kill @s
execute as @e[type=marker,tag=cl.t.GuardSphere,scores={cl.summonCount=..0},sort=nearest,limit=2] run kill @s
