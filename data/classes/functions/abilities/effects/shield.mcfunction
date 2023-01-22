scoreboard players remove @s[scores={cl.e.Shield=1..}] cl.e.Shield 1
execute if entity @s[scores={cl.e.Shield=1..}] anchored eyes positioned ^ ^ ^2.1 as @e[type=#classes:projectiles,distance=..2] run function classes:mage/effects/shielddeflect
execute if entity @s[scores={cl.e.Shield=1..}] anchored eyes positioned ^ ^ ^2.1 run particle minecraft:sweep_attack ~ ~-0.75 ~ 0.1 0.1 0.1 0.01 1 force @a

execute if entity @s[scores={cl.e.Shield=1}] run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.5 2
