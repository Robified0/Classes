#Kill fireballs that have been deflected
scoreboard players add @s cl.newFireball 1
execute if entity @s[scores={cl.newFireball=60..}] run particle flame ~ ~ ~ 1 1 1 0.5 100 force @a
execute if entity @s[scores={cl.newFireball=60..}] run particle minecraft:explosion ~ ~ ~ 0 0 0 0.5 10 force @a
execute if entity @s[scores={cl.newFireball=60..}] run kill @s
