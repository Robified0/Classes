execute as @a[tag=StoneFlesh,scores={effStoneFlesh=1..}] at @s run particle block stone ~ ~ ~ 0.1 0.7 0.1 0.1 2 normal
execute if entity @a[scores={effStoneFlesh=1..}] run scoreboard players remove @a[scores={effStoneFlesh=1..}] effStoneFlesh 1
execute as @a[tag=StoneFlesh,scores={effStoneFlesh=..0}] run attribute @s minecraft:generic.armor base set 0
execute as @a[tag=StoneFlesh,scores={effStoneFlesh=..0}] run tag @s remove StoneFlesh
execute as @a[tag=StoneFlesh,scores={effStoneFlesh=..0}] run scoreboard players reset @s effStoneFlesh
