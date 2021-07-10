execute as @a[tag=TailWind,scores={cl.e.TailWind=1..}] at @s run particle minecraft:cloud ^ ^ ^-0.5 0.1 0.5 0.1 0.1 1 normal
execute if entity @a[scores={cl.e.TailWind=1..}] run scoreboard players remove @a[scores={cl.e.TailWind=1..}] cl.e.TailWind 1
execute as @a[tag=TailWind,scores={cl.e.TailWind=..0}] run tag @s remove TailWind
execute as @a[tag=TailWind,scores={cl.e.TailWind=..0}] run scoreboard players reset @s cl.e.TailWind
