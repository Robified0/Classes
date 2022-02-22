execute as @a[tag=FireShield,scores={cl.e.FireShield=1..}] at @s run particle small_flame ~ ~ ~ 0.5 0.5 0.5 0.03 1 normal
execute if entity @a[scores={cl.e.FireShield=1..}] run scoreboard players remove @a[scores={cl.e.FireShield=1..}] cl.e.FireShield 1
execute as @a[tag=FireShield,scores={cl.e.FireShield=..0}] run tag @s remove FireShield
execute as @a[tag=FireShield,scores={cl.e.FireShield=..0}] run scoreboard players reset @s cl.e.FireShield
