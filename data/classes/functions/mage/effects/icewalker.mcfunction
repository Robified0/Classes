execute if entity @s[scores={cl.e.IceWalker=1..}] at @s run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.4 0.4 0.4 2 10 force
execute if entity @s[scores={cl.e.IceWalker=1..}] at @s if block ~ ~ ~ air if block ~ ~-1 ~ water anchored feet run fill ~-1 ~-1 ~-1 ~2 ~-1 ~2 frosted_ice replace water[level=0]
execute if entity @s[scores={cl.e.IceWalker=0..}] run scoreboard players remove @s cl.e.IceWalker 1
execute if entity @s[scores={cl.e.IceWalker=..0}] run tag @s remove cl.s.IceWalker
execute if entity @s[scores={cl.e.IceWalker=..0}] run scoreboard players reset @s cl.e.IceWalker
