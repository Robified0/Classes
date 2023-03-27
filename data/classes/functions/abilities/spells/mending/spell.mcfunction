scoreboard players set @s ManaRegenSec 0

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=1..,cl.e.Mending=0}] run tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.casting","color":"green"},{"translate":"spell.classes.704.name","bold":true,"color":"green"},{"text":" !","color":"green"}]

#Spell Handling
scoreboard players set @s cl.e.Mending 10

#Sound Effect
execute if entity @s[scores={cl.e.Mending.t=8}] run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 5 0.2
execute if entity @s[scores={cl.e.Mending=1..}] run particle wax_off ~ ~ ~ 5 5 5 0.25 200 force
execute if entity @s[scores={cl.e.Mending=1..}] run particle composter ~ ~ ~ 5 5 5 0.25 200 force
execute if entity @s[scores={cl.e.Mending=1..}] run particle minecraft:end_rod ~ ~ ~ 0.3 0.75 0.3 0.08 10 force

#Boost Strength of nearby allies
execute if entity @s[scores={cl.e.Mending.t=8}] run effect give @e[type=#classes:healertargets,distance=..5,tag=cl.t.Owned] minecraft:instant_health 1 0
execute if entity @s[scores={cl.e.Mending.t=8}] run effect give @a[distance=..5] minecraft:instant_health 1 0

#Handle Mana drain over time. Set cl.e.Mending.m=# to a higher number to slow down drain rate.
scoreboard players add @s cl.e.Mending.m 1
scoreboard players add @s cl.e.Mending.t 1
scoreboard players set @s[scores={cl.e.Mending.t=9..}] cl.e.Mending.t 0
scoreboard players remove @s[scores={cl.e.Mending.m=3}] cl.Mana 1
scoreboard players set @s[scores={cl.e.Mending.m=3..}] cl.e.Mending.m 0

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:healer/spells/mending
