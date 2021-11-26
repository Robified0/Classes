execute if entity @s[scores={cl.Mana=1..}] run scoreboard players set @s ManaRegenSec 0

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=1..,cl.e.Mending=0}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" is casting","color":"green"},{"text":" Mending!","bold":true,"color":"green"}]

#Spell Handling
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players set @s cl.e.Mending 10

#Sound Effect
execute if entity @s[scores={cl.Mana=1..,cl.e.Mending=1..}] at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 0.15 0.2 0.15
execute if entity @s[scores={cl.Mana=1..,cl.e.Mending=1..}] at @s run particle wax_off ~ ~ ~ 10 10 10 0.25 200 force

#Boost Strength of nearby allies
execute if entity @s[scores={cl.Mana=1..,cl.e.Mending.t=5}] at @s run effect give @a[distance=..10] minecraft:instant_health 1 0

#Handle Mana drain over time. Set cl.e.Mending.m=# to a higher number to slow down drain rate.
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players add @s cl.e.Mending.m 1
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players add @s cl.e.Mending.t 1
execute if entity @s[scores={cl.Mana=1..,cl.e.Mending.t=6..}] run scoreboard players set @s cl.e.Mending.t 0
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players remove @s[scores={cl.e.Mending.m=4}] cl.Mana 1
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players set @s[scores={cl.e.Mending.m=4..}] cl.e.Mending.m 0

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:healer/spells/mending
