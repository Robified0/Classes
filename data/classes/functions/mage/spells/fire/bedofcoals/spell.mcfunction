#Not Enough Mana
execute if entity @s[scores={cl.Mana=..4}] run function classes:main/mana_system/nomana

#Summon AEC
execute if entity @s[scores={cl.Mana=5..}] run summon area_effect_cloud ~ ~ ~ {Particle:"flame",ReapplicationDelay:20,Radius:3f,Duration:200,Tags:["cl.damage1","cl.fire","cl.angry","cl.fire","cl.HitBySpell"]}

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=5..}] at @s run function classes:mage/spells/all/cast

#Particles
execute if entity @s[scores={cl.Mana=5..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
execute if entity @s[scores={cl.Mana=5..}] at @s run particle minecraft:small_flame ~ ~ ~ 0.3 1 0.3 0.08 50 force

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=5..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Bed of Coals!","bold":true,"color":"#FF3034"}]

#Cooldown
execute if entity @s[scores={cl.Mana=5..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=5..}] run scoreboard players remove @s cl.Mana 5

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/fire/bedofcoals
