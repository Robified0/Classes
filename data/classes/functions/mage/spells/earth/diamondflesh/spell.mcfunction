#Not Enough Mana
execute unless entity @s[scores={cl.Mana=10..}] run function classes:main/mana_system/nomana

#Remove other Flesh spells
execute if entity @s[scores={cl.Mana=10..}] run scoreboard players set @s cl.e.MageArmor 0
execute if entity @s[scores={cl.Mana=10..}] run scoreboard players set @s cl.e.GoldFlesh 0
execute if entity @s[scores={cl.Mana=10..}] run scoreboard players set @s cl.e.IronFlesh 0
execute if entity @s[scores={cl.Mana=10..}] run tag @s remove MageArmor
execute if entity @s[scores={cl.Mana=10..}] run tag @s remove GoldFlesh
execute if entity @s[scores={cl.Mana=10..}] run tag @s remove IronFlesh

#Give Player Tag for particle effect
execute if entity @s[scores={cl.Mana=10..}] run tag @s add DiaFlesh
execute if entity @s[scores={cl.Mana=10..}] run scoreboard players set @s cl.e.DiaFlesh 24000

#Change base attribute
execute if entity @s[scores={cl.Mana=10..}] run attribute @s minecraft:generic.armor base set 20

#Particle effect
execute if entity @s[scores={cl.Mana=10..}] at @s run particle block diamond_block ~ ~ ~ 1 1 1 10 40 normal
execute if entity @s[scores={cl.Mana=10..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Playsound Effect
execute if entity @s[scores={cl.Mana=10..}] run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.2 1.5
execute if entity @s[scores={cl.Mana=10..}] at @s run playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.5 1.2

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=10..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=10..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Diamond Flesh!","bold":true,"color":"#AAAAAA"}]

#Cooldown
execute if entity @s[scores={cl.Mana=10..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=10..}] run scoreboard players remove @s cl.Mana 10

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/earth/diamondflesh
