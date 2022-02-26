execute if entity @s[scores={cl.e.FireShield=1..}] run particle small_flame ~ ~ ~ 0.5 0.5 0.5 0.03 1 normal
execute if entity @s[scores={cl.e.FireShield=0..}] run scoreboard players remove @s cl.e.FireShield 1
execute if entity @s[scores={cl.e.FireShield=..0}] run tag @s remove cl.s.FireShield
execute if entity @s[scores={cl.e.FireShield=..0}] run scoreboard players reset @s cl.e.FireShield
