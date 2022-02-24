execute if entity @s[scores={cl.e.BunnyHop=1..}] at @s run particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.01 1 normal
execute if entity @s[scores={cl.e.BunnyHop=0..}] run scoreboard players remove @s cl.e.BunnyHop 1
execute if entity @s[scores={cl.e.BunnyHop=..0}] run tag @s remove cl.s.BunnyHop
execute if entity @s[scores={cl.e.BunnyHop=..0}] run scoreboard players reset @s cl.e.BunnyHop
