#Not Enough Mana
execute if entity @s[scores={cl.Mana=..1}] run function classes:mage/mana/nomana

#Add score for tracking
execute if entity @s[scores={cl.Mana=2..}] at @s run scoreboard players set @e[distance=..10,limit=5,sort=random] cl.e.CureEffects 900

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=2..}] at @s run function classes:healer/spells/all/cast

#Particles
execute if entity @s[scores={cl.Mana=2..}] at @s run particle minecraft:end_rod ~ ~ ~ 0.5 1 0.5 0.01 10 force
execute if entity @s[scores={cl.Mana=2..}] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=2..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Fire Resist!","bold":true,"color":"green"}]

#Cooldown
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players remove @s cl.Mana 2
