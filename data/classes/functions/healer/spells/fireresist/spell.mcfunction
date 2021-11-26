#Not Enough Mana
execute if entity @s[scores={cl.Mana=..2}] run function classes:main/mana_system/nomana

#Add score for tracking
execute if entity @s[scores={cl.Mana=3..}] at @s run scoreboard players set @e[distance=..10,limit=5,sort=random] cl.e.FireResist 900
execute as @e[scores={cl.e.FireResist=900}] run effect give @s minecraft:fire_resistance 45 0 false

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=3..}] at @s run function classes:healer/spells/all/cast

#Particles
execute if entity @s[scores={cl.Mana=3..}] at @s run particle minecraft:wax_off ~ ~ ~ 0.5 1 0.5 0.01 50 force
execute if entity @s[scores={cl.Mana=3..}] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=3..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Fire Resist!","bold":true,"color":"green"}]

#Cooldown
execute if entity @s[scores={cl.Mana=3..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=3..}] run scoreboard players remove @s cl.Mana 3

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:healer/spells/fireresist
