scoreboard players remove @a[scores={cl.e.Shield=1..}] cl.e.Shield 1
scoreboard players set @a[scores={cl.e.Shield=1..}] cl.ManaRegenSec 0
execute as @a[scores={cl.e.Shield=1..}] at @s anchored eyes positioned ^ ^ ^2.1 as @e[type=#classes:projectiles,distance=..2] run function classes:mage/effects/shielddeflect
execute as @a[scores={cl.e.Shield=1..}] at @s anchored eyes positioned ^ ^ ^2.1 run particle minecraft:sweep_attack ~ ~-0.75 ~ 0.1 0.1 0.1 0.01 1 force @a
