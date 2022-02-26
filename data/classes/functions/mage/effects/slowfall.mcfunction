execute if entity @s[scores={cl.e.SlowFall=1..}] run particle minecraft:cloud ~ ~ ~ 0.3 0.1 0.3 0.01 1 normal
execute if entity @s[scores={cl.e.SlowFall=0..}] run scoreboard players remove @s cl.e.SlowFall 1
execute if entity @s[scores={cl.e.SlowFall=..0}] run tag @s remove cl.s.SlowFall
execute if entity @s[scores={cl.e.SlowFall=..0}] run scoreboard players reset @s cl.e.SlowFall
