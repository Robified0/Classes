#Not Enough Mana
execute unless entity @s[scores={cl.Mana=2..}] run function classes:main/mana_system/nomana

#Particle effect
execute if entity @s[scores={cl.Mana=2..}] at @s run particle minecraft:rain ~ ~3 ~ 10 2 10 0.01 2000 force

#Playsound Effect
execute if entity @s[scores={cl.Mana=2..}] at @s run playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 10 0.4
execute if entity @s[scores={cl.Mana=2..}] at @s run playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 10 1.5

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=2..}] at @s run function classes:mage/spells/all/cast

#Effect
execute if entity @s[scores={cl.Mana=2..}] at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace fire

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=2..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Extinguish!","bold":true,"color":"#0096FF"}]

#Cooldown
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players remove @s cl.Mana 2

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/water/extinguish
