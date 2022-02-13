execute as @a[tag=MageArmor,scores={cl.e.MageArmor=1..}] at @s run particle witch ~ ~ ~ 0.1 0.1 0.1 10 2 normal
execute if entity @a[scores={cl.e.MageArmor=1..}] run scoreboard players remove @a[scores={cl.e.MageArmor=1..}] cl.e.MageArmor 1
execute as @a[tag=MageArmor,scores={cl.e.MageArmor=..0}] run attribute @s minecraft:generic.armor base set 0
execute as @a[tag=MageArmor,scores={cl.e.MageArmor=..0}] run tag @s remove MageArmor
execute as @a[tag=MageArmor,scores={cl.e.MageArmor=..0}] run scoreboard players reset @s cl.e.MageArmor
