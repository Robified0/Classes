#Handle countdown
execute if entity @s[scores={cl.e.Light=1..}] run scoreboard players remove @s cl.e.Light 1

#Display particles
execute if entity @s[scores={cl.e.Light=1..}] run particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.03 1 force

#Play sound - low distance to keep audio channels open
execute if entity @s[scores={cl.e.Light=1..}] run playsound minecraft:block.amethyst_block.chime player @a[distance=..1] ~ ~ ~ 0.1 0.1

#Give invisible entities Glowing effect
execute if entity @s[scores={cl.e.Light=1..}] as @e[type=!#classes:nontarget,predicate=classes:check/effects/invisibility,distance=..10] run effect give @s minecraft:glowing 1 0

#Kill marker if the light is covered up.
execute if entity @s[scores={cl.e.Light=1..}] unless block ~ ~ ~ minecraft:light unless block ~ ~1 ~ minecraft:light unless block ~ ~-1 ~ minecraft:light unless block ~-1 ~ ~ minecraft:light unless block ~1 ~ ~ minecraft:light unless block ~ ~ ~-1 minecraft:light unless block ~ ~ ~1 minecraft:light run kill @s

#Replace light blocks when time is up.
execute if entity @s[scores={cl.e.Light=..0}] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:light

#Kill Light marker.
execute if entity @s[scores={cl.e.Light=..0}] run kill @s

#Kill any spare markers that didn't get a score
execute as @e[type=marker,tag=cl.t.light,tag=!cl.r.slowcast] unless entity @s[scores={cl.e.Light=0..}] run kill @s
