#Not Enough Mana
execute if entity @s[scores={cl.Mana=..1}] run function classes:main/mana_system/nomana

#Remove other Flesh spells
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players set @s cl.e.IronFlesh 0
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players set @s cl.e.DiaFlesh 0
execute if entity @s[scores={cl.Mana=2..}] run tag @s remove IronFlesh
execute if entity @s[scores={cl.Mana=2..}] run tag @s remove DiaFlesh

#Give Player Tag for particle effect
execute if entity @s[scores={cl.Mana=2..}] run tag @s add GoldFlesh
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players set @s cl.e.GoldFlesh 3600

#Change base attribute
execute if entity @s[scores={cl.Mana=2..}] run attribute @s minecraft:generic.armor base set 8

#Particle effect
execute if entity @s[scores={cl.Mana=2..}] at @s run particle block gold_block ~ ~ ~ 1 1 1 10 40 normal

#Playsound Effect
execute if entity @s[scores={cl.Mana=2..}] run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.2 1.5
execute if entity @s[scores={cl.Mana=2..}] run playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 0.5 1.5

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=2..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=2..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Gold Flesh!","bold":true,"color":"#AAAAAA"}]

#Cooldown
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players remove @s cl.Mana 2

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/earth/goldflesh
