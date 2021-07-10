#Handle countdown
execute as @e[type=marker,tag=light,scores={cl.e.Light=1..}] run scoreboard players remove @s cl.e.Light 1

#Display particles
execute as @e[type=marker,tag=light,scores={cl.e.Light=1..}] at @s run particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.03 1 force

#Play sound - low distance to keep audio channels open
execute as @e[type=marker,tag=light,scores={cl.e.Light=1..}] at @s run playsound minecraft:block.amethyst_block.chime player @a[distance=..1] ~ ~ ~ 0.1 0.1

#Kill marker if the light is covered up.
execute as @e[type=marker,tag=light,scores={cl.e.Light=1..}] at @s unless block ~ ~ ~ minecraft:light unless block ~ ~1 ~ minecraft:light unless block ~ ~-1 ~ minecraft:light unless block ~-1 ~ ~ minecraft:light unless block ~1 ~ ~ minecraft:light unless block ~ ~ ~-1 minecraft:light unless block ~ ~ ~1 minecraft:light run kill @s

#Replace light blocks when time is up.
execute as @e[type=marker,tag=light,scores={cl.e.Light=..0}] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:light

#Kill Light marker.
execute as @e[type=marker,tag=light,scores={cl.e.Light=..0}] run kill @s

#Kill any spare markers that didn't get a score
execute as @e[type=marker,tag=light,tag=!slowcast] unless entity @s[scores={cl.e.Light=0..}] run kill @s
