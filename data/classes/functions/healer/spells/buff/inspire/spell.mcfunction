#Spell Cast Notification
execute if entity @s[scores={cl.e.Inspire=0}] run tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" is casting","color":"green"},{"text":" Inspire!","bold":true,"color":"green"}]

#Sound Effect
execute if entity @s[scores={cl.e.Inspire=1..}] run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.15 0.2 0.15
execute if entity @s[scores={cl.e.Inspire=1..}] run particle dust 0.576 0.141 0.137 2 ~ ~ ~ 10 10 20 0.25 200 force
execute if entity @s[scores={cl.e.Inspire=1..}] run particle minecraft:end_rod ~ ~ ~ 1 0.2 1 0.02 10 force

#Boost Strength of nearby allies
execute if entity @s[scores={cl.e.Inspire=1..}] run effect give @a[distance=..10] minecraft:strength 2 1

#Spell Handling
scoreboard players set @s cl.e.Inspire 10

#Handle Mana drain over time. Set cl.e.Inspire.m=# to a higher number to slow down drain rate.
scoreboard players add @s cl.e.Inspire.m 1
scoreboard players remove @s[scores={cl.e.Inspire.m=4}] cl.Mana 1
scoreboard players set @s[scores={cl.e.Inspire.m=4..}] cl.e.Inspire.m 0
