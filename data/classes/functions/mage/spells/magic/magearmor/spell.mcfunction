#Not Enough Mana
execute if entity @s[scores={cl.Mana=..7}] run function classes:main/mana_system/nomana

#Remove other Flesh spells
execute if entity @s[scores={cl.Mana=8..}] run scoreboard players set @s cl.e.IronFlesh 0
execute if entity @s[scores={cl.Mana=8..}] run scoreboard players set @s cl.e.GoldFlesh 0
execute if entity @s[scores={cl.Mana=8..}] run scoreboard players set @s cl.e.DiaFlesh 0
execute if entity @s[scores={cl.Mana=8..}] run tag @s remove GoldFlesh
execute if entity @s[scores={cl.Mana=8..}] run tag @s remove DiaFlesh
execute if entity @s[scores={cl.Mana=8..}] run tag @s remove IronFlesh

#Give Player Tag for particle effect
execute if entity @s[scores={cl.Mana=8..}] run tag @s add cl.s.MageArmor
execute if entity @s[scores={cl.Mana=8..}] run scoreboard players set @s cl.e.MageArmor 24000

#Change base attribute
execute if entity @s[scores={cl.Mana=8..}] run attribute @s minecraft:generic.armor base set 8

#Particle effect
execute if entity @s[scores={cl.Mana=8..}] at @s run particle witch ~ ~ ~ 1 1 1 10 40 normal

#Playsound Effect
execute if entity @s[scores={cl.Mana=8..}] run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.2 1.5
execute if entity @s[scores={cl.Mana=8..}] run playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.5 1.2

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=8..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=8..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Mage Armor!","bold":true,"color":"light_purple"}]

#Cooldown
execute if entity @s[scores={cl.Mana=8..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=8..}] run scoreboard players remove @s cl.Mana 8

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/magic/magearmor
