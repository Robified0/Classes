execute if entity @s[scores={cl.e.StopUndead=1..}] anchored feet run particle minecraft:end_rod ~ ~ ~ 0.3 0.2 0.3 0.05 1 force
execute if entity @s[scores={cl.e.StopUndead=1..}] run scoreboard players remove @s cl.e.StopUndead 1
data merge entity @s[scores={cl.e.StopUndead=..0}] {NoAI:0b,Silent:0b,Invulnerable:0b}
execute if entity @s[scores={cl.e.StopUndead=..0}] run scoreboard players reset @s cl.e.StopUndead
