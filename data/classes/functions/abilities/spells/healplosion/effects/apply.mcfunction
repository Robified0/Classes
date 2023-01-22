#Damage undead around player
execute as @e[type=#classes:undead,distance=..5] at @s run effect give @s minecraft:instant_health 1 1 true
execute as @e[type=#classes:undead,distance=..5] at @s run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.1 20 normal

#Heal mobs in the area
execute as @e[type=#classes:healertargets,distance=..5] at @s run effect give @s minecraft:instant_health 1 1 true
execute as @e[type=#classes:healertargets,distance=..5] at @s run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.1 20 normal
