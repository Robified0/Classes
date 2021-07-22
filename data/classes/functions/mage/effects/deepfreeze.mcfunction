execute as @e[tag=DeepFreeze,scores={cl.e.DeepFreeze=1..}] at @s run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.4 0.4 0.4 2 10 normal
execute if entity @e[scores={cl.e.DeepFreeze=1..}] run scoreboard players remove @e[scores={cl.e.DeepFreeze=1..}] cl.e.DeepFreeze 1
execute as @e[tag=DeepFreeze,scores={cl.e.DeepFreeze=..0}] run data merge entity @s {NoAI:0b,Silent:0b}
execute as @e[tag=DeepFreeze,scores={cl.e.DeepFreeze=..0}] run tag @s remove DeepFreeze
execute as @e[scores={cl.e.DeepFreeze=..0}] run scoreboard players reset @s cl.e.DeepFreeze
