execute as @a[tag=BunnyHop,scores={cl.e.BunnyHop=1..}] at @s run particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.01 1 normal
execute if entity @a[scores={cl.e.BunnyHop=1..}] run scoreboard players remove @a[scores={cl.e.BunnyHop=1..}] cl.e.BunnyHop 1
execute as @a[tag=BunnyHop,scores={cl.e.BunnyHop=..0}] run tag @s remove BunnyHop
execute as @a[tag=BunnyHop,scores={cl.e.BunnyHop=..0}] run scoreboard players reset @s cl.e.BunnyHop
