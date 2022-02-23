execute as @a[tag=cl.s.GoldFlesh,scores={cl.e.GoldFlesh=1..}] at @s run particle block gold_block ~ ~ ~ 0.1 0.7 0.1 0.1 2 normal
execute if entity @a[scores={cl.e.GoldFlesh=1..}] run scoreboard players remove @a[scores={cl.e.GoldFlesh=1..}] cl.e.GoldFlesh 1
execute as @a[tag=cl.s.GoldFlesh,scores={cl.e.GoldFlesh=..0}] run attribute @s minecraft:generic.armor base set 0
execute as @a[tag=cl.s.GoldFlesh,scores={cl.e.GoldFlesh=..0}] run tag @s remove cl.s.GoldFlesh
execute as @a[tag=cl.s.GoldFlesh,scores={cl.e.GoldFlesh=..0}] run scoreboard players reset @s cl.e.GoldFlesh
