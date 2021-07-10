execute as @a[tag=IronFlesh,scores={cl.e.IronFlesh=1..}] at @s run particle block iron_block ~ ~ ~ 0.1 0.7 0.1 0.1 2 normal
execute if entity @a[scores={cl.e.IronFlesh=1..}] run scoreboard players remove @a[scores={cl.e.IronFlesh=1..}] cl.e.IronFlesh 1
execute as @a[tag=IronFlesh,scores={cl.e.IronFlesh=..0}] run attribute @s minecraft:generic.armor base set 0
execute as @a[tag=IronFlesh,scores={cl.e.IronFlesh=..0}] run tag @s remove IronFlesh
execute as @a[tag=IronFlesh,scores={cl.e.IronFlesh=..0}] run scoreboard players reset @s cl.e.IronFlesh
