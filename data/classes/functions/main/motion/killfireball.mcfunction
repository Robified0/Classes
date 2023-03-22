## Kill fireballs that have been deflected
# (main/delay/20)
scoreboard players add @s cl.newFireball 1
execute if entity @s[scores={cl.newFireball=5..},type=!minecraft:dragon_fireball] run particle flame ~ ~ ~ 0 0 0 0.3 100 force @a
execute if entity @s[scores={cl.newFireball=5..},type=minecraft:dragon_fireball] run particle dragon_breath ~ ~ ~ 0 0 0 0.2 100 force @a
execute if entity @s[scores={cl.newFireball=5..}] run particle minecraft:explosion ~ ~ ~ 0 0 0 0.5 10 force @a
execute if entity @s[scores={cl.newFireball=5..}] run kill @s
