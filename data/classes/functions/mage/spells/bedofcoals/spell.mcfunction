#Not Enough Mana
execute if entity @s[scores={Mana=..4}] run function classes:mage/mana/nomana

#Summon AEC
execute as @s[scores={Mana=5..}] run summon area_effect_cloud ~ ~ ~ {Particle:"small_flame",Radius:5f,Duration:200,Tags:["wither","fire","lasting","angry"]}

#Spell Cast Notification
execute as @s[scores={Mana=5..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Bed of Coals!","bold":true,"color":"#FF3034"}]

#Cooldown
execute as @s[scores={Mana=5..}] run scoreboard players set @s cooldown 20

#Mana Removal
execute as @s[scores={Mana=5..}] run scoreboard players remove @s Mana 5
