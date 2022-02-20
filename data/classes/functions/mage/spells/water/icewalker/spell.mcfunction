#Not Enough Mana
execute unless entity @s[scores={cl.Mana=4..}] run function classes:main/mana_system/nomana

#Set tag
execute if entity @s[scores={cl.Mana=4..}] run tag @s add IceWalker

#Set score
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players set @s cl.e.IceWalker 1200

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=4..}] at @s run function classes:mage/spells/all/cast

#Particle Effect
execute if entity @s[scores={cl.Mana=4..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
execute if entity @s[scores={cl.Mana=4..}] at @s run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.5 1 0.5 1 50 force

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=4..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Ice Walker!","bold":true,"color":"#0096FF"}]

#Cooldown
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players remove @s cl.Mana 4

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/water/icewalker
