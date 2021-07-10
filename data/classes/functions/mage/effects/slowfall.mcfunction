execute as @a[tag=SlowFall,scores={cl.e.SlowFall=1..}] at @s run particle minecraft:cloud ~ ~ ~ 0.3 0.1 0.3 0.01 1 normal
execute if entity @a[scores={cl.e.SlowFall=1..}] run scoreboard players remove @a[scores={cl.e.SlowFall=1..}] cl.e.SlowFall 1
execute as @a[tag=SlowFall,scores={cl.e.SlowFall=..0}] run tag @s remove SlowFall
execute as @a[tag=SlowFall,scores={cl.e.SlowFall=..0}] run scoreboard players reset @s cl.e.SlowFall
