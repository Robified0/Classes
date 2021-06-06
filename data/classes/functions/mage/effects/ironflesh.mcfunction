execute as @a[tag=IronFlesh,scores={effIronFlesh=1..}] at @s run particle block iron_block ~ ~ ~ 0.1 0.7 0.1 0.1 2 normal
execute if entity @a[scores={effIronFlesh=1..}] run scoreboard players remove @a[scores={effIronFlesh=1..}] effIronFlesh 1
execute as @a[tag=IronFlesh,scores={effIronFlesh=..0}] run attribute @s minecraft:generic.armor base set 0
execute as @a[tag=IronFlesh,scores={effIronFlesh=..0}] run tag @s remove IronFlesh
execute as @a[tag=IronFlesh,scores={effIronFlesh=..0}] run scoreboard players reset @s effIronFlesh
