execute as @a[tag=ColdShield,scores={cl.e.ColdShield=1..}] at @s run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.5 0.5 0.5 1 1 normal
execute if entity @a[scores={cl.e.ColdShield=1..}] run scoreboard players remove @a[scores={cl.e.ColdShield=1..}] cl.e.ColdShield 1
execute as @a[tag=ColdShield,scores={cl.e.ColdShield=..0}] run tag @s remove ColdShield
execute as @a[tag=ColdShield,scores={cl.e.ColdShield=..0}] run scoreboard players reset @s cl.e.ColdShield
