##Heals animals near Ranger through regen effect. (operations/delay/10s)

#Heal animals if their owner is nearby
effect give @e[type=#classes:ranger/canown,distance=..10] minecraft:regeneration 10 0 true
execute as @e[type=#classes:ranger/canown,distance=..10] at @s run particle minecraft:happy_villager ~ ~0.75 ~ 0.3 0.1 0.3 1 2 force @a[scores={cl.Class=2}]
