execute as @a[tag=DiaFlesh,scores={cl.e.DiaFlesh=1..}] at @s run particle block diamond_block ~ ~ ~ 0.1 0.7 0.1 0.1 2 normal
execute if entity @a[scores={cl.e.DiaFlesh=1..}] run scoreboard players remove @a[scores={cl.e.DiaFlesh=1..}] cl.e.DiaFlesh 1
execute as @a[tag=DiaFlesh,scores={cl.e.DiaFlesh=..0}] run attribute @s minecraft:generic.armor base set 0
execute as @a[tag=DiaFlesh,scores={cl.e.DiaFlesh=..0}] run tag @s remove DiaFlesh
execute as @a[tag=DiaFlesh,scores={cl.e.DiaFlesh=..0}] run scoreboard players reset @s cl.e.DiaFlesh
