#Not Enough Mana
execute if entity @s[scores={cl.Mana=..3}] run function classes:main/mana_system/nomana

#Give Effect
execute if entity @s[scores={cl.Mana=4..}] run tag @s add FireShield

#Set time limit for spell Effect
execute if entity @s[tag=FireShield] run scoreboard players set @s cl.e.FireShield 900

#Give Effect
execute if entity @s[scores={cl.Mana=4..}] run effect give @s minecraft:fire_resistance 45 0 false

#Particle effect
execute if entity @s[scores={cl.Mana=4..}] at @s run particle flame ~ ~ ~ 0.5 0.5 0.5 0.03 100 normal

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=4..}] at @s run function classes:mage/spells/all/cast
execute if entity @s[scores={cl.Mana=4..}] at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.08

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=4..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Fire Shield!","bold":true,"color":"#FF3034"}]

#Cooldown
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players remove @s cl.Mana 4

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/fire/fireshield
