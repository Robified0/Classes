execute as @a[tag=ColdShield,scores={effColdShield=1..}] at @s run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.5 0.5 0.5 1 1 normal
execute if entity @a[scores={effColdShield=1..}] run scoreboard players remove @a[scores={effColdShield=1..}] effColdShield 1
execute as @a[tag=ColdShield,scores={effColdShield=..0}] run tag @s remove ColdShield
execute as @a[tag=ColdShield,scores={effColdShield=..0}] run scoreboard players reset @s effColdShield
